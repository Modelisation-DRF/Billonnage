# Tous les fichiers internes excel/csv/sas7bdat doivent être convertis en en seul fichier rda nommé sysdata.rda sous /R
# Tous les fichiers d'exemples doivent être convertis individuellement en rda et mis sous /data
# le fichier avec le code pour créer le fichier sysdata.rda doit être sauvegardé sous R/data-raw

# exemple:
# param_tarif = read.sas7bdat("c:/Mes docs/ data/ beta_volume.sas7bdat")
# param_ht = read.sas7bdat("c:/Mes docs/ data/ beta_ht.sas7bdat")
# Puis utiliser la ligne de code suivant (toujours dans le projet du package)
# usethis::use_data(param_tarif, param_ht, internal=TRUE): ça fonctionne seulement si le projet est un package

#library(readxl)
#library(sas7bdat)



CovParaPetro_1234 <- read_delim("data-raw\\fichiers_parametres\\Petro2015\\1234\\CovParaPetro_1234.csv", delim = ';') #%>%
 # mutate(Essence_billon = ifelse(Essence_billon=='CHX', 'CHR', Essence_billon))
#write_delim(CovParaPetro_1234, "data-raw\\fichiers_parametres\\Petro2015\\1234\\CovParaPetro_1234.csv", delim = ';')


CovParaPetro_abcd <- read_delim("data-raw\\fichiers_parametres\\Petro2015\\ABCD\\CovParaPetro_abcd.csv", delim = ';') #%>%
  #mutate(Essence_billon = ifelse(Essence_billon=='CHX', 'CHR', Essence_billon))
#write_delim(CovParaPetro_abcd, "data-raw\\fichiers_parametres\\Petro2015\\ABCD\\CovParaPetro_abcd.csv", delim = ';')


CovParaPetro_mscr <- read_delim("data-raw\\fichiers_parametres\\Petro2015\\MSCR\\CovParaPetro_mscr.csv", delim = ';') #%>%
  #mutate(Essence_billon = ifelse(Essence_billon=='CHX', 'CHR', Essence_billon))
#write_delim(CovParaPetro_mscr, "data-raw\\fichiers_parametres\\Petro2015\\MSCR\\CovParaPetro_mscr.csv", delim = ';')


CovParmPetro <- read_delim("data-raw\\fichiers_parametres\\Petro2015\\DHP\\CovParmPetro.csv", delim = ';') #%>%
  #mutate(Essence_billon = ifelse(Essence_billon=='CHX', 'CHR', Essence_billon))
#write_delim(CovParmPetro, "data-raw\\fichiers_parametres\\Petro2015\\DHP\\CovParmPetro.csv", delim = ';')


CovParmPetro_DHP <- read_delim("data-raw\\fichiers_parametres\\Petro2024\\DHP\\CovParmPetro_DHP.csv", delim = ';')
#write_delim(CovParmPetro_DHP, "data-raw\\fichiers_parametres\\Petro2024\\DHP\\CovParmPetro_DHP.csv", delim = ';')


CovParmPetroABCD <- read_delim("data-raw\\fichiers_parametres\\Petro2024\\ABCD\\CovParmPetroABCD.csv", delim = ';')
#write_delim(CovParmPetroABCD, "data-raw\\fichiers_parametres\\Petro2024\\ABCD\\CovParmPetroABCD.csv", delim = ';')


ParaPetro_1234_ <- read_delim("data-raw\\fichiers_parametres\\Petro2015\\1234\\ParaPetro_1234_.csv", delim = ';') #%>%
  #mutate(Essence_billon = ifelse(Essence_billon=='CHX', 'CHR', Essence_billon))
#write_delim(ParaPetro_1234_, "data-raw\\fichiers_parametres\\Petro2015\\1234\\ParaPetro_1234_.csv", delim = ';')


ParaPetro_abcd <- read_delim("data-raw\\fichiers_parametres\\Petro2015\\ABCD\\ParaPetro_abcd.csv", delim = ';') #%>%
  #mutate(Essence_billon = ifelse(Essence_billon=='CHX', 'CHR', Essence_billon))
#write_delim(ParaPetro_abcd, "data-raw\\fichiers_parametres\\Petro2015\\ABCD\\ParaPetro_abcd.csv", delim = ';')


ParaPetro_mscr <- read_delim("data-raw\\fichiers_parametres\\Petro2015\\MSCR\\ParaPetro_mscr.csv", delim = ';') #%>%
  #mutate(Essence_billon = ifelse(Essence_billon=='CHX', 'CHR', Essence_billon))
#write_delim(ParaPetro_mscr, "data-raw\\fichiers_parametres\\Petro2015\\MSCR\\ParaPetro_mscr.csv", delim = ';')


ParaPetroFinal <- read_delim("data-raw\\fichiers_parametres\\Petro2015\\DHP\\ParaPetroFinal.csv", delim = ';') #%>%
  #mutate(Essence_billon = ifelse(Essence_billon=='CHX', 'CHR', Essence_billon))
#write_delim(ParaPetroFinal, "data-raw\\fichiers_parametres\\Petro2015\\DHP\\ParaPetroFinal.csv", delim = ';')


ParaPetroFinal_dhp <- read_delim("data-raw\\fichiers_parametres\\Petro2024\\DHP\\ParaPetroFinal_dhp.csv", delim = ';')
#write_delim(ParaPetroFinal_dhp, "data-raw\\fichiers_parametres\\Petro2024\\DHP\\ParaPetroFinal_dhp.csv", delim = ';')


ParaPetroFinal_New <- read_delim("data-raw\\fichiers_parametres\\Petro2024\\ABCD\\ParaPetroFinal_New.csv", delim = ';')
#write_delim(ParaPetroFinal_New, "data-raw\\fichiers_parametres\\Petro2024\\ABCD\\ParaPetroFinal_New.csv", delim = ';')


ListeCorresPetro <- read_delim("data-raw\\fichiers_parametres\\ListeCorresPetro.csv", delim = ';') #%>%
  #mutate(Essence_billon = ifelse(Essence_billon=='CHX', 'CHR', Essence_billon))
#write_delim(ListeCorresPetro, "data-raw\\fichiers_parametres\\ListeCorresPetro.csv", delim = ';')

#write_delim(RegEcoPetro, "data-raw\\fichiers_non_utilises\\RegEcoPetro.csv", delim = ';')


# tous les fichiers à mettre dans le fichier sysdata.rda
usethis::use_data(CovParaPetro_1234, CovParaPetro_abcd, CovParaPetro_mscr, CovParmPetro, CovParmPetro_DHP, CovParmPetroABCD,
                  ParaPetro_1234_, ParaPetro_abcd, ParaPetro_mscr, ParaPetroFinal, ParaPetroFinal_dhp, ParaPetroFinal_New,
                  ListeCorresPetro,
                  internal=TRUE, overwrite = TRUE)



