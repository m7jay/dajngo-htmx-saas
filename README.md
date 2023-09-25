# dajngo-htmx-saas


## Getting Started
### 1. Install dependencies
    ```bash
        make setup
        make build
    ``` 
### 2. Start Server
   ```bash
        make start
   ```

----

## Setting up postgres database

### 1. Remove any existing postgres installations  
```bash
dpkg -l | grep postgres
sudo apt-get --purge remove postgresql postgresql-*
dpkg -l | grep postgres
sudo apt-get --purge remove postgresql postgresql-doc postgresql-common
```

### 2. Install postgres  
```bash
sudo apt install postgresql postgresql-contrib
psql --version

sudo passwd postgres

sudo -u postgres psql
```
    
### 3. create a new user for the django project  
```bash
   su - postgres
   createuser --interactive -P yourusername
   psql -U yourusername -h 127.0.0.1 postgres
```
