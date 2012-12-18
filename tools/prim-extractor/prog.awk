BEGIN {
	if (mode == "static") file = "header_static.hx";
	else file = "header.hx";

    while ((getline line < file) > 0)
        print(line);
}

END {

    first = 0;

    while (length(output) > 10000)
    {
        if (first == 1)
        {
            print
            printf " + ";
        }

        first = 1;
        printf "\"" substr(output, 0, 9999) "\"";
        output = substr(output, 10000);
    }

    if (length(output) > 0)
    {
        if (first == 1)
        {
            print ""
            printf " + ";
        }

        printf "\"" output "\"";
    }

    print ";"

	if (mode == "static") file = "footer_static.hx";
	else file = "footer.hx";

    while ((getline line < file) > 0)
        print(line);
}

{
    if (index($0, "DEFINE_PRIM_MULT") == 1)
    {
        match($0, /\(([^\)]*)\)/, fields);
		if (mode == "static")
			print("    " "static var " fields[1] ":Dynamic = cpp.Lib.load(\"gameplay\", \"" fields[1] "\", -1);");
        else
            output = output fields[1] "$-1$"
    }
    else if (index($0, "DEFINE_PRIM") == 1 || index($0, "DECLARE_PRIM") == 1)
    {
        match($0, /\(([^,]*),[ ]?([^\)]*)\)/, fields)
		if (mode == "static")
			print("    " "static var " fields[1] ":Dynamic = cpp.Lib.load(\"gameplay\", \"" fields[1] "\", " fields[2] "); ");
        else
            output = output fields[1] "$" fields[2] "$"
    }
}
