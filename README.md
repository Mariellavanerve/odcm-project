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

## Method & relevance for collecting the data

### Method
For the course Online Data Collection & Management, our team scraped data from the Dutch website of H&M. The mechanism used to collect the data from H&M’s website is a semi-manually programmed web scraper. The web scraper is programmed in a Jupyter Notebook with Python language, and used a combination of Selenium and BeautifulSoup. BeautifulSoup has been used to collect the product URLs from the product overview pages. A code python with BeautifulSoup code has been used to counter the number of articles in the page URL and to make a list of the page URLs up to the last page of the 9,972 products. Meanwhile, Selenium is used to scrape the product information on product pages and open boxes of further information.

The data is acquired by scraping H&M’s women all items pages. All acquired data was directly observable on the H&M’s website. As far as www2.hm.com/nl_nl is concerned, we scraped approximately 79.3% of the women's items that were available from 20/03/2023 until 23/03/2023 from the H&M’s ‘view all’ section for our dataset. Our reason to acquire this sample is that H&M has thousands of products and the most popular products being women's clothing. Regarding the data collection, H&M’s “view all” section was scraped once because 7,904 items are enough to answer research questions on product material and/or price. Furthermore, it is unlikely that the products' composition of a particular material will change. If this does change, the existing product will probably be dropped and replaced by a new product. Lastly, there is little chance that the price of the product will change in a short time. To give an overview, we scraped the following variables: 
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


The dataset contains observations captured from the 20th of March 2023 until the 23rd of March 2023. The scraping has been done only once, considering that price and product material will not change in a short span of time. 
Four different devices have been used during the scraping period to collect the data. The first device scraped for approximately 64 hours. The second device for about 48 hours. The third and fourth devices scraped for a shorter period of time. The third one had scraped product information for about 28 hours. Lastly, the fourth device had been used for scraping for approximately 10 hours. Each device could scrape about 100 products in an hour. However, due to the use of multiple devices, it was not possible to guarantee the exclusion of duplicates. At the end, there were roughly 5,000 scraped duplicates. When the data was cleaned, these duplicates were removed. 


### Relevance

This research project gives valuable insights in the prices and availablity of Airbnb's with New Year's Eve compared between multiple capital cities in Europe. For customers of Airbnb, this research gives them insights into the prices of an Airbnb with New Year's eve and the availability. Based on the results, predictions can be made for the next year.

### Results

**Price**: H1: New Year’s Eve influences the prices of Airbnb listings. 

The results from the linear regression show a P-value of <0.01 for both the complete model and the different cities separate. Therefore, with a significance of 0.05, the H0 can be rejected. Therefore, we can state that there is a significant relationship between New Year’s Eve and prices of Airbnb listings. The estimate of New Year's Eve is positive for the complete datasets and for the cities seperate. This means that we can concluded that prices will be higher during New Year's Eve. Moreover, it is striking that the prices of Airbnbs in Paris, London, and Rome are comparable. On the other hand, prices in Amsterdam are significantly higher in the same timeperiod.


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
