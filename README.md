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

##### Importing the original dataset from SQL Database

<img width="1093" alt="Screenshot 2022-01-27 at 14 39 30" src="https://user-images.githubusercontent.com/89428205/151431614-c8ab6536-43c8-4839-89f2-f4454517e760.png">


##### Room Type vs Count (Bedroom, Extra Room, Washroom, Kitchen):

![Counting the number of rooms in the residence (incl  bedroom, extra room, washroom, and kitchen)](https://user-images.githubusercontent.com/89428205/151258586-46a46fd6-25fe-4b85-8519-c8099fe3f103.png)

##### Amenities vs Count (AC, Heat, Garage Type, & Family Room):

<img width="1084" alt="Screenshot 2022-01-27 at 14 43 25" src="https://user-images.githubusercontent.com/89428205/151432312-a56beedd-1d84-4fa5-8743-f7fe5617b0e8.png">


##### Count vs Style & Types:

![Counting the style and types of each residence](https://user-images.githubusercontent.com/89428205/151258639-d1de5e88-629f-4820-ad15-cf64db0098ef.png)


##### Plotting the Correlation between price and room types in the residence:

![Plotting the Correlation between price and room types in the residence](https://user-images.githubusercontent.com/89428205/151258668-c1462879-940a-427d-8cc1-762c759a1110.png)


##### Sold Price According To Contract Date:

![Plotting the price VS Feature](https://user-images.githubusercontent.com/89428205/151258695-fc97d7ed-beea-4ec9-84bb-4c18c88b3237.png)

##### Tableau Analysis

Additional Analysis was done on Tableau. Click on the following link:

[Tableau Story Link](https://public.tableau.com/app/profile/taimur.ahmad.khan/viz/Final_Project_Analysis/WIP_Story)

##### Summary Statistics

The following screenshots are additional analysis we performed on features for sold houses (inactive listings):

<img width="364" alt="Screenshot 2022-01-27 at 14 56 42" src="https://user-images.githubusercontent.com/87828174/151434069-1f63eb68-3244-4413-96c2-52c232547e64.png">

<img width="366" alt="Screenshot 2022-01-27 at 14 57 28" src="https://user-images.githubusercontent.com/87828174/151434160-35abbb2f-cb1a-4a49-a55e-632955ce89cf.png">

<img width="366" alt="Screenshot 2022-01-27 at 14 57 43" src="https://user-images.githubusercontent.com/87828174/151434190-bd0cf0b3-32f7-402d-9e9e-7616bfeda7ef.png">

<img width="364" alt="Screenshot 2022-01-27 at 14 57 55" src="https://user-images.githubusercontent.com/87828174/151434215-ffd2e43a-2bea-48db-a79e-0b48370c246c.png">

<img width="405" alt="Screenshot 2022-01-27 at 14 58 06" src="https://user-images.githubusercontent.com/87828174/151434240-17d4cd3f-4fcd-4a13-9f15-47321c6aa740.png">

<img width="415" alt="Screenshot 2022-01-27 at 14 58 22" src="https://user-images.githubusercontent.com/87828174/151434282-bc74583f-5c70-45f0-87e0-b3f3e1cf8529.png">

<img width="378" alt="Screenshot 2022-01-27 at 14 58 34" src="https://user-images.githubusercontent.com/87828174/151434312-1d62529a-01f4-4a37-9cf7-92b820ccc76d.png">

<img width="363" alt="Screenshot 2022-01-27 at 14 59 02" src="https://user-images.githubusercontent.com/87828174/151434385-92ba3f0f-8dbb-4f59-ade0-10520c03b703.png">

<img width="382" alt="Screenshot 2022-01-27 at 14 59 17" src="https://user-images.githubusercontent.com/87828174/151434422-a429fb62-3760-4ade-ac24-f18a689d9a4e.png">

<img width="391" alt="Screenshot 2022-01-27 at 14 59 33" src="https://user-images.githubusercontent.com/87828174/151434455-ce3996db-b496-43dd-b31f-ec5e9cebe16f.png">

<img width="444" alt="Screenshot 2022-01-27 at 14 59 55" src="https://user-images.githubusercontent.com/87828174/151434512-911cb099-7d27-4125-8c0c-7f20ee455ad1.png">

<img width="420" alt="Screenshot 2022-01-27 at 15 00 14" src="https://user-images.githubusercontent.com/87828174/151434561-f08457fa-ca8a-4c5c-9a7c-cbbe5399456e.png">

Two dataframes were created to see average cost and amenities for different styles and types:

<img width="601" alt="Screenshot 2022-01-27 at 15 00 53" src="https://user-images.githubusercontent.com/87828174/151434655-c6ec7562-0ff0-4b11-a619-328f2e008752.png">

<img width="582" alt="Screenshot 2022-01-27 at 15 01 04" src="https://user-images.githubusercontent.com/87828174/151434686-6ea2537c-c3db-4fdc-9ce1-4bc4e8166db7.png">

#### Machine Learning Model: 

✓ Description of preliminary data preprocessing
✓ Description of preliminary feature engineering
and preliminary feature selection, including their
decision-making process
✓ Description of how data was split into training
and testing sets
✓ Explanation of model choice, including
limitations and benefits

##### Reading Data Base from SQL Database:

![Reading Data Base from the Cloud](https://user-images.githubusercontent.com/89428205/151253028-b7b5b238-8f05-4919-afeb-b7572cf83d80.png)

##### Plotting Sold price density, as well as sold price Boxplot:

<img width="713" alt="Screenshot 2022-01-27 at 14 40 59" src="https://user-images.githubusercontent.com/89428205/151431934-ac1d74bd-fbcd-414f-9082-4bb835b0682c.png">


##### Preprocessing, (Dropping a few columns, as well as converting contract date from object to typr, and back to numeric in order to scal it with other x features):

![Preprocessing, (Dropping a few columns, as well as converting contract date from object to typr, and back to numeric in order to scal it with other x features)](https://user-images.githubusercontent.com/89428205/151253052-e8c1e709-e51e-4e53-950d-8e008d076cfe.png)

##### Final DF after processing (Fit and transform):

![Final DF after processing (Fit and transform)](https://user-images.githubusercontent.com/89428205/151253279-8e11215c-5d99-41f8-939d-bf86c1d0fada.png)

##### Linear Regression Model:
✓ Explanation of model choice, including limitations and benefits:

will take in its fit method arrays X, y and will store the coefficients "w" of the linear model in its coef_ member
The coefficient estimates for Ordinary Least Squares rely on the independence of the features. When features are correlated and the columns of the design matrix X have an approximately linear dependence, the design matrix becomes close to singular and as a result, the least-squares estimate becomes highly sensitive to random errors in the observed target, producing a large variance. This situation of multicollinearity can arise, for example, when data are collected without an experimental design.

##### Reason of choice:

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






