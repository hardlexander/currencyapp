# Shopee BE Test - Currencyapp

Currency app runs on node js with mysql database

## Installation

```bash
docker-compose up -d
```

## Alternative

The app is supposed to run well after docker-compose up -d
But error happens, you can run the app locally manually by:

  - Create MySQL database in your localhost with my sql script in database/database.sql
  - Configure file app/api/dbconnection.js according to your mysql username and password
  - Go to app/api and run "npm start" in your terminal

