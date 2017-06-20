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
