#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)


# Loading the state wise population data in USA

population <- read.csv("./usPopulation.csv")


fluidPage(     
    
    # Give the page a title 
    titlePanel("Population per state"), 
    
    sidebarLayout(       
        
        
        # A sidebar for input 
        sidebarPanel(selectInput("State", "State:",  
                                 choices=colnames(population)), 
                     hr(), 
        ), 
        
        mainPanel( 
            plotOutput("number_of_people")   
        ) 
        
    ) 
) 