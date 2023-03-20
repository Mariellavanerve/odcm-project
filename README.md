# Online Data Collection & Management - Spring 2023

*Content: Product Materials & Price in Fast Fashion Industry - Documentation on Scraping the H&M Website*
*Prepared by: Team 8*
*Adapted from: Gebru, Morgenstern, Vecchione, Vaughan, Wallach, Daumeé, and Crawford. (2018). Datasheets for Datasets.*

## 1.Motivation
### 1.1	For what purpose was the dataset created? Was there a specific task in mind? Was there a specific gap that needed to be filled? Please provide a description. 

In the early 1990s, fast-fashion saw a surge of interest and quickly reached a significant level of popularity within a relatively short period of time. This trend towards fast-fashion not only revolutionized the way clothing was produced and consumed, but also had significant economic and environmental impacts on the industry and society as a whole. The term “fast fashion” was first used at the beginning of the 1990s, when Zara opened in New York (Ines Gendre, 2022). Fast fashion has provided young consumers with the opportunity to follow fashion trends at an affordable price, and therefore – has continued to skyrocket at the pace that it has due to its opportunity to provide trendy garments at affordable prices (Ines Gendre, 2022). In conjunction with, fast fashion being inexpensive promotes unnecessary, excessive consumption (Ines Gendre, 2022). As a result, it contributes a devastating impact on the planet (Segran, 2021; Brightly, 2022). Fast fashion makes use of synthetic fibers such as polyester, nylon and acrylic – which aren’t biodegradable friendly.  In fact, one third of microplastics in the ocean are from the materials used to produce fast fashion (Ines Gendre, 2022).

As consumers have become more aware of the negative impact that unsustainable product materials can have on the environment, there has been a growing trend towards sustainability and eco-friendliness in the fashion industry. In response, many fashion companies have started to invest in more sustainable and environmentally-friendly production methods and materials, in order to reduce their environmental footprint and meet the changing demands of their customers. Relatedly, many fast fashion companies have started to incorporate “green marketing” into their strategies, which was a tool to attract environmentally conscious customers.

For instance, H&M publicly set the goal of using only recycled and sustainably-sourced materials by 2030. These initiatives enable the company to set up a greener fashion image. According to its 2021 Sustainability Report, the brand has tripled the share of recycled materials used in their garments as well as reduced its plastic packaging by nearly 28% (Martina Igini, 2022). 

Despite the public statements of these biggest fast-fashion retail companies, there are still some questions in mind. These questions are about sustainability information provided by them, and concerning whether they are greenwashing or not. Greenwashing in marketing refers to companies presenting product or service information in a way that makes consumers believe it is environmentally friendly (Martina Igini, 2022).

Another dimension that raises questions in minds is the prices of these fast-fashion brands. The prices of sustainable fabrics are, on average, two and a half to four times more expensive in comparison to more commonly used fabrics (Wanderlust, 2021). However, mostly these brands kept prices constant, and still considered as affordable from the common mass.

These revelations have suggested that it is worth looking into the fast-fashion industry. Focusing on collection data on product materials & price on H&M products will enable researchers to have information on one of the leading fast-fashion brands. This data collection will focus on only Women products, since most consumers of fast fashion are women and generally, women’s fashion is a bigger market than men’s fashion (Rachel Cross, 2022). With the collected data, researchers can look into whether the products are made from sustainable materials, or do research on correlation between price and product material.

To collect this data, multiple data sources and extraction methods have been considered. ( See, Data Source Comparison Table) Different fast fashion brands are browsed through to explore the universe of potential web sources. The search is also expanded to non-primary data sources (e.g. Github, Kaggle). Sources are based on using Google Trend’s and searching on Google for ‘Fast fashion brands’. The metrics that can be scraped for each source and the conditions necessary to access the data are added to the table.

The alternatives to web scraping are considered. The search is expanded by explicitly adding search terms as API or Dataset. However, most of the API’s that can be used require a payment. H&M, Forever21 and New Look are the fast fashion brands, who contain the most useful information to scrape, and who do have overview pages with all products for women. H&M roughly has 17.140 women products available. Their URLS of the ‘bekijk alle items’ page are based on the number of products (e.g. a page contains 36 products. when you click on the button ‘Meer artikelen laden’, you will see 72 products in the URL and so further on). New Look as a clear product page URL, which goes up by 1 if you enter the next page. However, New Look only has 5.777 products. Forever21 has 8.156 products and works with similar URL’s as H&M. Forever21 is not sustainable at all and therefore the least interesting.
H&M is preferred, because it has begun broadcasting and focussing on more sustainable practices and has a lot of products to scrape. https://www2.hm.com/nl_nl/index.html is the official website of H&M and contains the most useful information to scrape and has the most products compared to the other fast-fashion brands. Therefore, this website is most suitable to use for the research project. 

### 1.2	Who created this dataset (e.g., which team, research group) and on behalf of which entity (e.g., company, institution, organization)?

The dataset that is available after scraping the website www2.hm.com has been scraped by a project group (Team 8) of the course Online Data Collection and Management. This course has been given by Hannes Datta at Tilburg University and is part of the master Marketing Analytics.

### 1.3	Who funded the creation of the dataset? If there is an associated grant, please provide the name of the grantor and the grant name and number. 
No external partner directly funded the creation of the dataset. But the possibility of compiling this dataset comes from the teaching materials of Tilburg University. They provided teaching materials that ensured that project group members had enough information to scrape the www2.hm.com/nl.


## 2. Composition

### 2.1	What do the instances that comprise the dataset represent (e.g., documents, photos, people, countries)? Are there multiple types of instances (e.g., movies, users, and ratings; people and interactions between them; nodes and edges)? Please provide a description.
The instances in dataset(s) are women’s items extracted from the H&M website in The Netherlands. Each instance gives the information of price, color, and material. To extract the information of instances, the product overview pages, which are the pages showing the total offer of products on a website, and product pages are both used as seeds for data extraction. When scraping product overview pages, the sorting option of “Recommended” was used. The search history and cookies on H&M website do not have a great influence on this sorting setting, as the products’ order doesn’t change. Besides, all of the data, taking price and material as examples, does not change based on our searching and purchase history.  

### 2.2	How many instances are there in total (of each type, if appropriate)?

The dataset consists of 10,000 instances in total from “VIEW ALL ITEMS” of women’s items on the H&M website, meaning 10,000 items have been processed in the dataset. 

### 2.3	Does the dataset contain all possible instances or is it a sample (not necessarily random) of instances from a larger set? If the dataset is a sample, then what is the larger set? Is the sample representative of the larger set (e.g., geographic coverage)? If so, please describe how this representativeness was validated/verified. If it is not representative of the larger set, please describe why not (e.g., to cover a more diverse range of instances, because instances were withheld or unavailable).

The dataset is a sample of instances from “VIEW ALL ITEMS” of women’s items on the H&M website. There is an infinite loading button on the product overview page instead of a separate pages button. As a result, the page will load 36 more items whenever pressing the loading button. As of the extracting date, xxx items were shown on the product overview page which equals to xxx pages. In the data collection process, not only scraping time, but also the number of items that can be extracted, need to be taken into account. 

### 2.4	What data does each instance consist of? “Raw” data (e.g., unprocessed text or images) or features? In either case, please provide a description.

For each instance, a women's item, the following data is collected:

**Variable**    | **Description**                                                       | **Type of data**
:---------------|:----------------------------------------------------------------------|:--------------------
Title           | The name of the product.                                              | Unprocessed text
Price           | The price of the product.                                             | Unprocessed text
Color           | The color of the product.                                             | Unprocessed text
New arrival     | Whether the product is new arrival or not.                            | Unprocessed text
Material        | The material of the product.                                          | Unprocessed text
Timestamp       | The date and time when scraping events have occurred.                 | Unprocessed text

As H&M website is dynamic, which means the products on the website will differ over time or the price may change when the sale event starts, it is also crucial to include the date of scraping into the dataset.  The researchers can also investigate the trend over time in the future as well.

### 2.5	Is there a label or target associated with each instance? If so, please provide a description.

There is no label or target created to be associated with each instance.

### 2.6	Is any information missing from individual instances? If so, please provide a description, explaining why this information is missing (e.g., because it was unavailable). This does not include intentionally removed information, but might include, e.g., redacted text.

#check after the extraction code is finalized.

### 2.7	Are relationships between individual instances made explicit (e.g., users’ movie ratings, social network links)? If so, please describe how these relationships are made explicit.

The explicit relationships between individual instances do not exist because the collected instances are products with their own product information.

### 2.8	Are there recommended data splits (e.g., training, development/validation, testing)? If so, please provide a description of these splits, explaining the rationale behind them.

The data of each product is collected and saved in one dataset. In our case, we decided not to split the dataset right now. However, it is possible for researchers to split the dataset in the future by material, color, etc. The rationale behind splitting material may be able to see the average price within different materials. 

### 2.9	Is the dataset self-contained, or does it link to or otherwise rely on external resources (e.g., websites, tweets, other datasets)? If it links to or relies on external resources, a) are there guarantees that they will exist, and remain constant, over time; b) are there official archival versions of the complete dataset (i.e., including the external resources as they existed at the time the dataset was created); c) are there any restrictions (e.g., licenses, fees) associated with any of the external resources that might apply to a future user? Please provide descriptions of all external resources and any restrictions associated with them, as well as links or other access points, as appropriate.

The dataset is self-contained without relying on other external sources. 

### 2.10	Does the dataset contain data that might be considered confidential (e.g., data that is protected by legal privilege or by doctor patient confidentiality, data that includes the content of individuals non-public communications)? If so, please provide a description.

As mentioned in 2.4, all the data we scraped is product information which is publicly available on H&M website. All the personal information is not scraped in this data set. Furthermore, this data set is aimed for academic purposes by a project group from the Online Data Collection and Management course in Tilburg university. It doesn’t violate H&M’s terms and conditions, which allow use of its contents for personal and non-commercial purposes.

### 2.11	Does the dataset contain data that, if viewed directly, might be offensive, insulting, threatening, or might otherwise cause anxiety? If so, please describe why.

The dataset does not contain any offensive, insulting, threatening or anxiety causing information.

### 2.12	Does the dataset relate to people? If not, you may skip the remaining questions in this section.

There is no user-related information extracted during the collection of the data.

### 2.13    Does the dataset identify any subpopulations (e.g., by age, gender)? If so, please describe how these subpopulations are identified and provide a description of their respective distributions within the dataset.

As mentioned in 2.12, the dataset doesn’t include any user-related information during extraction. As a result, the dataset cannot identify any subpopulations.

### 2.14 Is it possible to identify individuals (i.e., one or more natural persons), either directly or indirectly (i.e., in combination with other data) from the dataset? If so, please describe how.

Since the data within the dataset are all related to product information, which is also publicly shown on H&M website. There is no user information that can be identified from the dataset.

### 2.15	Does the dataset contain data that might be considered sensitive in any way (e.g., data that reveals racial or ethnic origins, sexual orientations, religious beliefs, political opinions or union memberships, or locations; financial or health data; biometric or genetic data; forms of government identification, such as social security numbers; criminal history)? If so, please provide a description.

The dataset doesn’t contain data that might be considered sensitive. 

## 3. Collection Process

### 3.1	How was the data associated with each instance acquired? Was the data directly observable (e.g., raw text, movie ratings), reported by subjects (e.g., survey responses), or indirectly inferred/derived from other data (e.g., part-of-speech tags, model-based guesses for age or language)? If data was reported by subjects or indirectly inferred/derived from other data, was the data validated/verified? If so, please describe how. 

The data is acquired by scraping H&M’s women's all items pages. All acquired data was directly observable on the H&M’s website.

### 3.2	What mechanisms or procedures were used to collect the data (e.g., hardware apparatus or sensor, manual human curation, software pro- gram, software API)? How were these mechanisms or procedures validated?

The mechanism used to collect the data from the H&M’s website is a semi-manually programmed web scraper. The web scraper is programmed in a Jupyter Notebook with Python language, and used a combination of Selenium and BeautifulSoup. BeautifulSoup has utilized to collect product URLs from product overview pages because the products are only loaded when the page is scrolled down, which cannot be done manually during web scraping. Meanwhile, Selenium is utilized to scrape product pages and extract the relevant product information.

### 3.3	If the dataset is a sample from a larger set, what was the sampling strategy (e.g., deterministic, probabilistic with specific sampling probabilities)?

As far as www2.hm.com is concerned, we scraped all women items that were available on X/04/2023 from H&M for our dataset. The reason for this sampling strategy is that H&M has thousands of products and the most popular products are women's clothing. Data collection is just made once, because 17k items are enough to answer a researcher's question on product material or price.

### 3.4	Who was involved in the data collection process (e.g., students, crowdworkers, contractors) and how were they compensated (e.g., how much were crowdworkers paid)?

The data is entirely collected by a course project group from Tilburg University. Therefore, no one receives any financial compensation. 		 	 	 		
			
### 3.5	Over what timeframe was the data collected? Does this timeframe match the creation timeframe of the data associated with the instances (e.g., recent crawl of old news articles)? If not, please describe the time- frame in which the data associated with the instances was created.

The dataset contains observations from the Xst of March 2023 until the Xst of March 2023. The scraping has been done only once, considering price and product material will not change in a short span of time. The final dataset was collected in about X hours. 

### 3.6	Were any ethical review processes conducted (e.g., by an institutional review board)? If so, please provide a description of these review processes, including the outcomes, as well as a link or other access point to any supporting documentation.

For web scraping projects, it is important to ensure that all  ethical principles and guidelines are adhered to avoid any potential legal or ethical issues. H&M’s publicly available product data can be scraped unless the content is intended solely for personal or non-commercial use. Therefore, this scraping project is not subject to any ethical concern since the only objective is to to gain familiarity with scraping within the context of Online Data Collection & Management course at Tilburg University.

### 3.7	Does the dataset relate to people? If not, you may skip the remaining questions in this section.

The dataset does not relate to people, since its only product information which are defined by the H&M.

## 4. Preprocessing, cleaning, labeling

## 4.1	Was any preprocessing/cleaning/labeling of the data done (e.g., discretization or bucketing, tokenization, part-of-speech tagging, SIFT feature extraction, removal of instances, processing of missing values)? If so, please provide a description. If not, you may skip the remainder of the questions in this section.

### 4.2	Was the “raw” data saved in addition to the pre-processed/cleaned/labeled data (e.g., to support unanticipated future uses)? If so, please provide a link or other access point to the “raw” data.

### 4.3	Is the software used to preprocess/clean/label the instances available? If so, please provide a link or other access point.

## 5. Uses

### 5.1	Has the dataset been used for any tasks already? If so, please provide a description.

This dataset has not been used for any tasks before, as this dataset is specially developed as a project for the course Online Data Collection and Management as part of the Master Marketing Analytics at Tilburg University.

### 5.2	Is there a repository that links to any or all papers or systems that use the dataset? If so, please provide a link or other access point.

There is a repository that gives access to all documents that are related to the dataset or needed to work with and get an understanding of it. The repository is publically available and can be found via the following link: ---

### 5.3	What (other) tasks could the dataset be used for?

This data can be combined with data from other fast-fashion brands to enrich and disseminate the research more widely. Another example might be, the outputs from H&M data can influence manufacturers' decisions about price and product material selection.

### 5.4	Is there anything about the composition of the dataset or the way it was collected and preprocessed/cleaned/labeled that might impact future uses?
For example, is there anything that a future user might need to know to avoid uses that could result in unfair treatment of individuals or groups (e.g., stereotyping, quality of service issues) or other undesirable harms (e.g., financial harms, legal risks) If so, please provide a description. Is there anything a future user could do to mitigate these undesirable harms?

Since the pricing data will only reflect the March, 2023 economies of scale. In future uses, researchers should consider this and should not do pricing analysis solely based on the price data of H&M. 

### 5.5	Are there tasks for which the dataset should not be used? If so, please provide a description.

This data has been collected to provide a source for research that would like to gather insights. Therefore, it should be only used for research purposes. The reason is, H&M prohibits using its publicly available data for commercial purposes. Therefore, the data should be only used for personal and non-commercial purposes.

## References

*Safdie, S., & Gendre, I. (2022). All you need to know about fast fashion. Greenly. Retrieved February 27, 2023, from https://greenly.earth/en-us/blog/ecology-news/all-you-need-to-know-about-fast-fashion*

*Brightly. (2022, August 2) The most popular fast fashion brands, ranked for conscious consumers.  Brightly. Retrieved February 22, 2023, from https://brightly.eco/blog/fast-fashion-brands-sustainability *

*Igini, M. (2023, February 17). 5 fast-fashion brands called out for greenwashing. Earth.Org. Retrieved February 27, 2023, from https://earth.org/fast-fashion-brands-greenwashing/ *

*Wanderlust. (2021, December 20). Looking at true cost of sustainable clothing. Wanderlust. Retrieved February 27, 2023, from https://wanderlust.com/journal/looking-at-true-cost-of-sustainable-clothing/#:~:text=The%20fabrics%20are%20more%20expensive&text=%E2%80%9CThe%20prices%20of%20sustainable%20fabrics,to%20more%20commonly%20used%20fabrics.* 

*Cross, R. (2022, September 7). Fast fashion for men: A lesser known evil. Impakter. Retrieved February 27, 2023, from https://impakter.com/fast-fashion-for-men/#:~:text=Most%20consumers%20of%20fast%20fashion,bigger%20market%20than%20men%27s%20fashion *

## Appendix
