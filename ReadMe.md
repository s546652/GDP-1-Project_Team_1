# GDP-1-Project_Team_1 -- EventsUp

### Team Details
|Name               |  SId       | Role                 |
|-------------------|------------|----------------------|
|Roshni Gagenapally | S546652    | UI and Functionality |
|Madhuri Nagulapally| S547043    | Database and E-pass  | 
|Naveen Gundu       | S546960    | Payment and E-pass   | 
|Rajitha Bandaru    | S546904    | Database and Testing |
|Sreyas Mallypally  | S546761    | Functionality and UI |


For our Graduate Directed Project we decided to work on an application which is going to show up all the events that are going to take place in the university.
After some internal discussions we thought of developing the applicaition using ***IOS***. 

Our team's first go to step is to get the *permissions related to university calendar* so that we can aviod the manual event entry into the database to aviod any mistakes. If we didn't get the permission we try to use web scraper to fetch the elements from the University calender event page and convert it into app suiting way.

We are then going to decide on the milestones and how to distriubute the work among the team for the sprints.

As a team we have thought about certain ideas like using a QRcode scanning for the e-pass and then we are yet to decide on how to implement the payment gateway. We are thinking to gather the requirements to set up the user stories and work accordingly.

As a team, we discussed that the home page contains 3 module login, one for the student who has their SID, the other for general people who don’t have SID can log in as a guest, and the 3rd module is used by the administration to update the event in the calendar manually. 

While discussing about the name for our project we did choose many names like Event Check, Make An Event, Events Up. But keeping in mind that short name could make students to remember easily. So we collectively agreed on "EventsUp" as our app name.

As part of our application we also want to include a feature to make users available to buy their tickets online. For that we need to implement apple pay to make the transaction possible. So started learning more about that.

Finalized on using python for web scraping. I tried to use selenium framework to display the fetched data from the site to API and then I used flask framework for hosting data pulling it to swift.  

Decided on a basic home page and the list of event page view. 
On the main screen we will have a banner(image) of Events and underneath it we will have EventsList icon  on the right corner, middle home button and then towards the left login button. 

We have decided to maintain the uniformity we have decided to maintain same footer and header across all the pages. We are using navigate function and trying to store the data retrived from web scraping as a string and displaying them as list. On click of the event list icon we will use the string which will be returned by the flask framework to display list of events in a ordered list format under the specific date. Then on Click of the specific event we will display load the page with the event specific informtaion like, Name of the event, data, location, hosted by and description of the event.  

