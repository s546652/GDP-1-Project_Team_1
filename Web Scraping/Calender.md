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
```


```python
driver = webdriver.Chrome(executable_path="/Users/s546761/Documents/chromedriver")
driver.get("http://calendar.nwmissouri.edu")
sleep(2)
```

    /var/folders/0j/6rlry4d959170vn1l9wgd1_424v2g3/T/ipykernel_38315/3517672487.py:1: DeprecationWarning: executable_path has been deprecated, please pass in a Service object
      driver = webdriver.Chrome(executable_path="/Users/s546761/Documents/chromedriver")



```python
a=driver.find_element(By.CLASS_NAME,"content")
print(a)
```

    <selenium.webdriver.remote.webelement.WebElement (session="f6f2717511413c39e70675cf422148f2", element="e476c24a-c4e5-4ef6-83f2-2dfc18358ee2")>



```python
#dir(a)
```


```python
#a.text
```


```python
f=open("file.txt","w")
s=""
b=driver.find_elements(By.CLASS_NAME,"event-data")
for i in b:
    s+=i.text
    print(i.text)
    f.write(i.text)
f.close()
```

    Observance: National Hispanic Heritage Month
    This month honors the culture and contributions of both Hispanic and Latino Americans
    150 Views   updated 43 d ago
    Student Payday
    62 Views   posted 57 d ago
    Soccer vs Fort Hays State
    Bearcat PitchThe Northwest soccer team takes on Fort Hays State at Bearcat Pitch.
    Watch : https://www.themiaanetwork.com/nwmsubearcats/
    Stats :...
    62 Views   posted 43 d ago
    Student-Directed Lab Series - Aunt Leaf by Barbara Wiechmann
    Ron Houston Center for the Performing Arts
    22 Views   updated 21 hr 42 min ago
    Football at Central Oklahoma
    Edmond, OK
    111 Views   updated 129 d ago
    Observance: National Hispanic Heritage Month
    This month honors the culture and contributions of both Hispanic and Latino Americans
    150 Views   updated 43 d ago
    Powering Dreams: A Celebration of Donors & Scholars
    Agricultural Learning Center
    119 Views   posted 135 d ago
    Saturday Campus Visit
    J.W. Jones Student UnionThe 90-minute walking group tour is led by a Northwest student ambassador who will share his or her individual experiences about Northwest and some...
    109 Views   posted 142 d ago
    Volleyball at Missouri Southern
    Robert Ellis Young GymnasiumThe Northwest volleyball team begins a 5-match roadtrip by taking on Missouri Southern.
    Watch : https://themiaanetwork.com/mssulions/
    Stats :...
    43 Views   posted 43 d ago
    Student-Directed Lab Series - Aunt Leaf by Barbara Wiechmann
    Ron Houston Center for the Performing Arts
    18 Views   updated 21 hr 42 min ago
    Observance: National Hispanic Heritage Month
    This month honors the culture and contributions of both Hispanic and Latino Americans
    150 Views   updated 43 d ago
    Soccer vs Nebraska-Kearney
    Bearcat PitchThe Northwest soccer team battles the Lopers on Sunday afternoon.
    Watch : https://www.themiaanetwork.com/nwmsubearcats/
    Stats :...
    52 Views   posted 43 d ago



```python
c=driver.find_elements(By.CLASS_NAME,"calendarControl")
for i in c:
    print(i.text)
```

    < September 2022 >
    S M T W T F S
    1 2 3
    4 5 6 7 8 9 10
    11 12 13 14 15 16 17
    18 19 20 21 22 23 24
    25 26 27 28 29 30



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

    <selenium.webdriver.remote.webelement.WebElement (session="f6f2717511413c39e70675cf422148f2", element="cfb66272-f7ad-4db1-9dfb-24e08b054f87")>
    1



```python
from flask import Flask

app = Flask(__name__)

@app.route('/')
def func():
    return s

if __name__ == '__main__':
    app.run()
```

     * Serving Flask app "__main__" (lazy loading)
     * Environment: production
    [31m   WARNING: This is a development server. Do not use it in a production deployment.[0m
    [2m   Use a production WSGI server instead.[0m
     * Debug mode: off


     * Running on http://127.0.0.1:5000/ (Press CTRL+C to quit)
    127.0.0.1 - - [23/Sep/2022 08:25:48] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [23/Sep/2022 08:26:06] "GET / HTTP/1.1" 200 -



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
