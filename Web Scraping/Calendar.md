```python
import requests
from bs4 import BeautifulSoup
url = requests.get("http://calendar.nwmissouri.edu")
```


```python
soup = BeautifulSoup(url.content, 'html.parser')
s = soup.find_all('td', class_='event-data')
#print(s)
for a in s:
    print(str(a.find('a'))[str(a.find('a')).find(">")+1:str(a.find('a')).rfind("<")])
```

    Observance: National Hispanic Heritage Month
    Second installment payment due
    Undecided Major Visit Day
    Dog Day Afternoon
    Exploring Majors and Minors
    Career Pathing: JEDI Program (Implicit Bias)
    <span class="new">Updated! </span> Visiting Writers Series: Jordan Stempleman &amp; Phong Nguyen
    Observance: National Hispanic Heritage Month
    Alumni Association Board Fall Meeting
    Intramural: Badminton Singles
    Family Weekend: Caribbean Nights
    Soccer at Missouri Southern
    Volleyball at Emporia State
    Cross Country at Woody Greeno/Jay Dirksen Invite
    Observance: National Hispanic Heritage Month
    Family Weekend 5K Run/Walk
    Family Weekend: Pancake Breakfast
    Saturday Campus Visit
    Bearcat Tailgate Zone
    Family Weekend: Street Sign Making
    Football vs Central Missouri (Family Weekend)
    Alumni Association Board Fall Meeting
    Family Weekend: Family Trivia Night
    Volleyball at Washburn



```python
#print(url.content)
```


```python
print(soup.find('div',class_='calendarControl'))
```

    <div class="calendarControl" id="calendar_control"></div>



```python
s=soup.find_all('td',class_='date date-cal-img')
for a in s:
    print(a)
```

    <td class="date date-cal-img"><a href="?d=2022-09-15" style="text-decoration:none;"><div class="month-year">Sep 2022</div><div class="day-num">15</div><div class="day-name">Thursday</div></a></td>
    <td class="date date-cal-img"><a href="?d=2022-09-16" style="text-decoration:none;"><div class="month-year">Sep 2022</div><div class="day-num">16</div><div class="day-name">Friday</div></a></td>
    <td class="date date-cal-img"><a href="?d=2022-09-17" style="text-decoration:none;"><div class="month-year">Sep 2022</div><div class="day-num">17</div><div class="day-name">Saturday</div></a></td>



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


```python

```


```python

```


```python

```


```python

```


```python

```


```python

```


```python

```


```python

```


```python

```


```python

```


```python

```
