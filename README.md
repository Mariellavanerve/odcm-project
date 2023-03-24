# Product Materials & Price in the Fast Fashion Industry: Scraping the H&M website

Welcome to our research project!

(![H M](https://user-images.githubusercontent.com/122876103/227515026-5cec6d76-bfcd-4543-b317-50ca25e93799.jpeg))

## Motivation
“May the new year take you to places you have never been before”

However, traveling to new places requires a lot of planning and coordination, such as finding the right accommodation. As we all know, searching for accommodation, especially in capital cities, can be quite frustrating, especially during the holidays. Thanks to Airbnb, offering many affordable options, this has become a thing of the past. 

This study aims to analyze the effects of one of the biggest holidays on Airbnb listings: New Year’s eve. We believe that New Year’s eve could influence the price of listings and the availability of Airbnb’s during this end-of-year period. Among all holidays, we chose New Year’s Eve because it is celebrated across the world, happens each year on the same date, and is celebrated by all ages. To analyze the effect, we selected the following European cities: London, Paris, Amsterdam, and Rome. 

Furthermore we took into account the size/population and costliness of the cities in our selection to ensure they did not influence the results. For the holiday, we considered the events that provided data for multiple cities before, during and after the event. 

### Research Question
*How can we collect product information about H&M products?*

## Method and Results

### Method
Inside Airbnb provided the information needed for this research project. To analyze the effects of prices of Airbnb accommodations during a New Year's Eve in capital cities in Europe, we will use a linear regression analysis since we are exploring the relationship between a metric dependent variable and a metric independent variables. In addition, we also want to observe to what extent different capital citites in Europe have an effect on the main relationship of New Year's Eve and Airbnb price and Airbnb bookings. Moreover, to analyze the effects of the Airbnb bookings during New Year's Eve in capital cities in Europe, we will use a logistic regression analysis. A logistic regression is performed here, as we set dependent variable "booked" as dummy variable. The analysis will be done in RStudio, since this program allows us for preparing and analyzing the data.

In order to conduct this study, we examined data beginning five days before New Year's Eve 2022 (December 26th) and ending five days after New Year's Eve 2022 (January 5th). To compare the impact of New Year's Eve with other, "regular" days, we made a dummy for New Year's Eve.

### Variables used in the research project

| **Variable**  | **Description**                                         | **Data**        |
| ------------- | --------------------------------------------------------| ----------------|
| Title         | The name of the product.                                | Unprocessed text|
| Price         | The price of the product.                               | Unprocessed text|
| Color         | The color of the product.                               | Unprocessed text|
| Product_id    | The id of the product.                                  | Unprocessed text|
| Product URL   | The url of the product.                                 | Unprocessed text|
| Buitenlaag    | The outside material of the product.                    | Unprocessed text|
| Material      | The material of the product.                            | Unprocessed text|
| New Arrival   | The product is a new arrival item.                      | Unprocessed text|
| Timestamp     | The date and time when scraping events have occurred.   | Unprocessed text|


To build a new dataset, the listing- and calendar datasets of all the cities, retrieved from insideairbnb, are combined. This new dataset is cleaned and it is checked for relevant elements before analysis. These sets enable analysis for every listing for every specific day, allowing for price comparisons between dates. To supplement the calendar dataset with additional data, the listings dataset will be combined with it and this will be saved in a file with the name complete_data.csv. Moreover, the data per city will be saved seperately in a file with the name complete_data_cityname.csv. 

### Relevance

This research project gives valuable insights in the prices and availablity of Airbnb's with New Year's Eve compared between multiple capital cities in Europe. For customers of Airbnb, this research gives them insights into the prices of an Airbnb with New Year's eve and the availability. Based on the results, predictions can be made for the next year.

### Results

**Price**: H1: New Year’s Eve influences the prices of Airbnb listings. 

The results from the linear regression show a P-value of <0.01 for both the complete model and the different cities separate. Therefore, with a significance of 0.05, the H0 can be rejected. Therefore, we can state that there is a significant relationship between New Year’s Eve and prices of Airbnb listings. The estimate of New Year's Eve is positive for the complete datasets and for the cities seperate. This means that we can concluded that prices will be higher during New Year's Eve. Moreover, it is striking that the prices of Airbnbs in Paris, London, and Rome are comparable. On the other hand, prices in Amsterdam are significantly higher in the same timeperiod.

**Bookings**: H1: New Year’s Eve influences the amount of booked Airbnbs. 

The results from the logistic regression show a P-value <0.01 for both the complete model and the different cities seperate. Therefore, with a significance of 0.05, the null hypothesis can be rejected. By examining the exponents, we discovered that the impact across Paris, London, and Amsterdam is very similar, but they are all very different from Rome. The likelihood of an Airbnb being booked on New Year's Eve in Amsterdam increases by 0.692, in Paris increases by 0.451 and in London increases by 0.470. While these odds increase by 1.029 in Rome respectively. This demonstrates that the likelihood of booking an Airbnb on New Year’s Eve is the highest in Rome. 

## Conclusion

In answering the research question, it was found that there is a significant relationship between New Year's Eve and the prices of Airbnb listings. This applies for listings in Rome, London, Paris, and Amsterdam, together and for the cities individually. We found that the average price in different cities is higher on New Year's Eve compared to the usual days.

Furthermore, a significant relationship between New Year's Eve and the likelihood that an Airbnb listing would be booked has been found. The chances of a listing being booked in Rome, London, Paris, and Amsterdam increases on New Year’s Eve. 

## Repository overview

The directory structure is as follow:
```
├── src
|   ├── collection
|       ├── HM_products.ipynb
|   ├── reporting
|       ├── HM_products.R
├── docs
|   ├── H&M_Report
|   ├── screenshot.pdf      
├── data
|   ├── HM_products.csv
|   ├── HM_products.json
├── .gitignore
├── Install packages.R
└── README.md

```

The main aim of this to have a basic structure, which can be easily adjusted to use in an actual project.  

## Dependencies
Please follow the installation guides on http://tilburgsciencehub.com/. :
- Python. [Installation guides](https://tilburgsciencehub.com/building-blocks/configure-your-computer/statistics-and-computation/python/)
- R. [Installation guides](https://tilburgsciencehub.com/building-blocks/configure-your-computer/statistics-and-computation/r/)

## Running instructions
The scripts and files might be executed in the following order:

1.	Python webscraping code: ../../src/collection/HM_products.ipynb
2.	Clean the data: ../../src/reporting/HM_products.R

## More resources
* [H&M](https://www2.hm.com/nl_nl/index.html)

## About

This repository was created as a part of the Online Data Collection and Management course in the Marketing Analytics Master of Tilburg University. The following students contributed to the creation of this repository:

* Fleur Le Mire
* Mariëlla van Erve
* Nishtha Staice
* Yi Ting Tsai
* Hilal Nur Turer


## Notes
* Many possible improvements remain. Comments and contributions are welcome!
