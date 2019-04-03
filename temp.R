```{r whereivebeen, echo=FALSE, warning=FALSE,comment=NA,message=FALSE}
library(shiny)
library(leaflet)
library(dplyr)

df = read.csv("./data/pts.csv", stringsAsFactors = F)

shinyApp(
  s
  
  ui <- fluidPage(leafletOutput("mymap",height = 1000)),
  
  
  server <- function(input,output, session){
    data <- reactive({
      x <- df
    })
    
    output$mymap <- renderLeaflet({
      df <- data()
      m <- leaflet(data = df) %>%
        addTiles() %>%
        addMarkers(lng = ~longitude,
                   lat = ~latitude)
      m
    })
  }
)




```