# 1st
Build the image = "docker build -t my-custom-mysql ."

# 2nd 
Run the builted image as a container = "docker run --name my-mysql -e MYSQL_ROOT_PASSWORD=secretpw -d my-custom-mysql"

# 3rd
Bash into the container to manipulate the data = "docker exec -it my-mysql bash"

# 4th
log into mysql server = "mysql -u root -p"
then insert the password created at the container run time;
then manipulate the data

# 5th
remove container if needed = "docker remove --force my-mysql"

# 6th and Special
If we want to persist data to local machine, have to bind the volume to it = " docker run --name my-mysql -e MYSQL_ROOT_PASSWORD=secretpw -v mysql-db-volume:/var/lib/mysql -d my-custom-mysql"

## This 6th operation will persist the further changes to the local storage so that the closing or removing the container does not affect the database;

insert  into `employees`(`employeeNumber`,`lastName`,`firstName`,`extension`,`email`,`officeCode`,`reportsTo`,`jobTitle`) values 
(5023,'Islam','Emdadul','x5023','dmurphy@classicmodelcars.com','1',1002,'VP Sales')