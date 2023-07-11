# Data Transformation with FiveTran, Google BigQuery, and DBT

## Introduction
This GitHub repository contains sample code and explanations for using dbt (Data Build Tool) as a transformational tool in conjunction with FiveTran. The code showcases the integration of a Google Sheets connector as the data source and Google BigQuery as the destination.

## Table of Contents
- [Prerequisites](#prerequisites)
- [Repository Structure](#repository-structure)
- [Configuration](#configuration)
- [Usage](#usage)
- [Contributing](#contributing)

## Prerequisites
Before using the code in this repository, make sure you have the following prerequisites set up:

- Access to a Google Sheet connector in FiveTran.
- A Google BigQuery project with the necessary permissions to create and manage datasets and tables.
- DBT installed and configured on your local machine or the environment where you plan to run the transformations. In this case  FiveTran for us

## Repository Structure

The repository is organized as follows:

```
.
├── fivetran_poc
│   ├── models/example
│   │   ├── transformed_sheets.sql
│   │   ├── sources.yml
│   │   └── ...
│   ├── dbt_project.yml
│   └── deployment.yml
└── README.md
```

- The `fivetran_poc` directory contains the DBT project configuration files and the DBT models used for data transformation. You can add or modify the SQL files in the `models` directory to define your specific transformations. Also, it contatins `sources.yml` file to define all the sources on which transformations has to be performed
- The `fivetran_poc` directory also contains `dbt_project.yml` to define some default configurations of the models
- The `deployment.yml` file to define the schedule for the models to run

## Configuration
Before running the code, you need to configure the necessary settings. Follow these steps:

### 1. Configure FiveTran Connector
1. Login to your FiveTran account.
2. Create a new Google Sheets connector.
3. Configure the connector to fetch the desired data from Google Sheets.
4. Set up the appropriate sync settings and schedule.

### 2. Configure Google BigQuery Destination
1. Create a new project or use an existing project on Google Cloud Platform (GCP).
2. Enable the BigQuery API for your project.
3. Create a BigQuery dataset to store the transformed data.
4. Obtain the project ID, dataset ID, and service account credentials JSON file for authentication.

### 3. Configure dbt Transformation
1. In the FiveTran console, under `Transformations` tab, opt `dbt Transformation`.
2. Connect your GitHub repository where dbt project is initialized.
3. FiveTran will identify the transformations models defined in the dbt directory and scheduling can also be configured as per our requirement

## Usage
To use the code samples in this repository, follow these steps:

1. Ensure that you have completed the necessary configuration steps as mentioned above.
2. Monitor the dbt execution logs and resolve any issues that may arise in FiveTran
3. Verify the transformed data in your Google BigQuery dataset.

## Contributing
Contributions to this GitHub repository are welcome. If you find any issues or have suggestions for improvements, please create a new issue or submit a pull request

### Note
For the files which are not covered in the above content, please refer the following link
- https://fivetran.com/docs/transformations/dbt
- https://docs.getdbt.com/docs/introduction
