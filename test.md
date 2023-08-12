# What is R?

R is a free, open-source language and environment used primarily for statistical analysis and graphics. It shares similarities with software like SAS and S+, but outstrips them in its flexibility and the quality of the visualizations it can produce. As a programming language, the range of tasks it can undertake is near limitless. R is especially dominant in academia and government, and it's making significant strides in fields like biotech and finance.

Here are some distinguishing characteristics about R:
* It's free (which is always nice!)
* Features abundant academic and technical resources
* Sports an extensive and dedicated user community
* Fosters a culture of sharing with its open-source approach

Learn more about the [increasing popularity of R](https://r4stats.com/articles/popularity/).

# R vs Excel: A Showdown

## Excel: The crowd pleaser

Excel is ubiquitous in workplaces for its user-friendly interface and familiar features. It provides a straightforward way to sort and explore data. 

## Excel: Tripping on its shoelaces

However, Excel isn't foolproof. Errors can easily creep into your work, and it's particularly cumbersome with large datasets. Repeating a series of steps can be a task, and without comprehensive documentation, it's often challenging to retrace the steps of an analysis. Plus, creating figures is manual labor — it's not easy to create identically formatted visuals.

## R: The intimidating genius 

R can seem daunting initially. Debugging errors can be like solving cryptic crossword puzzles, and structured support often comes in the form of obscure Google searches. Sharing data analyses with colleagues who are unfamiliar with R could resemble translating an ancient script.

## R: The surprise charmer 

But once you become comfortable with R, it's a gamechanger. As R lays out all the steps of your work, it becomes more challenging to make mistakes. It can handle immense data sizes (provided you know the know-how). The compelling attribute about R is the reproducibility and repeatability it brings to work, creating a robust workflow. Furthermore, the sizeable active user community means help is always at hand and innovations are a regular occurrence. 

## When to stick with Excel

If you're working with a small dataset, conducting a one-time analysis, or generating basic visuals, Excel might just serve you well. 

## When to make a bee-line for R

If your work involves repeating analyses, handling lots of variables, producing advanced visuals, or dealing with large datasets, R is the tool for you. Often, people start as hybrid users and gravitate to R over time.

# R and RStudio

You will interact with two software applications: R and RStudio. R forms the bedrock, and RStudio, the interface, makes the user experience with R more pleasant. 

## R in its raw form

To get started with R, you can download it from [this page](https://cran.r-project.org/). Opening R on its own presents a simple R console.

![Plain R console](img/r1.png)

## Bringing color to R with RStudio 

RStudio, a user-friendly Integrated Development Environment (IDE), takes the R experience up a notch. Download this free software from the [Posit website](https://posit.co/download/rstudio-desktop/). Though it's not essential for using R, in these lessons, we'll take it for granted that you're interacting with R using RStudio. 

Here's what you see when you open RStudio for the first time:

![RStudio initial screen](img/rstudio1.png)

The left panel, known as the console, is where you enter R commands. If you input `1 + 1` and press "Enter", the console displays the result. 

![RStudio after calculation](img/rstudio2.png)

For maintaining and managing your code, use a script. To create one, select "File" -> "New File" -> "R Script", and it will appear in the top-left panel of RStudio. Scripts are text documents that can be saved using "File" -> "Save As". To run multiple lines of code at once, highlight your code and click the "Run" button on the script toolbar. 

![RStudio with script](img/rstudio4.png)

In RStudio, the bottom-right panel displays files, plots, loaded packages, and help pages. The top-right panel provides details about the variables in your R session.

# R basics

## Expressing yourself mathematically in R

You can perform a whole host of mathematical operations in R from addition to exponentiation. Here's how you would do them:

```r
10 + 5  # Addition
10 - 5  # Subtraction
10 * 5  # Multiplication
10 / 5  # Division
10 ^ 5  # Exponentiation
```

__Tip__: To execute these commands, copy them into your script, highlight them, and click the "Run" button on the toolbar of the script panel.

## The order of operations in R

R respects the usual mathematical order of operations. But when you need to establish a different order, use parentheses to group operations. 

Consider the following examples:

```r
10 - 3 / 5    # Here, R performs the division before the subtraction
(10 - 3) / 5  # Here, parentheses prioritize the subtraction, which is carried out before the division
```

## Making a point (and not having R evaluate it)

To write a comment that R won't evaluate, prefix it with a `#`. Anything after the `#` won't be run. Test this out by running the code below:

```r
1 + 1 # Casual addition
# Fully committed to commenting
```

## Creating objects

Objects in R store information. To create an object, we assign it a value using an arrow symbol that points to the left `<-`.

Here's how you'd go about it:

```r
x <- 10  # Defining the object x
y <- 5   # Defining the object y
x + y    # Performing arithmetic using objects
```
__Note__: You'll notice a sea of objects flood the top-right panel as soon as they're defined!

![Creating objects](img/rstudio5.png)

Reassigning a value to an object you've already created is permitted. Check this out:

```r
x  # Currently x stores the number 10
x <- 20  # You've now overwritten x to store the number 20
x  # Let's see if x has indeed changed its stripes
```
As expected, the number stored in the object `x` has been updated. 

![Updating objects](img/rstudio6.png)

R doesn't restrict what you can name a variable. `x`, `X`, `x2`, `my.data`, `my.text` - they're all fair game. However, bear in mind three key naming rules:
1. Your variable name can't start with a number.
2. Spaces and special characters (like `$`, `%`, `#`, `-`) are no go. Periods are fine.
3. R is case-sensitive. Object names `my.data` and `My.data` or `x` and `X` would all be treated as different objects.
   Get your hands dirty by running the following code. Doing so will convince you that `x` and `X` are indeed two different objects.

```r
x <- 5
X <- 5
```

# R object types

R houses three main types of objects:

Type       | Description          | Examples
-----------|----------------------|---------
Character  | Letters and words    | "z", "red", "H2O"
Numeric    | Numbers              | 1, 3.14, log(10)
Logical    | Binary (true or false) values  | TRUE, FALSE

Beyond these basics, R allows you to group data in more complex ways:

- __Vectors__: Think of these as containers for multiple values of the same type (only numbers, only letters, etc.). You wrap elements within a vector using `c()`. 
- __Lists__: These are like vectors, but way more accommodating. They can contain multiple values of different types (numbers, letters, etc.). Round up items into a list using `list()`.
- __Matrices__: Matrices are the equivalent of spreadsheets in R but contain only one data type.
- __Data Frames__: These are like matrices, but you can mix and match the types of data they contain. 

# Vectors

Vectors are your go-to locations to store multiple values of the same type. The function `c()` bundles the values together into a vector:

```r
x <- c(1, 2, 3, 4, 5)  # Creating a numeric vector
x
fruit <- c("apples","bananas","oranges")  # Creating a character vector
fruit
```
When you attempt to enter text without quotation marks, R throws a tantrum. This is because R perceives unquoted text as variables. If such variables don't exist, it's error city for R. 

```r
fruit <- c(apples, bananas, oranges)
fruit
```

# Lists

Lists are happy to accommodate data of different types: 

```r
x <- list("Benzene", 1.3, TRUE)
x
```
Check out how a list contains a mix of character, numeric, and logical data.

# Data frames

Data frames resemble spreadsheets and offer accommodation to data of varying types. They're put together using `data.frame()`, which corrals vectors of equal lengths:

```r
pollutant <- c("Benzene", "Toluene", "Xylenes")
concentration <- c(1.3, 5.5, 6.0)
carcinogen <- c(TRUE, FALSE, FALSE)
my.data <- data.frame(pollutant, concentration, carcinogen)
my.data
```
Vectors of unequal lengths though? That's a no-go.

With this introduction to the basics of R and its data types under our belt, we're ready to explore some exercises. NovLet's put our newfound knowledge to the test!
