# Data Analytics Power BI Report
## Task
You have recently been approached by a medium-sized international retailer who is keen on elevating their business intelligence practices. 
With operations spanning across different regions, they've accumulated large amounts of sales from disparate sources over the years.
Recognizing the value of this data, they aim to transform it into actionable insights for better decision-making. 
Your goal is to use Microsoft Power BI to design a comprehensive Quarterly report. 
This will involve extracting and transforming data from various origins, designing a robust data model rooted in a star-based schema, and then constructing a multi-page 
report.
The report will present a high-level business summary tailored for C-suite executives, and also give insights into their highest value customers segmented by sales 
region, provide a detailed analysis of top-performing products categorised by type against their sales targets, and a visually appealing map visual that spotlights the 
performance metrics of their retail outlets across different territories.

## Milestone 1
Set up Github file.

## Milestone 2
Compiled multiple data sets in various formats into one Power BI document.     
Created an Orders table from Azure SQL database, cleaning the data using methods within Power BI to protect security by removing columns and improve clarity by splitiing 
columns and removing any columns with a blank order date. Column names were then changed to allign with Power BI naming conventions.    
Created a Products table from a .csv file, the data was first cleaned in Excel using functions in order to find and updates any weights for multipacks, then the weight 
column was separated into values and units.     
The units were then converted to kg and the values adjusted accordingly (e.g. dividing a number by 1000 if the original unit was g). This was then imported into Power and 
tidied up, also changing the column names for convention.     
Created a Stores table from Azure blob storage, also cahnging the column names to fit Power BI naming conventions.     
Created a Customers table from a .zip file, merging three tables into one in Power BI. The table was then tidied and a new column was created containing both first and last 
name combined, also within Power BI. Columns were again renamed.

## Milestone 3
Created the Dates table using the CALENDAR function to have a set of dates from the earliest order date to the latest shipping date.    
Added columns to the Dates table: Day of Week, Month Number (i.e. Jan = 1, Dec = 12 etc.), Month Name, Quarter, Year, Start of Year, Start of Quarter, Start of Month and 
Start of Week. This was done using DAX functions like STARTOF functions for the year, quarter and month, WEEKDAY for the start of the week and FORMAT for others.     
Created a star schema for the data, with all connections being many-to-one and the Orders table always being the many table, and with a filter from one to many. An image 
of this is shown below:    
![image](https://github.com/mfmealing/data-analytics-power-bi-report707/assets/148961337/74443870-dfa1-4dfb-b7d7-fdc91907d3ce)
Created Measures table, for storing all measures.    
Created key measures: Total Orders, Total Revenue, Total Profit, Total Customers, Total Quantity, Profit YTD and Revenue YTD. This was also done using DAX functions such as
the SUMX, RELATED and TOTALYTD.    
Created hierarchy for dates in the following order: Start of Year, Start of Quarter, Start of Month, Start of Week, Date.   
Created a new column Country to store the full name of each stores Country, United Kingdom, United States or Germany using the SWITCH function. Also made a Geography column
that combines this and the Region column together with a column separating them.      
Created a final hierarchy for geography in the following order: World Region, Country, Country Region. The World Region column is the continent.

## Milestone 4
Set up report pages: Executive Summary, Customer Detail, Product Detail, Stores Map. Also set colour theme for report.    
Added a side panel to eventually create a navigation pane from.

## Milestone 5
Built the Customer Detail report page.      
Added cards detailing the total number of unique customers, the revenue per customer (total revenue divided by total unique customers) and the full name, number of orders and 
revenue of the customer with the highest revenue.     
Added a pie chart to show the distribution of customers by country and a bar chart showing the distribution of customers by product category.    
Created a table showing the 20 customers with the highest revenue, sorted by revenue with their full names, reveneu and number of orders. Also added data bars to the revenue
and order columns for clarity.    
Added a line chart showing the total customers by year, quarter or month depending on the level drilled down - this was left at quarter for best visuals. A trend line was 
added and a forcast for the next 10 periods with a confidence of 95%.    
The final page result is shown below:    
![image](https://github.com/mfmealing/data-analytics-power-bi-report707/assets/148961337/6bc58e28-e70f-4a7e-a37e-0d0f343ba825)

## Milestone 6
Built the Executive Summary page.    
Added cards for the total revenue, profit and orders. Also added donut charts for the revenue by store type and store country.     
Created a line chart for the total revenue using the same date heirarchy as before, including a trend line and a forcast for the next 10 periods with a confidence of 95%, as 
before. The graph was left at months for best visuals.    
Added a bar chart for the distribution of orders by product category and a table showing the top 10 products by total orders, including the product name, category, total 
revenue, total customers and total orders. This was then sorted alphabetically and data bars were added to the revenue column.    
Created KPI visuals - this involved making new measures for the total revenue. profit and orders for the past quarter, using the PREVIOUSQUARTER fucntion. The targets of 
these three measures were then also calculated by multiplying the previous quarter's values by 1.05. The KPI was then set up with the values as the total (revenue, profit or 
orders), the trend axis as the starts of the quarter and the target as the mewly calculated targets. This was then formatted so that high was good and the colour green and 
low was bad and the colour red.    
All values were changed so that the correct decimal places were shown.    
The final page result is shown below:    
![image](https://github.com/mfmealing/data-analytics-power-bi-report707/assets/148961337/108ef112-cb53-4fc3-afed-4015a8af3ac2)

## Milestone 7
Built the Product Detail page.    
Added gauge visuals for the order, revenue and profit to show the current quarter performance against a goals of 10% increase. This involved making measures for the current
quarter of the three values and the target which was the current quarter multiplied by 1.1. Conditional formatting was also applied so that the value in the centre was red 
if the target wasn't met and black if it was met.    
Added tiles that showed the product with the most orders and highest revenue.   
Created an area chart for the different product categories against revenue.    
Created a top 10 products table, for the products that had the highest revenue. Data bars were applied to the revenue and the data was sorted by revenue. The table included
product description, revenue, total customers, total orders and profit per order (total profit / total orders).    
Created a scatter graph for the profitability of each product category. A measure of profit per item (sum of profits for each product in the products table) was created and 
set as the x-axis - this was then put against the sum of the product quantity with the desciption as the values and the category as the legend.    
A slicer toolbar was started to be built. A filter icon was added to the rectangle created earlier taken from a zip file provided a secondary panel was then added to include
the filters for product category and store location by country. The countries option was given a select all option and both were set as vertical slicers with no links to data.
They were both then grouped to this newly made panel and a back button symbol was added and also grouped. Two bookmarks were then added, one where the new panel was showing 
and one without - the back button was assigned to the one without and the filter button was assigned to the one with so the panel could be easily shown and hidden.    
The final page result is shown below:    
![image](https://github.com/mfmealing/data-analytics-power-bi-report707/assets/148961337/a995e8d9-dbcb-47dc-88ba-e3a98f16ae18)
The same page with the filter slicer toolbar:    
![image](https://github.com/mfmealing/data-analytics-power-bi-report707/assets/148961337/480d1a50-3248-46c4-a8ba-1931130ee99a)

## Milestone 8
Built the Stores Map page.
Added a map visual to show each of the stores locations, using the geography heirarchy previously created and year to date profit as the bubble size.    
Created a tile style slicer at the top of the page to filter by country, also including a select all option.    
Built a drillthrough page which could be viewed when cilcking through a particluar section on the map. This included a table with the top 5 products by year to date profit, 
including the columns of desciption, year to date profit, total orders and total revenue, sorted alphebetcially. There was also a column chart for the total orders by category,
a card visual showing the selected store and two gague visuals, one for the year to date profit and one for the year to date revenue, both showing targets of a 20% increase 
from the current value, created by multiplying the YTD value by 1.2. The page was then edited to be a drillthrough page instead of a standard page and was set to be used as a 
category for country region on the map made before.    
Built a stores tooltip page which could be viewed when hovering over any bubble on the map made previously. This was done by creating a new page and setting it to a tooltip 
page instead of standard. The previously made gauge visuals were moved over and added to the page as well as a card for the store location for clarity.    
The final page result is shown below:    
![image](https://github.com/mfmealing/data-analytics-power-bi-report707/assets/148961337/7312a8b9-0eda-4924-abfc-bdafab2c1e18)
The drillthrough page (shown just for first possible location alphabetically):    
![image](https://github.com/mfmealing/data-analytics-power-bi-report707/assets/148961337/e46bd96d-8c8b-4f61-8c3e-b9a9760c372c)
The Tooltip page:    
![image](https://github.com/mfmealing/data-analytics-power-bi-report707/assets/148961337/723e1fc9-242b-41ac-9c34-162d338077e4)


