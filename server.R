library(shiny)
data(mtcars)
mtcars$am<-as.factor(mtcars$am)
mtcars$cyl<-as.factor(mtcars$cyl)
mtcars$gear<-as.factor(mtcars$gear)
mtcars$carb<-as.factor(mtcars$carb)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

  # Expression that generates a histogram. The expression is
  # wrapped in a call to renderPlot to indicate that:
  #
  #  1) It is "reactive" and therefore should re-execute automatically
  #     when inputs change
  #  2) Its output type is a plot

  output$distPlot <- renderPlot({
    x    <- faithful[, 2]  # Old Faithful Geyser data
#    bins <- seq(min(x), max(x), length.out = input$bins + 1)

    x <- input$x
    y <- input$y
    factor <- input$factor
    # draw the histogram with the specified number of bins
#    hist(x, breaks = bins, col = 'darkgray', border = 'white')
	coplot(as.formula(paste(y,'~',x,'|', factor)),data=mtcars,panel = panel.smooth, rows = 1)
  })
})
