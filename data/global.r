library(shiny)
library(leaflet)
library(dplyr)

df = read.csv("C:/Users/ywx12/Desktop/github/wxyang007.github.io/data/pts.csv", stringsAsFactors = F)

shinyApp(ui, server)
