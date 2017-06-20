# se-immigration-data
R data package containing monthly data on asylum applications to Sweden. The data is collected from the publicly available Excel/PDF files on the Swedish Migration Agency website (see [extract.R](data-raw/extract.R) and [download.R](data-raw/download.R)).

Neither the package nor the author have any formal affiliation with the agency; do not consider this an official release by the Swedish Migration Agency.

## Installation
```
devtools::install_github("sacamano/se-immigration-data")
```
## Data

### Applications
Monthly data on asylum applications.


| Variable | Description |
| :--- | --- |
| year_month | Year-month as `chr |
| total | Total number of applications |
| male | Number of applications from male applicants |
| female | Number of applications from female applicants |
| minors | Number of applications from underage applicants (including unaccompanied minors) |
| unacc_minors | Number of applications from underage applicants who have arrived in Sweden without a legal custodian |
| decisions | Number of applications that have been decided on |
| granted | Number of applications whose applicant have been granted asylum |
| rejected | Number of applications whose applicant have been denied asylum |
| dublin | Number of applications that fall within the "Dublin Regulation" and will not be processed by Sweden |
| others | Number of applications that won't be processed for some other reason (withdrawals, AWOLs, etc)
| avg_time | Number of days an application took to process on average |


Excerpt:
```
   year_month total male female minors unacc_minors decisions granted rejected dublin others avg_time
1     2009-01  1932 1242    690    517          153      1559     300      797    224    238      223
2     2009-02  1669 1103    566    398          121      2394     561     1286    292    255      235
3     2009-03  1731 1141    590    455          146      2864     734     1544    288    298      226
4     2009-04  1564 1026    538    411          119      2091     521     1023    288    259      194
5     2009-05  1588 1063    525    389          126      1914     527      895    255    237      204
6     2009-06  1873 1226    647    487          159      2185     599     1104    250    232      212
7     2009-07  2052 1287    765    617          198      1952     557      922    224    249      193
8     2009-08  2389 1553    836    697          229      1591     396      641    304    250      175
9     2009-09  2204 1406    798    630          216      2511     702     1167    367    275      216
10    2009-10  2321 1495    826    676          256      2729     789     1242    425    273      202
...
```

## Example usage
```r
library(dplyr)
library(ggplot2)
library(se.immigration.data)

graph_colors <- c("applications" = "#4db8ff", "granted" = "#c20047")
mutate(applications, date = as.Date(paste0(year_month, "-01"), format = "%Y-%m-%d")) %>%
  ggplot(aes(x = date)) + geom_area(aes(y = total, fill = "applications"), color = "#0068ad") +
  geom_line(aes(y = granted, color = "granted")) +
  scale_color_manual(name = "", labels = c("Granted"), values = graph_colors) +
  scale_fill_manual(name = "", labels = c("Total"), values = graph_colors) +
  scale_x_date(date_breaks = "6 months") + labs(title = "Applications per month") +
  theme_classic() + theme(
    plot.title = element_text(margin = margin(0, 0, 10), hjust = 0.4),
    plot.margin = unit(c(20,20,20,20), "points"),
    legend.position = c(0.2, 0.95), legend.key.height = unit(10, "points"),
    legend.spacing.y = unit(-10, "points"), legend.box = "horizontal",
    axis.text.x = element_text(angle = 45, hjust = 1),
    axis.title.x = element_blank(), axis.title.y = element_blank()
  )
```

<img align="center" src="https://i.imgur.com/EcqAB75.png", alt="Total number of asylum applications to Sweden between 2009 and 2017">
