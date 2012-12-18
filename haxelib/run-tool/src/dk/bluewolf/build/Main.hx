package dk.bluewolf.build;

import neko.FileSystem;
import sys.io.File;
import neko.Lib;
import neko.Sys;

using StringTools;

/**
 * TODO
 */
private enum System
{
    Windows;
    Linux;
    MacOS;
}

/**
 * TODO
 */
class Main
{
	/***************************************************************************
	 * CONSTANTS                                                               *
	 **************************************************************************/

	public static inline var EXIT_SUCCESS = 0;
	public static inline var EXIT_FAILURE = 1;

	/***************************************************************************
	 * MEMBERS                                                                 *
	 **************************************************************************/

    static var system:System;
	static var arguments:Array<String>;
	static var command:String;
	static var invocationPath:String;

    /**
     * TODO
     */
	static function main()
	{
        // Determine the user's system.
        //

        system =
            if (Sys.systemName().toLowerCase().indexOf("windows") != -1)
                Windows;
            else if (Sys.systemName().toLowerCase().indexOf("linux") != -1)
                Linux;
            else
                MacOS;

		// Check and store the command line arguments.
		//

		arguments = Sys.args();
		
		if (arguments.length < 2)
		{
			Lib.println("Run-tool was expecting a command, received nothing.");
			Lib.println("");
			showUsage();
			Sys.exit(EXIT_FAILURE);
		}

		invocationPath = arguments[arguments.length - 1];
		var slash = invocationPath.substr(-1);
		if (slash=="/"|| slash=="\\")
			invocationPath = invocationPath.substr(0,invocationPath.length-1);

		// Process the requested command.
		//

		command = arguments[0];
		switch (command)
		{
        case "install": installLibrary();
		case "create-project": createProject();
		case "add-target": addTarget();
        case "install-flashdevelop-template": processFlashDevelopTemplate(true);
		case "remove-flashdevelop-template": processFlashDevelopTemplate(false);
		case "process-build-files": processBuildFiles();
		default:
			showUsage();
			Sys.exit(EXIT_FAILURE);
		}
	}

	static function showUsage()
	{
		Lib.println("Valid commands are:");
		Lib.println("");
		Lib.println("        install (no arguments) -- performs post-installational activities which");
        Lib.println("        could potentially save you some effort; for example making the shell");
        Lib.println("        scripts executable. This might require root privileges.");
        Lib.println("");
        Lib.println("        create-project name -- creates a new empty gameplay project in the");
        Lib.println("        current directory with the specified name.");
		Lib.println("");
        Lib.println("        add-target target -- adds the specified target to the gameplay project.");
        Lib.println("");
		Lib.println("        install-flashdevelop-template (no arguments) -- installs the gameplay");
		Lib.println("        FlashDevelop project template.");
		Lib.println("");
		Lib.println("        remove-flashdevelop-template (no arguments) -- removes the gameplay");
		Lib.println("        FlashDevelop project template.");
		Lib.println("");
	}

    /**
     * TODO
     */
    static function installLibrary()
    {
        // Make all shell scripts executable.
        //

        if (system == Windows)
            return;

        var result = makeScriptsExecutable(FileSystem.fullPath("."));

        Lib.println("");
        Lib.println(
                if (!result)
                    Std.format("STATUS: Failed to install projet.")
                else
                    Std.format("STATUS: Project successfully installed.")
            );
        Lib.println("");

        if (!result)
            Sys.exit(EXIT_FAILURE);
    }

    /**
     * TODO
     */
    static function makeScriptsExecutable(directory)
    {
        for (file in FileSystem.readDirectory(directory))
        {
            if (!FileSystem.exists(file))
                continue;
            else if (FileSystem.isDirectory(file))
            {
                if (!makeScriptsExecutable(file))
                    return false;
            }
            else if (file.endsWith(".sh"))
            {
                var result = Sys.command(Std.format("chmod +x {file}"));
                if (result != 0)
                    return false;
            }
        }

        return true;
    }

    /**
     * TODO
     */
	static function createProject()
	{
		if (arguments.length < 3)
        {
            Lib.println("The name of the projet to be added is not specified.");
            Lib.println("");
            showUsage();
            Sys.exit(EXIT_FAILURE);
        }

        // Copy the projet directory.
        //

        var name = arguments[1];
        var result =
            if (system == Windows)
            {
                copyDirectory(
                        Std.format("templates\\Project"),
                        Std.format("${invocationPath}\\${name}")
                    );
            }
            else
            {
                copyDirectory(
                        Std.format("templates/Project"),
                        Std.format("${invocationPath}/${name}")
                    );
            }

        // Copy a possibly required platform.
        //

        if (result)
        {
            if (system == Windows)
            {
                result =
                    copyDirectory(
                            Std.format("templates\\platforms\\windows-x86"),
                            Std.format("${invocationPath}\\${name}\\platforms\\windows-x86")
                        );

                if (result)
                {
                    result =
                        copyFile(
                                "templates\\platforms\\*windows-x86*.*",
                                Std.format("${invocationPath}\\${name}")
                            );
                }
            }
            else if (system == Linux)
            {
                result =
                    copyDirectory(
                            Std.format("templates/platforms/linux-x86"),
                            Std.format("${invocationPath}/${name}/platforms/linux-x86")
                        );

                if (result)
                {
                    result =
                        copyFile(
                                "templates/platforms/*linux-x86*.*",
                                Std.format("${invocationPath}/${name}")
                            );
                }
            }
            else
            {
                // TODO: probably MacOS.
                //
            }
        }

        // Output status.
        //

        Lib.println("");
        Lib.println(
                if (!result)
                    Std.format("STATUS: Failed to create project \"${name}\".")
                else
                    Std.format("STATUS: Project \"${name}\" successfully created.")
            );
        Lib.println("");

        if (!result)
            Sys.exit(EXIT_FAILURE);

	}

    /**
     * TODO
     */
    static function addTarget()
    {
        if (arguments.length < 3)
        {
            Lib.println("The target to be added is not specified.");
            Lib.println("");
            showUsage();
            Sys.exit(EXIT_FAILURE);
        }

        var targets =
            [
                "windows-x86",
                "windows-x64",
                "linux-x86",
                "linux-x64",
                "android-arm",
                "android-arm7"
            ];

        var target = arguments[1];
        if (!Lambda.has(targets, target))
        {
            Lib.println("Invalid target specified, must be one of:");
            Lib.println("");
            for (target in targets)
                Lib.println(Std.format("    $target"));
            Sys.exit(EXIT_FAILURE);
        }

        // Copy the platform directory.
        //

        var result =
            if (system == Windows)
            {
                copyDirectory(
                        Std.format("templates\\platforms\\${target}"),
                        Std.format("${invocationPath}\\platforms\\${target}")
                    );
            }
            else
            {
                copyDirectory(
                        Std.format("templates/platforms/${target}"),
                        Std.format("${invocationPath}/platforms/${target}")
                    );
            }

        if (result)
        {
            result =
                if (system == Windows)
                    copyFile(Std.format("templates\\platforms\\*${target}*.*"), invocationPath);
                else
                    copyFile(Std.format("templates/platforms/*${target}*.*"), invocationPath);
        }

        Sys.println("");
        Sys.println(
                if (!result)
                    "STATUS: Failed to add target."
                else
                    "STATUS: Target successfully added."
            );
        Sys.println("");

        if (!result)
            Sys.exit(EXIT_FAILURE);
    }

    /**
     * TODO
     */
	static function processFlashDevelopTemplate(install)
	{
		if (system != Windows)
		{
			Sys.println("");
			Sys.println("STATUS: The FlashDevelop template can only be installed on Windows.");
			Sys.println("");
            Sys.exit(EXIT_FAILURE);
		}

		// Construct the installation path.
		//

		var dstPath = Sys.getEnv("LOCALAPPDATA");
		var slash = dstPath.substr(-1);
		if (slash=="/"|| slash=="\\")
			dstPath = dstPath.substr(0, dstPath.length - 1);
		
		var installationPath = dstPath + "\\FlashDevelop\\Projects\\399 Haxe - gameplay Project";
		
		// Install or remove the FlashDevelop template.
		//

		if (install)
		{
            var result = copyDirectory("templates\\FlashDevelop", installationPath);

            // Add the default platform: windows-x86
            //

            if (result)
            {
                result = copyDirectory(
                            "templates\\platforms\\windows-x86",
                            Std.format("${installationPath}\\platforms\\windows-x86")
                        );
            }

			if (result)
			{
				result = copyFile(
							"templates\\platforms\\*windows-x86*.*",
							installationPath
						);
			}
			Sys.println("");
			Sys.println(
					if (result)
						"STATUS: FlashDevelop template successfully installed."
					else
						"STATUS: Failed to install the FlashDevelop template."
					);
			Sys.println("");

            if (!result)
                Sys.exit(EXIT_FAILURE);
		}
		else
		{
			var result = Sys.command(Std.format("rmdir /S /Q \"$installationPath\""));
			Sys.println("");
			Sys.println(
					if (result == 0)
						"STATUS: FlashDevelop template successfully removed."
					else
						"STATUS: Failed to remove the FlashDevelop template."
				);
			Sys.println("");

            if (result != 0)
                Sys.exit(EXIT_FAILURE);
		}
	}

    /**
     * TODO
     */
	static function processBuildFiles()
	{
		var srcFilePath = invocationPath + "/.cpp/Build.xml";
		var dstFilePath = invocationPath + "/platforms/.obj/Build.xml";

		var xml = Xml.parse(File.getContent(srcFilePath)).firstElement();

        for (element in xml.elementsNamed("files"))
        {
            for (child in element.elements())
            {
                if (child.nodeName == "compilerflag")
                    child.set("value", "-I../../.cpp/include");
                else
                {
                    child.set("name", "../../.cpp/" + child.get("name"));
                    for (dep in child.elementsNamed("depend"))
                        dep.set("name", "../../.cpp/" + dep.get("name"));
                }
            }
        }

        for (element in xml.elementsNamed("set"))
        {
            if (element.get("name") == "HAXE_OUTPUT")
                element.set("value", "game");
        }

		File.saveContent(dstFilePath, xml.toString());

        // Copy Options.txt also.
        //

        if (system == Windows)
        {
            copyFile(
                    invocationPath + "\\.cpp\\Options.txt",
                    invocationPath + "\\platforms\\.obj\\Options.txt"
                );
        }
        else
        {
            copyFile(
                    invocationPath + "/.cpp/Options.txt",
                    invocationPath + "/platforms/.obj/Options.txt"
                );
        }
	}

    /**
     * TODO
     */
    static function copyFile(file, destination)
    {
        var result =
            if (system == Windows)
                Sys.command(Std.format("copy /y \"${file}\" \"${destination}\""));
            else
                Sys.command(Std.format("cp -p ${file} ${destination}"));

        return result == 0;
    }

    /**
     * TODO
     */
    static function copyDirectory(source, destination)
    {
        var result =
            if (system == Windows)
                Sys.command(Std.format("mkdir \"${destination}\""));
            else
                Sys.command(Std.format("[ ! -d ${destination} ] && mkdir -p ${destination}"));

        if (result != 0)
            return false;

        result =
            if (system == Windows)
                Sys.command(Std.format("xcopy /s /e /y \"${source}\" \"${destination}\""));
            else
                Sys.command(Std.format("rsync -rlp  ${source}/ ${destination}"));

        return result == 0;
    }
}
