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

## Segment 2

### Presentation:
[Google Slides Link](https://docs.google.com/presentation/d/1XaxNnde6NV_13rH7aMo0w9cdDHXTRehXroma-MxGU5o/edit?usp=sharing)

[Tableau Story Link](https://public.tableau.com/app/profile/taimur.ahmad.khan/viz/Final_Project_Analysis/WIP_Story)

[Tableau Dashboard Link](https://public.tableau.com/app/profile/taimur.ahmad.khan/viz/Final_Project_Analysis_dashboard/Final_Project_Analysis)
### Database

### Coding

#### Cleaning Dataset
 - Collected the Inactive listing and active listing files.
 - Converted all the null values to "0" and dropped all the unwanted columns.
 - Renamed the columns for better understanding and set index column to the dataframe. 
 - Converted the necessary column data type. 
 - From the street addresses found the Latitude and Longitude and added it to the merged it to main dataframe 
 - After making sure there are no null values and removing any null values in the dataframe. File saved as  " "Inactive_Listings_Final.csv"
 - Cleaned data is saved in the database

#### Exploratory Analysis and Visualisations:

##### Importing the original dataset from the cloud

<img width="1093" alt="Screenshot 2022-01-27 at 14 39 30" src="https://user-images.githubusercontent.com/89428205/151431614-c8ab6536-43c8-4839-89f2-f4454517e760.png">


##### Counting the number of rooms in the residence (incl  bedroom, extra room, washroom, kitchen)

![Counting the number of rooms in the residence (incl  bedroom, extra room, washroom, and kitchen)](https://user-images.githubusercontent.com/89428205/151258586-46a46fd6-25fe-4b85-8519-c8099fe3f103.png)

##### Ammenities vs Count

<img width="1084" alt="Screenshot 2022-01-27 at 14 43 25" src="https://user-images.githubusercontent.com/89428205/151432312-a56beedd-1d84-4fa5-8743-f7fe5617b0e8.png">


##### Counting the style and types of each residence

![Counting the style and types of each residence](https://user-images.githubusercontent.com/89428205/151258639-d1de5e88-629f-4820-ad15-cf64db0098ef.png)


##### Plotting the Correlation between price and room types in the residence

![Plotting the Correlation between price and room types in the residence](https://user-images.githubusercontent.com/89428205/151258668-c1462879-940a-427d-8cc1-762c759a1110.png)


##### Plotting the price VS Feature

![Plotting the price VS Feature](https://user-images.githubusercontent.com/89428205/151258695-fc97d7ed-beea-4ec9-84bb-4c18c88b3237.png)


#### Machine Learning Model: 

✓ Description of preliminary data preprocessing
✓ Description of preliminary feature engineering
and preliminary feature selection, including their
decision-making process
✓ Description of how data was split into training
and testing sets
✓ Explanation of model choice, including
limitations and benefits

##### Reading Data Base from the Cloud:

![Reading Data Base from the Cloud](https://user-images.githubusercontent.com/89428205/151253028-b7b5b238-8f05-4919-afeb-b7572cf83d80.png)

##### Plotting Sold price density, as well as sold price Boxplot

<img width="713" alt="Screenshot 2022-01-27 at 14 40 59" src="https://user-images.githubusercontent.com/89428205/151431934-ac1d74bd-fbcd-414f-9082-4bb835b0682c.png">


##### Preprocessing, (Dropping a few columns, as well as converting contract date from object to typr, and back to numeric in order to scal it with other x features):

![Preprocessing, (Dropping a few columns, as well as converting contract date from object to typr, and back to numeric in order to scal it with other x features)](https://user-images.githubusercontent.com/89428205/151253052-e8c1e709-e51e-4e53-950d-8e008d076cfe.png)

##### Final DF after processing (Fit and transform):

![Final DF after processing (Fit and transform)](https://user-images.githubusercontent.com/89428205/151253279-8e11215c-5d99-41f8-939d-bf86c1d0fada.png)

##### Linear Regression Model:
✓ Explanation of model choice, including limitations and benefits:

will take in its fit method arrays X, y and will store the coefficients "w" of the linear model in its coef_ member
The coefficient estimates for Ordinary Least Squares rely on the independence of the features. When features are correlated and the columns of the design matrix X have an approximately linear dependence, the design matrix becomes close to singular and as a result, the least-squares estimate becomes highly sensitive to random errors in the observed target, producing a large variance. This situation of multicollinearity can arise, for example, when data are collected without an experimental design.

#####Reason of choice:
Choosing a model with those features is exactly what we need to make our predictions.
We have tried different models on a smaller scale incl... Neural Networks, Decision Trees, Random Forests, and other forms of regresions like Logistic regression.
the reasons of disregarding them varies, for example: in the neural network model it returns a very low accuracy. Decission trees, kills the kernel. 

![Linear regression](https://user-images.githubusercontent.com/89428205/151253343-7cd9c667-6517-47de-977d-9950e85e23ee.png)

##### Importing Active Listings:

![Importing the Active listings](https://user-images.githubusercontent.com/89428205/151253511-b01f9fb6-2bc7-4fcb-98bd-6ac7720d8971.png)

##### Adding the selling price predictions to the active listings:

![Adding the selling price predictions to the active listings](https://user-images.githubusercontent.com/89428205/151253817-ddea6fd4-7e0e-4647-a19b-cca22a825fa3.png)

##### Exporting the predictions of the active listings to a csv file:

![Exporting the predictions of the active listings to a csv file](https://user-images.githubusercontent.com/89428205/151253840-529a0fd0-50f4-48c5-a23f-95281afeb5d0.png)






