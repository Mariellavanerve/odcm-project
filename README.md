# Product Materials & Price in the Fast Fashion Industry: Scraping the H&M website 

Welcome to our research project!

![H M](https://user-images.githubusercontent.com/122876103/227541985-caf87b5a-f285-42e6-9d1f-511fcee6d18d.jpeg)

## Motivation
The fashion industry is the third-largest manufacturing sector in the world (Papasolomou, 2022). This trend towards fast fashion not only revolutionized the way clothing was produced and consumed, but also had significant economic and environmental impacts on the industry and society as a whole. Sustainable development and the environment suffer because of the rapid fashion business (Niinimäki, 2020). 

There has been a growing trend towards sustainability and eco-friendliness in the fashion industry. In response, many fashion companies have started to invest in more sustainable and environmentally-friendly production methods and materials, in order to reduce their environmental footprint and meet the changing demands of their customers (Mandaric et al., 2022). However, there are still some questions in mind about their sustainability campaigns, and whether they are partaking in greenwashing practices (Igini, 2022). Another dimension worth looking into is the prices of these fast fashion brands. 

To collect this data, multiple data sources and extraction methods have been considered. Ten well-known fast fashion brands, like for example H&M, Zara, and Uniqlo, are browsed through to explore the universe of potential web sources. These fast fashion brands were obtained by using Google Trends and searching on Google for ‘Fast fashion brands’. H&M has begun broadcasting and focussing on more sustainable practices and has a lot of products to scrape compared to the other fast fashion brands. For that reason, this research project is focusing on the Dutch website of H&M. H&M’s website can be considered a dynamic website since the product quantity and prices on the website fluctuate, such as during sales events. This study opted to focus on collecting data on the product materials & price of H&M products. This data collection will focus on only women’s products since most consumers of fast fashion are women and generally, women’s fashion is a bigger market than men’s fashion (Cross, 2022). With the collected data, researchers can look into whether the products are made from sustainable materials or do research on the correlation between price and product material.

### Research Question
*How can we collect product information about H&M products?*

## Method & Timeframe for collecting the data

### Method
For the course Online Data Collection & Management, our team scraped data from the Dutch website of H&M. The mechanism used to collect the data from H&M’s website is a semi-manually programmed web scraper. The web scraper is programmed in a Jupyter Notebook with Python language, and used a combination of Selenium and BeautifulSoup. BeautifulSoup has been used to collect the product URLs from the product overview pages. A code python with BeautifulSoup code has been used to counter the number of articles in the page URL and to make a list of the page URLs up to the last page of the 9,972 products. Meanwhile, Selenium is used to scrape the product information on product pages and open boxes of further information.

The data is acquired by scraping H&M’s women all items pages. All acquired data was directly observable on the H&M’s website. As far as www2.hm.com/nl_nl is concerned, we scraped approximately 79.3% of the women's items that were available from 20/03/2023 until 23/03/2023 from the H&M’s ‘view all’ section for our dataset. Our reason to acquire this sample is that H&M has thousands of products and the most popular products being women's clothing. Regarding the data collection, H&M’s “view all” section was scraped once because 7,904 items are enough to answer research questions on product material and/or price. Furthermore, it is unlikely that the products' composition of a particular material will change. If this does change, the existing product will probably be dropped and replaced by a new product. Lastly, there is little chance that the price of the product will change in a short time. To give an overview, we scraped the following variables: 
| **Variable**      | **Description**                                         | **Data**        |
| ----------------- | ------------------------------------------------------- | ----------------|
| Title             | The name of the product.                                | Unprocessed text|
| Price             | The price of the product.                               | Unprocessed text|
| Color             | The color of the product.                               | Unprocessed text|
| Product_id        | The id of the product.                                  | Unprocessed text|
| Product URL       | The url of the product.                                 | Unprocessed text|
| Buitenlaag        | The outside material of the product.                    | Unprocessed text|
| Material          | The material of the product.                            | Unprocessed text|
| New Arrival       | The product is a new arrival item.                      | Unprocessed text|
| Timestamp         | The date and time when scraping events have occurred.   | Unprocessed text|

### Timeframe
The dataset contains observations captured from the 20th of March 2023 until the 23rd of March 2023. The scraping has been done only once, considering that price and product material will not change in a short span of time. 
Four different devices have been used during the scraping period to collect the data. The first device scraped for approximately 64 hours. The second device for about 48 hours. The third and fourth devices scraped for a shorter period of time. The third one had scraped product information for about 28 hours. Lastly, the fourth device had been used for scraping for approximately 10 hours. Each device could scrape about 100 products in an hour. However, due to the use of multiple devices, it was not possible to guarantee the exclusion of duplicates. At the end, there were roughly 5,000 scraped duplicates. When the data was cleaned, these duplicates were removed. 


## Relevance

This research project may be used to gather valueable insights in the sustainability of H&M products. With the collected data, researchers can look into whether the products are made from sustainable materials or do research on the correlation between price and product material.

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
- Selenium. [Installation guides](https://tilburgsciencehub.com/building-blocks/collect-data/webscraping-apis/scrape-dynamic-websites/)
- BeautifulSoup. [Installation guides](https://tilburgsciencehub.com/building-blocks/collect-data/webscraping-apis/scrape-static-websites/)
- R. [Installation guides](https://tilburgsciencehub.com/building-blocks/configure-your-computer/statistics-and-computation/r/)

## Running instructions
The scripts and files might be executed in the following order:

1.	Python webscraping code: ../../src/collection/HM_products.ipynb
2.	Clean the data in R: ../../src/reporting/HM_products.R

## Resources
* Brightly. (2022, August 2) The most popular fast fashion brands, ranked for conscious consumers.  Brightly. Retrieved February 22, 2023, from https://brightly.eco/blog/fast-fashion-brands-sustainability 
*Cross, R. (2022, September 7). Fast fashion for men: A lesser known evil. Impakter. Retrieved February 27, 2023, from https://impakter.com/fast-fashion-for-men/#:~:text=Most%20consumers%20of%20fast%20fashion,bigger%20market%20than%20men%27s%20fashion
* Good on You. (2022, February 2). How ethical is H&M? Retrieved March 23, from https://goodonyou.eco/how-ethical-is-hm/
* Good on You. (2021, November 3).How ethical is New Look? Retrieved March 23, from  https://goodonyou.eco/how-ethical-is-new-look/
* Good on You. (2021, March 10). How ethical is Forever21? Retrieved March 23, from https://goodonyou.eco/how-ethical-is-forever-21/
* [H&M](https://www2.hm.com/nl_nl/index.html)
* Igini, M. (2023, February 17). 5 fast-fashion brands called out for greenwashing. Earth.Org. Retrieved February 27, 2023, from https://earth.org/fast-fashion-brands-greenwashing/ 
* Mandaric, D., Hunjet, A., & Vuković, D. (2022). The Impact of Fashion Brand Sustainability on Consumer Purchasing Decisions. Journal of Risk and Financial Management, 15(4), 176. https://doi.org/10.3390/jrfm15040176
* Niinimäki, K., Peters, G., Bontempi, E., Perry, P., Rissanen, T., & Gwilt, A. (2020). The environmental price of fast fashion. Nature Reviews Earth & Environment, 1(4), 189–200. https://doi.org/10.1038/s43017-020-0039-9
* Papasolomou, I., Melanthiou, Y., & Tsamouridis, A. (2022). The fast fashion vs environment debate: Consumers’ level of awareness, feelings, and behaviour towards sustainability within the fast-fashion sector. Journal of Marketing Communications, 1–19. https://doi.org/10.1080/13527266.2022.2154059
* Safdie, S., & Gendre, I. (2022). All you need to know about fast fashion. Greenly. Retrieved February 27, 2023, from https://greenly.earth/en-us/blog/ecology-news/all-you-need-to-know-about-fast-fashion
* Wanderlust. (2021, December 20). Looking at true cost of sustainable clothing. Wanderlust. Retrieved February 27, 2023, from https://wanderlust.com/journal/looking-at-true-cost-of-sustainable-clothing/#:~:text=The%20fabrics%20are%20more%20expensive&text=%E2%80%9CThe%20prices%20of%20sustainable%20fabrics,to%20more%20commonly%20used%20fabrics. 

## About

This repository was created as a part of the Online Data Collection and Management course in the Marketing Analytics Master of Tilburg University. The following students contributed to the creation of this repository:

* Fleur Le Mire
* Mariëlla van Erve
* Nishtha Staice
* Yi Ting Tsai
* Hilal Nur Turer

## Notes
* Many possible improvements remain. Comments and contributions are welcome!
