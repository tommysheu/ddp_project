library(UsingR)
data(mtcars)

shinyServer(
  function(input, output) {
    output$newPlot <- renderPlot({
      if (input$variable == 'Automatic/Manual Transmission') {
        plot(mpg~am,mtcars)
        fit1 <- lm(mpg~am,data=mtcars)
      }
      else if (input$variable == 'Weight') {
        plot(mpg~wt,mtcars)
        fit1 <- lm(mpg~wt,data=mtcars)
      }
      else if (input$variable == 'Cylinders') {
        plot(mpg~cyl,mtcars)
        fit1 <- lm(mpg~cyl,data=mtcars)
      }
      abline(fit1,col="red")
      })
    
  }
)