```python
from selenium import webdriver
from time import sleep
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.select import Select
from selenium.webdriver.common.action_chains import ActionChains
from bs4 import BeautifulSoup
import codecs
import re
from webdriver_manager.chrome import ChromeDriverManager
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
from datetime import date
```


```python
driver = webdriver.Chrome(executable_path="/Users/s546761/Documents/chromedriver")
driver.get("http://calendar.nwmissouri.edu")
sleep(2)
```

    /var/folders/0j/6rlry4d959170vn1l9wgd1_424v2g3/T/ipykernel_99735/3517672487.py:1: DeprecationWarning: executable_path has been deprecated, please pass in a Service object
      driver = webdriver.Chrome(executable_path="/Users/s546761/Documents/chromedriver")



```python
a=driver.find_element(By.CLASS_NAME,"content")
print(a)
```

    <selenium.webdriver.remote.webelement.WebElement (session="1cf900e7dc5460c28b61f2a16ddde77e", element="1644f0e8-1930-44ab-8f93-095acbb33b31")>



```python
#dir(a)
```


```python
#a.text
```


```python
#f=open("file.txt","w")
s=""
b=driver.find_elements(By.CLASS_NAME,"event-data")
#for i in b:
    #s+=i.text
    #print(i)
c=driver.find_elements(By.CLASS_NAME,"event-listing-name")#.find_elements(By.TAG_NAME,"a")
#print(c)
l=[];x=1
for i in range(len(c)):
    c=driver.find_elements(By.CLASS_NAME,"event-listing-name")#.find_elements(By.TAG_NAME,"a")
    #print(i.find_element(By.TAG_NAME,"a").text)
    c[i].find_element(By.TAG_NAME,"a").click() 
    sleep(1)
    a=driver.find_elements(By.CLASS_NAME,"content")
    print(x,"\n--- ");x+=1
    for j in a:
        print(j.text,end="\n")
        s+=j.text+"\n"
    driver.back()
    sleep(1)
    

```

    1 
    --- 
    Clothesline Project
    Memorial Bell Tower
    
    Friday, October 7, 2022 -
    Friday, October 14, 2022
    
    The Clothesline Project is an annual visual arts display that aims to raise awareness for sexual assault and violence during Domestic Violence Awareness Month in October.
    
    
    Contact Info
    Shelby Letuli
    sletuli@nwmissouri.edu
    (660) 562-1060
    
    Calendars: Faculty / Staff - Student Events 
    2 
    --- 
    Missouri Hope
    Mozingo Outdoor Education and Recreation Area (MOERA)
    
    Friday, October 7, 2022 -
    Sunday, October 9, 2022
    
    Northwest will host its annual Missouri Hope emergency response field training exercise Oct. 7-9 and invites students, employees and community members to work in volunteer roles during the exercise.
    
    Missouri Hope is a multidisciplinary mass casualty training experience at Mozingo Outdoor Education Recreation Area (MOERA) and the Mozingo Youth Camp that is required for students studying majors or minors in emergency disaster management (EDM).
    
    The event will include 12 distinct training exercises for various workers in the medical field, police forces, fire brigades, and armed forces. Exercises include search-and-rescue, proper assessment of traumatic injuries in the field, and evacuation from difficult terrain.
    
    Volunteer role players are needed to bring a sense of reality to the training. Role players are made-up to resemble victims with a wide assortment of physical injuries sustained from a natural disaster such as a flood, tornado or forest fire. Trainees practice their skills at finding, evaluating, evacuating and treating role-player victims.
    
    The majority of volunteers are required to commit their time in the following 6-hour blocks:
    -Friday, Oct. 7: 11 a.m. to 5 p.m.
    -Saturday, Oct. 8: 6 a.m. to 11:59 a.m.
    -Saturday, Oct. 8: 11 a.m. to 5 p.m
    -Sunday, Oct. 9: 6 a.m. to 11:59 a.m.
    
    A limited number of volunteers will be needed for smaller exercises, as follows:
    -Friday, Oct. 7: 6 p.m. to 11:59 p.m.
    -Saturday, Oct. 8: 6 p.m. to 11:59 p.m.
    -Sunday, Oct. 9: 10 a.m. to 4 p.m.
    
    Individuals interested in volunteering as role players should complete the form at https://forms.gle/1tgY9sZvTMsAhdrX6 by 11:59 p.m. Tuesday, Oct. 4. Volunteers will be contacted in late September with additional information (including waivers, instructions, and maps). You will also be sent reminder updates as the event is approached.
    
    For more information about Missouri Hope and volunteering as a role player, contact Assistant Professor of Biology Dr. Peter Adam at padam@nwmissouri.edu.
    
    
    Contact Info
    Peter Adam
    padam@nwmissouri.edu
    (660) 562-1256
    
    Calendars: Academics - Faculty / Staff - Student Events 
    3 
    --- 
    Observance: National Hispanic Heritage Month
    
    Thursday, September 15, 2022 -
    Saturday, October 15, 2022
    
    This month honors the culture and contributions of both Hispanic and Latino Americans
    
    
    Contact Info
    Office of Diversity and Inclusion
    diversity@nwmissouri.edu
    
    Calendars: Multicultural - Student Events 
    4 
    --- 
    KXCV-KRNW fall fund drive
    Wells Hall
    800 University Drive, Maryville, MO
    
    Saturday, October 8, 2022 @ 8:00 am -
    Friday, October 14, 2022 @ 5:00 pm
    
    The KXCV-KRNW fall 2022 Fund Drive is Oct. 8-14. Donations go directly toward programming costs.
    
    To donate or pledge your support, visit https://www.kxcv.org/pledge.htm
    
    
    Contact Info
    Helen Konstantopoulos
    helenk@nwmissouri.edu
    (660) 562-1163
    
    Calendars: Alumni & Friends - Faculty / Staff 
    5 
    --- 
    Soccer at Central Oklahoma
    Edmond, OK
    
    Sunday, October 9, 2022 @ 1:00 pm - 3:00 pm
    
    The Northwest soccer team is in Edmond to take on the UCO Bronchos.
    
    Watch : https://www.themiaanetwork.com/ucobronchos/
    Live Stats : https://bronchosports.com/sidearmstats/wsoc/summary
    
    
    Contact Info
    Ryan Milke
    rmilke@nwmissouri.edu
    
    Calendars: Athletics 
    6 
    --- 
    Engage Training
    J.W. Jones Student Union, Tower View Room
    
    Sunday, October 9, 2022 @ 2:00 pm - 3:30 pm
    
    A multi-level violence prevention strategy to reduce harm on campus related to alcohol use, drug use, violence, acts of bias and discrimination, and suicide/mental health. This program will encourage all participants to be engaged community members and reflect on situations they encounter. Sign up at https://forms.office.com/r/kSw0yQ1yxc
    
    
    Contact Info
    Shelby Letuli
    sletuli@nwmissouri.edu
    (660) 562-1060
    
    Calendars: Faculty / Staff - Student Events 
    7 
    --- 
    Clothesline Project
    Memorial Bell Tower
    
    Friday, October 7, 2022 -
    Friday, October 14, 2022
    
    The Clothesline Project is an annual visual arts display that aims to raise awareness for sexual assault and violence during Domestic Violence Awareness Month in October.
    
    
    Contact Info
    Shelby Letuli
    sletuli@nwmissouri.edu
    (660) 562-1060
    
    Calendars: Faculty / Staff - Student Events 
    8 
    --- 
    Observance: National Hispanic Heritage Month
    
    Thursday, September 15, 2022 -
    Saturday, October 15, 2022
    
    This month honors the culture and contributions of both Hispanic and Latino Americans
    
    
    Contact Info
    Office of Diversity and Inclusion
    diversity@nwmissouri.edu
    
    Calendars: Multicultural - Student Events 
    9 
    --- 
    Faculty Professional Development: It's Not About the Apps--It's About the Pedagogy (Part 1)
    J.W. Jones Student Union, 3rd floor of Union - Boardroom
    
    Monday, October 10, 2022 @ 12:30 am - 4:30 pm
    
    Professional Development for faculty and educators: a seven-module two-part
    series designed collaboratively with Allan Carrington, an internationally
    recognized instructional designer and award-winning educator who is the
    author of the Padagogy Wheel. Interactive lessons focus on transformational
    learning, graduate attributes and motivation, and guidelines to evaluate
    effective digital tools to support learning outcomes.
    
    
    Contact Info
    Gail Cullen
    culleng@nwmissouri.edu
    (660) 562-1532
    
    Calendars: Faculty / Staff 
    10 
    --- 
    KXCV-KRNW fall fund drive
    Wells Hall
    800 University Drive, Maryville, MO
    
    Saturday, October 8, 2022 @ 8:00 am -
    Friday, October 14, 2022 @ 5:00 pm
    
    The KXCV-KRNW fall 2022 Fund Drive is Oct. 8-14. Donations go directly toward programming costs.
    
    To donate or pledge your support, visit https://www.kxcv.org/pledge.htm
    
    
    Contact Info
    Helen Konstantopoulos
    helenk@nwmissouri.edu
    (660) 562-1163
    
    Calendars: Alumni & Friends - Faculty / Staff 
    11 
    --- 
    Clothesline Project
    Memorial Bell Tower
    
    Friday, October 7, 2022 -
    Friday, October 14, 2022
    
    The Clothesline Project is an annual visual arts display that aims to raise awareness for sexual assault and violence during Domestic Violence Awareness Month in October.
    
    
    Contact Info
    Shelby Letuli
    sletuli@nwmissouri.edu
    (660) 562-1060
    
    Calendars: Faculty / Staff - Student Events 
    12 
    --- 
    First block, 7-Wk Block 1 and OP1 Final Grades due by 10 am to Registrar
    
    Tuesday, October 11, 2022
    
    
    Contact Info
    Registrar's Office
    registrar@nwmissouri.edu
    (660) 562-1151
    
    Calendars: Academics 
    13 
    --- 
    Last date for 100% refund for second block course drop or withdrawal
    
    Tuesday, October 11, 2022
    
    
    Contact Info
    Office of Student Accounts
    cashier@nwmissouri.edu
    (660) 562-1578
    
    Calendars: Financial Dates 
    14 
    --- 
    Last day to add or enroll in a second-block course
    
    Tuesday, October 11, 2022
    
    
    Contact Info
    Registrar's Office
    registrar@nwmissouri.edu
    (660) 562-1151
    
    Calendars: Academics 
    15 
    --- 
    Observance: National Hispanic Heritage Month
    
    Thursday, September 15, 2022 -
    Saturday, October 15, 2022
    
    This month honors the culture and contributions of both Hispanic and Latino Americans
    
    
    Contact Info
    Office of Diversity and Inclusion
    diversity@nwmissouri.edu
    
    Calendars: Multicultural - Student Events 
    16 
    --- 
    Second block begins
    
    Tuesday, October 11, 2022
    
    
    Contact Info
    Registrar's Office
    registrar@nwmissouri.edu
    (660) 562-1151
    
    Calendars: Academics 
    17 
    --- 
    KXCV-KRNW fall fund drive
    Wells Hall
    800 University Drive, Maryville, MO
    
    Saturday, October 8, 2022 @ 8:00 am -
    Friday, October 14, 2022 @ 5:00 pm
    
    The KXCV-KRNW fall 2022 Fund Drive is Oct. 8-14. Donations go directly toward programming costs.
    
    To donate or pledge your support, visit https://www.kxcv.org/pledge.htm
    
    
    Contact Info
    Helen Konstantopoulos
    helenk@nwmissouri.edu
    (660) 562-1163
    
    Calendars: Alumni & Friends - Faculty / Staff 
    18 
    --- 
    Discover Your Major Visit Day: Biomedical/Pre-Professional
    J.W. Jones Student Union, 3rd Floor, Boardroom
    
    Tuesday, October 11, 2022 @ 9:00 am - 2:30 pm
    
    Explore Northwest's pre-professional programs, which include interacting with current Northwest faculty and students. The event will highlight Northwest with a campus tour and information sessions. Students will learn how the Department of Natural Sciences can further their career goals have a chance to explore their major in depth.
    
    To learn more about the event, please visit the below link:
    https://www.nwmissouri.edu/admissions/campusvisits/events/naturalsciencesFA1.htm
    
    
    Contact Info
    Kristin Little
    kristinl@nwmissouri.edu
    (660) 562-1587
    
    Calendars: Admissions 
    19 
    --- 
    LGBTQIA+ History Month: Pride Tie-Dye
    J.W. Jones Student Union, Office of Diversity and Inclusion, Student Engagement Center
    MO
    
    Tuesday, October 11, 2022 @ 11:30 am - 2:30 pm
    
    Join us as we educate and celebrate all the different sexual orientations for LGBTQIA+ History Month. Learn the colors of pride through tie-dye.
    
    
    Contact Info
    Brittany Morgan-Roberts
    broberts@nwmissouri.edu
    (660) 562-1584
    
    Calendars: Faculty / Staff - Multicultural - Student Events 
    20 
    --- 
    Volleyball vs Central Missouri
    Bearcat Arena
    Maryville, MO
    
    Tuesday, October 11, 2022 @ 6:00 pm - 8:00 pm
    
    The Northwest volleyball team is back home to take on the Jennies.
    
    Watch : https://www.themiaanetwork.com/nwmsubearcats/
    Stats : https://bearcatsports.com/sidearmstats/wvball/summary
    
    
    Contact Info
    Ryan Milke
    rmilke@nwmissouri.edu
    
    Calendars: Athletics 
    21 
    --- 
    Hispanic Heritage Month: Making Movies, concert
    Ron Houston Center for the Performing Arts, Mary Linn Auditorium
    
    Tuesday, October 11, 2022 @ 7:30 pm
    
    Making Movies is a psychedelic Panamanian band that makes American music with a sound that encompasses the entirety of the Americas. Making Movies crunches classic rock into Latin American rhythms — African-derived percussion and styles like rumba, merengue, mambo and cumbia — in a way that feels oddly familiar, yet delivers the invigorating chills of hearing something singularly special.
    
    Over the course of their career, the quartet has turned heads as a Tiny Desk newcomer (with "A La Deriva"), a voice for immigrant rights (with "I Am Another You," which reached No. 3 on Billboard's Latin Pop Album chart), and as a co-writer alongside salsa icon Rubén Blades (with Latin Grammy--nominated song "No Te Calles”).
    
    Making Movies has toured extensively, appearing with the likes of Arcade Fire, Rubén Blades, Los Lobos, Hurray For the Riff Raff, Bomba Estereo, Galactic, Flor De Toloache, and Thievery Corporation. The band's fourth album, "XOPA" was just released on L.A.-based label Cósmica Artists.
    
    This concert is free and open to the public. For more information about Making Movies, visit https://www.makingmovies.world/.
    
    
    Contact Info
    Office of Diversity and Inclusion
    diversity@nwmissouri.edu
    
    Calendars: Alumni & Friends - Faculty / Staff - Multicultural - Performances and Arts - Student Events 



```python
#//*[@id="calendar_control"]/table/tbody/tr[3]
#//*[@id="calendar_control"]/table/tbody/tr[3]/td[2]
#print(date.today().day)
z=0
d=driver.find_element(By.XPATH,'''//*[@id="calendar_control"]/table/tbody/tr[1]/td[3]/a''')
for i in range(3,9):
    for j in range(1,8):
        #ss="//*[@id=calendar_control]/table/tbody/tr["+str(i)+"]/td["+str(j)+"]"
        m=driver.find_elements(By.XPATH,'''//*[@id="calendar_control"]/table/tbody/tr['''+str(i)+''']/td['''+str(j)+''']''')
        for k in range(len(m)):
            m=driver.find_elements(By.XPATH,'''//*[@id="calendar_control"]/table/tbody/tr['''+str(i)+''']/td['''+str(j)+''']''')
            #print(k.text)
            if m[k].text==(str)(date.today().day):
                print(m[k].text)
                z+=1
            if z==1:
                print(m[k].text)
                s=""
                b=driver.find_elements(By.CLASS_NAME,"event-data")
                #for i in b:
                    #s+=i.text
                    #print(i)
                c=driver.find_elements(By.CLASS_NAME,"event-listing-name")#.find_elements(By.TAG_NAME,"a")
                #print(c)
                l=[];x=1
                for y in range(len(c)):
                    c=driver.find_elements(By.CLASS_NAME,"event-listing-name")#.find_elements(By.TAG_NAME,"a")
                    #print(i.find_element(By.TAG_NAME,"a").text)
                    c[y].find_element(By.TAG_NAME,"a").click() 
                    sleep(1)
                    a=driver.find_elements(By.CLASS_NAME,"content")
                    print(x,"\n--- ");x+=1
                    for w in a:
                        print(w.text,end="\n")
                        s+=w.text+"\n"
                    driver.back()
                    sleep(1)
                m=driver.find_elements(By.XPATH,'''//*[@id="calendar_control"]/table/tbody/tr['''+str(i)+''']/td['''+str(j)+''']''')
                print(m[k].text)
                m[k].click()
                m=driver.find_elements(By.XPATH,'''//*[@id="calendar_control"]/table/tbody/tr['''+str(i)+''']/td['''+str(j)+''']''')
            if str(m[k].text)==str(31):
                d=driver.find_element(By.XPATH,'''//*[@id="calendar_control"]/table/tbody/tr[1]/td[3]/a''')
                d.click()
                
                
```

    14
    14
    1 
    --- 
    Clothesline Project
    Memorial Bell Tower
    
    Friday, October 7, 2022 -
    Friday, October 14, 2022
    
    The Clothesline Project is an annual visual arts display that aims to raise awareness for sexual assault and violence during Domestic Violence Awareness Month in October.
    
    
    Contact Info
    Shelby Letuli
    sletuli@nwmissouri.edu
    (660) 562-1060
    
    Calendars: Faculty / Staff - Student Events 
    2 
    --- 
    Cross Country at Platte River Rumble
    Mahoney State Park
    Ashland, NE
    
    Friday, October 14, 2022
    
    The Northwest cross country teams conclude the regular meet season by heading to Ashland, Nebraska.
    
    
    Contact Info
    Ryan Milke
    rmilke@nwmissouri.edu
    
    Calendars: Athletics 
    3 
    --- 
    Observance: National Hispanic Heritage Month
    
    Thursday, September 15, 2022 -
    Saturday, October 15, 2022
    
    This month honors the culture and contributions of both Hispanic and Latino Americans
    
    
    Contact Info
    Office of Diversity and Inclusion
    diversity@nwmissouri.edu
    
    Calendars: Multicultural - Student Events 
    4 
    --- 
    KXCV-KRNW fall fund drive
    Wells Hall
    800 University Drive, Maryville, MO
    
    Saturday, October 8, 2022 @ 8:00 am -
    Friday, October 14, 2022 @ 5:00 pm
    
    The KXCV-KRNW fall 2022 Fund Drive is Oct. 8-14. Donations go directly toward programming costs.
    
    To donate or pledge your support, visit https://www.kxcv.org/pledge.htm
    
    
    Contact Info
    Helen Konstantopoulos
    helenk@nwmissouri.edu
    (660) 562-1163
    
    Calendars: Alumni & Friends - Faculty / Staff 
    5 
    --- 
    Soccer vs Northeastern State
    Bearcat Pitch
    Maryville, MO
    
    Friday, October 14, 2022 @ 3:00 pm - 5:00 pm
    
    The Northwest soccer team is back home against Northeastern State.
    
    Watch: https://www.themiaanetwork.com/nwmsubearcats/
    Stats: https://bearcatsports.com/sidearmstats/wsoc/summary
    
    
    Contact Info
    Ryan Milke
    rmilke@nwmissouri.edu
    
    Calendars: Athletics - Faculty / Staff - Student Events 
    6 
    --- 
    Volleyball vs Washburn
    Lamkin Activity Center, Bearcat Arena
    Maryville, MO
    
    Friday, October 14, 2022 @ 6:00 pm - 8:00 pm
    
    The Northwest volleyball team takes on the Ichabods inside Bearcat Arena.
    
    Watch : https://www.themiaanetwork.com/nwmsubearcats/
    Stats : https://bearcatsports.com/sidearmstats/wvball/summary
    
    
    Contact Info
    Ryan Milke
    rmilke@nwmissouri.edu
    
    Calendars: Athletics - Faculty / Staff - Student Events 
    7 
    --- 
    Last date to remove yearbook charge from account
    
    Saturday, October 15, 2022
    
    Sign and return 'Remove Yearbook' form at https://www.nwmissouri.edu/bursar/forms.htm
    
    
    Contact Info
    Office of Student Accounts
    cashier@nwmissouri.edu
    (660) 562-1578
    
    Calendars: Financial Dates 
    8 
    --- 
    Last day to Apply for Fall Graduation
    
    Saturday, October 15, 2022
    
    The last day for students to apply for fall graduation is October 15. Students can find the "Apply for Graduation" form in CatPAWS (Student tab under Student Records).
    
    For more information, visit https://www.nwmissouri.edu/graduation/checklist.htm
    
    
    Contact Info
    Registrar's Office
    registrar@nwmissouri.edu
    (660) 562-1151
    
    Calendars: Academics 
    9 
    --- 
    Observance: National Hispanic Heritage Month
    
    Thursday, September 15, 2022 -
    Saturday, October 15, 2022
    
    This month honors the culture and contributions of both Hispanic and Latino Americans
    
    
    Contact Info
    Office of Diversity and Inclusion
    diversity@nwmissouri.edu
    
    Calendars: Multicultural - Student Events 
    10 
    --- 
    Third installment payment due
    
    Saturday, October 15, 2022
    
    Students who have already enrolled in a payment plan must pay their installment by October 15 in order to avoid a late fee. Failure to pay this installment could delay a student's preregistration.
    
    https://www.nwmissouri.edu/studentaccounts/billing-and-payments.htm
    
    
    Contact Info
    Student Account Services
    bursar@nwmissouri.edu
    (660) 562-1583
    
    Calendars: Financial Dates 
    11 
    --- 
    Saturday Campus Visit
    J.W. Jones Student Union, 3rd Floor
    
    Saturday, October 15, 2022 @ 10:00 am - 12:30 pm
    
    The 90-minute walking group tour is led by a Northwest student ambassador who will share his or her individual experiences about Northwest and some pointers for selecting a university. The average campus tour is a two-mile walk. If you are unable to walk for this distance please let us know when scheduling the tour and special arrangements can be made.
    
    An Admissions Overview will begin at 10:15 a.m. Saturday tours begin at 11:00 a.m. The day will include a Northwest welcome with information about the services we offer and a walking tour of campus.
    
    To learn more, please visit the below link:
    https://www.nwmissouri.edu/admissions/campusvisits/saturday.htm
    
    
    Contact Info
    Kristin Little
    kristinl@nwmissouri.edu
    (660) 562-1587
    
    Calendars: Admissions 
    12 
    --- 
    Bearcat Tailgate Zone
    College Park
    
    Saturday, October 15, 2022 @ 11:00 am - 1:30 pm
    
    All fans are invited to the Bearcat Tailgate Zone in College Park prior to the kickoff of all home football games.
    
    The tailgate and the Bearcat Walk from Hughes Fieldhouse to the stadium begins at 11 a.m. A tailgate meal is available for purchase at the Raymond J. Courter College Park Pavilion.
    
    The Bearcat Marching Band, Bearcat Steppers and Bearcat cheerleaders perform at College Park one hour before kickoff.
    
    Calendars: Alumni & Friends - Athletics - Faculty / Staff - Student Events 
    13 
    --- 
    Football vs Washburn
    Bearcat Stadium
    
    Saturday, October 15, 2022 @ 1:30 pm
    
    Northwest hosts Washburn for a 1:30 p.m. kickoff at Bearcat Stadium.
    
    
    Contact Info
    Ryan Milke
    rmilke@nwmissouri.edu
    (660) 562-1581
    
    Calendars: Alumni & Friends - Athletics - Faculty / Staff 
    14 
    --- 
    Sigma Sigma Sigma Masquerade Ball
    Mozingo Clubhouse
    1 Fall Drive, Maryville, MO
    
    Saturday, October 15, 2022 @ 6:00 pm - 7:30 pm
    
    
    Contact Info
    Britin Melton
    s543715@@nwmissouri.edu
    (816) 787-8484
    
    Calendars: Student Events 
    15 
    --- 
    Volleyball vs Emporia State
    Lamkin Activity Center, Bearcat Arena
    Maryville, MO
    
    Saturday, October 15, 2022 @ 6:00 pm - 8:00 pm
    
    The Northwest volleyball team takes on Emporia State in Bearcat Arena.
    
    Watch : https://www.themiaanetwork.com/nwmsubearcats/
    Stats : https://bearcatsports.com/sidearmstats/wvball/summary
    
    
    Contact Info
    Ryan Milke
    rmilke@nwmissouri.edu
    
    Calendars: Alumni & Friends - Athletics - Faculty / Staff - Student Events 
    16 
    --- 
    Homecoming Week
    Maryville, MO
    
    Sunday, October 16, 2022 -
    Saturday, October 22, 2022
    
    Homecoming at Northwest is a weeklong celebration featuring athletic events, entertainment and plenty of opportunities for our community to show its Bearcat spirit.
    
    Details about all Homecoming activities, including participant entry forms, are available at www.nwmissouri.edu/getinvolved/homecoming, or by contacting 660.562.1226 or homecmg@nwmissouri.edu.
    
    
    Contact Info
    Isabelle Stewart
    Istewart@nwmissouri.edu
    (660) 562-1496
    
    Calendars: Alumni & Friends - Faculty / Staff - Student Events 
    17 
    --- 
    Sunday Campus Visit
    J.W. Jones Student Union, 3rd Floor
    
    Sunday, October 16, 2022 @ 12:00 pm - 2:00 pm
    
    The 90-minute walking group tour is led by a Northwest student ambassador who will share his or her individual experiences about Northwest and some pointers for selecting a university. The average campus tour is a two-mile walk. If you are unable to walk for this distance please let us know when scheduling the tour and special arrangements can be made.
    
    An Admissions Overview will begin at 12:15 p.m. Sunday tours begin at 1:00 p.m. The day will include a Northwest welcome with information about the services we offer and a walking tour of campus.
    
    To learn more, please visit the below link:
    http://www.nwmissouri.edu/admissions/campusvisits/saturday.htm
    
    
    Contact Info
    Kristin Little
    kristinl@nwmissouri.edu
    (660) 562-1587
    
    Calendars: Admissions 
    18 
    --- 
    Soccer vs Rogers State
    Bearcat Pitch
    Maryville, MO
    
    Sunday, October 16, 2022 @ 1:00 pm - 3:00 pm
    
    The Northwest soccer team takes on the Hillcats at Bearcat Pitch.
    
    Watch: https://www.themiaanetwork.com/nwmsubearcats/
    Stats: https://bearcatsports.com/sidearmstats/wsoc/summary
    
    
    Contact Info
    Ryan Milke
    rmilke@nwmissouri.edu
    
    Calendars: Alumni & Friends - Athletics - Faculty / Staff - Student Events 
    19 
    --- 
    Sunday Campus Visit
    J.W. Jones Student Union, 3rd Floor
    
    Sunday, October 16, 2022 @ 1:00 pm - 3:00 pm
    
    The 90-minute walking group tour is led by a Northwest student ambassador who will share his or her individual experiences about Northwest and some pointers for selecting a university. The average campus tour is a two-mile walk. If you are unable to walk for this distance please let us know when scheduling the tour and special arrangements can be made.
    
    An Admissions Overview will begin at 1:15 p.m. Sunday tours begin at 2:00 p.m. The day will include a Northwest welcome with information about the services we offer and a walking tour of campus.
    
    To learn more, please visit the below link:
    http://www.nwmissouri.edu/admissions/campusvisits/saturday.htm
    
    
    Contact Info
    Kristin Little
    kristinl@nwmissouri.edu
    (660) 562-1587
    
    Calendars: Admissions 
    14
    15
    1 
    --- 
    Clothesline Project
    Memorial Bell Tower
    
    Friday, October 7, 2022 -
    Friday, October 14, 2022
    
    The Clothesline Project is an annual visual arts display that aims to raise awareness for sexual assault and violence during Domestic Violence Awareness Month in October.
    
    
    Contact Info
    Shelby Letuli
    sletuli@nwmissouri.edu
    (660) 562-1060
    
    Calendars: Faculty / Staff - Student Events 
    2 
    --- 
    Cross Country at Platte River Rumble
    Mahoney State Park
    Ashland, NE
    
    Friday, October 14, 2022
    
    The Northwest cross country teams conclude the regular meet season by heading to Ashland, Nebraska.
    
    
    Contact Info
    Ryan Milke
    rmilke@nwmissouri.edu
    
    Calendars: Athletics 
    3 
    --- 
    Observance: National Hispanic Heritage Month
    
    Thursday, September 15, 2022 -
    Saturday, October 15, 2022
    
    This month honors the culture and contributions of both Hispanic and Latino Americans
    
    
    Contact Info
    Office of Diversity and Inclusion
    diversity@nwmissouri.edu
    
    Calendars: Multicultural - Student Events 
    4 
    --- 
    KXCV-KRNW fall fund drive
    Wells Hall
    800 University Drive, Maryville, MO
    
    Saturday, October 8, 2022 @ 8:00 am -
    Friday, October 14, 2022 @ 5:00 pm
    
    The KXCV-KRNW fall 2022 Fund Drive is Oct. 8-14. Donations go directly toward programming costs.
    
    To donate or pledge your support, visit https://www.kxcv.org/pledge.htm
    
    
    Contact Info
    Helen Konstantopoulos
    helenk@nwmissouri.edu
    (660) 562-1163
    
    Calendars: Alumni & Friends - Faculty / Staff 
    5 
    --- 
    Soccer vs Northeastern State
    Bearcat Pitch
    Maryville, MO
    
    Friday, October 14, 2022 @ 3:00 pm - 5:00 pm
    
    The Northwest soccer team is back home against Northeastern State.
    
    Watch: https://www.themiaanetwork.com/nwmsubearcats/
    Stats: https://bearcatsports.com/sidearmstats/wsoc/summary
    
    
    Contact Info
    Ryan Milke
    rmilke@nwmissouri.edu
    
    Calendars: Athletics - Faculty / Staff - Student Events 
    6 
    --- 
    Volleyball vs Washburn
    Lamkin Activity Center, Bearcat Arena
    Maryville, MO
    
    Friday, October 14, 2022 @ 6:00 pm - 8:00 pm
    
    The Northwest volleyball team takes on the Ichabods inside Bearcat Arena.
    
    Watch : https://www.themiaanetwork.com/nwmsubearcats/
    Stats : https://bearcatsports.com/sidearmstats/wvball/summary
    
    
    Contact Info
    Ryan Milke
    rmilke@nwmissouri.edu
    
    Calendars: Athletics - Faculty / Staff - Student Events 
    7 
    --- 
    Last date to remove yearbook charge from account
    
    Saturday, October 15, 2022
    
    Sign and return 'Remove Yearbook' form at https://www.nwmissouri.edu/bursar/forms.htm
    
    
    Contact Info
    Office of Student Accounts
    cashier@nwmissouri.edu
    (660) 562-1578
    
    Calendars: Financial Dates 
    8 
    --- 
    Last day to Apply for Fall Graduation
    
    Saturday, October 15, 2022
    
    The last day for students to apply for fall graduation is October 15. Students can find the "Apply for Graduation" form in CatPAWS (Student tab under Student Records).
    
    For more information, visit https://www.nwmissouri.edu/graduation/checklist.htm
    
    
    Contact Info
    Registrar's Office
    registrar@nwmissouri.edu
    (660) 562-1151
    
    Calendars: Academics 
    9 
    --- 
    Observance: National Hispanic Heritage Month
    
    Thursday, September 15, 2022 -
    Saturday, October 15, 2022
    
    This month honors the culture and contributions of both Hispanic and Latino Americans
    
    
    Contact Info
    Office of Diversity and Inclusion
    diversity@nwmissouri.edu
    
    Calendars: Multicultural - Student Events 
    10 
    --- 
    Third installment payment due
    
    Saturday, October 15, 2022
    
    Students who have already enrolled in a payment plan must pay their installment by October 15 in order to avoid a late fee. Failure to pay this installment could delay a student's preregistration.
    
    https://www.nwmissouri.edu/studentaccounts/billing-and-payments.htm
    
    
    Contact Info
    Student Account Services
    bursar@nwmissouri.edu
    (660) 562-1583
    
    Calendars: Financial Dates 
    11 
    --- 
    Saturday Campus Visit
    J.W. Jones Student Union, 3rd Floor
    
    Saturday, October 15, 2022 @ 10:00 am - 12:30 pm
    
    The 90-minute walking group tour is led by a Northwest student ambassador who will share his or her individual experiences about Northwest and some pointers for selecting a university. The average campus tour is a two-mile walk. If you are unable to walk for this distance please let us know when scheduling the tour and special arrangements can be made.
    
    An Admissions Overview will begin at 10:15 a.m. Saturday tours begin at 11:00 a.m. The day will include a Northwest welcome with information about the services we offer and a walking tour of campus.
    
    To learn more, please visit the below link:
    https://www.nwmissouri.edu/admissions/campusvisits/saturday.htm
    
    
    Contact Info
    Kristin Little
    kristinl@nwmissouri.edu
    (660) 562-1587
    
    Calendars: Admissions 
    12 
    --- 
    Bearcat Tailgate Zone
    College Park
    
    Saturday, October 15, 2022 @ 11:00 am - 1:30 pm
    
    All fans are invited to the Bearcat Tailgate Zone in College Park prior to the kickoff of all home football games.
    
    The tailgate and the Bearcat Walk from Hughes Fieldhouse to the stadium begins at 11 a.m. A tailgate meal is available for purchase at the Raymond J. Courter College Park Pavilion.
    
    The Bearcat Marching Band, Bearcat Steppers and Bearcat cheerleaders perform at College Park one hour before kickoff.
    
    Calendars: Alumni & Friends - Athletics - Faculty / Staff - Student Events 
    13 
    --- 
    Football vs Washburn
    Bearcat Stadium
    
    Saturday, October 15, 2022 @ 1:30 pm
    
    Northwest hosts Washburn for a 1:30 p.m. kickoff at Bearcat Stadium.
    
    
    Contact Info
    Ryan Milke
    rmilke@nwmissouri.edu
    (660) 562-1581
    
    Calendars: Alumni & Friends - Athletics - Faculty / Staff 
    14 
    --- 
    Sigma Sigma Sigma Masquerade Ball
    Mozingo Clubhouse
    1 Fall Drive, Maryville, MO
    
    Saturday, October 15, 2022 @ 6:00 pm - 7:30 pm
    
    
    Contact Info
    Britin Melton
    s543715@@nwmissouri.edu
    (816) 787-8484
    
    Calendars: Student Events 
    15 
    --- 
    Volleyball vs Emporia State
    Lamkin Activity Center, Bearcat Arena
    Maryville, MO
    
    Saturday, October 15, 2022 @ 6:00 pm - 8:00 pm
    
    The Northwest volleyball team takes on Emporia State in Bearcat Arena.
    
    Watch : https://www.themiaanetwork.com/nwmsubearcats/
    Stats : https://bearcatsports.com/sidearmstats/wvball/summary
    
    
    Contact Info
    Ryan Milke
    rmilke@nwmissouri.edu
    
    Calendars: Alumni & Friends - Athletics - Faculty / Staff - Student Events 
    16 
    --- 
    Homecoming Week
    Maryville, MO
    
    Sunday, October 16, 2022 -
    Saturday, October 22, 2022
    
    Homecoming at Northwest is a weeklong celebration featuring athletic events, entertainment and plenty of opportunities for our community to show its Bearcat spirit.
    
    Details about all Homecoming activities, including participant entry forms, are available at www.nwmissouri.edu/getinvolved/homecoming, or by contacting 660.562.1226 or homecmg@nwmissouri.edu.
    
    
    Contact Info
    Isabelle Stewart
    Istewart@nwmissouri.edu
    (660) 562-1496
    
    Calendars: Alumni & Friends - Faculty / Staff - Student Events 
    17 
    --- 
    Sunday Campus Visit
    J.W. Jones Student Union, 3rd Floor
    
    Sunday, October 16, 2022 @ 12:00 pm - 2:00 pm
    
    The 90-minute walking group tour is led by a Northwest student ambassador who will share his or her individual experiences about Northwest and some pointers for selecting a university. The average campus tour is a two-mile walk. If you are unable to walk for this distance please let us know when scheduling the tour and special arrangements can be made.
    
    An Admissions Overview will begin at 12:15 p.m. Sunday tours begin at 1:00 p.m. The day will include a Northwest welcome with information about the services we offer and a walking tour of campus.
    
    To learn more, please visit the below link:
    http://www.nwmissouri.edu/admissions/campusvisits/saturday.htm
    
    
    Contact Info
    Kristin Little
    kristinl@nwmissouri.edu
    (660) 562-1587
    
    Calendars: Admissions 
    18 
    --- 
    Soccer vs Rogers State
    Bearcat Pitch
    Maryville, MO
    
    Sunday, October 16, 2022 @ 1:00 pm - 3:00 pm
    
    The Northwest soccer team takes on the Hillcats at Bearcat Pitch.
    
    Watch: https://www.themiaanetwork.com/nwmsubearcats/
    Stats: https://bearcatsports.com/sidearmstats/wsoc/summary
    
    
    Contact Info
    Ryan Milke
    rmilke@nwmissouri.edu
    
    Calendars: Alumni & Friends - Athletics - Faculty / Staff - Student Events 
    19 
    --- 
    Sunday Campus Visit
    J.W. Jones Student Union, 3rd Floor
    
    Sunday, October 16, 2022 @ 1:00 pm - 3:00 pm
    
    The 90-minute walking group tour is led by a Northwest student ambassador who will share his or her individual experiences about Northwest and some pointers for selecting a university. The average campus tour is a two-mile walk. If you are unable to walk for this distance please let us know when scheduling the tour and special arrangements can be made.
    
    An Admissions Overview will begin at 1:15 p.m. Sunday tours begin at 2:00 p.m. The day will include a Northwest welcome with information about the services we offer and a walking tour of campus.
    
    To learn more, please visit the below link:
    http://www.nwmissouri.edu/admissions/campusvisits/saturday.htm
    
    
    Contact Info
    Kristin Little
    kristinl@nwmissouri.edu
    (660) 562-1587
    
    Calendars: Admissions 
    15
    16
    1 
    --- 
    Last date to remove yearbook charge from account
    
    Saturday, October 15, 2022
    
    Sign and return 'Remove Yearbook' form at https://www.nwmissouri.edu/bursar/forms.htm
    
    
    Contact Info
    Office of Student Accounts
    cashier@nwmissouri.edu
    (660) 562-1578
    
    Calendars: Financial Dates 
    2 
    --- 
    Last day to Apply for Fall Graduation
    
    Saturday, October 15, 2022
    
    The last day for students to apply for fall graduation is October 15. Students can find the "Apply for Graduation" form in CatPAWS (Student tab under Student Records).
    
    For more information, visit https://www.nwmissouri.edu/graduation/checklist.htm
    
    
    Contact Info
    Registrar's Office
    registrar@nwmissouri.edu
    (660) 562-1151
    
    Calendars: Academics 
    3 
    --- 
    Observance: National Hispanic Heritage Month
    
    Thursday, September 15, 2022 -
    Saturday, October 15, 2022
    
    This month honors the culture and contributions of both Hispanic and Latino Americans
    
    
    Contact Info
    Office of Diversity and Inclusion
    diversity@nwmissouri.edu
    
    Calendars: Multicultural - Student Events 
    4 
    --- 
    Third installment payment due
    
    Saturday, October 15, 2022
    
    Students who have already enrolled in a payment plan must pay their installment by October 15 in order to avoid a late fee. Failure to pay this installment could delay a student's preregistration.
    
    https://www.nwmissouri.edu/studentaccounts/billing-and-payments.htm
    
    
    Contact Info
    Student Account Services
    bursar@nwmissouri.edu
    (660) 562-1583
    
    Calendars: Financial Dates 
    5 
    --- 
    Saturday Campus Visit
    J.W. Jones Student Union, 3rd Floor
    
    Saturday, October 15, 2022 @ 10:00 am - 12:30 pm
    
    The 90-minute walking group tour is led by a Northwest student ambassador who will share his or her individual experiences about Northwest and some pointers for selecting a university. The average campus tour is a two-mile walk. If you are unable to walk for this distance please let us know when scheduling the tour and special arrangements can be made.
    
    An Admissions Overview will begin at 10:15 a.m. Saturday tours begin at 11:00 a.m. The day will include a Northwest welcome with information about the services we offer and a walking tour of campus.
    
    To learn more, please visit the below link:
    https://www.nwmissouri.edu/admissions/campusvisits/saturday.htm
    
    
    Contact Info
    Kristin Little
    kristinl@nwmissouri.edu
    (660) 562-1587
    
    Calendars: Admissions 
    6 
    --- 
    Bearcat Tailgate Zone
    College Park
    
    Saturday, October 15, 2022 @ 11:00 am - 1:30 pm
    
    All fans are invited to the Bearcat Tailgate Zone in College Park prior to the kickoff of all home football games.
    
    The tailgate and the Bearcat Walk from Hughes Fieldhouse to the stadium begins at 11 a.m. A tailgate meal is available for purchase at the Raymond J. Courter College Park Pavilion.
    
    The Bearcat Marching Band, Bearcat Steppers and Bearcat cheerleaders perform at College Park one hour before kickoff.
    
    Calendars: Alumni & Friends - Athletics - Faculty / Staff - Student Events 
    7 
    --- 
    Football vs Washburn
    Bearcat Stadium
    
    Saturday, October 15, 2022 @ 1:30 pm
    
    Northwest hosts Washburn for a 1:30 p.m. kickoff at Bearcat Stadium.
    
    
    Contact Info
    Ryan Milke
    rmilke@nwmissouri.edu
    (660) 562-1581
    
    Calendars: Alumni & Friends - Athletics - Faculty / Staff 
    8 
    --- 
    Sigma Sigma Sigma Masquerade Ball
    Mozingo Clubhouse
    1 Fall Drive, Maryville, MO
    
    Saturday, October 15, 2022 @ 6:00 pm - 7:30 pm
    
    
    Contact Info
    Britin Melton
    s543715@@nwmissouri.edu
    (816) 787-8484
    
    Calendars: Student Events 
    9 
    --- 
    Volleyball vs Emporia State
    Lamkin Activity Center, Bearcat Arena
    Maryville, MO
    
    Saturday, October 15, 2022 @ 6:00 pm - 8:00 pm
    
    The Northwest volleyball team takes on Emporia State in Bearcat Arena.
    
    Watch : https://www.themiaanetwork.com/nwmsubearcats/
    Stats : https://bearcatsports.com/sidearmstats/wvball/summary
    
    
    Contact Info
    Ryan Milke
    rmilke@nwmissouri.edu
    
    Calendars: Alumni & Friends - Athletics - Faculty / Staff - Student Events 
    10 
    --- 
    Homecoming Week
    Maryville, MO
    
    Sunday, October 16, 2022 -
    Saturday, October 22, 2022
    
    Homecoming at Northwest is a weeklong celebration featuring athletic events, entertainment and plenty of opportunities for our community to show its Bearcat spirit.
    
    Details about all Homecoming activities, including participant entry forms, are available at www.nwmissouri.edu/getinvolved/homecoming, or by contacting 660.562.1226 or homecmg@nwmissouri.edu.
    
    
    Contact Info
    Isabelle Stewart
    Istewart@nwmissouri.edu
    (660) 562-1496
    
    Calendars: Alumni & Friends - Faculty / Staff - Student Events 
    11 
    --- 
    Sunday Campus Visit
    J.W. Jones Student Union, 3rd Floor
    
    Sunday, October 16, 2022 @ 12:00 pm - 2:00 pm
    
    The 90-minute walking group tour is led by a Northwest student ambassador who will share his or her individual experiences about Northwest and some pointers for selecting a university. The average campus tour is a two-mile walk. If you are unable to walk for this distance please let us know when scheduling the tour and special arrangements can be made.
    
    An Admissions Overview will begin at 12:15 p.m. Sunday tours begin at 1:00 p.m. The day will include a Northwest welcome with information about the services we offer and a walking tour of campus.
    
    To learn more, please visit the below link:
    http://www.nwmissouri.edu/admissions/campusvisits/saturday.htm
    
    
    Contact Info
    Kristin Little
    kristinl@nwmissouri.edu
    (660) 562-1587
    
    Calendars: Admissions 
    12 
    --- 
    Soccer vs Rogers State
    Bearcat Pitch
    Maryville, MO
    
    Sunday, October 16, 2022 @ 1:00 pm - 3:00 pm
    
    The Northwest soccer team takes on the Hillcats at Bearcat Pitch.
    
    Watch: https://www.themiaanetwork.com/nwmsubearcats/
    Stats: https://bearcatsports.com/sidearmstats/wsoc/summary
    
    
    Contact Info
    Ryan Milke
    rmilke@nwmissouri.edu
    
    Calendars: Alumni & Friends - Athletics - Faculty / Staff - Student Events 
    13 
    --- 
    Sunday Campus Visit
    J.W. Jones Student Union, 3rd Floor
    
    Sunday, October 16, 2022 @ 1:00 pm - 3:00 pm
    
    The 90-minute walking group tour is led by a Northwest student ambassador who will share his or her individual experiences about Northwest and some pointers for selecting a university. The average campus tour is a two-mile walk. If you are unable to walk for this distance please let us know when scheduling the tour and special arrangements can be made.
    
    An Admissions Overview will begin at 1:15 p.m. Sunday tours begin at 2:00 p.m. The day will include a Northwest welcome with information about the services we offer and a walking tour of campus.
    
    To learn more, please visit the below link:
    http://www.nwmissouri.edu/admissions/campusvisits/saturday.htm
    
    
    Contact Info
    Kristin Little
    kristinl@nwmissouri.edu
    (660) 562-1587
    
    Calendars: Admissions 
    14 
    --- 
    Homecoming Spirit Days (Horace Mann / Preschool)
    Horace Mann Laboratory School
    
    Monday, October 17, 2022 -
    Thursday, October 20, 2022
    
    
    Contact Info
    LaTessa Ruehter
    latessa@nwmissouri.edu
    (660) 562-1233
    
    Calendars: Other 
    15 
    --- 
    Homecoming Week
    Maryville, MO
    
    Sunday, October 16, 2022 -
    Saturday, October 22, 2022
    
    Homecoming at Northwest is a weeklong celebration featuring athletic events, entertainment and plenty of opportunities for our community to show its Bearcat spirit.
    
    Details about all Homecoming activities, including participant entry forms, are available at www.nwmissouri.edu/getinvolved/homecoming, or by contacting 660.562.1226 or homecmg@nwmissouri.edu.
    
    
    Contact Info
    Isabelle Stewart
    Istewart@nwmissouri.edu
    (660) 562-1496
    
    Calendars: Alumni & Friends - Faculty / Staff - Student Events 
    16 
    --- 
    Last date for 50% refund for second block course drop or withdrawal
    
    Monday, October 17, 2022
    
    
    Contact Info
    Office of Student Accounts
    cashier@nwmissouri.edu
    (660) 562-1578
    
    Calendars: Financial Dates 
    17 
    --- 
    Preregistration for Spring 2023 begins
    
    Monday, October 17, 2022
    
    
    Contact Info
    Registrar's Office
    registrar@nwmissouri.edu
    (660) 562-1151
    
    Calendars: Academics - Faculty / Staff 
    18 
    --- 
    Faculty Professional Development: It's Not About the Apps--It's About the Pedagogy (Part 2)
    J.W. Jones Student Union, 3rd floor of Union - Boardroom
    
    Monday, October 17, 2022 @ 12:30 am - 4:30 pm
    
    Professional Development for faculty and educators: a seven-module two-part
    series designed collaboratively with Allan Carrington, an internationally
    recognized instructional designer and award-winning educator who is the
    author of the Padagogy Wheel. Interactive lessons focus on transformational
    learning, graduate attributes and motivation, and guidelines to evaluate
    effective digital tools to support learning outcomes.
    
    
    Contact Info
    Gail Cullen
    culleng@nwmissouri.edu
    (660) 562-1532
    
    Calendars: Faculty / Staff 
    19 
    --- 
    Board of Regents Committee Meeting: People, Finance and Operations
    Zoom
    
    Monday, October 17, 2022 @ 10:00 am
    
    The Board of Regents People, Finance and Operations Committee will meet at 10 a.m. via Zoom at https://zoom.us/j/95792848939.
    
    The tentative meeting agenda is available at https://www.nwmissouri.edu/aboutus/regents/meetings/2022/Oct17pfoc.htm.
    
    The People, Finance and Operations Committee is responsible for addressing matters pertaining to faculty and staff, culture, operations, policy and governance as well as audits, University policy, legal, governance, personnel, regulatory and risk management issues.
    
    
    Contact Info
    Diane Hargrave
    DIANEH@nwmissouri.edu
    (660) 562-1120
    
    Calendars: Other 
    20 
    --- 
    Board of Regents Committee Meeting: Academic and Student Engagement
    Zoom
    
    Monday, October 17, 2022 @ 1:00 pm
    
    The Board of Regents Academic and Student Engagement Committee will meet at 1 p.m. via Zoom at https://zoom.us/j/98401341529.
    
    The tentative meeting agenda is available at https://www.nwmissouri.edu/aboutus/regents/meetings/2022/Oct17asec.htm.
    
    The Academic and Student Engagement Committee is responsible for addressing matters pertaining to academics, student life and athletics as well as diversity and inclusion embedded within these areas.
    
    
    Contact Info
    Diane Hargrave
    DIANEH@nwmissouri.edu
    (660) 562-1120
    
    Calendars: Other 
    21 
    --- 
    National Day of Writing celebration
    B.D. Owens Library, Second floor
    
    Monday, October 17, 2022 @ 6:00 pm
    
    The Writing Center hosts a bingo event to kickstart its week-long celebration of the National Day of Writing. Participate on the second floor of the Owens Library, beginning at 6 p.m.
    
    Students also may enter a raffle to win a pair of AirPods.
    
    
    Contact Info
    Writing Center
    WC@nwmissouri.edu
    (660) 562-1480
    
    Calendars: Student Events 
    22 
    --- 
    Visiting Artist Reception & Lecture: Ellen Kleckner
    Olive DeLuce Fine Arts Building, Charles Johnson Theater
    
    Monday, October 17, 2022 @ 7:00 pm
    
    The Department of Fine and Performing Arts will host mixed media ceramic artist Ellen Kleckner and her artwork in “Coupling.” The exhibit features Kleckner’s artwork in the Olive DeLuce Gallery through Nov. 18 and opens with a lecture and reception at 7 p.m. Oct. 17, in the Charles Johnson Theater at the Olive DeLuce Fine Arts Building. The lecture and exhibit are free and open to the public.
    
    Kleckner is an internationally recognized artist and educator living in Cedar Rapids, Iowa, whose artwork explores connections between places, people and communities. Her visual pieces challenge agencies of utility, calling into question what is commonplace or recognizable through explorations of form, composition and materials. She employs play and collusion, paired with traditional practice to create new forms in collaboration with a community of makers.
    
    Kleckner also is executive director of the Iowa Ceramics Center and Glass Studio, a non-profit community art center, and she recently was chosen as one of the National Council for the Education of the Ceramic Arts’ emerging artists for 2022. She holds a bachelor’s degree in ceramics from the Appalachian Center for Craft in DeKalb County, Tennessee, and obtained a master’s degree in arts from Ohio University.
    
    Funding support for the exhibit is provided by the Missouri Arts Council and Northwest.
    
    To view more of Kleckner’s artwork, visit https://www.ellenkleckner.com/.
    
    For more information about the DeLuce Gallery and upcoming exhibits, visit www.nwmissouri.edu/finearts/deluce/ or call 660.562.1326.
    
    
    Contact Info
    (660) 562-1326
    
    Calendars: Faculty / Staff - Performances and Arts - Student Events 
    16
    17
    1 
    --- 
    Homecoming Week
    Maryville, MO
    
    Sunday, October 16, 2022 -
    Saturday, October 22, 2022
    
    Homecoming at Northwest is a weeklong celebration featuring athletic events, entertainment and plenty of opportunities for our community to show its Bearcat spirit.
    
    Details about all Homecoming activities, including participant entry forms, are available at www.nwmissouri.edu/getinvolved/homecoming, or by contacting 660.562.1226 or homecmg@nwmissouri.edu.
    
    
    Contact Info
    Isabelle Stewart
    Istewart@nwmissouri.edu
    (660) 562-1496
    
    Calendars: Alumni & Friends - Faculty / Staff - Student Events 
    2 
    --- 
    Sunday Campus Visit
    J.W. Jones Student Union, 3rd Floor
    
    Sunday, October 16, 2022 @ 12:00 pm - 2:00 pm
    
    The 90-minute walking group tour is led by a Northwest student ambassador who will share his or her individual experiences about Northwest and some pointers for selecting a university. The average campus tour is a two-mile walk. If you are unable to walk for this distance please let us know when scheduling the tour and special arrangements can be made.
    
    An Admissions Overview will begin at 12:15 p.m. Sunday tours begin at 1:00 p.m. The day will include a Northwest welcome with information about the services we offer and a walking tour of campus.
    
    To learn more, please visit the below link:
    http://www.nwmissouri.edu/admissions/campusvisits/saturday.htm
    
    
    Contact Info
    Kristin Little
    kristinl@nwmissouri.edu
    (660) 562-1587
    
    Calendars: Admissions 
    3 
    --- 
    Soccer vs Rogers State
    Bearcat Pitch
    Maryville, MO
    
    Sunday, October 16, 2022 @ 1:00 pm - 3:00 pm
    
    The Northwest soccer team takes on the Hillcats at Bearcat Pitch.
    
    Watch: https://www.themiaanetwork.com/nwmsubearcats/
    Stats: https://bearcatsports.com/sidearmstats/wsoc/summary
    
    
    Contact Info
    Ryan Milke
    rmilke@nwmissouri.edu
    
    Calendars: Alumni & Friends - Athletics - Faculty / Staff - Student Events 
    4 
    --- 
    Sunday Campus Visit
    J.W. Jones Student Union, 3rd Floor
    
    Sunday, October 16, 2022 @ 1:00 pm - 3:00 pm
    
    The 90-minute walking group tour is led by a Northwest student ambassador who will share his or her individual experiences about Northwest and some pointers for selecting a university. The average campus tour is a two-mile walk. If you are unable to walk for this distance please let us know when scheduling the tour and special arrangements can be made.
    
    An Admissions Overview will begin at 1:15 p.m. Sunday tours begin at 2:00 p.m. The day will include a Northwest welcome with information about the services we offer and a walking tour of campus.
    
    To learn more, please visit the below link:
    http://www.nwmissouri.edu/admissions/campusvisits/saturday.htm
    
    
    Contact Info
    Kristin Little
    kristinl@nwmissouri.edu
    (660) 562-1587
    
    Calendars: Admissions 
    5 
    --- 
    Homecoming Spirit Days (Horace Mann / Preschool)
    Horace Mann Laboratory School
    
    Monday, October 17, 2022 -
    Thursday, October 20, 2022
    
    
    Contact Info
    LaTessa Ruehter
    latessa@nwmissouri.edu
    (660) 562-1233
    
    Calendars: Other 
    6 
    --- 
    Homecoming Week
    Maryville, MO
    
    Sunday, October 16, 2022 -
    Saturday, October 22, 2022
    
    Homecoming at Northwest is a weeklong celebration featuring athletic events, entertainment and plenty of opportunities for our community to show its Bearcat spirit.
    
    Details about all Homecoming activities, including participant entry forms, are available at www.nwmissouri.edu/getinvolved/homecoming, or by contacting 660.562.1226 or homecmg@nwmissouri.edu.
    
    
    Contact Info
    Isabelle Stewart
    Istewart@nwmissouri.edu
    (660) 562-1496
    
    Calendars: Alumni & Friends - Faculty / Staff - Student Events 
    7 
    --- 
    Last date for 50% refund for second block course drop or withdrawal
    
    Monday, October 17, 2022
    
    
    Contact Info
    Office of Student Accounts
    cashier@nwmissouri.edu
    (660) 562-1578
    
    Calendars: Financial Dates 
    8 
    --- 
    Preregistration for Spring 2023 begins
    
    Monday, October 17, 2022
    
    
    Contact Info
    Registrar's Office
    registrar@nwmissouri.edu
    (660) 562-1151
    
    Calendars: Academics - Faculty / Staff 
    9 
    --- 
    Faculty Professional Development: It's Not About the Apps--It's About the Pedagogy (Part 2)
    J.W. Jones Student Union, 3rd floor of Union - Boardroom
    
    Monday, October 17, 2022 @ 12:30 am - 4:30 pm
    
    Professional Development for faculty and educators: a seven-module two-part
    series designed collaboratively with Allan Carrington, an internationally
    recognized instructional designer and award-winning educator who is the
    author of the Padagogy Wheel. Interactive lessons focus on transformational
    learning, graduate attributes and motivation, and guidelines to evaluate
    effective digital tools to support learning outcomes.
    
    
    Contact Info
    Gail Cullen
    culleng@nwmissouri.edu
    (660) 562-1532
    
    Calendars: Faculty / Staff 



    ---------------------------------------------------------------------------

    WebDriverException                        Traceback (most recent call last)

    Input In [67], in <cell line: 6>()
         34         print(w.text,end="\n")
         35         s+=w.text+"\n"
    ---> 36     driver.back()
         37     sleep(1)
         38 m=driver.find_elements(By.XPATH,'''//*[@id="calendar_control"]/table/tbody/tr['''+str(i)+''']/td['''+str(j)+''']''')


    File /opt/anaconda3/lib/python3.9/site-packages/selenium/webdriver/remote/webdriver.py:651, in WebDriver.back(self)
        642 def back(self) -> None:
        643     """
        644     Goes one step backward in the browser history.
        645 
       (...)
        649             driver.back()
        650     """
    --> 651     self.execute(Command.GO_BACK)


    File /opt/anaconda3/lib/python3.9/site-packages/selenium/webdriver/remote/webdriver.py:428, in WebDriver.execute(self, driver_command, params)
        426 response = self.command_executor.execute(driver_command, params)
        427 if response:
    --> 428     self.error_handler.check_response(response)
        429     response['value'] = self._unwrap_value(
        430         response.get('value', None))
        431     return response


    File /opt/anaconda3/lib/python3.9/site-packages/selenium/webdriver/remote/errorhandler.py:243, in ErrorHandler.check_response(self, response)
        241         alert_text = value['alert'].get('text')
        242     raise exception_class(message, screen, stacktrace, alert_text)  # type: ignore[call-arg]  # mypy is not smart enough here
    --> 243 raise exception_class(message, screen, stacktrace)


    WebDriverException: Message: unknown error: cannot determine loading status
    from disconnected: Unable to receive message from renderer
      (Session info: chrome=106.0.5249.119)
    Stacktrace:
    0   chromedriver                        0x00000001045e8788 chromedriver + 4515720
    1   chromedriver                        0x000000010456c9d3 chromedriver + 4008403
    2   chromedriver                        0x00000001041ff12a chromedriver + 413994
    3   chromedriver                        0x00000001041ebb7f chromedriver + 334719
    4   chromedriver                        0x00000001041eaa87 chromedriver + 330375
    5   chromedriver                        0x00000001041eaf5c chromedriver + 331612
    6   chromedriver                        0x00000001041f7615 chromedriver + 382485
    7   chromedriver                        0x00000001041f7ee2 chromedriver + 384738
    8   chromedriver                        0x0000000104206a68 chromedriver + 445032
    9   chromedriver                        0x000000010420a8b4 chromedriver + 460980
    10  chromedriver                        0x00000001041eb282 chromedriver + 332418
    11  chromedriver                        0x00000001042066a3 chromedriver + 444067
    12  chromedriver                        0x0000000104267028 chromedriver + 839720
    13  chromedriver                        0x0000000104253603 chromedriver + 759299
    14  chromedriver                        0x0000000104229990 chromedriver + 588176
    15  chromedriver                        0x000000010422aa75 chromedriver + 592501
    16  chromedriver                        0x00000001045b86cd chromedriver + 4318925
    17  chromedriver                        0x00000001045bcf35 chromedriver + 4337461
    18  chromedriver                        0x00000001045c41ff chromedriver + 4366847
    19  chromedriver                        0x00000001045bdc5a chromedriver + 4340826
    20  chromedriver                        0x0000000104593c2c chromedriver + 4168748
    21  chromedriver                        0x00000001045da4f8 chromedriver + 4457720
    22  chromedriver                        0x00000001045da693 chromedriver + 4458131
    23  chromedriver                        0x00000001045efa3e chromedriver + 4545086
    24  libsystem_pthread.dylib             0x00007ff8093694e1 _pthread_start + 125
    25  libsystem_pthread.dylib             0x00007ff809364f6b thread_start + 15




```python
for i in c:
        print(i.text)
        i.click() 
        sleep(1)
        a=driver.find_elements(By.CLASS_NAME,"content")
        for i in a:
            s+=i.text+"\n"
        #driver.back()
        #driver.find_element(By.LINK_TEXT,"Home").click()
        sleep(1)
    #f.write(i.text)
#f.close()
```


```python
s
```




    'Observance: National Hispanic Heritage Month\n\nThursday, September 15, 2022 -\nSaturday, October 15, 2022\n\nThis month honors the culture and contributions of both Hispanic and Latino Americans\n\n\nContact Info\nOffice of Diversity and Inclusion\ndiversity@nwmissouri.edu\n\nCalendars: Multicultural - Student Events \n'




```python
a=driver.find_elements(By.CLASS_NAME,"content")
for i in a:
    print(i.text,end="\n")
```

    Observance: National Hispanic Heritage Month
    
    Thursday, September 15, 2022 -
    Saturday, October 15, 2022
    
    This month honors the culture and contributions of both Hispanic and Latino Americans
    
    
    Contact Info
    Office of Diversity and Inclusion
    diversity@nwmissouri.edu
    
    Calendars: Multicultural - Student Events 



```python

```


```python
c=driver.find_elements(By.CLASS_NAME,"calendarControl")
for i in c:
    print(i.text)
```

    < October 2022 >
    S M T W T F S
    1
    2 3 4 5 6 7 8
    9 10 11 12 13 14 15
    16 17 18 19 20 21 22
    23 24 25 26 27 28 29
    30 31



```python
c=driver.find_element(By.LINK_TEXT,">")
print(c.text)
```

    >



```python
c.click()
```


```python
a=driver.find_elements(By.TAG_NAME,"td")
for i in range(len(a)-31,len(a)):
    print(a[i])
    print(a[i].text)
    a[i].click()
    break
    print()
```

    <selenium.webdriver.remote.webelement.WebElement (session="3dc3eb88c048d4bdec75dea978a80622", element="60ba8b0a-e7a2-4a0c-ad31-ae0eb67041e0")>
    



```python
from flask import Flask

app = Flask(__name__)

@app.route('/')
def func():
    return "hello"

if __name__ == '__main__':
    app.run()
    
from flask import request
def shutdown_server():
    func = request.environ.get('werkzeug.server.shutdown')
    if func is None:
        raise RuntimeError('Not running with the Werkzeug Server')
    func()
    
@app.get('/shutdown')
def shutdown():
    shutdown_server()
    return 'Server shutting down...'
```

     * Serving Flask app '__main__'
     * Debug mode: off


    WARNING: This is a development server. Do not use it in a production deployment. Use a production WSGI server instead.
     * Running on http://127.0.0.1:5000
    Press CTRL+C to quit



```python
from flask import request
def shutdown_server():
    func = request.environ.get('werkzeug.server.shutdown')
    if func is None:
        raise RuntimeError('Not running with the Werkzeug Server')
    func()
    
@app.get('/shutdown')
def shutdown():
    shutdown_server()
    return 'Server shutting down...'
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    Input In [4], in <cell line: 8>()
          5         raise RuntimeError('Not running with the Werkzeug Server')
          6     func()
    ----> 8 @app.get('/shutdown')
          9 def shutdown():
         10     shutdown_server()
         11     return 'Server shutting down...'


    NameError: name 'app' is not defined


    127.0.0.1 - - [11/Oct/2022 12:55:51] "GET / HTTP/1.1" 200 -



```python
import schedule
import time

def job(t):
    print("I'm working...", t)
    return

schedule.every().day.at("23:46").do(job,'It is 01:00')

while True:
    schedule.run_pending()
    time.sleep(60) # wait one minute
```


    ---------------------------------------------------------------------------

    KeyboardInterrupt                         Traceback (most recent call last)

    Input In [138], in <cell line: 11>()
         10 while True:
         11     schedule.run_pending()
    ---> 12     time.sleep(60)


    KeyboardInterrupt: 



```python
from datetime import datetime
from threading import Timer

x=datetime.today()
y=x.replace(day=x.day+1, hour=23, minute=50, second=0, microsecond=0)
delta_t=y-x

secs=delta_t.seconds+1

def func():
    print("hello world")

t = Timer(secs, s)
t.start()
```

    hello world
    hello world



```python

```


```python
def func():
    from selenium import webdriver
    from time import sleep
    from selenium.webdriver.chrome.service import Service
    from selenium.webdriver.support.ui import WebDriverWait
    from selenium.webdriver.support import expected_conditions as EC
    from selenium.webdriver.support.select import Select
    from selenium.webdriver.common.action_chains import ActionChains
    from bs4 import BeautifulSoup
    import codecs
    import re
    from webdriver_manager.chrome import ChromeDriverManager
    from selenium.webdriver.common.by import By
    from selenium.webdriver.support import expected_conditions as EC

    driver = webdriver.Chrome(executable_path="/Users/s546761/Documents/chromedriver")
    driver.get("http://calendar.nwmissouri.edu")
    sleep(2)

    #f=open("file.txt","w")
    s=""
    b=driver.find_elements(By.CLASS_NAME,"event-data")
    #for i in b:
        #s+=i.text
        #print(i)
    c=driver.find_elements(By.CLASS_NAME,"event-listing-name")#.find_elements(By.TAG_NAME,"a")
    #print(c)
    l=[];x=1
    for i in range(2):
        c=driver.find_elements(By.CLASS_NAME,"event-listing-name")#.find_elements(By.TAG_NAME,"a")
        #print(i.find_element(By.TAG_NAME,"a").text)
        c[i].find_element(By.TAG_NAME,"a").click() 
        sleep(1)
        a=driver.find_elements(By.CLASS_NAME,"content")
        x+=1
        for j in a:
            for k in j.text.split("\n"):
                s+=k+"<br>"
            s+="<br>"
        driver.back()
        sleep(1)
    from flask import Flask

    app = Flask(__name__)

    @app.route('/')
    def func():
        return s

    if __name__ == '__main__':
        app.run()
    
from datetime import datetime
from threading import Timer

x=datetime.today()
y=x.replace(day=x.day+1, hour=8, minute=51, second=0, microsecond=0)
delta_t=y-x

secs=delta_t.seconds+1

t = Timer(secs, func)
t.start()
```


```python

```


```python
from selenium import webdriver
from time import sleep
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.select import Select
from selenium.webdriver.common.action_chains import ActionChains
from bs4 import BeautifulSoup
import codecs
import re
from webdriver_manager.chrome import ChromeDriverManager
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC

driver = webdriver.Chrome(executable_path="/Users/s546761/Documents/chromedriver")
driver.get("http://calendar.nwmissouri.edu")
sleep(2)

    #f=open("file.txt","w")
s=""
b=driver.find_elements(By.CLASS_NAME,"event-data")
    #for i in b:
        #s+=i.text
        #print(i)
c=driver.find_elements(By.CLASS_NAME,"event-listing-name")#.find_elements(By.TAG_NAME,"a")
    #print(c)
l=[];x=1
for i in range(5):
    c=driver.find_elements(By.CLASS_NAME,"event-listing-name")#.find_elements(By.TAG_NAME,"a")
    #print(i.find_element(By.TAG_NAME,"a").text)
    c[i].find_element(By.TAG_NAME,"a").click() 
    sleep(1)
    a=driver.find_elements(By.CLASS_NAME,"content")
    x+=1
    for j in a:
        for k in j.text.split("\n"):
            s+=k+"<br>"
        s+="<br>"
    driver.back()
    sleep(1)
    
from flask import Flask, redirect, url_for, request

app = Flask(__name__)

@app.route('/')
def func():
    return s

if __name__ == '__main__':
    app.run()
    
```

    /var/folders/0j/6rlry4d959170vn1l9wgd1_424v2g3/T/ipykernel_18703/3958056332.py:15: DeprecationWarning: executable_path has been deprecated, please pass in a Service object
      driver = webdriver.Chrome(executable_path="/Users/s546761/Documents/chromedriver")


    1 
    --- 
    2 
    --- 
    3 
    --- 
    4 
    --- 
    5 
    --- 
     * Serving Flask app "__main__" (lazy loading)
     * Environment: production
    [31m   WARNING: This is a development server. Do not use it in a production deployment.[0m
    [2m   Use a production WSGI server instead.[0m
     * Debug mode: off


     * Running on http://127.0.0.1:5000/ (Press CTRL+C to quit)
    127.0.0.1 - - [09/Oct/2022 15:06:48] "GET / HTTP/1.1" 200 -



```python
from flask import Flask, request
app = Flask(__name__)

with app.test_request_context('/', method='POST'):
    assert request.path == '/'
    assert request.method == 'POST'
    print("hi")

    
@app.route('/',methods=['GET','POST'])
def hello_world():    
        return "hello"

if __name__ == '__main__':
    app.run()
```

    hi
     * Serving Flask app "__main__" (lazy loading)
     * Environment: production
    [31m   WARNING: This is a development server. Do not use it in a production deployment.[0m
    [2m   Use a production WSGI server instead.[0m
     * Debug mode: off


     * Running on http://127.0.0.1:5000/ (Press CTRL+C to quit)



```python

```


```python
from flask import Flask, request, jsonify
import sys
# Workaround - otherwise doesn't work in windows service.
cli = sys.modules['flask.cli']
cli.show_server_banner = lambda *x: None

app = Flask(__name__)

# ... business logic endpoints are skipped.

@app.route("/shutdown", methods=['GET'])
def shutdown():
    shutdown_func = request.environ.get('werkzeug.server.shutdown')
    if shutdown_func is None:
        raise RuntimeError('Not running werkzeug')
    shutdown_func()
    return "Shutting down..."


def start():
    app.run(threaded=True)


def stop():
    import requests
    resp = requests.get('/shutdown')

if __name__ == '__main__':
    app.run()
```

    WARNING: This is a development server. Do not use it in a production deployment. Use a production WSGI server instead.
     * Running on http://127.0.0.1:5000
    Press CTRL+C to quit
    127.0.0.1 - - [14/Oct/2022 08:41:48] "GET / HTTP/1.1" 404 -



```python
from flask import request

def shutdown_server():
    func = request.environ.get('werkzeug.server.shutdown')
    if func is None:
        raise RuntimeError('Not running with the Werkzeug Server')
    func()

@app.route('/shutdown', methods=['POST'])
def shutdown():
    shutdown_server()
    return 'Server shutting down...'
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    Input In [1], in <cell line: 9>()
          6         raise RuntimeError('Not running with the Werkzeug Server')
          7     func()
    ----> 9 @app.route('/shutdown', methods=['POST'])
         10 def shutdown():
         11     shutdown_server()
         12     return 'Server shutting down...'


    NameError: name 'app' is not defined



```python
from flask import Flask, redirect, url_for, request
import threading

def abc():
    app = Flask(__name__)

    @app.route('/')
    def func():
        return "hello"

    if __name__ == '__main__':
        app.run()
def aaa():
    print("hello")
t1=threading.Thread(target=abc)
t2=threading.Thread(target=aaa)

t1.start()
t2.start()
t1.join()
t2.join()
```


```python
from multiprocessing import Process
from flask import Flask, redirect, url_for, request

app = Flask(__name__)

@app.route('/')
def func():
    return "hello"

if __name__ == '__main__':
    app.run(threaded=True)

server = Process(target=app.run)
server.start()

server.terminate()
server.join()
```

     * Serving Flask app '__main__'
     * Debug mode: off


    Address already in use
    Port 5000 is in use by another program. Either identify and stop that program, or start the server with a different port.
    On macOS, try disabling the 'AirPlay Receiver' service from System Preferences -> Sharing.



    ---------------------------------------------------------------------------

    OSError                                   Traceback (most recent call last)

    File /opt/anaconda3/lib/python3.9/site-packages/werkzeug/serving.py:911, in prepare_socket(hostname, port)
        910 try:
    --> 911     s.bind(server_address)
        912 except OSError as e:


    OSError: [Errno 48] Address already in use

    
    During handling of the above exception, another exception occurred:


    SystemExit                                Traceback (most recent call last)

        [... skipping hidden 1 frame]


    Input In [2], in <cell line: 10>()
         10 if __name__ == '__main__':
    ---> 11     app.run(threaded=True)
         13 server = Process(target=app.run)


    File /opt/anaconda3/lib/python3.9/site-packages/flask/app.py:1188, in Flask.run(self, host, port, debug, load_dotenv, **options)
       1187 try:
    -> 1188     run_simple(t.cast(str, host), port, self, **options)
       1189 finally:
       1190     # reset the first request information if the development server
       1191     # reset normally.  This makes it possible to restart the server
       1192     # without reloader and that stuff from an interactive shell.


    File /opt/anaconda3/lib/python3.9/site-packages/werkzeug/serving.py:1062, in run_simple(hostname, port, application, use_reloader, use_debugger, use_evalex, extra_files, exclude_patterns, reloader_interval, reloader_type, threaded, processes, request_handler, static_files, passthrough_errors, ssl_context)
       1061 if not is_running_from_reloader():
    -> 1062     s = prepare_socket(hostname, port)
       1063     fd = s.fileno()


    File /opt/anaconda3/lib/python3.9/site-packages/werkzeug/serving.py:930, in prepare_socket(hostname, port)
        924             print(
        925                 "On macOS, try disabling the 'AirPlay Receiver'"
        926                 " service from System Preferences -> Sharing.",
        927                 file=sys.stderr,
        928             )
    --> 930     sys.exit(1)
        932 s.listen(LISTEN_QUEUE)


    SystemExit: 1

    
    During handling of the above exception, another exception occurred:


    AssertionError                            Traceback (most recent call last)

        [... skipping hidden 1 frame]


    File /opt/anaconda3/lib/python3.9/site-packages/IPython/core/interactiveshell.py:1972, in InteractiveShell.showtraceback(self, exc_tuple, filename, tb_offset, exception_only, running_compiled_code)
       1969 if exception_only:
       1970     stb = ['An exception has occurred, use %tb to see '
       1971            'the full traceback.\n']
    -> 1972     stb.extend(self.InteractiveTB.get_exception_only(etype,
       1973                                                      value))
       1974 else:
       1975     try:
       1976         # Exception classes can customise their traceback - we
       1977         # use this in IPython.parallel for exceptions occurring
       1978         # in the engines. This should return a list of strings.


    File /opt/anaconda3/lib/python3.9/site-packages/IPython/core/ultratb.py:585, in ListTB.get_exception_only(self, etype, value)
        577 def get_exception_only(self, etype, value):
        578     """Only print the exception type and message, without a traceback.
        579 
        580     Parameters
       (...)
        583     value : exception value
        584     """
    --> 585     return ListTB.structured_traceback(self, etype, value)


    File /opt/anaconda3/lib/python3.9/site-packages/IPython/core/ultratb.py:443, in ListTB.structured_traceback(self, etype, evalue, etb, tb_offset, context)
        440     chained_exc_ids.add(id(exception[1]))
        441     chained_exceptions_tb_offset = 0
        442     out_list = (
    --> 443         self.structured_traceback(
        444             etype, evalue, (etb, chained_exc_ids),
        445             chained_exceptions_tb_offset, context)
        446         + chained_exception_message
        447         + out_list)
        449 return out_list


    File /opt/anaconda3/lib/python3.9/site-packages/IPython/core/ultratb.py:1118, in AutoFormattedTB.structured_traceback(self, etype, value, tb, tb_offset, number_of_lines_of_context)
       1116 else:
       1117     self.tb = tb
    -> 1118 return FormattedTB.structured_traceback(
       1119     self, etype, value, tb, tb_offset, number_of_lines_of_context)


    File /opt/anaconda3/lib/python3.9/site-packages/IPython/core/ultratb.py:1012, in FormattedTB.structured_traceback(self, etype, value, tb, tb_offset, number_of_lines_of_context)
       1009 mode = self.mode
       1010 if mode in self.verbose_modes:
       1011     # Verbose modes need a full traceback
    -> 1012     return VerboseTB.structured_traceback(
       1013         self, etype, value, tb, tb_offset, number_of_lines_of_context
       1014     )
       1015 elif mode == 'Minimal':
       1016     return ListTB.get_exception_only(self, etype, value)


    File /opt/anaconda3/lib/python3.9/site-packages/IPython/core/ultratb.py:865, in VerboseTB.structured_traceback(self, etype, evalue, etb, tb_offset, number_of_lines_of_context)
        856 def structured_traceback(
        857     self,
        858     etype: type,
       (...)
        862     number_of_lines_of_context: int = 5,
        863 ):
        864     """Return a nice text document describing the traceback."""
    --> 865     formatted_exception = self.format_exception_as_a_whole(etype, evalue, etb, number_of_lines_of_context,
        866                                                            tb_offset)
        868     colors = self.Colors  # just a shorthand + quicker name lookup
        869     colorsnormal = colors.Normal  # used a lot


    File /opt/anaconda3/lib/python3.9/site-packages/IPython/core/ultratb.py:799, in VerboseTB.format_exception_as_a_whole(self, etype, evalue, etb, number_of_lines_of_context, tb_offset)
        796 assert isinstance(tb_offset, int)
        797 head = self.prepare_header(etype, self.long_header)
        798 records = (
    --> 799     self.get_records(etb, number_of_lines_of_context, tb_offset) if etb else []
        800 )
        802 frames = []
        803 skipped = 0


    File /opt/anaconda3/lib/python3.9/site-packages/IPython/core/ultratb.py:854, in VerboseTB.get_records(self, etb, number_of_lines_of_context, tb_offset)
        848     formatter = None
        849 options = stack_data.Options(
        850     before=before,
        851     after=after,
        852     pygments_formatter=formatter,
        853 )
    --> 854 return list(stack_data.FrameInfo.stack_data(etb, options=options))[tb_offset:]


    File /opt/anaconda3/lib/python3.9/site-packages/stack_data/core.py:546, in FrameInfo.stack_data(cls, frame_or_tb, options, collapse_repeated_frames)
        530 @classmethod
        531 def stack_data(
        532         cls,
       (...)
        536         collapse_repeated_frames: bool = True
        537 ) -> Iterator[Union['FrameInfo', RepeatedFrames]]:
        538     """
        539     An iterator of FrameInfo and RepeatedFrames objects representing
        540     a full traceback or stack. Similar consecutive frames are collapsed into RepeatedFrames
       (...)
        544     and optionally an Options object to configure.
        545     """
    --> 546     stack = list(iter_stack(frame_or_tb))
        548     # Reverse the stack from a frame so that it's in the same order
        549     # as the order from a traceback, which is the order of a printed
        550     # traceback when read top to bottom (most recent call last)
        551     if is_frame(frame_or_tb):


    File /opt/anaconda3/lib/python3.9/site-packages/stack_data/utils.py:98, in iter_stack(frame_or_tb)
         96 while frame_or_tb:
         97     yield frame_or_tb
    ---> 98     if is_frame(frame_or_tb):
         99         frame_or_tb = frame_or_tb.f_back
        100     else:


    File /opt/anaconda3/lib/python3.9/site-packages/stack_data/utils.py:91, in is_frame(frame_or_tb)
         90 def is_frame(frame_or_tb: Union[FrameType, TracebackType]) -> bool:
    ---> 91     assert_(isinstance(frame_or_tb, (types.FrameType, types.TracebackType)))
         92     return isinstance(frame_or_tb, (types.FrameType,))


    File /opt/anaconda3/lib/python3.9/site-packages/stack_data/utils.py:172, in assert_(condition, error)
        170 if isinstance(error, str):
        171     error = AssertionError(error)
    --> 172 raise error


    AssertionError: 


    127.0.0.1 - - [14/Oct/2022 10:01:26] "GET / HTTP/1.1" 200 -



```python

```


```python
def func():
    from selenium import webdriver
    from time import sleep
    from selenium.webdriver.chrome.service import Service
    from selenium.webdriver.support.ui import WebDriverWait
    from selenium.webdriver.support import expected_conditions as EC
    from selenium.webdriver.support.select import Select
    from selenium.webdriver.common.action_chains import ActionChains
    from bs4 import BeautifulSoup
    import codecs
    import re
    from webdriver_manager.chrome import ChromeDriverManager
    from selenium.webdriver.common.by import By
    from selenium.webdriver.support import expected_conditions as EC

    driver = webdriver.Chrome(executable_path="/Users/s546761/Documents/chromedriver")
    driver.get("http://calendar.nwmissouri.edu")
    sleep(2)

    #f=open("file.txt","w")
    s=""
    b=driver.find_elements(By.CLASS_NAME,"event-data")
    #for i in b:
        #s+=i.text
        #print(i)
    c=driver.find_elements(By.CLASS_NAME,"event-listing-name")#.find_elements(By.TAG_NAME,"a")
    #print(c)
    l=[];x=1
    for i in range(2):
        c=driver.find_elements(By.CLASS_NAME,"event-listing-name")#.find_elements(By.TAG_NAME,"a")
        #print(i.find_element(By.TAG_NAME,"a").text)
        c[i].find_element(By.TAG_NAME,"a").click() 
        sleep(1)
        a=driver.find_elements(By.CLASS_NAME,"content")
        x+=1
        for j in a:
            for k in j.text.split("\n"):
                s+=k+"<br>"
            s+="<br>"
        driver.back()
        sleep(1)
    from flask import Flask

    app = Flask(__name__)

    @app.route('/')
    def func():
        return s

    if __name__ == '__main__':
        app.run()
    
from datetime import datetime
from threading import Timer

x=datetime.today()
y=x.replace(day=x.day+1, hour=8, minute=51, second=0, microsecond=0)
delta_t=y-x

secs=delta_t.seconds+1

t = Timer(secs, func)
t.start()
```


```python
from flask import Flask, request, jsonify
import sys
# Workaround - otherwise doesn't work in windows service.
cli = sys.modules['flask.cli']
cli.show_server_banner = lambda *x: None

app = Flask(__name__)

# ... business logic endpoints are skipped.

@app.route("/shutdown", methods=['GET'])
def shutdown():
    shutdown_func = request.environ.get('werkzeug.server.shutdown')
    if shutdown_func is None:
        raise RuntimeError('Not running werkzeug')
    shutdown_func()
    return "Shutting down..."


def start():
    app.run(threaded=True)


def stop():
    import requests
    resp = requests.get('/shutdown')

if __name__ == '__main__':
    app.run()
```


```python

```
