


library(shiny)

shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Twitter Followers"),
  
  # Sidebar with a input for user input
  sidebarPanel(
    textInput('twitterHandle',"Twitter Handle",""),
    sliderInput('maxFollowers',"Followers Download Limit",min = 0,max = 3000,value = 1000),
    downloadButton('downloadData',"Download Followers Data")
  ),
  
  mainPanel(
    tableOutput("twitTable")
  )
))
