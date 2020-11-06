#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Load Data

population <- read.csv("./usPopulation.csv")

# This is our shiny server
function(input, output) { 
    
    output$number_of_people <- renderPlot({ 
        
        # Plotting a barplot 
        barplot(population[,input$State],  
                main=input$State, 
                ylab="Count of people", 
                xlab="Year") 
    })
}
