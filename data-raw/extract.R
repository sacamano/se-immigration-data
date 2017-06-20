applications_colnames <- c(
  "year_month",
  "total",
  "male",
  "female",
  "minors",
  "unacc_minors"
)

decisions_colnames <- c(
  "year_month",
  "decisions",
  "granted",
  "rejected",
  "dublin",
  "others",
  "avg_time"
)

# 2017
apstmp <- XLConnect::readWorksheetFromFile("data-raw/migrationsverket/2017_asylum-applications.xls",
                                region = "B8:G12", sheet = 1, header = FALSE)
decisionstmp <- XLConnect::readWorksheetFromFile("data-raw/migrationsverket/2017_asylum-decisions.xls",
                                      region = "B11:H15", sheet = 1, header = FALSE)
colnames(apstmp) <- applications_colnames
colnames(decisionstmp) <- decisions_colnames
applications <- dplyr::full_join(apstmp, decisionstmp)

# 2015
apstmp <- XLConnect::readWorksheetFromFile("data-raw/migrationsverket/2015_asylum-applications.xls",
                                region = "B8:G19", sheet = 1, header = FALSE)
decisionstmp <- XLConnect::readWorksheetFromFile("data-raw/migrationsverket/2015_asylum-decisions.xls",
                                      region = "B11:I22", sheet = 1, header = FALSE)
decisionstmp <- decisionstmp[, c(1, 3:8)]
colnames(apstmp) <- applications_colnames
colnames(decisionstmp) <- decisions_colnames
applications <- rbind(applications, dplyr::full_join(apstmp, decisionstmp))

# 2016
apstmp <- XLConnect::readWorksheetFromFile("data-raw/migrationsverket/2016_asylum-applications.xls",
                                region = "B8:G19", sheet = 1, header = FALSE)
decisionstmp <- XLConnect::readWorksheetFromFile("data-raw/migrationsverket/2016_asylum-decisions.xls",
                                      region = "B11:H22", sheet = 1, header = FALSE)
colnames(apstmp) <- applications_colnames
colnames(decisionstmp) <- decisions_colnames
applications <- rbind(applications, dplyr::full_join(apstmp, decisionstmp))

# 2014
apstmp <- XLConnect::readWorksheetFromFile("data-raw/migrationsverket/2014_asylum-applications.xls",
                                region = "B8:G19", sheet = 1, header = FALSE)
decisionstmp <- XLConnect::readWorksheetFromFile("data-raw/migrationsverket/2014_asylum-decisions.xls",
                                      region = "B11:I22", sheet = 1, header = FALSE)
decisionstmp <- decisionstmp[, c(1, 3:8)]
colnames(apstmp) <- applications_colnames
colnames(decisionstmp) <- decisions_colnames
applications <- rbind(applications, dplyr::full_join(apstmp, decisionstmp))

# 2013
apstmp <- XLConnect::readWorksheetFromFile("data-raw/migrationsverket/2013_asylum-applications.xls",
                                region = "B8:G19", sheet = 1, header = FALSE)
decisionstmp <- XLConnect::readWorksheetFromFile("data-raw/migrationsverket/2013_asylum-decisions.xls",
                                      region = "B11:J22", sheet = 1, header = FALSE)
decisionstmp <- decisionstmp[, c(1, 3, 5:9)]
colnames(apstmp) <- applications_colnames
colnames(decisionstmp) <- decisions_colnames
applications <- rbind(applications, dplyr::full_join(apstmp, decisionstmp))

# 2012
apstmp <- XLConnect::readWorksheetFromFile("data-raw/migrationsverket/2012_asylum-applications.xls",
                                region = "B8:G19", sheet = 1, header = FALSE)
decisionstmp <- XLConnect::readWorksheetFromFile("data-raw/migrationsverket/2012_asylum-decisions.xls",
                                      region = "B11:J22", sheet = 1, header = FALSE)
decisionstmp <- decisionstmp[, c(1, 3, 5:9)]
colnames(apstmp) <- applications_colnames
colnames(decisionstmp) <- decisions_colnames
applications <- rbind(applications, dplyr::full_join(apstmp, decisionstmp))

# 2011
apstmp <- XLConnect::readWorksheetFromFile("data-raw/migrationsverket/2011_asylum-applications.xls",
                                region = "B8:G19", sheet = 1, header = FALSE)
decisionstmp <- XLConnect::readWorksheetFromFile("data-raw/migrationsverket/2011_asylum-decisions.xls",
                                      region = "B11:J22", sheet = 1, header = FALSE)
decisionstmp <- decisionstmp[, c(1, 3, 5:9)]
colnames(apstmp) <- applications_colnames
colnames(decisionstmp) <- decisions_colnames
applications <- rbind(applications, dplyr::full_join(apstmp, decisionstmp))

# 2010
# Something funky going on with the .xls file. Copy-pasted.
tmpdata <- "2010-01 2226 1475 751 617 226
2010-02 2321 1486 835 638 150
2010-03 3570 2194 1376 1137 192
2010-04 2145 1361 784 605 129
2010-05 1874 1229 645 503 138
2010-06 1914 1217 697 548 158
2010-07 1900 1178 722 603 189
2010-08 2743 1661 1082 952 242
2010-09 3874 2251 1623 1550 265
2010-10 4196 2440 1756 1680 259
2010-11 2832 1807 1025 933 212
2010-12 2224 1507 717 727 233"

apstmp <- readr::read_delim(tmpdata, delim = " ", col_names = FALSE)
apstmp[,7:12] <- NA
colnames(apstmp) <- c(applications_colnames, decisions_colnames[2:length(decisions_colnames)])
applications <- rbind(applications, apstmp)

# 2009
# No .xls available. Copy-pasted from a .pdf
tmpdata <- "2009-01 1932 1242 690 517 153
2009-02 1669 1103 566 398 121
2009-03 1731 1141 590 455 146
2009-04 1564 1026 538 411 119
2009-05 1588 1063 525 389 126
2009-06 1873 1226 647 487 159
2009-07 2052 1287 765 617 198
2009-08 2389 1553 836 697 229
2009-09 2204 1406 798 630 216
2009-10 2321 1495 826 676 256
2009-11 2402 1573 829 637 247
2009-12 2469 1605 864 663 280"
apstmp <- readr::read_delim(tmpdata, delim = " ", col_names = FALSE)

tmpdata <- "2009-01 1559 300 797 224 238 223
2009-02 2394 561 1286 292 255 235
2009-03 2864 734 1544 288 298 226
2009-04 2091 521 1023 288 259 194
2009-05 1914 527 895 255 237 204
2009-06 2185 599 1104 250 232 212
2009-07 1952 557 922 224 249 193
2009-08 1591 396 641 304 250 175
2009-09 2511 702 1167 367 275 216
2009-10 2729 789 1242 425 273 202
2009-11 2754 908 1281 318 247 181"
decisionstmp <- readr::read_delim(tmpdata, delim = " ", col_names = FALSE)

colnames(apstmp) <- applications_colnames
colnames(decisionstmp) <- decisions_colnames
applications <- rbind(applications, dplyr::full_join(apstmp, decisionstmp))

applications <- dplyr::arrange(applications, year_month)
readr::write_csv(applications, "data-raw/applications.csv")
devtools::use_data(applications, overwrite = TRUE)