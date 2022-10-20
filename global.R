options(digits = 2)
library(shiny)
library(shinydashboard)
library(tidyverse)
library(plotly)
library(glue)
library(readxl)
library(lubridate)
library(ggthemes)
library(ggplot2)
library(googlesheets4)
library(timetk)
library(shinyWidgets)
library(shinyjs)
library(shinyWidgets)
library(RMariaDB)
library(tidyverse)
library(lubridate)
library(timetk)
library(smooth)
localuserpassword <- ""
data_mesin <- dbConnect(RMariaDB::MariaDB(), user='root', password=localuserpassword, dbname='data_mesin', host='localhost')

mesin1_a <- dbReadTable(conn = data_mesin, name = 'mesin1_a')
mesin2_a <- dbReadTable(conn = data_mesin, name = 'mesin2_a')
mesin3_b <- dbReadTable(conn = data_mesin, name = 'mesin3_b')
mesin4_a <- dbReadTable(conn = data_mesin, name = 'mesin4_a')
mesin4_b <- dbReadTable(conn = data_mesin, name = 'mesin4_b')
mesin5_a <- dbReadTable(conn = data_mesin, name = 'mesin5_a')
mesin5_b <- dbReadTable(conn = data_mesin, name = 'mesin5_b')
mesin5_c <- dbReadTable(conn = data_mesin, name = 'mesin5_c')
mesin5_d <- dbReadTable(conn = data_mesin, name = 'mesin5_d')
mesin6_a <- dbReadTable(conn = data_mesin, name = 'mesin6_a')


localuserpassword <- ""
db_sensor <- dbConnect(RMariaDB::MariaDB(), user='root', password=localuserpassword, dbname='db_sensor', host='localhost')
dro <- dbReadTable(conn = db_sensor, name = 'daily_report_op')



##tes plot






## plot mesin semua
## MESIN 1
msn1_on <- mesin1_a %>% 
  mutate(time = as.POSIXct(time)) %>%
  filter(qty == "1") %>%
  mutate(difference = c(0, diff(time, lag = 1))) %>%
  mutate(Hari = as.Date(time)) %>%
  select(time, qty, Hari, difference)
msn1_on$difference[msn1_on$difference >= 48800] <- 0

plotmesin1 <- msn1_on %>% 
  select(time, qty , Hari) %>%
  mutate(qty = as.integer(qty)) %>%
  summarise_by_time(.date_var = time, .by = 'day', tabelm1 = sum(qty))



## MESIN 2

msn2_on <- mesin2_a %>% 
  mutate(time = as.POSIXct(time)) %>%
  filter(qty == "1") %>%
  mutate(difference = c(0, diff(time, lag = 1))) %>%
  mutate(Hari = as.Date(time)) %>%
  select(time, qty, Hari, difference) 
msn2_on$difference[msn2_on$difference >= 48800] <- 0

plotmesin2 <- msn2_on %>% 
  select(time, qty, Hari) %>%
  mutate(qty = as.integer(qty)) %>%
  summarise_by_time(.date_var = time, .by = 'day', tabelm2 = sum(qty))


## MESIN 3
msn3_on <- mesin3_b %>% 
  mutate(time = as.POSIXct(time)) %>%
  filter(qty == "1") %>%
  mutate(difference = c(0, diff(time, lag = 1))) %>%
  mutate(Hari = as.Date(time)) %>%
  select(time, qty, Hari, difference)
msn3_on$difference[msn3_on$difference >= 48800] <- 0

plotmesin3 <- msn3_on %>% 
  select(time, qty, Hari) %>%
  mutate(qty = as.integer(qty)) %>%
  summarise_by_time(.date_var = time, .by = 'day', tabelm3 = sum(qty))

## MESIN 4 A&B
msn4a_on <- mesin4_a %>% 
  mutate(time = as.POSIXct(time)) %>%
  filter(qty == "1") %>%
  mutate(difference = c(0, diff(time, lag = 1))) %>%
  mutate(Hari = as.Date(time)) %>%
  select(time, qty, Hari, difference)
msn4a_on$difference[msn4a_on$difference >= 48800] <- 0

msn4b_on <- mesin4_b %>% 
  mutate(time = as.POSIXct(time)) %>%
  filter(qty == "1") %>%
  mutate(difference = c(0, diff(time, lag = 1))) %>%
  mutate(Hari = as.Date(time)) %>%
  select(time, qty, Hari, difference)
msn4b_on$difference[msn4b_on$difference >= 48800] <- 0

plot4a <- msn4a_on %>% 
  select(time, qty, Hari) %>%
  mutate(qty = as.integer(qty)) %>%
  summarise_by_time(.date_var = time, .by = 'day', tabelm4a = sum(qty))


plot4b <- msn4b_on %>% 
  select(time, qty, Hari) %>%
  mutate(qty = as.integer(qty)) %>%
  summarise_by_time(.date_var = time, .by = 'day', tabelm4b = sum(qty))

##MESIN 6
msn6_on <- mesin6_a %>% 
  mutate(time = as.POSIXct(time)) %>%
  filter(qty == "1") %>%
  mutate(difference = c(0, diff(time, lag = 1))) %>%
  mutate(Hari = as.Date(time)) %>%
  select(time, qty, Hari, difference)
msn6_on$difference[msn6_on$difference >= 48800] <- 0

plot6 <- msn6_on %>% 
  select(time, qty, Hari) %>%
  mutate(qty = as.integer(qty)) %>%
  summarise_by_time(.date_var = time, .by = 'day', tabelm6 = sum(qty))


## OEE HALAMAN MESIN 1 MULAI
report_mesin1 <-  dro %>%
  filter(machine_id == "Mesin 1a")
qual1 <- (sum(report_mesin1$product_ok) / (sum(report_mesin1$product_ok)+sum(report_mesin1$product_reject)))*100

rm1 <- dro %>%
  mutate(Time = as.POSIXct(timestamp)) %>%
  summarise_by_time(.date_var = Time, .by = 'day', Jumlah_OutputM1 = sum(product_ok), Jumlah_RejectM1 = sum(product_reject)) %>%
  mutate(PPH = Jumlah_OutputM1/(2*8))

rm1_2 <- dro %>%
  mutate(Time = as.POSIXct(timestamp)) %>%
  summarise_by_time(.date_var = Time, .by = 'day', Jumlah_OutputM1 = sum(product_ok), Jumlah_RejectM1 = sum(product_reject)) %>%
  mutate(PPH = Jumlah_OutputM1/(2*8))
##availbilty start mesin 1
msn1_on <- mesin1_a %>% 
  mutate(time = as.POSIXct(time)) %>%
  filter(qty == "1") %>%
  mutate(difference = c(0, diff(time, lag = 1))) %>%
  mutate(Hari = as.Date(time)) %>%
  select(time, qty, Hari, difference)
msn1_on$difference[msn1_on$difference >= 48800] <- 0
msn1_on_byDate <- msn1_on %>% group_by(Hari) %>% summarise(mnt_on = sum(difference)/60)
msn1_on_byDate
avail <- sum(msn1_on_byDate$mnt_on)/ (nrow(msn1_on_byDate) *480)
##performa start mesin 1
prfm <- ((1/18) * (nrow(msn1_on)*6)) / sum(msn1_on_byDate$mnt_on)

ql <- tail(plotmesin1$Qty,1)
##overall oee start
oeem1 = (avail*prfm*qual1)
## OEE HALAMAN MESIN 1 SELESAI
qul <- round(qual1, 3)
qul <- paste(qul, "%")
attributes(qul) <- attributes(tbl)


oeemesin1 <- round(oeem1, 3)
oeemesin1 <- paste(oeemesin1, "%")
attributes(oeemesin1) <- attributes(tbl)










## OEE HALAMAN MESIN 2 MULAI
report_mesin2 <-  dro %>%
  filter(machine_id == "Mesin 2a")
qual2 <- (sum(report_mesin2$product_ok) / (sum(report_mesin1$product_ok)+sum(report_mesin2$product_reject)))*100


msn2_on <- mesin2_a %>% 
  mutate(time = as.POSIXct(time)) %>%
  filter(qty == "1") %>%
  mutate(difference = c(0, diff(time, lag = 1))) %>%
  mutate(Hari = as.Date(time)) %>%
  select(time, qty, Hari, difference)
msn2_on$difference[msn2_on$difference >= 48800] <- 0
msn2_on_byDate <- msn2_on %>% group_by(Hari) %>% summarise(mnt_on = sum(difference)/60)
msn2_on_byDate
avail <- sum(msn2_on_byDate$mnt_on)/ (nrow(msn2_on_byDate) *480)
##performa start mesin 2
prfm <- ((1/18) * (nrow(msn2_on)*6)) / sum(msn2_on_byDate$mnt_on)

ql <- tail(plotmesin2$Qty,1)
##overall oee start
oeem2 = (avail*prfm*qual2)
## OEE HALAMAN MESIN 2 SELESAI
qul2 <- round(qual2, 3)
qul2 <- paste(qul2, "%")
attributes(qul2) <- attributes(tbl)


oeemesin2 <- round(oeem2, 3)
oeemesin2 <- paste(oeemesin2, "%")
attributes(oeemesin2) <- attributes(tbl)



## OEE HALAMAN MESIN 2 SELESAI


## OEE HALAMAN MESIN 3 MULAI
report_mesin3 <-  dro %>%
  filter(machine_id == "Mesin 3b")
qual3 <- (sum(report_mesin3$product_ok) / (sum(report_mesin3$product_ok)+sum(report_mesin3$product_reject)))*100


msn3_on <- mesin3_b %>% 
  mutate(time = as.POSIXct(time)) %>%
  filter(qty == "1") %>%
  mutate(difference = c(0, diff(time, lag = 1))) %>%
  mutate(Hari = as.Date(time)) %>%
  select(time, qty, Hari, difference)
msn3_on$difference[msn3_on$difference >= 48800] <- 0
msn3_on_byDate <- msn3_on %>% group_by(Hari) %>% summarise(mnt_on = sum(difference)/60)
msn3_on_byDate
avail <- sum(msn3_on_byDate$mnt_on)/ (nrow(msn3_on_byDate) *480)
##performa start mesin 3
prfm <- ((1/18) * (nrow(msn3_on)*6)) / sum(msn3_on_byDate$mnt_on)

ql <- tail(plotmesin3$Qty,1)
##overall oee start
oeem3 = (avail*prfm*qual3)
## OEE HALAMAN MESIN 3 SELESAI
qul3 <- round(qual3, 3)
qul3 <- paste(qul3, "%")
attributes(qul3) <- attributes(tbl)


oeemesin3 <- round(oeem3, 3)
oeemesin3 <- paste(oeemesin3, "%")
attributes(oeemesin3) <- attributes(tbl)



## OEE HALAMAN MESIN 3 SELESAI


## OEE HALAMAN MESIN 4 MULAI
report_mesin4a <-  dro %>%
  filter(machine_id == "Mesin 4a")
report_mesin4b <-  dro %>%
  filter(machine_id == "Mesin 4b")
qual4 <- (sum(report_mesin4a$product_ok,report_mesin4b$product_ok) / (sum(report_mesin4a$product_ok,report_mesin4b$product_ok)+sum(report_mesin4a$product_reject,report_mesin4b$product_reject)))*100

msn4_on <- mesin4_a %>% 
  mutate(time = as.POSIXct(time)) %>%
  filter(qty == "1") %>%
  mutate(difference = c(0, diff(time, lag = 1))) %>%
  mutate(Hari = as.Date(time)) %>%
  select(time, qty, Hari, difference)
msn4_on$difference[msn4_on$difference >= 48800] <- 0
msn4_on_byDate <- msn4_on %>% group_by(Hari) %>% summarise(mnt_on = sum(difference)/60)
msn4_on_byDate
avail <- sum(msn4_on_byDate$mnt_on)/ (nrow(msn3_on_byDate) *480)
##performa start mesin 3
prfm <- ((1/18) * (nrow(msn3_on)*6)) / sum(msn3_on_byDate$mnt_on)

ql <- tail(plotmesin3$Qty,1)
##overall oee start
oeem3 = (avail*prfm*qual3)
## OEE HALAMAN MESIN 3 SELESAI
qul3 <- round(qual3, 3)
qul3 <- paste(qul3, "%")
attributes(qul3) <- attributes(tbl)


oeemesin3 <- round(oeem3, 3)
oeemesin3 <- paste(oeemesin3, "%")
attributes(oeemesin3) <- attributes(tbl)

## OEE HALAMAN MESIN 5


report_mesin5a <-  dro %>%
  filter(machine_id == "Mesin 5a")
report_mesin5b <-  dro %>%
  filter(machine_id == "Mesin 5b")
report_mesin5c <-  dro %>%
  filter(machine_id == "Mesin 5c")
report_mesin5d <-  dro %>%
  filter(machine_id == "Mesin 5d")
qual5 <- (sum(report_mesin5a$product_ok,report_mesin5b$product_ok,report_mesin5c$product_ok,report_mesin5d$product_ok) / (sum(report_mesin5a$product_ok,report_mesin5b$product_ok,report_mesin5c$product_ok,report_mesin5d$product_ok)+sum(report_mesin5a$product_reject,report_mesin5b$product_reject,report_mesin5c$product_reject,report_mesin5d$product_reject)))*100

## OEE HALAMAN MESIN 6


report_mesin6 <-  dro %>%
  filter(machine_id == "Mesin 6a")
qual6 <- (sum(report_mesin6$product_ok) / (sum(report_mesin6$product_ok)+sum(report_mesin6$product_reject)))*100





##akhir outpuut



gs4_deauth()
gs4_auth(email = "aditrachman23@gmail.com", cache = ".secrets")
primary <-
  read_sheet(
    "https://docs.google.com/spreadsheets/d/1TfqECSPfB_9vNfOv-3NsKO-n3ulq0r1ESm-mEx5yAxg/edit#gid=464822429",
    sheet = "Laporan harian produksi",
  )
dsb <- primary %>%
  select(Tanggal, `Jumlah Finish Goods`) %>%
  filter(Tanggal > as.Date("2022/01/01")) %>%
  mutate(Bulan = month(Tanggal, label = T))

fg_sum <- dsb %>%
  group_by(Bulan) %>%
  summarise(total_fg = sum(`Jumlah Finish Goods`))

##FORECASTING FINISH GOOD
frc2 <- sma(primary$`Jumlah Finish Goods`, h = 3, silent = F,)
fcfg <- frc2$forecast[1]

##AKHIR DARI FORECASTING FINISH GOOD
##akhir dari forecasting finish good
##


gs4_deauth()
gs4_auth(email = "aditrachman23@gmail.com", cache = ".secrets")
finishgdn <-
  read_sheet(
    "https://docs.google.com/spreadsheets/d/1TfqECSPfB_9vNfOv-3NsKO-n3ulq0r1ESm-mEx5yAxg/edit#gid=1318158175",
    sheet = "Persediaan N95",
  )
n <- finishgdn$`PERSEDIAAN FG N95 BOX`

finishgdf <-
  read_sheet(
    "https://docs.google.com/spreadsheets/d/1TfqECSPfB_9vNfOv-3NsKO-n3ulq0r1ESm-mEx5yAxg/edit#gid=1318158175",
    sheet = "Persediaan FFP2",
  )
f <- finishgdf$`PERSEDIAAN FG FFP2 BOX`
