# Fichier pour les tests


#write_delim(Billonage_1234_test, "tests/testthat/fixtures/raw/Billonage_1234_test.csv", delim = ';')
Billonage_1234_test <- read_delim("tests/testthat/fixtures/raw/Billonage_1234_test.csv", delim = ';')
saveRDS(Billonage_1234_test, "tests/testthat/fixtures/Billonage_1234_test.rds")

#write_delim(Billonage_ABCD_test, "tests/testthat/fixtures/raw/Billonage_ABCD_test.csv", delim = ';')
Billonage_ABCD_test <- read_delim("tests/testthat/fixtures/raw/Billonage_ABCD_test.csv", delim = ';')
saveRDS(Billonage_ABCD_test, "tests/testthat/fixtures/Billonage_ABCD_test.rds")

#write_delim(Billonage_MSCR_test, "tests/testthat/fixtures/raw/Billonage_MSCR_test.csv", delim = ';')
Billonage_MSCR_test <- read_delim("tests/testthat/fixtures/raw/Billonage_MSCR_test.csv", delim = ';')
saveRDS(Billonage_MSCR_test, "tests/testthat/fixtures/Billonage_MSCR_test.rds")



