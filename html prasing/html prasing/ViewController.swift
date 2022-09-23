//
//  ViewController.swift
//  html prasing
//
//  Created by Gagenapally,Roshni Damodar Reddy on 9/19/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var htmlStrings = #"""
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
    <html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
    <head>
    <meta name="verify-v1" content="2rWaFdPgUB6p83xnff/WggBpbQifd016IopxdM1aLkA=" />
    <meta name="y_key" content="e1324866f83428f4" />
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="title" content="Northwest Missouri State University Calendar" />
    <meta name="description" content="The Northwest Missouri State Calendar is the official calendar of Northwest Missouri State University, allowing students, faculty, staff and alumni to stay in touch with what is happening at Northwest Missouri State." />
    <link rel="stylesheet" href="/css/style78722e4c3389bd2bd35f4b7767abd295-1.2.css" type="text/css" />
    <link rel="stylesheet" href="/css/calendar.nwmissouri.edu.css" type="text/css" />

    <!--[if lte IE 7]>
    <link type="text/css" rel="stylesheet" href="/css/ie-lte-7.css" />
    <![endif]-->
    <link rel="alternate" type="application/rss+xml" title="Northwest Missouri State Calendar" href="/feed.xml" />
    <link rel="image_src" href="http://calendar.nwmissouri.edu/images/calendar.nwmissouri.edu/calendar_logo.png" />
    <script type="text/javascript" src="/js/main.js"></script>
    <title>Northwest Missouri State University Calendar</title>
    </head>
    <body style="background:url(/images/background-gradient.png);background-repeat:repeat-x;">
        <table cellspacing="0" class="topLinkBar">
            <tr>
                <td class="left">
                    <a href="http://www.nwmissouri.edu" title="Northwest Missouri State University">
                                            <img class="org-type-logo" alt="Northwest Missouri State University" src="/images/calendar.nwmissouri.edu/header_logo.png" />
                                        </a>
                </td>
                <td class="right">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                                                    <a href="/support/">Help</a>&nbsp;&nbsp;&nbsp;
                                    <a rel="nofollow" href="https://www.nwmissouri.edu/calendar/calendar_login.asp">Sign In</a>&nbsp;&nbsp;&nbsp;
                                                                    <form action="/search" method="get">
                        <p style="display:inline" >
                            <input type="text" alt="Search..." name="q" id="q" class="text"
                                value=""/>
                            <input type="submit" class="button" value="Search" />
                        </p>
                    </form>
                                </td>
            </tr>
        </table>
        <div class="paddedContainer">
            <br />
            <table cellspacing="0" class="banner">
                <tr>
                    <td>
                        <a href="/" rel="nofollow">
                            <img src="/images/calendar.nwmissouri.edu/calendar_logo.png" alt="Northwest Missouri State Calendar"
                                height="56"  />
                        </a>
                    </td>
                    <td class="navStrip">
                        <a href="/"
                            class="selected">Home</a>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="/month"
                            >Month</a>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="/locations"
                            >Locations</a>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="/directory"
                            >Directory</a>
                                        </td>
                </tr>
            </table>
        <table cellspacing="0" class="container">
        <tr>
        <td class="content"><!--<h1>Current Query: </h1><br />-->
    <div class="clearfix event-listing-header"><div class="cal-name-date-range"><div class="cal-date-range"><h2><strong class="cal-start-date">Sep 21, 2022</strong> to <strong style="color:#333">Sep 23, 2022</strong></h2></div></div><div class="orderByBar"><strong>Order by:</strong>&nbsp;Date&nbsp;|&nbsp;<a href="?o=recentlyadded">Recently Added</a>&nbsp;|&nbsp;<a href="?o=popularity">Popularity</a><br /><br /></div></div>

    <table cellpadding="0" cellspacing="0" class="event-listing" style="margin:0.4em 0 1em;">
    <tr>
        <td class="date date-cal-img"><a href="?d=2022-09-21" style="text-decoration:none;"><div class="month-year">Sep 2022</div><div class="day-num">21</div><div class="day-name">Wednesday</div></a></td><td class="time">All Day</td><td class="event-data"><h3 class="event-listing-name"><a href="event?id=66975">Career Pathing: Do Your Meetings Feel More Like an Ambush?</a></h3><p><span class="location">J.W. Jones Student Union</span>Barbara Teicher, a certified speaking professional and international TEDx presenter with Executive Training and Coaching LLC, presents this session...</p><span class="view-count">57 Views</span>&nbsp;&nbsp;&nbsp;<span class="last-action">posted 21 d ago</span>
        </td>
    </tr>

          

    <tr>
        <td class="date">&nbsp;</td><td class="time"><i>Continued...</i></td><td class="event-data"><h3 class="event-listing-name"><a href="event?id=66554">Observance: National Hispanic Heritage Month</a></h3><p>This month honors the culture and contributions of both Hispanic and Latino Americans</p><span class="view-count">144 Views</span>&nbsp;&nbsp;&nbsp;<span class="last-action">updated 41 d ago</span>
        </td>
    </tr>

          

    <tr>
        <td class="date">&nbsp;</td><td class="time"> 8:30 <span class="ampm">am</span></td><td class="event-data"><h3 class="event-listing-name"><a href="event?id=66335">Mock Interview Day</a></h3><p><span class="location">Carl and Cheryl Hughes Fieldhouse</span>Mock Interview Day helps students gain interviewing experience by meeting face-to-face with real employers.<br />After the mock interview, employers...</p><span class="view-count">123 Views</span>&nbsp;&nbsp;&nbsp;<span class="last-action">updated 5 d ago</span>
        </td>
    </tr>

          

    <tr>
        <td class="date">&nbsp;</td><td class="time"> 3:00 <span class="ampm">pm</span></td><td class="event-data"><h3 class="event-listing-name"><a href="event?id=66962">Faculty Showcase</a></h3><p><span class="location">Olive DeLuce Fine Arts Building</span>The music faculty of the Department of Fine and Performing Arts will perform a showcase concert at 3 p.m. in the Charles Johnson Theater.</p><span class="view-count">78 Views</span>&nbsp;&nbsp;&nbsp;<span class="last-action">updated 5 d ago</span>
        </td>
    </tr>

          

    <tr>
        <td class="date">&nbsp;</td><td class="time"> 6:00 <span class="ampm">pm</span></td><td class="event-data"><h3 class="event-listing-name"><a href="event?id=66277">Hispanic Heritage Month Movie Night: &quot;In the Heights&quot;</a></h3><p><span class="location">J.W. Jones Student Union</span>Join the Office of Diversity and Inclusion for a movie and discussion night as part of Hispanic Heritage Month activities. The themes that pulsate...</p><span class="view-count">178 Views</span>&nbsp;&nbsp;&nbsp;<span class="last-action">updated 5 d ago</span>
        </td>
    </tr>

          

    <tr>
        <td class="date">&nbsp;</td><td class="time"> 6:00 <span class="ampm">pm</span></td><td class="event-data"><h3 class="event-listing-name"><a href="event?id=67079">NSDA General Meeting</a></h3><p><span class="location">Valk Center</span>It is a general meeting for NSDA members and anyone who wants to be a member of the organization. We are going to talk about our volunteer...</p><span class="view-count">25 Views</span>&nbsp;&nbsp;&nbsp;<span class="last-action">posted 1 d ago</span>
        </td>
    </tr>

          

    <tr>
        <td class="date">&nbsp;</td><td class="time"> 6:00 <span class="ampm">pm</span></td><td class="event-data"><h3 class="event-listing-name"><a href="event?id=66847">Volleyball vs Pittsburg State</a></h3><p><span class="location">Bearcat Arena</span>The Northwest volleyball team is back home for a single match against Pitt State.<br />Watch : https://www.themiaanetwork.com/nwmsubearcats/<br />Stats...</p><span class="view-count">69 Views</span>&nbsp;&nbsp;&nbsp;<span class="last-action">posted 41 d ago</span>
        </td>
    </tr>

          

    <tr><td colspan="3">&nbsp;</td></tr>
    <tr>
        <td class="date date-cal-img"><a href="?d=2022-09-22" style="text-decoration:none;"><div class="month-year">Sep 2022</div><div class="day-num">22</div><div class="day-name">Thursday</div></a></td><td class="time">All Day</td><td class="event-data"><h3 class="event-listing-name"><a href="event?id=66554">Observance: National Hispanic Heritage Month</a></h3><p>This month honors the culture and contributions of both Hispanic and Latino Americans</p><span class="view-count">144 Views</span>&nbsp;&nbsp;&nbsp;<span class="last-action">updated 41 d ago</span>
        </td>
    </tr>

          

    <tr>
        <td class="date">&nbsp;</td><td class="time"> 9:30 <span class="ampm">am</span></td><td class="event-data"><h3 class="event-listing-name"><a href="event?id=66762">Wellbeing Summit</a></h3><p><span class="location">J.W. Jones Student Union</span>Sessions are 9:30 to 11:30 a.m., 1 to 3 p.m. and 8:30 to 10:30 p.m.; choose the session that fits your schedule.<br />Individuals also may attend...</p><span class="view-count">111 Views</span>&nbsp;&nbsp;&nbsp;<span class="last-action">updated 1 d ago</span>
        </td>
    </tr>

          

    <tr>
        <td class="date">&nbsp;</td><td class="time"> 1:00 <span class="ampm">pm</span></td><td class="event-data"><h3 class="event-listing-name"><a href="event?id=67016">Wellbeing Summit</a></h3><p><span class="location">J.W. Jones Student Union</span>Sessions are 9:30 to 11:30 a.m., 1 to 3 p.m. and 8:30 to 10:30 p.m.; choose the session that fits your schedule.<br />Individuals also may attend via...</p><span class="view-count">49 Views</span>&nbsp;&nbsp;&nbsp;<span class="last-action">updated 1 d ago</span>
        </td>
    </tr>

          

    <tr>
        <td class="date">&nbsp;</td><td class="time"> 3:00 <span class="ampm">pm</span></td><td class="event-data"><h3 class="event-listing-name"><a href="event?id=66696">Faculty Professional Development: Poll Everywhere (But Mainly in Your Classroom)</a></h3><p><span class="location">Get the Zoom link when you register at https://cite.nwmissouri.edu/workshops/Login.aspx</span>This session will provide an overview of Poll Everywhere, which is a (generally) free tool that allows you to embed a variety of interactive...</p><span class="view-count">63 Views</span>&nbsp;&nbsp;&nbsp;<span class="last-action">posted 81 d ago</span>
        </td>
    </tr>

          

    <tr>
        <td class="date">&nbsp;</td><td class="time"> 5:00 <span class="ampm">pm</span></td><td class="event-data"><h3 class="event-listing-name"><a href="event?id=66972">Career Pathing: JEDI Program (Inclusive Language)</a></h3><p><span class="location">J.W. Jones Student Union</span>For students only, these sessions are 60 minutes and begin at 5 p.m. Thursdays, Sept. 8, 15, 22 and 29, in the Student Union Boardroom. Students...</p><span class="view-count">41 Views</span>&nbsp;&nbsp;&nbsp;<span class="last-action">posted 21 d ago</span>
        </td>
    </tr>

          

    <tr>
        <td class="date">&nbsp;</td><td class="time"> 8:00 <span class="ampm">pm</span></td><td class="event-data"><h3 class="event-listing-name"><a href="event?id=66767">Late Night at the Rec</a></h3><p><span class="location">Student Rec Center</span>Join Campus Recreation and Student Activities Council for a night of FUN!  Basketball, badminton, volleyball and more activities will be available...</p><span class="view-count">78 Views</span>&nbsp;&nbsp;&nbsp;<span class="last-action">updated 33 d ago</span>
        </td>
    </tr>

          

    <tr>
        <td class="date">&nbsp;</td><td class="time"> 8:30 <span class="ampm">pm</span></td><td class="event-data"><h3 class="event-listing-name"><a href="event?id=67017">Wellbeing Summit</a></h3><p><span class="location">J.W. Jones Student Union</span>Sessions are 9:30 to 11:30 a.m., 1 to 3 p.m. and 8:30 to 10:30 p.m.; choose the session that fits your schedule.<br />Individuals also may attend via...</p><span class="view-count">49 Views</span>&nbsp;&nbsp;&nbsp;<span class="last-action">updated 1 d ago</span>
        </td>
    </tr>

          

    <tr><td colspan="3">&nbsp;</td></tr>
    <tr>
        <td class="date date-cal-img"><a href="?d=2022-09-23" style="text-decoration:none;"><div class="month-year">Sep 2022</div><div class="day-num">23</div><div class="day-name">Friday</div></a></td><td class="time">All Day</td><td class="event-data"><h3 class="event-listing-name"><a href="event?id=66554">Observance: National Hispanic Heritage Month</a></h3><p>This month honors the culture and contributions of both Hispanic and Latino Americans</p><span class="view-count">144 Views</span>&nbsp;&nbsp;&nbsp;<span class="last-action">updated 41 d ago</span>
        </td>
    </tr>

          

    <tr>
        <td class="date">&nbsp;</td><td class="time"></td><td class="event-data"><h3 class="event-listing-name"><a href="event?id=66778">Student Payday</a></h3><p></p><span class="view-count">55 Views</span>&nbsp;&nbsp;&nbsp;<span class="last-action">posted 55 d ago</span>
        </td>
    </tr>

          

    <tr>
        <td class="date">&nbsp;</td><td class="time"> 3:00 <span class="ampm">pm</span></td><td class="event-data"><h3 class="event-listing-name"><a href="event?id=66878">Soccer vs Fort Hays State</a></h3><p><span class="location">Bearcat Pitch</span>The Northwest soccer team takes on Fort Hays State at Bearcat Pitch.<br />Watch : https://www.themiaanetwork.com/nwmsubearcats/<br />Stats :...</p><span class="view-count">52 Views</span>&nbsp;&nbsp;&nbsp;<span class="last-action">posted 41 d ago</span>
        </td>
    </tr>

          

    </table>

        </td>
        <td class="sidebar" >
            <div class="items">
                <div class="calendarControl" id="calendar_control" ></div>
            </div>
            <div class="items">
            <h4 class="sectionHeading" onclick="toggleSidebarSection(this,'Calendars')">
                <img src="images/down-arrow.gif" alt="" style="margin-right:2px" />CALENDARS<span class="parenText" onclick="cancelBubbleUp(event);">&nbsp;(<a href="user/settings">customize</a>)</span>
            </h4>
            <ul id="sectionCalendars" class="subitems" >
                <li class="selected">All</li>
                            <li><a href="?c=50">Academics</a></li>
                            <li><a href="?c=51">Admissions</a></li>
                            <li><a href="?c=52">Alumni & Friends</a></li>
                            <li><a href="?c=53">Athletics</a></li>
                            <li><a href="?c=54">Faculty / Staff</a></li>
                            <li><a href="?c=55">Financial Dates</a></li>
                            <li><a href="?c=86">Multicultural</a></li>
                            <li><a href="?c=56">Northwest-Kansas City</a></li>
                            <li><a href="?c=60">Other</a></li>
                            <li><a href="?c=57">Performances and Arts</a></li>
                            <li><a href="?c=58">Residential Life</a></li>
                            <li><a href="?c=59">Student Events</a></li>
                        </ul>
            </div>
            <div class="items">
                <h4 class="sectionHeading" onclick="toggleSidebarSection(this,'MyCalendars')">
                <img src="images/down-arrow.gif" alt="" style="margin-right:2px" />MY CALENDARS<span class="parenText" onclick="cancelBubbleUp(event);">&nbsp;(<a href="directory">add stuff</a>)</span>
            </h4>
                    </div>
            
            <script type="text/javascript" src="js/calendar.nwmissouri.edu.js"></script>
            <script type="text/javascript" src="js/DCalendar.js"></script>
            <script type="text/javascript" src="js/home.js"></script>
            
        </td>
            </tr>
        </table>
    <div class="footerContent">
    Copyright &copy; 2008-2022 Creighton University | For technical assistance, contact&nbsp;<a href="mailto:crystal@nwmissouri.edu">crystal@nwmissouri.edu</a> - (660) 562-1033<br /><a href="/feed.xml" class="rssLink"> Subscribe to RSS Feed </a><img height="12" width="12" src="/images/rssIcon.gif" alt="" /> - <a href="/support/">Support</a></div>
    </div> <!-- end paddedContainer -->
    </body>
    </html>

    """#
    
    var htmlString = #"""<table style="border:0;border-collapse:collapse;width:98%;table-layout:fixed;" cellpadding="0" cellspacing="0"><tr><th style="width:14%;text-align:center;padding-bottom:2px">Sunday</th><th style="width:14%;text-align:center;padding-bottom:2px">Monday</th><th style="width:14%;text-align:center;padding-bottom:2px">Tuesday</th><th style="width:14%;text-align:center;padding-bottom:2px">Wednesday</th><th style="width:14%;text-align:center;padding-bottom:2px">Thursday</th><th style="width:14%;text-align:center;padding-bottom:2px">Friday</th><th style="width:14%;text-align:center;padding-bottom:2px">Saturday</th></tr><tr><td style="height:100px;vertical-align:top;border:1px solid rgb(200,200,200);"><div style="height:100px;overflow:hidden"><div class="monthDay">&nbsp;</div></div></td><td style="height:100px;vertical-align:top;border:1px solid rgb(200,200,200);"><div style="height:100px;overflow:hidden"><div class="monthDay">&nbsp;</div></div></td><td style="height:100px;vertical-align:top;border:1px solid rgb(200,200,200);"><div style="height:100px;overflow:hidden"><div class="monthDay"><a href="/?d=2022-11-1">1</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66556"><span style="font-weight:bold;">All Day</span> Observance: Native Americ...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66315"><span style="font-weight:bold;">09:00 AM</span> Discover Your Major Visit...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66508"><span style="font-weight:bold;">06:00 PM</span> Women&#039;s Basketball vs Doa...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66940"><span style="font-weight:bold;">07:00 PM</span> Engage Training</a></div></div></td><td style="height:100px;vertical-align:top;border:1px solid rgb(200,200,200);"><div style="height:100px;overflow:hidden"><div class="monthDay"><a href="/?d=2022-11-2">2</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66556"><span style="font-weight:bold;">All Day</span> Observance: Native Americ...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66354"><span style="font-weight:bold;">09:00 AM</span> Discover Your Major Visit...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66990"><span style="font-weight:bold;">03:00 PM</span> Music Student Recital</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66356"><span style="font-weight:bold;">05:00 PM</span> Native American Heritage ...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66861"><span style="font-weight:bold;">06:00 PM</span> Volleyball vs Central Okl...</a></div></div></td><td style="height:100px;vertical-align:top;border:1px solid rgb(200,200,200);"><div style="height:100px;overflow:hidden"><div class="monthDay"><a href="/?d=2022-11-3">3</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66556"><span style="font-weight:bold;">All Day</span> Observance: Native Americ...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66687"><span style="font-weight:bold;">04:00 PM</span> Intramural: Tennis Doubles</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66991"><span style="font-weight:bold;">07:30 PM</span> Percussion Ensemble Concert</a></div></div></td><td style="height:100px;vertical-align:top;border:1px solid rgb(200,200,200);"><div style="height:100px;overflow:hidden"><div class="monthDay"><a href="/?d=2022-11-4">4</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66556"><span style="font-weight:bold;">All Day</span> Observance: Native Americ...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66150"><span style="font-weight:bold;">08:00 AM</span> Brick &amp; Click: An Academi...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66862"><span style="font-weight:bold;">06:00 PM</span> Volleyball vs Newman</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=67063"><span style="font-weight:bold;">07:30 PM</span> Brett Wilson - Senior Rec...</a></div></div></td><td style="height:100px;vertical-align:top;border:1px solid rgb(200,200,200);"><div style="height:100px;overflow:hidden"><div class="monthDay"><a href="/?d=2022-11-5">5</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66867"><span style="font-weight:bold;">All Day</span> Cross Country at MIAA Cha...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66556"><span style="font-weight:bold;">All Day</span> Observance: Native Americ...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66316"><span style="font-weight:bold;">10:00 AM</span> Saturday Campus Visit</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66989"><span style="font-weight:bold;">11:00 AM</span> Bearcat Tailgate Zone</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66507"><span style="font-weight:bold;">01:30 PM</span> Football vs Missouri Sout...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66473"><span style="font-weight:bold;">07:00 PM</span> Men&#039;s Basketball vs. Quee...</a></div></div></td></tr><tr><td style="height:100px;vertical-align:top;border:1px solid rgb(200,200,200);"><div style="height:100px;overflow:hidden"><div class="monthDay"><a href="/?d=2022-11-6">6</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66556"><span style="font-weight:bold;">All Day</span> Observance: Native Americ...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66548"><span style="font-weight:bold;">01:00 PM</span> RESPOND Training for Stud...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=67054"><span style="font-weight:bold;">05:00 PM</span> Senior Recital: Alexi Fou...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66474"><span style="font-weight:bold;">07:00 PM</span> Men&#039;s Basketball vs. Flagler</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=67055"><span style="font-weight:bold;">07:30 PM</span> Senior Recital: John Sale...</a></div></div></td><td style="height:100px;vertical-align:top;border:1px solid rgb(200,200,200);"><div style="height:100px;overflow:hidden"><div class="monthDay"><a href="/?d=2022-11-7">7</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=67028"><span style="font-weight:bold;">All Day</span> Last date to drop a semes...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=67027"><span style="font-weight:bold;">All Day</span> Last date to withdraw fro...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66556"><span style="font-weight:bold;">All Day</span> Observance: Native Americ...</a></div></div></td><td style="height:100px;vertical-align:top;border:1px solid rgb(200,200,200);"><div style="height:100px;overflow:hidden"><div class="monthDay"><a href="/?d=2022-11-8">8</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66556"><span style="font-weight:bold;">All Day</span> Observance: Native Americ...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66317"><span style="font-weight:bold;">09:00 AM</span> Discover Your Major Visit...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=65918"><span style="font-weight:bold;">02:00 PM</span> First-generation Celebration</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66695"><span style="font-weight:bold;">02:30 PM</span> Faculty Professional Deve...</a></div></div></td><td style="height:100px;vertical-align:top;border:1px solid rgb(200,200,200);"><div style="height:100px;overflow:hidden"><div class="monthDay"><a href="/?d=2022-11-9">9</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66556"><span style="font-weight:bold;">All Day</span> Observance: Native Americ...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66353"><span style="font-weight:bold;">09:00 AM</span> Discover Your Major Visit...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66992"><span style="font-weight:bold;">03:00 PM</span> Music Student Recital</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66953"><span style="font-weight:bold;">03:00 PM</span> ODI presents: The Bearcat...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66993"><span style="font-weight:bold;">04:00 PM</span> Music Student Recital</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66279"><span style="font-weight:bold;">06:00 PM</span> Native American Heritage ...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66688"><span style="font-weight:bold;">07:00 PM</span> Intramural: Spikeball</a></div></div></td><td style="height:100px;vertical-align:top;border:1px solid rgb(200,200,200);"><div style="height:100px;overflow:hidden"><div class="monthDay"><a href="/?d=2022-11-10">10</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66556"><span style="font-weight:bold;">All Day</span> Observance: Native Americ...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66318"><span style="font-weight:bold;">09:00 AM</span> Discover Your Major Visit...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66979"><span style="font-weight:bold;">04:00 PM</span> Career Pathing: Using Per...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66770"><span style="font-weight:bold;">07:00 PM</span> Asia: Spoken Word</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=67056"><span style="font-weight:bold;">07:00 PM</span> SAC Speaks: The Asia Project</a></div></div></td><td style="height:100px;vertical-align:top;border:1px solid rgb(200,200,200);"><div style="height:100px;overflow:hidden"><div class="monthDay"><a href="/?d=2022-11-11">11</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66556"><span style="font-weight:bold;">All Day</span> Observance: Native Americ...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66509"><span style="font-weight:bold;">All Day</span> Women&#039;s Basketball vs Sou...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66319"><span style="font-weight:bold;">09:00 AM</span> Transfer Visit Day: All M...</a></div></div></td><td style="height:100px;vertical-align:top;border:1px solid rgb(200,200,200);"><div style="height:100px;overflow:hidden"><div class="monthDay"><a href="/?d=2022-11-12">12</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66502"><span style="font-weight:bold;">All Day</span> Football at Emporia State</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66556"><span style="font-weight:bold;">All Day</span> Observance: Native Americ...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66510"><span style="font-weight:bold;">All Day</span> Women&#039;s Basketball vs Min...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66320"><span style="font-weight:bold;">10:00 AM</span> Saturday Campus Visit</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66994"><span style="font-weight:bold;">04:00 PM</span> Tower Choir / Youth Choru...</a></div></div></td></tr><tr><td style="height:100px;vertical-align:top;border:1px solid rgb(200,200,200);"><div style="height:100px;overflow:hidden"><div class="monthDay"><a href="/?d=2022-11-13">13</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66556"><span style="font-weight:bold;">All Day</span> Observance: Native Americ...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66995"><span style="font-weight:bold;">04:00 PM</span> University Chorale / Towe...</a></div></div></td><td style="height:100px;vertical-align:top;border:1px solid rgb(200,200,200);"><div style="height:100px;overflow:hidden"><div class="monthDay"><a href="/?d=2022-11-14">14</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66556"><span style="font-weight:bold;">All Day</span> Observance: Native Americ...</a></div></div></td><td style="height:100px;vertical-align:top;border:1px solid rgb(200,200,200);"><div style="height:100px;overflow:hidden"><div class="monthDay"><a href="/?d=2022-11-15">15</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66978"><span style="font-weight:bold;">All Day</span> Career Pathing: How to ge...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66586"><span style="font-weight:bold;">All Day</span> Fourth installment paymen...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66556"><span style="font-weight:bold;">All Day</span> Observance: Native Americ...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66321"><span style="font-weight:bold;">09:00 AM</span> Discover Your Major Visit...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66689"><span style="font-weight:bold;">04:00 PM</span> Intramural: Bucketball</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66996"><span style="font-weight:bold;">07:30 PM</span> Concert Band Concert</a></div></div></td><td style="height:100px;vertical-align:top;border:1px solid rgb(200,200,200);"><div style="height:100px;overflow:hidden"><div class="monthDay"><a href="/?d=2022-11-16">16</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=67025"><span style="font-weight:bold;">All Day</span> Last date to drop a secon...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66556"><span style="font-weight:bold;">All Day</span> Observance: Native Americ...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=67026"><span style="font-weight:bold;">All Day</span> Preregistration appointme...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66997"><span style="font-weight:bold;">03:00 PM</span> Music Student Recital</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66998"><span style="font-weight:bold;">04:00 PM</span> Music Student Recital</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66660"><span style="font-weight:bold;">07:00 PM</span> Open Mic Night</a></div></div></td><td style="height:100px;vertical-align:top;border:1px solid rgb(200,200,200);"><div style="height:100px;overflow:hidden"><div class="monthDay"><a href="/?d=2022-11-17">17</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66556"><span style="font-weight:bold;">All Day</span> Observance: Native Americ...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66946"><span style="font-weight:bold;">06:00 PM</span> Occupy Valk: What the Act...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66935"><span style="font-weight:bold;">07:00 PM</span> PBL Palooza</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66999"><span style="font-weight:bold;">07:30 PM</span> Celebration and Jazz Ense...</a></div></div></td><td style="height:100px;vertical-align:top;border:1px solid rgb(200,200,200);"><div style="height:100px;overflow:hidden"><div class="monthDay"><a href="/?d=2022-11-18">18</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66556"><span style="font-weight:bold;">All Day</span> Observance: Native Americ...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66905"><span style="font-weight:bold;">All Day</span> Thanksgiving Feast / Earl...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66511"><span style="font-weight:bold;">All Day</span> Women&#039;s Basketball vs Col...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=67061"><span style="font-weight:bold;">07:30 PM</span> Senior Recital: Lane Blac...</a></div></div></td><td style="height:100px;vertical-align:top;border:1px solid rgb(200,200,200);"><div style="height:100px;overflow:hidden"><div class="monthDay"><a href="/?d=2022-11-19">19</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66868"><span style="font-weight:bold;">All Day</span> Cross Country at NCAA Cen...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66556"><span style="font-weight:bold;">All Day</span> Observance: Native Americ...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66512"><span style="font-weight:bold;">All Day</span> Women&#039;s Basketball vs Min...</a></div></div></td></tr><tr><td style="height:100px;vertical-align:top;border:1px solid rgb(200,200,200);"><div style="height:100px;overflow:hidden"><div class="monthDay"><a href="/?d=2022-11-20">20</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66556"><span style="font-weight:bold;">All Day</span> Observance: Native Americ...</a></div></div></td><td style="height:100px;vertical-align:top;border:1px solid rgb(200,200,200);"><div style="height:100px;overflow:hidden"><div class="monthDay"><a href="/?d=2022-11-21">21</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66556"><span style="font-weight:bold;">All Day</span> Observance: Native Americ...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=65319"><span style="font-weight:bold;">All Day</span> Thanksgiving Break - no c...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66906"><span style="font-weight:bold;">All Day</span> Thanksgiving Break - No S...</a></div></div></td><td style="height:100px;vertical-align:top;border:1px solid rgb(200,200,200);"><div style="height:100px;overflow:hidden"><div class="monthDay"><a href="/?d=2022-11-22">22</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66556"><span style="font-weight:bold;">All Day</span> Observance: Native Americ...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66780"><span style="font-weight:bold;">All Day</span> Student Payday</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=65320"><span style="font-weight:bold;">All Day</span> Thanksgiving Break - no c...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66906"><span style="font-weight:bold;">All Day</span> Thanksgiving Break - No S...</a></div></div></td><td style="height:100px;vertical-align:top;border:1px solid rgb(200,200,200);"><div style="height:100px;overflow:hidden"><div class="monthDay"><a href="/?d=2022-11-23">23</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66556"><span style="font-weight:bold;">All Day</span> Observance: Native Americ...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=65321"><span style="font-weight:bold;">All Day</span> Thanksgiving Break - no c...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66927"><span style="font-weight:bold;">All Day</span> Thanksgiving Break - No S...</a></div></div></td><td style="height:100px;vertical-align:top;border:1px solid rgb(200,200,200);"><div style="height:100px;overflow:hidden"><div class="monthDay"><a href="/?d=2022-11-24">24</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66556"><span style="font-weight:bold;">All Day</span> Observance: Native Americ...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=65322"><span style="font-weight:bold;">All Day</span> Thanksgiving Break - no c...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66927"><span style="font-weight:bold;">All Day</span> Thanksgiving Break - No S...</a></div></div></td><td style="height:100px;vertical-align:top;border:1px solid rgb(200,200,200);"><div style="height:100px;overflow:hidden"><div class="monthDay"><a href="/?d=2022-11-25">25</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66556"><span style="font-weight:bold;">All Day</span> Observance: Native Americ...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=65323"><span style="font-weight:bold;">All Day</span> Thanksgiving Break - no c...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66927"><span style="font-weight:bold;">All Day</span> Thanksgiving Break - No S...</a></div></div></td><td style="height:100px;vertical-align:top;border:1px solid rgb(200,200,200);"><div style="height:100px;overflow:hidden"><div class="monthDay"><a href="/?d=2022-11-26">26</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66556"><span style="font-weight:bold;">All Day</span> Observance: Native Americ...</a></div></div></td></tr><tr><td style="height:100px;vertical-align:top;border:1px solid rgb(200,200,200);"><div style="height:100px;overflow:hidden"><div class="monthDay"><a href="/?d=2022-11-27">27</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66556"><span style="font-weight:bold;">All Day</span> Observance: Native Americ...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66513"><span style="font-weight:bold;">All Day</span> Women&#039;s Basketball vs Per...</a></div></div></td><td style="height:100px;vertical-align:top;border:1px solid rgb(200,200,200);"><div style="height:100px;overflow:hidden"><div class="monthDay"><a href="/?d=2022-11-28">28</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=65324"><span style="font-weight:bold;">All Day</span> Campus Classes resume</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66556"><span style="font-weight:bold;">All Day</span> Observance: Native Americ...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66706"><span style="font-weight:bold;">09:00 AM</span> Spoofhound Spotlight</a></div></div></td><td style="height:100px;vertical-align:top;border:1px solid rgb(200,200,200);"><div style="height:100px;overflow:hidden"><div class="monthDay"><a href="/?d=2022-11-29">29</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=67024"><span style="font-weight:bold;">All Day</span> Last date to drop a 7-Wk ...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=67023"><span style="font-weight:bold;">All Day</span> Last date to withdraw fro...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66556"><span style="font-weight:bold;">All Day</span> Observance: Native Americ...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66690"><span style="font-weight:bold;">05:00 PM</span> Intramural: Badminton Dou...</a></div></div></td><td style="height:100px;vertical-align:top;border:1px solid rgb(200,200,200);"><div style="height:100px;overflow:hidden"><div class="monthDay"><a href="/?d=2022-11-30">30</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66556"><span style="font-weight:bold;">All Day</span> Observance: Native Americ...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66752"><span style="font-weight:bold;">09:00 AM</span> Discover Your Major Visit...</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=67000"><span style="font-weight:bold;">03:00 PM</span> Music Student Recital</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66725"><span style="font-weight:bold;">04:00 PM</span> Holiday Hoops</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=67001"><span style="font-weight:bold;">04:00 PM</span> Music Student Recital</a></div><div style="font-size:85%;line-height:100%;margin-bottom:0.5em;padding:0 0.35em"><a href="event?id=66941"><span style="font-weight:bold;">05:00 PM</span> Engage Training</a></div></div></td><td style="height:100px;vertical-align:top;border:1px solid rgb(200,200,200);"><div style="height:100px;overflow:hidden"><div class="monthDay">&nbsp;</div></div></td><td style="height:100px;vertical-align:top;border:1px solid rgb(200,200,200);"><div style="height:100px;overflow:hidden"><div class="monthDay">&nbsp;</div></div></td><td style="height:100px;vertical-align:top;border:1px solid rgb(200,200,200);"><div style="height:100px;overflow:hidden"><div class="monthDay">&nbsp;</div></div></td></tr></table>"""#

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if let attributedData = self.htmlString.htmlAttributeString {
        self.label.attributedText = attributedData //self.htmlString
        }
    }
    
}

extension String {
    var htmlAttributeString : NSAttributedString? {
        guard let data = self.data(using: .utf8)else { return nil }
        do {
            return try NSAttributedString(data: data, options: [.documentType : NSAttributedString.DocumentType.html,.characterEncoding : String.Encoding.utf8.rawValue], documentAttributes: nil)
        }
        catch {
            return nil
        }
    }
}
