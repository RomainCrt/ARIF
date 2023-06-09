
<img width="776" alt="Capture d'écran 2023-07-10 205921" src="https://github.com/RomainCrt/ARIForecast/assets/92803717/a496af4c-6d7e-4963-86c1-1c65f0dcd40e">

# ARIF
Acute Respiratory Infections Forecast - 
an IronHAck student project

# Project description
Acute respiratory infection is a serious infection that prevents normal breathing function. It usually begins as a viral infection in the nose, trachea (windpipe), or lungs. If the infection is not treated, it can spread to the entire respiratory system. Acute respiratory infection prevents the body from getting oxygen and can result in death.

Acute respiratory infections are infectious, which means they can spread from one person to another. 
According to the World Health Organization (WHO), acute respiratory infections kill an estimated 2.6 million children annually every year worldwide. According to Santé publique France : 40,000 deaths in Europe per year and nearly 8 months of life expectancy lost due to exposure to fine particles

ARIs are caused by various respiratory viruses including SARS-CoV-2 (Covid-19), influenza viruses and other respiratory viruses such as RSV, rhinovirus, or metapneumovirus. The purpose of ARI surveillance is to monitor epidemics caused by these viruses.
The Main goal of this project is to create a tool able to  predict forecast of ARI incidence using weather forecast and pollution data.
Alternate goal: Perform an analysis of correlation between ARIs, weather and pollution.


# Project Structure

ARI_import.ipynb : Python Notebook for ARI dataset ETL

POLU_import.ipynb : Python Notebook for POLU dataset ETL

SYNOP_import.ipynb : Python Notebook for POLU dataset ETL

ARIF_Analisys.ipynb  : Python Notebook containing tools to describe dataframes and columns distribution

ARIF_ML.ipynb : Python Notebook containing the Machine LEarning process

V_ARI_POLU_SYNOP.csv : Exported data from the view V_ARI_POLU_SYNOP_W1W2 containing all data for analisys-ML

/SQL/
CREATE_TABLE_region.sql
CREATE_TABLE_ari_w.sql
CREATE_TABLE_polu_w.sql
CREATE_TABLE_synop_w.sql
CREATE_VIEW_v_ari_polu_synop_w1w2.sql
CREATE_VIEW_v_polu_list.sql
All SQL script are used to cretae and fill data to ARIF Data Warehouse from stagging datatbase.
Not required if you use V_ARI_POLU_SYNOP.csv

# ARI_ML machine learning process
This notebook allow to run mutliple GridSearchCV training models
json params is used to configure all options and regression model used.
Output are:
  - result_cv : All param used, rows & columns count, best model score for each run of GridSearchCV
  - errors_df : Top 10 errors for all simulation for data exploration
  - importance_df : Features importances gained from regressions
  - Many visualisations 
<img width="483" alt="Capture d'écran 2023-07-10 210837" src="https://github.com/RomainCrt/ARIForecast/assets/92803717/6e884283-82bc-42be-b93a-ab540fe99c4f">

1. Update Columns selection function if needed
2. Go to cell RUN_ALL_ABOVE to init environement & functions
3. Modify json params
4. Init Log (mandatory only before first run. Result are stored in the same dataframes)
5. Run Main

![PLOT_0070](https://github.com/RomainCrt/ARIForecast/assets/92803717/0fc9dd20-c5c9-440d-940b-cdf854571671)

