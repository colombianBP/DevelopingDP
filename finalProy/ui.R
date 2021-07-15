library(shiny)
shinyUI(fluidPage(
    titlePanel("mtcars Correlation seeker"),
    sidebarLayout(
        sidebarPanel(
            selectInput("state1", "Choose a variable:",
                        c("Miles/(US) gallon", "Number of cylinders", "Displacement (cu.in.)","Gross horsepower","Rear axle ratio","Weight (1000 lbs)","1/4 mile time","Engine (0 = V-shaped, 1 = straight)","Transmission (0 = automatic, 1 = manual)","Number of forward gears","Number of carburetors"),
                             
            ),
            selectInput("state2", "Choose a variable:",
                        c("Miles/(US) gallon", "Number of cylinders", "Displacement (cu.in.)","Gross horsepower","Rear axle ratio","Weight (1000 lbs)","1/4 mile time","Engine (0 = V-shaped, 1 = straight)","Transmission (0 = automatic, 1 = manual)","Number of forward gears","Number of carburetors"),
            ),
            h3("This app generates a plot comparing two variables from the mtcars dataset. Simply select the variable you want to evaluate; owr goal here is to quickly and vissually look for relationships between these variables.")
        ),
        mainPanel(
            plotOutput("plot"),
            textOutput("text"),
            
        )
    )
))