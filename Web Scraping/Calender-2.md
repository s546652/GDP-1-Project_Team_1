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

    /var/folders/0j/6rlry4d959170vn1l9wgd1_424v2g3/T/ipykernel_1871/3517672487.py:1: DeprecationWarning: executable_path has been deprecated, please pass in a Service object
      driver = webdriver.Chrome(executable_path="/Users/s546761/Documents/chromedriver")



```python
a=driver.find_element(By.CLASS_NAME,"content")
print(a)
```

    <selenium.webdriver.remote.webelement.WebElement (session="e4632669d42cabf32ef6d985380fbb60", element="81996472-ee44-4ce1-9613-e7af3b142aee")>



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
l=[]
for i in c:
    #print(i.find_element(By.TAG_NAME,"a").text)
    print(i.text)
    i.find_element(By.TAG_NAME,"a").click() 
    sleep(1)
    a=driver.find_elements(By.CLASS_NAME,"content")
    for j in a:
        print(j.text,end="\n")
        s+=j.text+"\n"
    driver.back()
    sleep(1)
```


    ---------------------------------------------------------------------------

    TypeError                                 Traceback (most recent call last)

    Input In [125], in <cell line: 10>()
          9 l=[]
         10 for i in c:
    ---> 11     l+=i#.find_element(By.TAG_NAME,"a")
         12 for i in c:
         13     #print(i.find_element(By.TAG_NAME,"a").text)
         14     print(i.text)


    TypeError: 'WebElement' object is not iterable



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
    127.0.0.1 - - [02/Oct/2022 22:51:05] "GET / HTTP/1.1" 200 -



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

```

    hello world



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
