#!/usr/bin/env bash



DDL_for_Practice="DDL_prat.sql"
DDL_for_Uni="DDL_uni.sql"
tables_Practice="largeRelationsInsertFile.sql"
tables_Uni="insert_tables_datam_test.sql"


# Practice Database
sudo -u postgres psql -f $DDL_for_Practice
sudo -u postgres psql -d prat_db -f $tables_Practice



# University Database
sudo -u postgres psql -f $DDL_for_Uni
sudo -u postgres psql -d uni_db -f $tables_Uni

