  **09/15/2022**
<p>Started research how to connect database to ios device using Swift Language.

<p>Started researching SQLLite and its features, as well as centralizing the database.</p>

<p> Gathering online resources to know more about DAtabase and its connectivity<br>
  Links:<br>
  https://www.appcoda.com/sqlite-database-ios-app-tutorial/ <br>
  https://github.com/Kilo-Loco/SQLite<br>
  https://youtu.be/c4wLS9py1rU
 
  <p> Tried creating a table but failed to create one, tryong to debug errors from the code.
   <br>
    <br>
    
    **09/23/2022**
  <p>Researching on database hosting applications like Back4app and blueHost and how to connect it to a Database.</p><br>
  Sites:<br>
  <a href="https://www.back4app.com/docs/database-hub/connect">How to connect Back4app to a Database</a><br>
  <a href="https://codewithchris.com/iphone-app-connect-to-mysql-database/">The Best Way to Connect Your iOS App to MySQL Database</a><br>

  <p>I have created EventsUp app in Back4app as inorder to connect to Database app should be created at Back4App and need to install Parse SDK on the iOS Swift Project.</p><br>
  Below are the links for creation of app at Back4app and installing Parse SDK:<br>

  <a href="https://www.back4app.com/docs/get-started/new-parse-app">How to Create App at Back4App</a><br>
  <a href="https://www.back4app.com/docs/ios/parse-swift-sdk">Install Parse SDK on iOS Swift Project</a><br>
  
  <p> Also tried connecting the Database using SQLite using Swift but failed due to multiple errors, Since SQLite is not a centralized database searching for an online Host platform to store data. We also came across cordate tried to connect it using SQLite but after detailed research came to the conclusion that Core Data is just a framework and so we cannot use it as source database.</p>  

**09/30/2022**
<p> Still working on how to implement centralized database. Came accross many online dataHosting servers like azure and back4app.
 <p> For the framework we are considering Coredata as a frame work because it is in built in by python and can easily be used in Xcode.
  
<p> Created accounts at Azure and blueHost to try implementing database hosting for iOS app.<br>

<p>Reasearched on accessing SQLite in iOS application. Below is the website for the same.

<a href="https://www.simplifiedios.net/swift-sqlite-tutorial/">Using SQLite in iOS Application</a><br>

Reasearching on connecting iOS app to either MySQL or SQLite.

<a href="https://medium.com/@joseortizcosta/connecting-ios-app-to-mysql-database-with-swift-5-using-protocol-delegation-and-mvc-architectural-259dc32fcc4b">Connecting iOS App to MySQL Database with Swift 5</a><br>

<p>Going to implement the research parts in Xcode, and also have to try migrating SQLite to Azure.</p>

<a href="https://learn.microsoft.com/en-us/azure/azure-sql/database/migrate-sqlite-db-to-azure-sql-serverless-offline-tutorial?view=azuresql">How to migrate your SQLite database to Azure SQL Database serverless</a><br>


**10/14/2022**
doing research to get free online database. To make the database centrailized we need to use online based dataset like cloud get access to it fromo anywhere. Most of the database searched offer 1 month free subscription or 1GB of data free. 

<p>Able to create and open database & create attendee table and have to work on inserting data into DB through Sign-in page.<p>
 
 **10/28/2022**
 Trying to connect AWS-RDS to PGAdmin but unable to connect due to connectivity issues.

 <p>Installed MySQL server and workbench. Created tables and ER diagram in the workbench and synced the ER with tables.<p>
 <p>Able to make connection between iOS app and local MySQL. Trying to connect MySQL workbench and AWS RDS.<p>

 **11/04/2022**
 <p>Faced issues in connecting MySQL workbench and iOS app with AWS RDS. Created different region Database instances in AWS RDS for making the succesfull connection.<p>

 <p>Tried connecting iOS app and MySQL workbench with newly created AWS RDS database insatnce and able to make the connection successfully and exported the tables from MySQL workbench to AWS RDS.<p>
  
  <p>Failing to connect PGadmin to AWS-RDS due to some time out issues.</p>
  <p>Researching on how to do connection by following multiple online tutorials.</p>

  **11/11/2022**
  <p>Researhing on how to perform MySQL CRUD operations in iOS app using Swift.</p>

  **11/18/2022**
  <p>Implemented insert operation in SignUp page and able to insert the data into MySQL locally but facing issues while trying to insert the data into AWS RDS. Trying to resolve the got packets out of order error and checkuing the name of the database in thw AWS RDS DB instance.</p>
  
    **01/22/2023**
<p> We have terminated theIDea to use firebase because we where charged for data storage, as an alternative we are using Firebase as database and trying to figure out hwo to implement CURD operations
