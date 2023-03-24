library(dplyr)
library(tidyverse)
library(readr)
library(ggplot2)
library(readxl)
library(data.table)

# 1. CLEANING THE DATA

# Load and read the data and make a dataframe of it
HM_products <- read_csv("HM_products.csv")
view(HM_products)

# Look for any NA's
sum(is.na(HM_products$title))
sum(is.na(HM_products$price))
sum(is.na(HM_products$color))
sum(is.na(HM_products$material))
sum(is.na(HM_products$buitenlaag))
sum(is.na(HM_products$url))
sum(is.na(HM_products$timestamp))

# Adding the product_id from the url in a new column
HM_products <- HM_products %>% 
  mutate(product_id = url)

HM_products$product_id <- gsub("https://www2.hm.com/nl_nl/productpage.", "", HM_products$product_id)
HM_products$product_id <- gsub(".html", "", HM_products$product_id)

view(HM_products)

# Remove the duplicate product_id's
duplicate_rows <- duplicated(HM_products$product_id)
HM_products <- HM_products[!duplicate_rows,]
view(HM_products)

# Check class of every variable
class(HM_products$title)
class(HM_products$price)
class(HM_products$color)
class(HM_products$buitenlaag)
class(HM_products$material)
class(HM_products$newarrival)
class(HM_products$timestamp)
class(HM_products$url)

# Remove word 'Materiaal' before material
HM_products$material <- gsub("Materiaal", "", HM_products$material)
HM_products$material <- gsub(": ", "", HM_products$material)

# Remove euro signs 
HM_products$price <- gsub('[€]', '', HM_products$price) 

# Replace commas with dot and convert to numeric
HM_products$price <- gsub(",", ".", HM_products$price)
HM_products$price <- as.numeric(HM_products$price)

# Make a dummy of new arrival, where 1 means the product is a new arrival and a 0 means otherwise
HM_products <- HM_products %>% 
  mutate(newarrival_dum = newarrival)

HM_products$newarrival_dum <- gsub("No New Arrival", "0", HM_products$newarrival_dum)
HM_products$newarrival_dum <- gsub("New Arrival", "1", HM_products$newarrival_dum)
HM_products$newarrival_dum <- gsub("Premium Selection", "0", HM_products$newarrival_dum)
HM_products$newarrival_dum <- gsub("Wool", "0", HM_products$newarrival_dum)
HM_products$newarrival_dum <- gsub("Leather", "0", HM_products$newarrival_dum)
HM_products$newarrival_dum <- gsub("DenimOrganic Cotton", "0", HM_products$newarrival_dum)
HM_products$newarrival_dum <- gsub("Premium SelectionNew Arrival", "1", HM_products$newarrival_dum)
HM_products$newarrival_dum <- gsub("Organic Cotton", "0", HM_products$newarrival_dum)
HM_products$newarrival_dum <- gsub("Cotton1", "0", HM_products$newarrival_dum)
HM_products$newarrival_dum <- gsub("Cotton", "0", HM_products$newarrival_dum)
HM_products$newarrival_dum <- gsub("Cashmere", "0", HM_products$newarrival_dum)
HM_products$newarrival_dum <- gsub("Denim", "0", HM_products$newarrival_dum)
HM_products$newarrival_dum <- gsub("H&M Studio Collection", "0", HM_products$newarrival_dum)
HM_products$newarrival_dum <- gsub("H&M Studio Collection1", "0", HM_products$newarrival_dum)
HM_products$newarrival_dum <- gsub("Lace0", "0", HM_products$newarrival_dum)
HM_products$newarrival_dum <- gsub("Linen", "0", HM_products$newarrival_dum)
HM_products$newarrival_dum <- gsub("Merino 0", "0", HM_products$newarrival_dum)
HM_products$newarrival_dum <- gsub("Merino 00", "0", HM_products$newarrival_dum)
HM_products$newarrival_dum <- gsub("Patent 0", "0", HM_products$newarrival_dum)
HM_products$newarrival_dum <- gsub("Mesh", "0", HM_products$newarrival_dum)
HM_products$newarrival_dum <- gsub("Satin", "0", HM_products$newarrival_dum)
HM_products$newarrival_dum <- gsub("Silk", "0", HM_products$newarrival_dum)
HM_products$newarrival_dum <- gsub("Silk0", "0", HM_products$newarrival_dum)
HM_products$newarrival_dum <- gsub("Silk1", "0", HM_products$newarrival_dum)
HM_products$newarrival_dum <- gsub("Suede", "0", HM_products$newarrival_dum)
HM_products$newarrival_dum <- gsub("01", "1", HM_products$newarrival_dum)

# Make the variable newarrival_dum numeric
HM_products$newarrival_dum <- as.numeric(HM_products$newarrival_dum)

# Make newarrival only newarrival or no new arrival
HM_products$newarrival <- gsub("Premium Selection", "No New Arrival", HM_products$newarrival)
HM_products$newarrival <- gsub("Wool", "No New Arrival", HM_products$newarrival)
HM_products$newarrival <- gsub("Leather", "No New Arrival", HM_products$newarrival)
HM_products$newarrival <- gsub("DenimOrganic Cotton", "No New Arrival", HM_products$newarrival)
HM_products$newarrival <- gsub("Premium SelectionNew Arrival", "New Arrival", HM_products$newarrival)
HM_products$newarrival <- gsub("Organic Cotton", "No New Arrival", HM_products$newarrival)
HM_products$newarrival <- gsub("Cotton1", "No New Arrival", HM_products$newarrival)
HM_products$newarrival <- gsub("Cotton", "No New Arrival", HM_products$newarrival)
HM_products$newarrival <- gsub("Cashmere", "No New Arrival", HM_products$newarrival)
HM_products$newarrival <- gsub("Denim", "No New Arrival", HM_products$newarrival)
HM_products$newarrival <- gsub("H&M Studio Collection", "No New Arrival", HM_products$newarrival)
HM_products$newarrival <- gsub("H&M Studio Collection1", "No New Arrival", HM_products$newarrival)
HM_products$newarrival <- gsub("Lace0", "No New Arrival", HM_products$newarrival)
HM_products$newarrival <- gsub("Linen", "No New Arrival", HM_products$newarrival)
HM_products$newarrival <- gsub("Merino 00", "No New Arrival", HM_products$newarrival)
HM_products$newarrival <- gsub("Merino 0", "No New Arrival", HM_products$newarrival)
HM_products$newarrival <- gsub("Patent 0", "No New Arrival", HM_products$newarrival)
HM_products$newarrival <- gsub("Mesh", "No New Arrival", HM_products$newarrival)
HM_products$newarrival <- gsub("Satin", "No New Arrival", HM_products$newarrival)
HM_products$newarrival <- gsub("Silk", "No New Arrival", HM_products$newarrival)
HM_products$newarrival <- gsub("SilkNo New Arrival", "No New Arrival", HM_products$newarrival)
HM_products$newarrival <- gsub("Silk1", "No New Arrival", HM_products$newarrival)
HM_products$newarrival <- gsub("Suede", "No New Arrival", HM_products$newarrival)

HM_products$newarrival <- gsub("Patent No New Arrival", "No New Arrival", HM_products$newarrival)
HM_products$newarrival <- gsub("No New ArrivalNo New Arrival", "No New Arrival", HM_products$newarrival)
HM_products$newarrival <- gsub("No New ArrivalNew Arrival", "New Arrival", HM_products$newarrival)
HM_products$newarrival <- gsub("LaceNo New Arrival", "No New Arrival", HM_products$newarrival)
HM_products$newarrival <- gsub("Merino No New Arrival", "No New Arrival", HM_products$newarrival)


# Change the order of columns
col_order <- c("title", "price", "color", "product_id", "url", "buitenlaag", "material", "newarrival",
               "newarrival_dum", "timestamp")
HM_products <- HM_products[, col_order]

# Convert UNIX timestamp to date in a new column
HM_products <- HM_products %>% 
  mutate(date = timestamp)

HM_products$date <- as.Date(as.POSIXct(as.numeric(HM_products$date), 
                                         origin='1970-01-01', tz="UTC"))
view(HM_products)

# 2. INSPECTING THE DATA
# General summary statistics
summary(HM_products)

# Conclusion price: The mean price for all products is 40.74 euros. 

# Exploring newarrivals
New_arrival <- HM_products %>%
  filter(HM_products$newarrival_dum==1)

count(New_arrival)
# Conclusion new arrival: 1238 of the 7904 products are new arrival products. This is 15%.

# Exploring colors
# There are 1,366 different colors or color mixtures in the collection  
color <- HM_products %>%
  count(color)

color <- as.data.frame(HM_products) %>%
  count(color)

# Make a dataset of all the colors that appear more than 100 times.
color_most_prevalent <- color %>%
  filter(n > 100)

ggplot(data = color_most_prevalent, aes(x = color, y = n)) +
  geom_bar(stat = "identity", fill = "red") +
  labs(title = "Colors that are most prevalent on H&M",
       x = "Color", y = "Number of times in dataset") + scale_x_discrete(guide = guide_axis(n.dodge=3))

# In summary, Zwart (Black) appears in the dataset by far the most times.

# Exploring materials
# There are 83 different materials or material mixtures in the collection 
material <- HM_products %>%
  count(material)

material <- as.data.frame(HM_products) %>%
  count(material)

# Make a dataset of all the materials that appear more than 100 times.
material_most_prevalent <- material %>%
  filter(n > 50, !(material %in% c("No material")))

ggplot(data = material_most_prevalent, aes(x = material, y = n)) +
  geom_bar(stat = "identity", fill = "red") +
  labs(title = "Materials that are most prevalent on H&M",
       x = "Material", y = "Number of times in dataset") + scale_x_discrete(guide = guide_axis(n.dodge=3))

# In summary, Tricot appears in the dataset by far the most times.

