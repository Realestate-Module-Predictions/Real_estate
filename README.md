# Real Estate Predictions.
-----

✓ Selected topic
---
Real estate selling price predictions in Toronto.

✓ Reason why this topic
---
We collectively agreed on using the tools and knowledge given to us during this course to manipulate, store, perform ETL and analysis on data. We will train a machine learning on prices of sold inactive listings to predict how much the currently listed unsold units would be sold for in Toronto. 

✓ Description of their source of data
---
- The Data Source used is a CSV file including all the listings sold and still listed since (1st Jan 2020 till 10th Jan 2022).
- Originally a google sheet, which we cleaned, edited, downloaded as a csv file.
- It has been imported into Postgres PGAdmin using AWS. It has also been connected to Jupyter files.
- Latitudes and Longitudes of listings addresses was also added to the data. 
- The data consists of number of features such as Location, Rooms (Bed,wash and extra), Municipality, Garage Type, Heating etc.


✓ Questions they hope to answer with the data
---
How much will the active listed real estate units in Toronto be sold for?

Communication Tools:
---
Zoom,

Slack

Tools:
---
pandas,

tensorflow, 

sklearn,

Python,

AWS,

SQL,

Postgres.


Supporting Snaps of the mock-code:
---
Data Sample:

<img width="1101" alt="Screenshot 2022-01-16 at 20 29 09" src="https://user-images.githubusercontent.com/89428205/149687283-c1ce9a2e-9b22-46a3-83c5-16a98c7707dc.png">


Visualising House Prices:

<img width="758" alt="Screen Shot 2022-01-16 at 4 00 11 PM" src="https://user-images.githubusercontent.com/89428205/149681899-6b2e0ed6-f18f-4f65-a9d8-a6be4d4901e8.png">

## Segement 2

### Presentation
[Google Slides Link](https://docs.google.com/presentation/d/1XaxNnde6NV_13rH7aMo0w9cdDHXTRehXroma-MxGU5o/edit?usp=sharing)

[Tableau Story Link](https://public.tableau.com/app/profile/taimur.ahmad.khan/viz/Final_Project_Analysis/WIP_Story)
### Database

#### Cleaning Dataset
 - Collected the Inactive listing and active listing files.
 - Converted all the null values to "0" and dropped all the unwanted columns.
 - Renamed the columns for better understanding and set index column to the dataframe. 
 - Converted the necessary column data type. 
 - From the street addresses found the Latitude and Longitude and added it to the merged it to main dataframe 
 - After making sure there are no null values and removing any null values in the dataframe. File saved as  " "Inactive_Listings_Final.csv"
 - Cleaned data is saved in the database
 

#### Exploratory Analysis and Visualisations























#Machine Learning Model: 
---

Reading Data Base from the Cloud:
--
![Reading Data Base from the Cloud](https://user-images.githubusercontent.com/89428205/151253028-b7b5b238-8f05-4919-afeb-b7572cf83d80.png)

Preprocessing, (Dropping a few columns, as well as converting contract date from object to typr, and back to numeric in order to scal it with other x features):
--
![Preprocessing, (Dropping a few columns, as well as converting contract date from object to typr, and back to numeric in order to scal it with other x features)](https://user-images.githubusercontent.com/89428205/151253052-e8c1e709-e51e-4e53-950d-8e008d076cfe.png)

Final DF after processing (Fit and transform):
--
![Final DF after processing (Fit and transform)](https://user-images.githubusercontent.com/89428205/151253279-8e11215c-5d99-41f8-939d-bf86c1d0fada.png)

Linear Regression Model:
--
![Linear regression](https://user-images.githubusercontent.com/89428205/151253343-7cd9c667-6517-47de-977d-9950e85e23ee.png)

Importing Active Listings:
--
![Importing the Active listings](https://user-images.githubusercontent.com/89428205/151253511-b01f9fb6-2bc7-4fcb-98bd-6ac7720d8971.png)

Adding the selling price predictions to the active listings:
--
![Adding the selling price predictions to the active listings](https://user-images.githubusercontent.com/89428205/151253817-ddea6fd4-7e0e-4647-a19b-cca22a825fa3.png)

Exporting the predictions of the active listings to a csv file:
--
![Exporting the predictions of the active listings to a csv file](https://user-images.githubusercontent.com/89428205/151253840-529a0fd0-50f4-48c5-a23f-95281afeb5d0.png)






