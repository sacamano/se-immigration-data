# se-immigration-data
R data package containing monthly data on asylum applications to Sweden. The data is collected from the publicly available Excel/PDF files on the Swedish Migration Agency website (see [extract.R](data-raw/extract.R) and [download.R](data-raw/download.R)).

Neither the package nor the author have any formal affiliation with the agency; do not consider this an official release by the Swedish Migration Agency.

## Installation
```
devtools::install_github("sacamano/se-immigration-data")
```

## Example usage
```r
library(dplyr)
library(ggplot2)
library(se.immigration.data)

mutate(applications, date = as.Date(paste0(year_month, "-01"), format = "%Y-%m-%d")) %>%
  ggplot(aes(x = date, y = total)) + geom_area(color = "dodgerblue4", fill = "dodgerblue") +
  scale_x_date(date_breaks = "6 months") + ggtitle("Applications per month") +
  theme_classic() + theme(
    axis.text.x = element_text(angle = 45, hjust = 1),
    axis.title.x = element_blank(), axis.title.y = element_blank()
  )

```

![Total number of asylum applications to Sweden between 2009 and 2017](https://i.imgur.com/C2AzbCp.png)
