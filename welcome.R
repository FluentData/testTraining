

welcome <- function() {

    lb <- crayon::make_style(rgb(3,96,133, maxColorValue = 255))
    lg <- crayon::make_style(rgb(0,142,0, maxColorValue = 255))

    logo <- c(
    ("\n"),
    lb(" █████         █████████   ██████████  "), lg("   █████████     ███████\n"),
    lb("░░███         ███░░░░░███ ░░███░░░░███ "), lg("  ███░░░░░███  ███░░░░░███\n"),
    lb(" ░███        ░███    ░███  ░███   ░░███"), lg(" ███     ░░░  ███     ░░███\n"),
    lb(" ░███        ░███████████  ░███    ░███"), lg("░███         ░███      ░███\n"),
    lb(" ░███        ░███░░░░░███  ░███    ░███"), lg("░███         ░███      ░███\n"),
    lb(" ░███      █ ░███    ░███  ░███    ███ "), lg("░░███     ███░░███     ███ \n"),
    lb(" ███████████ █████   █████ ██████████  "), lg(" ░░█████████  ░░░███████░  \n"),
    lb("░░░░░░░░░░░ ░░░░░   ░░░░░ ░░░░░░░░░░   "), lg("  ░░░░░░░░░     ░░░░░░░    \n\n")
    )

    logo <- paste(logo, collapse = "")

    message(ladco1(),
        crayon::black("Introduction to R for Air Quality Data Analysis\n"),
        crayon::black("_______________________________________________\n\n"),
        crayon::black("Please have a look at the vignettes for an \n"),
        crayon::black("overview of the lessions in this package. Or \n"),
        crayon::black("you can access the interactive lessons from the \n"),
        crayon::black("`Addins` dropdown at the top of the screen. \n\n"),
        crayon::black("If you have any trouble please use the package \n"),
        crayon::black("help files or contact the package authors.")
    )

}




