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
Set up Github file

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

