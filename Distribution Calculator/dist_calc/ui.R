library(shiny)

shinyUI(pageWithSidebar(
        
        headerPanel(h3("ADM2303B&C - Distribution Calculator")),
  
  sidebarPanel(
    #radio button or dropdown?

    selectInput(inputId = "dist",
                label = "Distribution:",
                choices = c("Normal"      = "rnorm",
                            "Binomial"    = "rbinom"),
                selected = "rbinom"),
    

    br(),

    uiOutput("mean"),
    uiOutput("sd"),
    uiOutput("df1"),
    uiOutput("df2"),
    uiOutput("n"),
    uiOutput("p"),

    br(),
    br(),

    helpText("Model:"),
    div(textOutput("model"),style="text-indent:20px;font-size:125%;"),
    br(),

    uiOutput("tail"),
    uiOutput("lower_bound"),
    uiOutput("upper_bound"),
    

    uiOutput("a"),
    uiOutput("b"),
    
    br(),
    hr(),
    
    
    strong("Resources and References:"),   
    
    helpText("Created using" , a(href="http://www.r-project.org/", target="_blank", "R."), "Hosted by" , a(href="http://www.rstudio.com/", target="_blank", "RStudio.")),
    helpText("Source code available on" , a(href="https://github.com/Davood-Astaraky/ADM2303/tree/gh-pages/Distribution%20Calculator/dist_calc", target="_blank", "GitHub.")),
    helpText("Codes are adopted based on the work of" , a(href="https://github.com/mine-cetinkaya-rundel", target="_blank", "Dr. Mine Cetinkaya-Rundel"), ", Duke university, in collaboration with",  a(href="https://stat.duke.edu/people/brittany-cohen", target="_blank", "Brittany Cohen."))),
  
  
  
  mainPanel(
    plotOutput("plot"),
    div(textOutput("area"), align = "center", style="font-size:150%;")
  )
))