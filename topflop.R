#import
library(tidyverse)


#Loi Covid
covid_raw <- read_csv("https://raw.githubusercontent.com/awp-finanznachrichten/lena_november2021/master/Output/Covid_all_data.csv")

covid_top <- covid_raw %>%
  arrange(desc(Ja_Stimmen_In_Prozent)) %>%
  slice(1:50)%>%
  select(Gemeinde_f,Gemeinde_d, Gemeinde_i, Kanton_Short,Ja_Stimmen_In_Prozent) %>%
  mutate(Commune = Gemeinde_f,
         Gemeinde = Gemeinde_d,
         Comune = Gemeinde_i,
         Canton = Kanton_Short,
         Kanton = Kanton_Short,
         Cantone = Kanton_Short,
         "Pourcentage de oui" = Ja_Stimmen_In_Prozent,
         "Ja in %" = Ja_Stimmen_In_Prozent,
         "Percentuale di sì" = Ja_Stimmen_In_Prozent)

write.csv(covid_top,"Tableaux/covid_top.csv", fileEncoding = "UTF-8")


covid_flop <- covid_raw %>%
  arrange(Ja_Stimmen_In_Prozent) %>%
  slice(1:50) %>%
  select(Gemeinde_f,Gemeinde_d, Gemeinde_i, Kanton_Short,Ja_Stimmen_In_Prozent) %>%
  mutate(Commune = Gemeinde_f,
         Gemeinde = Gemeinde_d,
         Comune = Gemeinde_i,
         Canton = Kanton_Short,
         Kanton = Kanton_Short,
         Cantone = Kanton_Short,
         "Pourcentage de non" = 100-Ja_Stimmen_In_Prozent,
         "Nein in %" = 100-Ja_Stimmen_In_Prozent,
         "Percentuale di no" = 100-Ja_Stimmen_In_Prozent)

write.csv(covid_flop,"Tableaux/covid_flop.csv", fileEncoding = "UTF-8")

##Soins infirmiers
infi_raw <- read_csv("https://raw.githubusercontent.com/awp-finanznachrichten/lena_november2021/master/Output/Pflege_all_data.csv")

infi_top <- infi_raw %>%
  arrange(desc(Ja_Stimmen_In_Prozent)) %>%
  slice(1:50)%>%
  select(Gemeinde_f,Gemeinde_d, Gemeinde_i, Kanton_Short,Ja_Stimmen_In_Prozent) %>%
  mutate(Commune = Gemeinde_f,
         Gemeinde = Gemeinde_d,
         Comune = Gemeinde_i,
         Canton = Kanton_Short,
         Kanton = Kanton_Short,
         Cantone = Kanton_Short,
         "Pourcentage de oui" = Ja_Stimmen_In_Prozent,
         "Ja in %" = Ja_Stimmen_In_Prozent,
         "Percentuale di sì" = Ja_Stimmen_In_Prozent)

write.csv(infi_top,"Tableaux/infi_top.csv", fileEncoding = "UTF-8")


infi_flop <- infi_raw %>%
  arrange(Ja_Stimmen_In_Prozent) %>%
  slice(1:50) %>%
  select(Gemeinde_f,Gemeinde_d, Gemeinde_i, Kanton_Short,Ja_Stimmen_In_Prozent) %>%
  mutate(Commune = Gemeinde_f,
         Gemeinde = Gemeinde_d,
         Comune = Gemeinde_i,
         Canton = Kanton_Short,
         Kanton = Kanton_Short,
         Cantone = Kanton_Short,
         "Pourcentage de non" = 100-Ja_Stimmen_In_Prozent,
         "Nein in %" = 100-Ja_Stimmen_In_Prozent,
         "Percentuale di no" = 100-Ja_Stimmen_In_Prozent)

write.csv(infi_flop,"Tableaux/infi_flop.csv", fileEncoding = "UTF-8")

#Juges fédéraux
jug_raw <- read_csv("https://raw.githubusercontent.com/awp-finanznachrichten/lena_november2021/master/Output/Justiz_all_data.csv")

jug_top <- jug_raw %>%
  arrange(desc(Ja_Stimmen_In_Prozent)) %>%
  slice(1:50)%>%
  select(Gemeinde_f,Gemeinde_d, Gemeinde_i, Kanton_Short,Ja_Stimmen_In_Prozent) %>%
  mutate(Commune = Gemeinde_f,
         Gemeinde = Gemeinde_d,
         Comune = Gemeinde_i,
         Canton = Kanton_Short,
         Kanton = Kanton_Short,
         Cantone = Kanton_Short,
         "Pourcentage de oui" = Ja_Stimmen_In_Prozent,
         "Ja in %" = Ja_Stimmen_In_Prozent,
         "Percentuale di sì" = Ja_Stimmen_In_Prozent)

write.csv(jug_top,"Tableaux/jug_top.csv", fileEncoding = "UTF-8")


jug_flop <- jug_raw %>%
  arrange(Ja_Stimmen_In_Prozent) %>%
  slice(1:50) %>%
  select(Gemeinde_f,Gemeinde_d, Gemeinde_i, Kanton_Short,Ja_Stimmen_In_Prozent) %>%
  mutate(Commune = Gemeinde_f,
         Gemeinde = Gemeinde_d,
         Comune = Gemeinde_i,
         Canton = Kanton_Short,
         Kanton = Kanton_Short,
         Cantone = Kanton_Short,
         "Pourcentage de non" = 100-Ja_Stimmen_In_Prozent,
         "Nein in %" = 100-Ja_Stimmen_In_Prozent,
         "Percentuale di no" = 100-Ja_Stimmen_In_Prozent)

write.csv(jug_flop,"Tableaux/jug_flop.csv", fileEncoding = "UTF-8")