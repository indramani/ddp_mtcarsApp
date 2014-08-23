library(shiny)
data(mtcars)
# Define UI for application that draws a histogram
shinyUI(fluidPage(

  # Application title
  titlePanel("mtcars data explorer"),

  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
selectInput('x', 'X', names(mtcars)),
selectInput('y', 'Y', names(mtcars)),
selectInput('factor', 'Factor', names(mtcars)),
h4("Parameters in mtcars"),
p("         mpg	  	=> Miles/(US) gallon                       ") ,
p("         cyl 	=>  Number of cylinders                     "), 
p("         disp 	=> Displacement (cu.in.)                   "), 
p("         hp   	=> Gross horsepower                        "), 
p("         drat 	=> Rear axle ratio                         "), 
p("         wt   	=> Weight (lb/1000)                        "), 
p("         qsec 	=> 1/4 mile time                           "), 
p("         vs   	=> V/S                                     "), 
p("         am   	=> Transmission (0 = automatic, 1 = manual)"), 
p("         gear 	=> Number of forward gears                 "), 
p("         carb 	=> Number of carburetors        ") 

    ),

    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot"),

h4("What is this app for?"),
p(" I was working on my project on regression models course. In this course we were asked to find out if automatic or manual transmission has any correlation to mpg (miles per galon) metric. we were supposed to use mtcars data provided by R. While doing that project I thought that it would be nice if we could explore correlation between two variables give another variable as a factor. "),
p( " This app helps us exploring mtcars data and correlations between various parameters listed in it. You can choose X axis paramater, Y axis parameter and a  factor parameter from the list of mtcars column names. The list is given in left side  bar for easy reference. Graph is responsive, whenever you change any of these three parameters, it refreshes plots in main window. This should be a handy tool in exploring correlations in mtcars database.") 

    )
  )
))
