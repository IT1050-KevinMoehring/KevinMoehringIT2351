#Executive Summary
This lab goes over the responsibilities of a Database Administrator (DBA). It reviews the types of log files and their importance.
It reviews what system variables and status variables are as well as an example of each. It includes an annotated example of a
query that creates several users, and grants unique privileges to them both. This lab also contains a breakdown of the four levels
of privileges and the creation of roles with an example query. Lastly, this lab goes over what it means to have an effective
"backup and restore strategy" and why such a thing is so important as well as going over the differences between a full and incremental
backup.

#Database Administrator Responsibilities
A DBA controls the development of a company's data and databases. They control how it is set up, when it is backed up, how it is maintained, who may access
it and which parts any particular person may access. It is the DBA's responsibility to monitor database systems and ensure error-free
functioning as well as minimize downtime when it happens. In short, a DBA's responsibilities relating to a server range from: maintenacne, design,
security, backup and updating software.

#Log Files
General logs: contain record of client connections and SQL statements frecieved from clients. These logs are helpful for
retracing steps and recreating events as well as general monotoring of the server
Error logs: contain messages abour server power cycles and error messages. These logs are helpful for troubleshooting startup and
shutdown servers.
Slow query log: contain lists of QL statements that take an excessively long time to execute. This log is useful for identifying
queries that may need to be rewritten/optimized to increase performance.
Binary Log: contains an index file and a series of numbered binary files which contain a record of the changes that have been
made to the database over time. This log can be used with backups to restore a database to a previous version after a crash.
Relay log: contains an index file and a series of numbered binary files which are used on a slave server to relay changes that
have been made on the master server. This log is only used when there is replication involved. These logs ensure slave databases
are consistently up to date and identical to the master database.

#Variables
The purpose of status variables is to provide additional information about the server's status to ensure it is running as it should
when simply using the server does not suffice. An example of a status variable is, "ssl_client_connects" which provides you with the number of
SSL connection attempts to an SQL-enabled master.
The purpose of system variables is to store information regarding the current settings for a MySQL server. An example being, "Basedir"
which provides you with the location of the database's installation.

#Privileges
  A. 
CREATE USER guitar_admin@localhost IDENTIFIED BY 'pa55word'; //create a user "guitar_admin" with password set to pa55word// 
CREATE USER guitar_user@localhost IDENTIFIED BY 'pa55word';  //create a user "guitar_user" with password set to pa55word//

   

GRANT ALL  //grant global priveleges on...//

ON guitar.*  //on any database beginning with "guitar."//

TO guitar_admin@localhost;  // to user "guitar_admin"//

   

GRANT SELECT, INSERT, UPDATE, DELETE  //grant select, insert, update, and delete statement rights to...//

ON guitar.*  //on any database beginning with "guitar."//

TO guitar_user@localhost;   // to user "guitar_user"

  B. There are four levels of privileges that can be granted to a user:
      1) Global privileges provide a user access to all tables in all databases on a server.
      2) Database privileges provide a user access to all tables in a particular database.
      3) Table privileges provide a user access to a table within a particular database.
      4) Column Privileges provise a user access to a particular column within a particular table within a particular database.
  C. 
  GRANT SELECT (first_name, last_name, email_address)
  ON Customer
  TO User.ID;
  D. This can be necessary if someone's job requires them to have access to this information but should also be restricted to
  hide other information within the table/database that may be either unnecessary, or confidential.

#Roles
  A. 
  CREATE ROLE IF NOT EXISTS role1;
  B.
  GRANT UPDATE
  ON categories
  TO role1;
  C. This can be useful if there is a new-hire that requires the use of this specific statement type on this particular table
  without giving them unneccessary access rights.
   
#Backing Up a Database
A. A backup and restore strategy is a preforecasted plan/strategy to ensure that a server or database is always safe from 
destruction from acts of nature, corruption, or accidental deletion/loss of data integrity. This includes scheduled incremental
backups, full backups, and storing backups on a separate server in a separate location to ensure safety of data. This is important
because mistakes from human error always happen. If a proper backup and restore strategy is implemented, a simple PITR can be
performed and restore the database back to a point directly before the damaging event occurs.
B. A full backup the entire structure and content of a database, while an incremental backup contains the changes that have been
made since the last full backup. In other words, the incremental backup is almost a changelog dating back to the latest full backup.

#Conclusion
Being a DBA can have three stages: designing and starting up a database, maintaining a database, and troubleshooting/fixing a database.
All three of these stages have their own unique challenges and goals, however, all three stages must be met with consistency and
professionalism to ensure the database(s) they are in charge of stay in working order and can be restored in case of emergency.




