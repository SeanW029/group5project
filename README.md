# Final Project Group 5

 ### Members (roles)
 
**Asmaa Ahmed** (triangle)

**Chayda Adora** (circle)

**Leonardo Aleixo** (x)

**Saber Ahsan** (triangle)

**Xiao Wang** (square)
 

 ### Overview of Project
 
This project’s objective is to analyze the housing market sector in King County, USA between May 2014 and May 2015 and create a machine learning model which is able to predict prices and visualizations to provide insights.
 
### **Project Presentation Link (Google Slides):**
https://docs.google.com/presentation/d/1FSh0O_s-OfNs4f0mQAv_XbYGDBrPot1RKguuH9DE7T0/edit#slide=id.g10352e16c5d_0_65

### **Tableau Dashboard Link:**
https://public.tableau.com/app/profile/leonardo.aleixo/viz/P5_16365969348480/Dashboard4?publish=yes

### Why Supervised Machine Learning?
 
There was a mutual interest within the group to work with a model that could predict results based on previous data. The housing market sector offers a variety of data where advanced regression techniques can be applied.

#### **OLS Regression Model:**
<img width="650" alt="OLS_Regression" src="https://user-images.githubusercontent.com/74624855/142733397-d732cada-7610-41e9-a708-692102ae00c8.png">


### Data Source

**Name:** House Prices

**Origin:** Kaggle – Ames Housing dataset (kc_house_data.csv)  

**Publication:** House Prices - Advanced Regression Techniques | Kaggle  
 
### Database ERD

* House Database Flowchart created with QuickDBD: Raw Data Table:
<img width="800" alt="ERD_multi_table" src="https://user-images.githubusercontent.com/74624855/142777012-a84373ff-3409-422a-b428-2c4eee77b9ef.png">


Database will be hosted in pgAdmin; screenshot of data loaded to house_data_clean table (via SQLAlchemy)
<img width="900" alt="DatabaseTable" src="https://user-images.githubusercontent.com/74624855/142777068-819b3876-f0e9-4f99-974d-f890156577e7.png">


#### **Connection String to RDS:**
<img width="800" alt="Connection_String" src="https://user-images.githubusercontent.com/74624855/142733428-b687af55-4e79-413f-893f-1ebb7bdbf3ce.png">
Connect cleaned house data to SQL:
<img width="800" alt="Connection_to_SQL" src="https://user-images.githubusercontent.com/74624855/142733465-7452977a-f4d9-473c-9d1e-397ee2dd1e79.png">


### Questions that will be answered with the data:
* Predict housing market price 

* Differences of frequencies in sale by season

* **Correlation between:**

  - Property sales frequency and price

  - Property size and price 

  - Year the property was built and price

  - Location and price



### Software/Tools:

Python, Pandas, Jupyter Notebook, PostgreSQL, Tableau, Supervised Machine Learning, SQLAlchemy

### Github repository name: group5project

* Group5project_Asmaa

* Group5project_cAdora

* Group5project_Leo

* Group5project_Saber
 
* Group5project_Xiao

 ### Roles
 **square:** GitHub Repository
 
 **triangle:** Machine Learning Model
 
 **circle:** Database
 
 **x:** Technologies and ETL

 ### Description of the communication protocols:
 
* Slack Project Group Channel
* Group meetings on Saturdays from 10-12 during office hours
* Group zoom meetings on a weekly basis outside of class time (times tbd)
