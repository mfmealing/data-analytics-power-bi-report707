# Data Analytics Power BI Report
## Task
You have recently been approached by a medium-sized international retailer who is keen on elevating their business intelligence practices. 
With operations spanning across different regions, they've accumulated large amounts of sales from disparate sources over the years.
Recognizing the value of this data, they aim to transform it into actionable insights for better decision-making. 
Your goal is to use Microsoft Power BI to design a comprehensive Quarterly report. 
This will involve extracting and transforming data from various origins, designing a robust data model rooted in a star-based schema, and then constructing a multi-page report.
The report will present a high-level business summary tailored for C-suite executives, and also give insights into their highest value customers segmented by sales region, provide 
a detailed analysis of top-performing products categorised by type against their sales targets, and a visually appealing map visual that spotlights the performance metrics of their retail outlets across different territories.

## Milestone 1
Compiled multiple data sets in various formats into one Power BI document.     
Created an Orders table from Azure SQL database, cleaning the data using methods within Power BI to protect security and imporve clarity and changing columns names to alligin with Power BI naming conventions.    
Created a Products table from a .csv file, the data was first cleaned in Excel using functions in order to find and updates any weights for multipacks, then the weight column was separated into values and units.     
The units were then converted to kg and the values adjusted accordingly (e.g. dividing a number by 1000 if the original unit was g). This was then imported into Power and tidied up, also changing the column names for convention.     
Created a Stores table from Azure blob storage, also cahnging the column names to fit Power BI naming conventions.     
Created a Customers table from a .zip file, merging three tables into one in Power BI. The table was then tidied and a new column was created containing both first and last name combined, also within Power BI. Columns were again renamed.
