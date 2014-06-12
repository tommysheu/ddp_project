shinyUI(pageWithSidebar(
  headerPanel("Motor Trend Car Road Test"),
  sidebarPanel(
    selectInput('variable', 'Variable', c('Automatic/Manual Transmission', 'Weight','Cylinders'))
  ),
  mainPanel(
    h3('Find the relation of outcome MPG with different input variable'),
    h4('You may choose Automatic/Manual Transmission, Weight or Cyllinder '),
    plotOutput('newPlot')
  )
))