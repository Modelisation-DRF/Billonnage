test_that("Test de la fonction ConvertisseurEco() ", {

  fic_ERS <- data.frame(Espece="ERS", reg_eco=c("1a", "2a", "2b", "2c", "3a", "3b", "3c", "3d", "4a", "4b", "4c", "4d", "4e", "4f", "4g","4h", "DU", "SV","5a"))
  fic_BOJ <- data.frame(Espece="BOJ", reg_eco=c("1a", "2a", "2b", "2c", "3a", "3b", "3c", "3d", "4a", "4b", "4c", "4d", "4e", "4f", "4g","4h", "DU", "SV","5a"))
  fic_SAB <- data.frame(Espece="SAB", reg_eco=c("2a"))
  fic_intrant <- bind_rows(fic_ERS, fic_BOJ, fic_SAB)

  result <- ConvertisseurEco(data=fic_intrant) %>% arrange(Espece, reg_eco, eco)

  # resultats attendus
  boj_1 <- data.frame(Espece="BOJ", reg_eco=c("1a", "2a", "2b", "2c", "3a", "3b", "SV"), eco="3O")
  boj_2 <- data.frame(Espece="BOJ", reg_eco=c("3c", "3d"), eco="3E")
  boj_3 <- data.frame(Espece="BOJ", reg_eco=c("4a", "4b"), eco="4O_b")
  boj_4 <- data.frame(Espece="BOJ", reg_eco=c("4c"), eco="4O_c")
  boj_5 <- data.frame(Espece="BOJ", reg_eco=c("4d", "4e", "4f", "4g","4h", "DU"), eco="4E")
  boj_6 <- data.frame(Espece="BOJ", reg_eco=c("5a"), eco=NA)

  ers_1 <- data.frame(Espece="ERS", reg_eco=c("1a", "2a", "2b", "2c"), eco="2O")
  ers_2 <- data.frame(Espece="ERS", reg_eco=c("3a"), eco="3O_a")
  ers_3 <- data.frame(Espece="ERS", reg_eco=c("3b", "3c", "SV"), eco="3O_b")
  ers_4 <- data.frame(Espece="ERS", reg_eco=c("4a", "4b"), eco="4O_b")
  ers_5 <- data.frame(Espece="ERS", reg_eco=c("4c"), eco="4O_c")
  ers_6 <- data.frame(Espece="ERS", reg_eco=c("3d", "4d", "4e", "4f", "4g","4h", "DU"), eco="4E")
  ers_7 <- data.frame(Espece="ERS", reg_eco=c("5a"), eco=NA)

  sab_1 <- data.frame(Espece="SAB", reg_eco=c("2a"), eco=NA)

  result_attendu <- bind_rows(boj_1, boj_2, boj_3, boj_4, boj_5, boj_6, ers_1, ers_2, ers_3, ers_4, ers_5, ers_6, ers_7, sab_1) %>% arrange(Espece, reg_eco, eco)

  expect_equal(result, result_attendu)
})
