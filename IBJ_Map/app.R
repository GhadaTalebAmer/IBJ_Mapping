library(shiny)
library(tidyverse)
library(tidytext)
library(ggplot2)
library(shinythemes)
library(leaflet)
library(RColorBrewer)
library(leaflet.extras)
library(DT)
library(plotly)
library(scales)
library(knitr)
library(formattable)
library(janitor)
library(readr)
library(dplyr)
library(devtools)
library(lubridate)
library(ggthemes)
library(gganimate)
library(png)
library(gifski)
library(shinycssloaders)


ui <- fluidPage(theme = shinytheme("yeti"),
                
                
                titlePanel(img(src = "https://www.ibj.org/wp_main/wp-content/uploads/2017/11/IBJ-logo.jpg", 
                               width = "100px",
                               height = "100px")),
                h2("International Bridges to Justice Data Portal"),
                
                tabsetPanel(
                  
                  tabPanel(
                    title = "Interactive Map",
                    mainPanel(
                      h3("Global Coverage of IBJ"),
                      leafletOutput(outputId = "leaflet_map", width = 1375, height = 600))),
                  )
                  
                  
                )
server <- function(input, output) {
  
  
  output$leaflet_map <- renderLeaflet({
    
  })
  
}




# Run the application 
shinyApp(ui = ui, server = server)

  
