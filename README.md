# Installing MIMIC-IV in a local Postgres database

In light of there is no offcial guide of deploying MIMIC-IV to Postgres server, this repo will help you navigate this process. We made necessary modification based on the [offcial guide of MIMIC-III][MIMIC-III] to adapt to MIMIC-IV. 

#### 1. Prepare the data
Complete the PhysioNet Credentialing and download [MIMIC-IV data][MIMIC-IV]. Decompress all .csv.gz file using "gzip -d *.gz". You will have such directory structure:
```
BASE_DIR  
│
└───core
│   │   admissions.csv
│   │   patients.csv
│   │   transfers.csv
└───hosp
│   │   d_hcpcs.csv
│   │   ...
└───icu
│   │   d_items.csv
│   │   ...
```

#### 2. Install Postgresql server
Please refer [here][postgresql] for postgresql download and installation

#### 3. Create user, database, schema
In my case, I create a user named **mimicuser**, a new database named **mimic4** containing a new schema named **mimiciv** holding all data by:
```sh
createuser -P -s -e -d mimicuser             #creat user
psql -U mimicuser                            #launch psql
CREATE DATABASE mimic4 OWNER mimicuser;      #create new database
\c mimic4;                                   #enter the new database
CREATE SCHEMA mimiciv;                       #create new schema
\q                                           #quit psql
```

#### 4. Creat a set of empty tables with create_tables.sql
```sh
psql 'dbname=mimic4 user=mimicuser options=--search_path=mimiciv' -f create_tables.sql
```

#### 5. load .csv files into the empty tables with load_data.sql
Change /YOUR/BASE/DIR/ to your BASE_DIR in the line 3,11,27 and run:
```sh
psql 'dbname=mimic4 user=mimicuser options=--search_path=mimiciv' -f load_data.sql
```
#### NOTES:
- The data description and real data are inconsistent in data format, varchar length, etc. This repo is implemented based on the real data. Some comments are left in create_tables.sql to mark down the difference. 
- We follow the installation of MIMIC-III that creating 10 subtables for labevents.csv and chartevents.csv, respectively. Chartevents table is divided by itemid to 10-fold, while labevents table is divided by labevents_id.
- The size of MIMIC-IV after de-compression may exceed 100GB. Therefore, loading data is time-consuming. You may expect several hours to run through the process. 
- This repo is based on the latest data release before Aug 21, 2020. Should there be any data update, incompatibiltiy may observed.
- leave an issue, if you encounter any error.



[MIMIC-III]: https://mimic.physionet.org/tutorials/install-mimic-locally-ubuntu/
[MIMIC-IV]: https://mimic-iv.mit.edu/docs/access/
[postgresql]: http://www.postgresql.org/download/
