# Real Estate Predictions.

## Background to project

### Selected topic
Our aim is to predict the selling price of currently active listed real estate properties in Toronto. We collectively agreed on using the tools and knowledge given to us during this course to manipulate, store, perform ETL and analysis on data. We will train a machine learning on prices of sold inactive listings to predict how much the currently listed unsold units would be sold for in Toronto.

### Reasons to choose this topic
Canada is one of the fastest growing countries in the world with aims to develop infrastructure over a large land area. To allow stable population growth, the housing market comes into effect. Its importance in a nation and its population’s evolution is why we have chosen this market to make predictions on.

### Description of source of data
The Data Source used is a CSV file including inactive (sold) & active (currently listed) house listings with contract dates as early as 01/04/2019.
- Originally a google sheet, which we cleaned, edited and downloaded as a csv file.
- It has been imported into Postgres PGAdmin using AWS. It has then been connected to Jupyter notebook files for the ML model and analysis.
- Latitudes and Longitudes of listings addresses were found using code and added to the dataset to increase number of features.
- The data consists of a number of features such as Location, Amenities including Rooms, Garage Type, Heating & Contract Date and List Price etc.

### Questions we hope to answer with the data
- After training the machine learning model on Inactive Listings dataset features, how do its predictions fair against actual selling prices?

- How will the machine learning model’s predictions on Active Listings selling prices compare to the list prices of those listings?

- Which locations, what types and which amenities or features provide the most weight to the selling price of real estate?

### Presentation:

[Google Slides Link](https://docs.google.com/presentation/d/1XaxNnde6NV_13rH7aMo0w9cdDHXTRehXroma-MxGU5o/edit?usp=sharing)

## Project Segments

<img width="973" alt="Screenshot 2022-02-01 at 13 04 58" src="https://user-images.githubusercontent.com/87828174/152025196-3aa52676-8e23-468e-9ace-8c0af9ab2c17.png">

The project is divided into different parts:
- Cleaning and Exploratory Analysis on Python
- SQL Database Connection, Summary Statistics and Analysis
- Machine Learning Model connected to Database
- Tableau Visualisations
- Web page deployment using JavaScript and HTML

### Cleaning Dataset

- Imported Inactive listings CSV into a dataframe.
- Converted all the null values in extra room column to "0" and dropped all the unwanted columns and features.
- Renamed the columns for better understanding and dropped NaN values. 
- Converted the necessary column data types to what we needed. (Contract Date to date time) 
- Iterated through the street addresses and found the Latitude and Longitude of each listing and added it to the main dataframe 
- Convert prices columns to numeric values for easier analysis.
- Export dataframe to a csv file called Inactive_Listings_Final.csv
- This file is added to PostGres pgAdmin database and connected to the model so we do not need to read in the csv file again.

The following is code we ran to find the latitudes and longitudes:

<img width="844" alt="Screenshot 2022-01-27 at 15 13 05" src="https://user-images.githubusercontent.com/87828174/151436364-e0c9a1d5-860b-4827-99bd-3a7bd6bd987e.png">

The following screenshot is the final cleaned dataframe for inactive listings which we added to the database:

<img width="1089" alt="Screenshot 2022-01-27 at 15 14 18" src="https://user-images.githubusercontent.com/87828174/151436517-b0762c69-9c2b-4048-b85f-a882184e63db.png">

It had 30,718 rows and 19 columns.

### Database & Connection

The purpose of this database is to import, format, combine and clean sets of data. A table is created with the necessary columns in order for our data to be imported into PGAdmin. This data is the csv file which is produced after cleaning and creation of Latitudes and Longitudes for all rows. We named this Table REALESTATE.

The ID column is dropped from the REALESTATE table as an ID number set is already generated in PGAdmin and having the two ID's side by side was redundant and more difficult to view.

Two tables were created from the original REALESTATE table to show how many listings were sold for more than they were listed (table named OverAsking) and how many listings were sold for below they were listed (table named UnderAsking). Below is an image of how these two tables were calculated in PGAdmin.

<img width="750" alt="Screenshot 2022-01-16 at 20 29 09" src="https://github.com/Realestate-Module-Predictions/Real_estate/blob/ReadMe_Final_WIP/Screen%20Shot%202022-02-01%20at%2010.25.35%20AM.png">

A larger proportion of houses being sold for more than the price that they were listed for is a sign that housing prices overall are going to increase, while a larger porportion of houses being sold for less than they were listed for is a sign that housing prices overall are going to decrease. Based on our results, it appears that housing prices are going to continue to increase in Toronto.

In our database we want to show the average sold prices by Community and Municipality. In order to do this we created two tables that each calculate the average sold price grouped by Community and the average sold price grouped by Municipality. Below is an image of how this was calculated in PGAdmin.

<img width="750" alt="Screenshot 2022-01-16 at 20 29 09" src="https://github.com/Realestate-Module-Predictions/Real_estate/blob/ReadMe_Final_WIP/Screen%20Shot%202022-02-01%20at%2011.02.20%20AM.png">

An Inner Join was used so that the Municipality column can be included in the Average Community price sold Table. Below is an image of how the Inner Join was performed and the results from the table that was created from the Inner Join.<p>
<img width="750" alt="Screenshot 2022-01-16 at 20 29 09" src="https://github.com/Realestate-Module-Predictions/Real_estate/blob/ReadMe_Final_WIP/Screen%20Shot%202022-02-02%20at%207.14.31%20PM.png">

An additional 2 tables were created in order to import the Active_Predictions file and the Inactive_Predictions file. Each of these files contain the predicted sold price values that were calculated using our model. The image below shows how we connected our database to our model:

<img width="750" alt="Screenshot 2022-01-16 at 20 29 09" src="https://github.com/Realestate-Module-Predictions/Real_estate/blob/Database-2/Connected_Database.png">

### Exploratory Analysis and Visualisations

#### Python Analysis

We imported the original dataset from SQL Database using SQLAlchemy:

<img width="1093" alt="Screenshot 2022-01-27 at 14 39 30" src="https://user-images.githubusercontent.com/89428205/151431614-c8ab6536-43c8-4839-89f2-f4454517e760.png">

Visualising House Prices:

<img width="758" alt="Screen Shot 2022-01-16 at 4 00 11 PM" src="https://user-images.githubusercontent.com/89428205/149681899-6b2e0ed6-f18f-4f65-a9d8-a6be4d4901e8.png">

Room Type vs Count (Bedroom, Extra Room, Washroom, Kitchen):

![Counting the number of rooms in the residence (incl  bedroom, extra room, washroom, and kitchen)](https://user-images.githubusercontent.com/89428205/151258586-46a46fd6-25fe-4b85-8519-c8099fe3f103.png)

Amenities vs Count (AC, Heat, Garage Type, & Family Room):

<img width="1084" alt="Screenshot 2022-01-27 at 14 43 25" src="https://user-images.githubusercontent.com/89428205/151432312-a56beedd-1d84-4fa5-8743-f7fe5617b0e8.png">

Count vs Style & Types:

![Counting the style and types of each residence](https://user-images.githubusercontent.com/89428205/151258639-d1de5e88-629f-4820-ad15-cf64db0098ef.png)

Plotting the Correlation between price and room types in the residence:

![Plotting the Correlation between price and room types in the residence](https://user-images.githubusercontent.com/89428205/151258668-c1462879-940a-427d-8cc1-762c759a1110.png)

Sold Price According To Contract Date:

![Plotting the price VS Feature](https://user-images.githubusercontent.com/89428205/151258695-fc97d7ed-beea-4ec9-84bb-4c18c88b3237.png)

#### Summary Statistics

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

### Machine Learning Model 

#### Description of data preprocessing

Reading Data Base from SQL Database into Machine_Learning.ipynb:

![Reading Data Base from the Cloud](https://user-images.githubusercontent.com/89428205/151253028-b7b5b238-8f05-4919-afeb-b7572cf83d80.png)

The features we start with are: 

- municipality	
- community	
- list_price	
- sold_price	
- type	
- style	
- br	
- er	
- wr	
- fr	
- kitchen	
- gar_type	
- ac	
- heat	
- contract_date	
- mls_id	
- address	
- lat	
- lng

We convert the contract_date column from a datetime object to numeric data types for scaling for the model. The Address column has already been converted into numeric latitudes and longitude values (features) for each listing. We drop Address column because it would act as a categorical variable with too many non similar elements. This would only make the encoding too complex. The mls_id column serves no purpose so it is also dropped. 

![Preprocessing, (Dropping a few columns, as well as converting contract date from object to typr, and back to numeric in order to scal it with other x features)](https://user-images.githubusercontent.com/89428205/151253052-e8c1e709-e51e-4e53-950d-8e008d076cfe.png)


#### Description of feature engineering, feature selection and decision-making process

The features (X) remaining are chosen as they carry significant effect on the property value and selling prices (y). Location and Amenities are of high importance to customers when they are choosing to buy a house. Date of listing gives us an idea of when they were put on the market and how much they were evenetually sold for. Afterwards we seperate the categorical variables and encode them using Ordinal Encoding from sklearn. We merge the encoded dataframe into the original one and drop unecessary columns.

<img width="663" alt="Screenshot 2022-01-27 at 17 33 47" src="https://user-images.githubusercontent.com/87828174/151454634-2ca9fc3b-72e2-482c-b614-26d7443e7255.png">

#### Description of how data was split into training and testing sets & how model is trained

The sold price is the value we want to predict in active listings (unsold houses). Our aim is to train the model on inactive listings (sold houses) and then predict the selling price on currently listed (active listings) houses based on these features. As we want to predict selling price we set that as y and drop it in the dataframe whose remaining values we assign to X. We use train_test_split to split the model in a training and testing set. Finally we create a StandardScaler() instance to scale x values to avoid extreme values effecting final predictions. 

<img width="591" alt="Screenshot 2022-01-27 at 17 40 02" src="https://user-images.githubusercontent.com/87828174/151455300-c073792e-608f-4d4d-8fd2-23b9eda5f9d2.png">

After data is seperated and scaled, we train the model on the training set and get accuracy scores from the model running on the testing set. The X-train features with y-train of training dataset is fitted to the linear regressor. The linear regressor then predicts on the testing X set. These predicted values are analysed along side the actual value of y. The predictions and y_test are selling prices.

#### Explanation of model choice, including limitations and benefits

As we want to make predictions on a continuous variables, classification models are not useful. We tried different regressor models. The Neural Network model yielded a lower accuracy score of 86%. Logistic regression did not work and Decision Trees would kill the kernel and now allow computation. For our continuous variable features and the type of predictions we wanted, the linear regression model worked the best. We trained the model on the training scaled data and predict on the X_test_scaled or the scaled test data. The errors are printed and we get a variance score of 97 %.

<img width="789" alt="Screenshot 2022-01-27 at 17 53 45" src="https://user-images.githubusercontent.com/87828174/151456685-39c2a7f6-5c7b-498b-a354-609107cf2754.png">

#### Final Accuracy Scores

The predictions are scored against the actual values of y. These are the following results:

<img width="180" alt="Screenshot 2022-01-27 at 17 56 29" src="https://user-images.githubusercontent.com/87828174/151456963-a26c6550-c1c5-4fef-8c04-efa084225cb9.png">

#### Predictions on entire dataset

Scaler instance created again and scales the entire X features dataframe instead of test and train sets individually. Predictions are made on this scaled X dataframe. R^2 score of these predicted values to actual values is high at 97 % as we have seen before.

<img width="466" alt="Screenshot 2022-01-27 at 17 57 30" src="https://user-images.githubusercontent.com/87828174/151457086-213385ae-5113-4f46-990e-4ab9edbf96c7.png">

These predicted values are added as a seperate column to the original dataset of inactive house listings. This new dataframe is exported to a csv called Inactive_Predictions.csv.

<img width="1098" alt="Screenshot 2022-01-27 at 18 05 28" src="https://user-images.githubusercontent.com/87828174/151457976-c5d925f1-1126-4c63-9a29-70df203c40a0.png">

#### Importing and cleaning Active Listings

The model has now been trained on the sold real estate listings and is ready to be used for active unsold houses.

Since the aim of the model is to predict selling prices on currently unsold house listings, we can now use the trained model as before on the active_listings_raw dataset. We repeat the same process of cleaning as mentioned before. Latitudes and Longitudes are also added for this dataset and required columns are dropped. Datatypes are also converted and NaNs are dropped. This final dataframe before machine learning processing is names merge2_df as seen below:

<img width="1104" alt="Screenshot 2022-01-27 at 18 10 03" src="https://user-images.githubusercontent.com/87828174/151458491-012bf6fb-daa6-48e6-b09e-dddda35c86de.png">

#### Predictions on the Active Listings

The same process of preprocessing is repeated. Categorical encoding and scaling is performed. The model is used on the this dataset. We do not need to seperate dataset into x and y since these are active listings (Unsold houses) they do not have a selling price (y). Therefore the entire dataset values are features or X. A new scaling instance fitted on entire inactive listings dataset is used to scale X (active dataset).

<img width="983" alt="Screenshot 2022-02-01 at 20 08 12" src="https://user-images.githubusercontent.com/87828174/152077368-00db0d45-fe9d-4d69-a6da-52e2331223c7.png">

These predicted values are added to the original dataframe merge2_df in a different column and exported as a csv file. There are 530 listings.

<img width="1088" alt="Screenshot 2022-02-01 at 20 08 40" src="https://user-images.githubusercontent.com/87828174/152077412-bdc65bf1-cf90-4c96-a06a-f86f1e3fac0a.png">

### Tableau Analysis

Additional Analysis was done on Tableau using active and inactive listings with predictions created from ML model. Click on the following links:

[Tableau Story Link](https://public.tableau.com/app/profile/taimur.ahmad.khan/viz/Final_Project_Analysis/WIP_Story)

[Tableau Dashboard Link](https://public.tableau.com/app/profile/taimur.ahmad.khan/viz/Final_Project_Analysis_dashboard/Final_Project_Analysis)

### Dashboard

