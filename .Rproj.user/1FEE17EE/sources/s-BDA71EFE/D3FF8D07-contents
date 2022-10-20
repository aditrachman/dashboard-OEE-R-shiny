tags$style("@import url(https://use.fontawesome.com/releases/v5.7.2/css/all.css);")

tags$style(
  "@import url('https://fonts.googleapis.com/css2?family=Comfortaa&display=swap');"
)


dashboardPage(
  skin = "blue",
  dashboardHeader(
    title = strong("T E K N O M E D I K A", style = "font-family: 'Comfortaa', cursive;"),
    titleWidth = 235
  ),
  ##tittle
  
  dashboardSidebar(
    sidebarMenu(
      ##open sidebar
      menuItem(
        text = "Home",
        tabName = "home",
        icon = icon("home")
      ),
      
      menuItem(
        text = "OUTPUT",
        tabName = "output",
        icon = icon("book")
      ),
      
      menuItem(
        "MESIN",
        icon = icon("clone"),
        menuSubItem( tabName = "mesin1", "MESIN 1", icon = icon("buffer")),
        menuSubItem(tabName = "mesin2", "MESIN 2", icon = icon("fill-drip")),
        menuSubItem(tabName = "mesin3", "MESIN 3", icon = icon("compress")),
        menuSubItem(tabName = "mesin4", "MESIN 4", icon = icon("grip-lines")),
        menuSubItem(tabName = "mesin5", "MESIN 5", icon = icon("expand-alt")),
        menuSubItem(tabName = "mesin6", "MESIN 6", icon = icon("sliders-h"))
      ),
      shinyjs::useShinyjs(),
      
      menuItem(
        text = "O E E",
        tabName = "oee",
        icon = icon("cogs")
      )
    )
  ),
  ##close sidebar
  
  dashboardBody(
    tabItems(
      ##body | body 1
      tabItem(
        tabName = "home",
        
        
        valueBox(
          value = head(n, 1),
          width = 3,
          subtitle = strong("RP 1011"),
          icon = icon("italic"),
          color = "red"
        ),
        
        valueBox(
          value = 0,
          width = 3,
          subtitle = strong("RP 2011"),
          icon = icon("archive"),
          color = "blue"
        ),
        valueBox(
          value = head(f, 1),
          width = 3,
          subtitle = strong("RP 8011"),
          icon = icon("truck-loading"),
          color = "green"
        ),
        valueBox(
          value = 0,
          width = 3,
          subtitle = strong("AIRMED"),
          icon = icon("check-circle"),
          color = "yellow"
        ),
        valueBox(
          value = fcfg,
          width = 12,
          subtitle = strong("FORECAST FINISH GOOD 1 MONTH NEXT"),
          icon = icon("hourglass-half"),
          color = "purple"
        ),
        
        fluidRow(column(
          12,
          box(
            width = 12,
            title = "Finish good",
            
            status = "primary",
            solidHeader = TRUE,
            plotlyOutput("dashboard",
                         height = "50vh",
                         width = "100%")
          )
        ))
      ),
      
      tabItem(
        tabName = "output",
        
        valueBox(
          value = 1,
          
          subtitle = strong("MESIN 1"),
          icon = icon("asterisk"),
          color = "red"
        ),
        valueBox(
          value = 1,
          
          subtitle = strong("MESIN 2"),
          icon = icon("i-cursor"),
          color = "yellow"
        ),
        
        valueBox(
          value = 1,
          subtitle = strong("MESIN 3"),
          icon = icon("border-none"),
          color = "aqua"
        ),
        ##mesin 4 belum dijumlah kan semua karena mesin 4b mati
        valueBox(
          value = 1,
          subtitle = strong("MESIN 4"),
          icon = icon("burn"),
          color = "olive"
        ),
        valueBox(
          value = 1,
          subtitle = strong("MESIN 5"),
          icon = icon("caret-square-down"),
          color = "purple"
        ),
        
        valueBox(
          value = 1,
          subtitle = strong("MESIN 6"),
          icon = icon("certificate"),
          color = "fuchsia"
        )),
      
      
      
      
      tabItem(
        tabName = "mesin1",
        column(4, box(
          title = "TAKT",
          solidHeader = TRUE,
          status = "warning",
          width = 15,
          plotlyOutput("gaugem1" , height = 165)
        )),
        valueBox(
          value = oeemesin1,
          width = 4,
          subtitle = strong("Overall OEE"),
          icon = icon("box-open"),
          color = "red"
        ),
        valueBox(
          value = round(avail ,3),
          width = 4,
          subtitle = strong("Availability"),
          icon = icon("archive"),
          color = "blue"
        ),
        valueBox(
          value = round(prfm, 3),
          width = 4,
          subtitle = strong("Performance"),
          icon = icon("truck-loading"),
          color = "green"
        ),
        valueBox(
          value = qul,
          width = 4,
          subtitle = strong("Quality"),
          icon = icon("check-circle"),
          color = "yellow"
        ),
        
        
        
        fluidRow(column(
          12,
          box(
            width = 12,
            title = "MESIN 1",
            
            status = "primary",
            solidHeader = TRUE,
            plotlyOutput("pmesin1",
                         height = "50vh",
                         width = "100%")
          )
        )),
        fluidRow(column(
          6,
          box(
            width = 12,
            title = "PPH",
            
            status = "primary",
            solidHeader = TRUE,
            plotlyOutput("tesrm1",
                         height = "50vh",
                         width = "100%")
          )
        ),
        column(
          6,
          box(
            width = 12,
            title = "REJECT",
            
            status = "primary",
            solidHeader = TRUE,
            plotlyOutput("tesrm1_2",
                         height = "50vh",
                         width = "100%")
          )
        ))),
      
      
      tabItem(
        tabName = "mesin2",
        column(4, box(
          title = "TAKT",
          solidHeader = TRUE,
          status = "warning",
          width = 15,
          plotlyOutput("gaugem2" , height = 165)
        )),
        valueBox(
          value = oeemesin2,
          width = 4,
          subtitle = strong("Overall OEE"),
          icon = icon("box-open"),
          color = "red"
        ),
        valueBox(
          value = round(avail ,3),
          width = 4,
          subtitle = strong("Availability"),
          icon = icon("archive"),
          color = "blue"
        ),
        valueBox(
          value = round(prfm, 3),
          width = 4,
          subtitle = strong("Performance"),
          icon = icon("truck-loading"),
          color = "green"
        ),
        valueBox(
          value = qul2,
          width = 4,
          subtitle = strong("Quality"),
          icon = icon("check-circle"),
          color = "yellow"
        ),
        
        ##oee body
        fluidRow(column(
          12,
          box(
            width = 12,
            title = "MESIN 2",
            
            status = "primary",
            solidHeader = TRUE,
            plotlyOutput("pmesin2",
                         height = "50vh",
                         width = "100%")
          )
        ))
      ),
      
      
      tabItem(
        tabName = "mesin3",
        column(4, box(
          title = "TAKT",
          solidHeader = TRUE,
          status = "warning",
          width = 15,
          plotlyOutput("gaugem3" , height = 165)
        )),
        valueBox(
          value = oeemesin2,
          width = 4,
          subtitle = strong("Overall OEE"),
          icon = icon("box-open"),
          color = "red"
        ),
        valueBox(
          value = round(avail ,3),
          width = 4,
          subtitle = strong("Availability"),
          icon = icon("archive"),
          color = "blue"
        ),
        valueBox(
          value = round(prfm, 3),
          width = 4,
          subtitle = strong("Performance"),
          icon = icon("truck-loading"),
          color = "green"
        ),
        valueBox(
          value = qul3,
          width = 4,
          subtitle = strong("Quality"),
          icon = icon("check-circle"),
          color = "yellow"
        ),
        ##oee body
        fluidRow(column(
          12,
          box(
            width = 12,
            title = "MESIN 3",
            
            status = "primary",
            solidHeader = TRUE,
            plotlyOutput("pmesin3",
                         height = "50vh",
                         width = "100%")
          )
        ))
      ),
      
      
      
      
      tabItem(
        tabName = "mesin4",
        
        column(4, box(
          title = "TAKT",
          solidHeader = TRUE,
          status = "warning",
          width = 15,
          plotlyOutput("gaugem1" , height = 165)
        )),
        valueBox(
          value = oeemesin1,
          width = 4,
          subtitle = strong("Overall OEE"),
          icon = icon("box-open"),
          color = "red"
        ),
        valueBox(
          value = round(avail ,3),
          width = 4,
          subtitle = strong("Availability"),
          icon = icon("archive"),
          color = "blue"
        ),
        valueBox(
          value = round(prfm, 3),
          width = 4,
          subtitle = strong("Performance"),
          icon = icon("truck-loading"),
          color = "green"
        ),
        valueBox(
          value = qul,
          width = 4,
          subtitle = strong("Quality"),
          icon = icon("check-circle"),
          color = "yellow"
        ),
        ##oee body
        fluidRow(column(
          12,
          box(
            width = 12,
            title = "MESIN 4 A",
            
            status = "primary",
            solidHeader = TRUE,
            plotlyOutput("mesin4_a",
                         height = "50vh",
                         width = "100%")
          )
        ),
        column(4, box(
          title = "TAKT",
          solidHeader = TRUE,
          status = "warning",
          width = 15,
          plotlyOutput("gaugem1" , height = 165)
        )),
        valueBox(
          value = oeemesin1,
          width = 4,
          subtitle = strong("Overall OEE"),
          icon = icon("box-open"),
          color = "red"
        ),
        valueBox(
          value = round(avail ,3),
          width = 4,
          subtitle = strong("Availability"),
          icon = icon("archive"),
          color = "blue"
        ),
        valueBox(
          value = round(prfm, 3),
          width = 4,
          subtitle = strong("Performance"),
          icon = icon("truck-loading"),
          color = "green"
        ),
        valueBox(
          value = qul,
          width = 4,
          subtitle = strong("Quality"),
          icon = icon("check-circle"),
          color = "yellow"
        ),
        column(
          12,
          box(
            width = 12,
            title = "MESIN 4 B",
            
            status = "primary",
            solidHeader = TRUE,
            plotlyOutput("mesin4_b",
                         height = "50vh",
                         width = "100%")
          )
        ))
      ),
      
      tabItem(
        ##mesin5 body
        tabName = "mesin5",
        column(4, box(
          title = "TAKT",
          solidHeader = TRUE,
          status = "warning",
          width = 15,
          plotlyOutput("gaugem1" , height = 165)
        )),
        valueBox(
          value = oeemesin1,
          width = 4,
          subtitle = strong("Overall OEE"),
          icon = icon("box-open"),
          color = "red"
        ),
        valueBox(
          value = round(avail ,3),
          width = 4,
          subtitle = strong("Availability"),
          icon = icon("archive"),
          color = "blue"
        ),
        valueBox(
          value = round(prfm, 3),
          width = 4,
          subtitle = strong("Performance"),
          icon = icon("truck-loading"),
          color = "green"
        ),
        valueBox(
          value = qul,
          width = 4,
          subtitle = strong("Quality"),
          icon = icon("check-circle"),
          color = "yellow"
        ),
        
        
        
        fluidRow(column(
          12,
          box(
            width = 12,
            title = "MESIN 5 A",
            
            status = "primary",
            solidHeader = TRUE,
            selectInput(
              inputId = "",
              label = "",
              choices = (2)
            ),
            plotlyOutput("",
                         height = "50vh",
                         width = "100%")
          )
        ),
        column(4, box(
          title = "TAKT",
          solidHeader = TRUE,
          status = "warning",
          width = 15,
          plotlyOutput("gaugem1" , height = 165)
        )),
        valueBox(
          value = oeemesin1,
          width = 4,
          subtitle = strong("Overall OEE"),
          icon = icon("box-open"),
          color = "red"
        ),
        valueBox(
          value = round(avail ,3),
          width = 4,
          subtitle = strong("Availability"),
          icon = icon("archive"),
          color = "blue"
        ),
        valueBox(
          value = round(prfm, 3),
          width = 4,
          subtitle = strong("Performance"),
          icon = icon("truck-loading"),
          color = "green"
        ),
        valueBox(
          value = qul,
          width = 4,
          subtitle = strong("Quality"),
          icon = icon("check-circle"),
          color = "yellow"
        ),
        column(
          12,
          box(
            width = 12,
            title = "MESIN 5 B",
            
            status = "primary",
            solidHeader = TRUE,
            selectInput(
              inputId = "",
              label = "Pilih Minggu",
              choices = (2)
            ),
            plotlyOutput("",
                         height = "50vh",
                         width = "100%")
          )
        )),
        
        fluidRow(column(
          12,
          box(
            width = 12,
            title = "MESIN 5 c",
            
            status = "primary",
            solidHeader = TRUE,
            selectInput(
              inputId = "",
              label = "Pilih Minggu",
              choices = (2)
            ),
            plotlyOutput("",
                         height = "50vh",
                         width = "100%")
          )
        ),
        column(4, box(
          title = "TAKT",
          solidHeader = TRUE,
          status = "warning",
          width = 15,
          plotlyOutput("gaugem1" , height = 165)
        )),
        valueBox(
          value = oeemesin1,
          width = 4,
          subtitle = strong("Overall OEE"),
          icon = icon("box-open"),
          color = "red"
        ),
        valueBox(
          value = round(avail ,3),
          width = 4,
          subtitle = strong("Availability"),
          icon = icon("archive"),
          color = "blue"
        ),
        valueBox(
          value = round(prfm, 3),
          width = 4,
          subtitle = strong("Performance"),
          icon = icon("truck-loading"),
          color = "green"
        ),
        valueBox(
          value = qul,
          width = 4,
          subtitle = strong("Quality"),
          icon = icon("check-circle"),
          color = "yellow"
        ),
        column(
          12,
          box(
            width = 12,
            title = "MESIN 5 d",
            
            status = "primary",
            solidHeader = TRUE,
            selectInput(
              inputId = "",
              label = "Pilih Minggu",
              choices = (2)
            ),
            plotlyOutput("",
                         height = "50vh",
                         width = "100%")
          )
        ))
        
      ),
      
      tabItem(
        tabName = "mesin6",
        column(4, box(
          title = "TAKT",
          solidHeader = TRUE,
          status = "warning",
          width = 15,
          plotlyOutput("gaugem1" , height = 165)
        )),
        valueBox(
          value = oeemesin1,
          width = 4,
          subtitle = strong("Overall OEE"),
          icon = icon("box-open"),
          color = "red"
        ),
        valueBox(
          value = round(avail ,3),
          width = 4,
          subtitle = strong("Availability"),
          icon = icon("archive"),
          color = "blue"
        ),
        valueBox(
          value = round(prfm, 3),
          width = 4,
          subtitle = strong("Performance"),
          icon = icon("truck-loading"),
          color = "green"
        ),
        valueBox(
          value = qul,
          width = 4,
          subtitle = strong("Quality"),
          icon = icon("check-circle"),
          color = "yellow"
        ),
        ##oee body
        fluidRow(column(
          12,
          box(
            width = 12,
            title = "MESIN 6",
            
            status = "primary",
            solidHeader = TRUE,
            plotlyOutput("pmesin6",
                         height = "50vh",
                         width = "100%")
          )
        ))
      ),
      
      tabItem(
        tabName = "oee",
        ##oee body
        valueBox(
          value = "20%",
          width = 3,
          subtitle = strong("Overall OEE"),
          icon = icon("box-open"),
          color = "red"
        ),
        valueBox(
          value = "21%",
          width = 3,
          subtitle = strong("Availability"),
          icon = icon("archive"),
          color = "blue"
        ),
        valueBox(
          value = "23%",
          width = 3,
          subtitle = strong("Performance"),
          icon = icon("truck-loading"),
          color = "green"
        ),
        valueBox(
          value = "90%",
          width = 3,
          subtitle = strong("Quality"),
          icon = icon("check-circle"),
          color = "yellow"
        ),
        
        fluidRow(
          column(4, box(
            title = "PPH",
            width = 15,
            plotlyOutput("", height = 150),
            progressBar(
              id = "pb4",
              title = "Target tercapai",
              value = 80,
              display_pct = TRUE
            )
          )),
          column(4, box(
            title = "TAKT",
            width = 15,
            plotlyOutput("oee2" , height = 150),
            progressBar(
              id = "pb4",
              title = "Target tercapai",
              value = 34,
              display_pct = TRUE
            )
          )),
          column(4, box(
            title = "BLL",
            width = 15,
            plotlyOutput("oee3" , height = 150),
            progressBar(
              id = "pb4",
              title = "Target tercapai",
              value = 65,
              display_pct = TRUE
            )
          )),
          column(8, box(
            title = "BLL",
            width = 15,
            plotlyOutput("oee4" , height = 235)
          )),
          column(
            4,
            box(
              title = "Overall OEE",
              width = NULL,
              solidHeader = TRUE,
              status = "danger",
              "Avaibility",
              "tes"
            ),
            box(
              title = "Avaibility",
              width = NULL,
              solidHeader = TRUE,
              status = "warning",
              "Box content"
            ),
            box(
              title = "Performance",
              width = NULL,
              solidHeader = TRUE,
              status = "info",
              "Box content"
            )
          )
        )
      )
      
      
    )
  )
)
