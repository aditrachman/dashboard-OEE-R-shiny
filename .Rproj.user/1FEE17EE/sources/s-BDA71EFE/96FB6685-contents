library(ggplot2)

server <- function(input, output) {
  shinyjs::runjs(
    "function reload_page() {
  window.location.reload();
  setTimeout(reload_page, 10000);
}
setTimeout(reload_page, 100000);
")
  
  
  
  
  
  
  ##dashboard plot
  output$dashboard <- renderPlotly({
    mcn5 <- fg_sum %>%
      
      ggplot(
        mapping = aes(
          x = Bulan,
          y = total_fg,
          text = glue("Bulan = {Bulan}
                    Total Finish Good = {total_fg}")
        )
      ) +
      geom_col(aes(fill = Bulan)) +
      geom_line(color = "blue") +
      theme_fivethirtyeight()
    ggplotly(mcn5, tooltip = "text")
    
  })
  ##dashboard plot 2
  output$oeedb <- renderPlotly({
    
    mcn5 <- fg_sum %>%
      
      ggplot(
        mapping = aes(
          x = Bulan,
          y = total_fg,
          text = glue("Bulan = {Bulan}
                    Total Finish Good = {total_fg}")
        )
      ) +
      geom_col(aes(fill = Bulan)) +
      geom_line(color = "blue") +
      bg="transparent"+
      theme_fivethirtyeight()
    ggplotly(mcn5, tooltip = "text")
    
  })
  
  
  ##tes plot pph mesin 1 di halaman mesin1
  output$tesrm1 <- renderPlotly({
    mcn5 <- rm1 %>%
      
      ggplot(
        mapping = aes(
          x = Time,
          y = PPH,
          text = glue("Tanggal = {Time}
                    PPH = {PPH}"),
        ),
        fill = "transparent"
      ) +
      geom_col() +
      geom_col(color = "blue") +
      theme_fivethirtyeight()
    ggplotly(mcn5, tooltip = "text")
    
  })
  ##2
  
  output$tesrm1_2 <- renderPlotly({
    mcn5 <- rm1_2 %>%
      
      ggplot(
        mapping = aes(
          x = Jumlah_OutputM1,
          y = Jumlah_RejectM1,
          text = glue("output = {Jumlah_OutputM1}
                    PPH = {Jumlah_RejectM1}"),
        ),
        fill = "transparent"
      ) +
      geom_col() +
      geom_col(color = "red") +
      theme_fivethirtyeight()
    ggplotly(mcn5, tooltip = "text")
    
  })
  ## rampung tes
  
  ##oee mesin 1 dihalama mesin 1
  output$gaugem1 <- renderPlotly({
    oee2gauge <- plot_ly(
      domain = list(x = c(0, 1), y = c(0, 1)),
      value = oeem1,
      title = list(text = "OEE"),
      type = "indicator",
      mode = "gauge+number+delta",
      delta = list(reference = 100),
      gauge = list(
        axis =  list(range = list(NULL, 100)),
        steps = list(
          list(range = c(0, 0), color = "lightgray"),
          list(range = c(250, 400), color = "yellow")
        ),
        threshold = list(
          line = list(color = "red", width = 4),
          thickness = 0.75,
          value = 85
        )
      )
    )
    oee2gauge <- oee2gauge %>%
      layout(margin = list(l  =  20, r  =  30))
  })
  ##oee mesin 1 selesai
  
  ##oee mesin 2 dihalama mesin 2
  output$gaugem2 <- renderPlotly({
    oee2gauge <- plot_ly(
      domain = list(x = c(0, 1), y = c(0, 1)),
      value = oeem2,
      title = list(text = "OEE"),
      type = "indicator",
      mode = "gauge+number+delta",
      delta = list(reference = 100),
      gauge = list(
        axis =  list(range = list(NULL, 100)),
        steps = list(
          list(range = c(0, 0), color = "lightgray"),
          list(range = c(250, 400), color = "yellow")
        ),
        threshold = list(
          line = list(color = "red", width = 4),
          thickness = 0.75,
          value = 85
        )
      )
    )
    oee2gauge <- oee2gauge %>%
      layout(margin = list(l  =  20, r  =  30))
  })
  ##oee mesin 2 selesai
  
  ##oee mesin 3 dihalama mesin 3
  output$gaugem3 <- renderPlotly({
    oee2gauge <- plot_ly(
      domain = list(x = c(0, 1), y = c(0, 1)),
      value = oeem3,
      title = list(text = "OEE"),
      type = "indicator",
      mode = "gauge+number+delta",
      delta = list(reference = 100),
      gauge = list(
        axis =  list(range = list(NULL, 100)),
        steps = list(
          list(range = c(0, 0), color = "lightgray"),
          list(range = c(250, 400), color = "yellow")
        ),
        threshold = list(
          line = list(color = "red", width = 4),
          thickness = 0.75,
          value = 85
        )
      )
    )
    oee2gauge <- oee2gauge %>%
      layout(margin = list(l  =  20, r  =  30))
  })
  ##oee mesin 3 selesai
  
  
  
  output$oee1 <- renderPlotly({
    oee3gauge <- plot_ly(
      domain = list(x = c(0, 1), y = c(0, 1)),
      value = sum(oee1),
      title = list(text = "OEE"),
      type = "indicator",
      mode = "gauge+number+delta",
      delta = list(reference = 380),
      gauge = list(
        axis =  list(range = list(NULL, 500)),
        steps = list(
          list(range = c(0, 250), color = "cyan"),
          list(range = c(250, 400), color = "royaleblue")
        ),
        threshold = list(
          line = list(color = "red", width = 4),
          thickness = 0.75,
          value = 490
        )
      )
    )
    oee3gauge <- oee3gauge %>%
      layout(margin = list(l  =  20, r  =  30))
  })
  
  output$oee2 <- renderPlotly({
    oee2gauge <- plot_ly(
      domain = list(x = c(0, 1), y = c(0, 1)),
      value = 80,
      title = list(text = "OEE"),
      type = "indicator",
      mode = "gauge+number+delta",
      delta = list(reference = 380),
      gauge = list(
        axis =  list(range = list(NULL, 500)),
        steps = list(
          list(range = c(0, 0), color = "lightgray"),
          list(range = c(250, 400), color = "yellow")
        ),
        threshold = list(
          line = list(color = "red", width = 4),
          thickness = 0.75,
          value = 490
        )
      )
    )
    oee2gauge <- oee2gauge %>%
      layout(margin = list(l  =  20, r  =  30))
  })
  
  
  output$oee3 <- renderPlotly({
    oee3gauge <- plot_ly(
      domain = list(x = c(0, 1), y = c(0, 1)),
      value = sum(oee3),
      title = list(text = "OEE"),
      type = "indicator",
      mode = "gauge+number+delta",
      delta = list(reference = 380),
      gauge = list(
        axis =  list(range = list(NULL, 500)),
        steps = list(
          list(range = c(0, 250), color = "lightgray"),
          list(range = c(250, 400), color = "gray")
        ),
        threshold = list(
          line = list(color = "red", width = 4),
          thickness = 0.75,
          value = 490
        )
      )
    )
    oee3gauge <- oee3gauge %>%
      layout(margin = list(l  =  20, r  =  30))
  })
  
  output$oee4 <- renderPlotly({
    mcn5 <- fg_sum %>%
      ggplot(
        mapping = aes(
          x = Bulan,
          y = total_fg,
          text = glue("Bulan = {Bulan}
                    Total Finish Good = {total_fg}")
        )
      ) +
      geom_line(group = 1, linetype = "dashed") +
      geom_point(color = "red") +
      theme_fivethirtyeight()
    ggplotly(mcn5, tooltip = "text")
    
  })
  
  
  output$pmesin1 <- renderPlotly({
    mcn5 <- plotmesin1 %>%
      ggplot(
        mapping = aes(
          x = time,
          y = tabelm1,
          text = glue("tanggal = {time}
                    Total counter = {tabelm1}")
        )
      ) +
      geom_line(group = 1, linetype = "solid") +
      geom_point(color = "blue") +
      theme_fivethirtyeight()
    ggplotly(mcn5, tooltip = "text")
    
  })
  
  output$pmesin2 <- renderPlotly({
    mcn5 <- plotmesin2 %>%
      ggplot(
        mapping = aes(
          x = time,
          y = tabelm2,
          text = glue("tanggal = {time}
                    Total counter = {tabelm2}")
        )
      ) +
      geom_line(group = 1, linetype = "solid") +
      geom_point(color = "blue") +
      theme_fivethirtyeight()
    ggplotly(mcn5, tooltip = "text")
    
  })
  
  output$pmesin3 <- renderPlotly({
    mcn5 <- plotmesin3 %>%
      ggplot(
        mapping = aes(
          x = time,
          y = tabelm3,
          text = glue("tanggal = {time}
                    Total counter = {tabelm3}")
        )
      ) +
      geom_line(group = 1, linetype = "solid") +
      geom_point(color = "blue") +
      theme_fivethirtyeight()
    ggplotly(mcn5, tooltip = "text")
    
  })

  
  
  output$mesin4_a <- renderPlotly({
    mcn5 <- plot4a %>%
      ggplot(
        mapping = aes(
          x = time,
          y = tabelm4a,
          text = glue("Waktu = {time}
                    quantitas = {tabelm4a}")
        )
      ) +
      geom_line(group = 1, linetype = "solid") +
      geom_point(color = "blue") +
      theme_fivethirtyeight()
    ggplotly(mcn5, tooltip = "text")
    
  })
  
  output$mesin4_b <- renderPlotly({
    mcn5 <- plot4b %>%
      ggplot(
        mapping = aes(
          x = time,
          y = tabelm4b,
          text = glue("Waktu = {time}
                    quantitas = {tabelm4b}")
        )
      ) +
      geom_line(group = 1, linetype = "solid") +
      geom_point(color = "blue") +
      theme_fivethirtyeight()
    ggplotly(mcn5, tooltip = "text")
    
  })
  
  
  ##mingguke 1 jadi hari
  ##tempat plot mesin 5
 
  
  output$pmesin6 <- renderPlotly({
    mcn5 <- plot6 %>%
      ggplot(
        mapping = aes(
          x = time,
          y = tabelm6,
          text = glue("Waktu = {time}
                    quantitas = {tabelm6}")
        )
      ) +
      geom_line(group = 1, linetype = "solid") +
      geom_point(color = "blue") +
      theme_fivethirtyeight()
    ggplotly(mcn5, tooltip = "text")
    
  })
  
}