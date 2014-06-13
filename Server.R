library(UsingR)
data(mtcars)

shinyServer(
  function(input, output) {
    output$newPlot <- renderPlot({
      par(mfrow=c(1,2))
      if (input$variable == 'Automatic/Manual Transmission') {
        plot(mpg~am,mtcars)
        fit1 <- lm(mpg~am,data=mtcars)
        abline(fit1,col="red")
        plot(residuals(fit1),type="h",main="model 1: mpg ~ am",xlab="car index",ylab="residuals",)      }
      else if (input$variable == 'Weight') {
        plot(mpg~wt,mtcars)
        fit1 <- lm(mpg~wt,data=mtcars)
        abline(fit1,col="red")
        plot(residuals(fit1),type="h",main="model 2: mpg ~ wt",xlab="car index",ylab="residuals",)      }
      else if (input$variable == 'Cylinders') {
        plot(mpg~cyl,mtcars)
        fit1 <- lm(mpg~cyl,data=mtcars)
        abline(fit1,col="red")
        plot(residuals(fit1),type="h",main="model 3: mpg ~ cyl",xlab="car index",ylab="residuals",)      }
      })
    
  }
)