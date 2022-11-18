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

    /var/folders/0j/6rlry4d959170vn1l9wgd1_424v2g3/T/ipykernel_7853/3517672487.py:1: DeprecationWarning: executable_path has been deprecated, please pass in a Service object
      driver = webdriver.Chrome(executable_path="/Users/s546761/Documents/chromedriver")



```python
a=driver.find_element(By.CLASS_NAME,"content")
print(a)
```

    <selenium.webdriver.remote.webelement.WebElement (session="1cf900e7dc5460c28b61f2a16ddde77e", element="1644f0e8-1930-44ab-8f93-095acbb33b31")>



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
for i in range(2):
    c=driver.find_elements(By.CLASS_NAME,"event-listing-name")#.find_elements(By.TAG_NAME,"a")
    #print(i.find_element(By.TAG_NAME,"a").text)
    c[i].find_element(By.TAG_NAME,"a").click() 
    sleep(1)
    a=driver.find_elements(By.CLASS_NAME,"content")
    #print(x,"\n--- ");x+=1
    for j in a:
        #print(j.text,end="\n")
        s+=j.text+"\n"
    driver.back()
    sleep(1)
    
print(s)

```

    Homecoming Spirit Days (Horace Mann / Preschool)
    Horace Mann Laboratory School
    
    Monday, October 17, 2022 -
    Thursday, October 20, 2022
    
    
    Contact Info
    LaTessa Ruehter
    latessa@nwmissouri.edu
    (660) 562-1233
    
    Calendars: Other 
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
    



```python
#project
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

driver = webdriver.Chrome(executable_path="/Users/s546761/Documents/chromedriver")
driver.get("http://calendar.nwmissouri.edu")
sleep(2)
#//*[@id="calendar_control"]/table/tbody/tr[3]
#//*[@id="calendar_control"]/table/tbody/tr[3]/td[2]
#print(date.today().day)
z=0;p=date.today().day;f=p
d=driver.find_element(By.XPATH,'''//*[@id="calendar_control"]/table/tbody/tr[1]/td[3]/a''')
for i in range(3,9):
    for j in range(1,8):
        #ss="//*[@id=calendar_control]/table/tbody/tr["+str(i)+"]/td["+str(j)+"]"
        m=driver.find_elements(By.XPATH,'''//*[@id="calendar_control"]/table/tbody/tr['''+str(i)+''']/td['''+str(j)+''']''')
        for k in range(len(m)):
            m=driver.find_elements(By.XPATH,'''//*[@id="calendar_control"]/table/tbody/tr['''+str(i)+''']/td['''+str(j)+''']''')
            #print(k.text)
            if m[k].text==(str)(date.today().day):
               # print(m[k].text)
                z+=1
            if z==1:
                if int(m[k].text)<f+3:
                    print(m[k].text,f)
                    continue
                f+=3
                print(f)
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
                    #print(x,"\n--- ");x+=1
                    for w in a:
                        #print(w.text,end="\n")
                        s+=w.text+"<br>"
                    driver.back()
                    sleep(1)
                m=driver.find_elements(By.XPATH,'''//*[@id="calendar_control"]/table/tbody/tr['''+str(i)+''']/td['''+str(j)+''']''')
                #print(m[k].text)
                m[k].click()
                m=driver.find_elements(By.XPATH,'''//*[@id="calendar_control"]/table/tbody/tr['''+str(i)+''']/td['''+str(j)+''']''')
            if str(m[k].text)==str(31):
                f=1;i=2
                d=driver.find_element(By.XPATH,'''//*[@id="calendar_control"]/table/tbody/tr[1]/td[3]/a''')
                d.click()
                
from flask import Flask, redirect, url_for, request

app = Flask(__name__)

@app.route('/')
def func():
    return s

if __name__ == '__main__':
    app.run(threaded=True)
```

    /var/folders/0j/6rlry4d959170vn1l9wgd1_424v2g3/T/ipykernel_7853/315381675.py:16: DeprecationWarning: executable_path has been deprecated, please pass in a Service object
      driver = webdriver.Chrome(executable_path="/Users/s546761/Documents/chromedriver")


    5 5
    6 5
    7 5
    8
    9 8
    10 8
    11



    ---------------------------------------------------------------------------

    KeyboardInterrupt                         Traceback (most recent call last)

    Input In [3], in <cell line: 24>()
         50 #print(i.find_element(By.TAG_NAME,"a").text)
         51 c[y].find_element(By.TAG_NAME,"a").click() 
    ---> 52 sleep(1)
         53 a=driver.find_elements(By.CLASS_NAME,"content")
         54 #print(x,"\n--- ");x+=1


    KeyboardInterrupt: 



```python
from flask import Flask, redirect, url_for, request

app = Flask(__name__)

@app.route('/')
def func():
    return s

if __name__ == '__main__':
    app.run(threaded=True)
```

     * Serving Flask app '__main__'
     * Debug mode: off


    WARNING: This is a development server. Do not use it in a production deployment. Use a production WSGI server instead.
     * Running on http://127.0.0.1:5000
    Press CTRL+C to quit
    127.0.0.1 - - [24/Oct/2022 08:41:25] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [24/Oct/2022 08:46:51] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [24/Oct/2022 08:47:15] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [24/Oct/2022 08:48:00] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [24/Oct/2022 08:48:33] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [24/Oct/2022 08:48:46] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [24/Oct/2022 08:49:01] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [24/Oct/2022 08:50:02] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [24/Oct/2022 08:50:10] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [24/Oct/2022 08:50:34] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [24/Oct/2022 08:50:42] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [24/Oct/2022 08:50:59] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [24/Oct/2022 08:51:07] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [24/Oct/2022 09:15:25] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [24/Oct/2022 09:16:01] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [24/Oct/2022 09:16:12] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [24/Oct/2022 09:18:00] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [24/Oct/2022 09:18:54] "GET / HTTP/1.1" 200 -



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


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    Input In [1], in <cell line: 13>()
         10 def func():
         11     print("hello world")
    ---> 13 t = Timer(secs, s)
         14 t.start()


    NameError: name 's' is not defined



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
    import html_to_json

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
    for i in range(len(c)):
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
        #ss= html_to_json.convert(s)
        #print(ss)
    from flask import Flask

    app = Flask(__name__)

    @app.route('/')
    def func():
        return s

    if __name__ == '__main__':
        app.run()
        
func()
```

    /var/folders/0j/6rlry4d959170vn1l9wgd1_424v2g3/T/ipykernel_14726/2534091673.py:17: DeprecationWarning: executable_path has been deprecated, please pass in a Service object
      driver = webdriver.Chrome(executable_path="/Users/s546761/Documents/chromedriver")


     * Serving Flask app '__main__'
     * Debug mode: off


    WARNING: This is a development server. Do not use it in a production deployment. Use a production WSGI server instead.
     * Running on http://127.0.0.1:5000
    Press CTRL+C to quit
    127.0.0.1 - - [22/Oct/2022 11:22:55] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [22/Oct/2022 11:22:55] "GET /apple-touch-icon-precomposed.png HTTP/1.1" 404 -
    127.0.0.1 - - [22/Oct/2022 11:22:55] "GET /apple-touch-icon.png HTTP/1.1" 404 -
    127.0.0.1 - - [22/Oct/2022 11:22:55] "GET /favicon.ico HTTP/1.1" 404 -



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
    import html_to_json

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
        #ss= html_to_json.convert(s)
        #print(ss)
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
y=x.replace(day=x.day+1, hour=17, minute=36, second=0, microsecond=0)
delta_t=y-x

secs=delta_t.seconds+1

t = Timer(secs, func)
t.start()
```

    /var/folders/0j/6rlry4d959170vn1l9wgd1_424v2g3/T/ipykernel_18869/118520311.py:17: DeprecationWarning: executable_path has been deprecated, please pass in a Service object
      driver = webdriver.Chrome(executable_path="/Users/s546761/Documents/chromedriver")


     * Serving Flask app '__main__'
     * Debug mode: off


    WARNING: This is a development server. Do not use it in a production deployment. Use a production WSGI server instead.
     * Running on http://127.0.0.1:5000
    Press CTRL+C to quit
    127.0.0.1 - - [17/Oct/2022 17:36:42] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [17/Oct/2022 17:36:56] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [17/Oct/2022 17:37:13] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [17/Oct/2022 17:37:26] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [17/Oct/2022 17:37:38] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [17/Oct/2022 17:38:01] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [17/Oct/2022 17:42:34] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [17/Oct/2022 17:43:04] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [17/Oct/2022 17:45:14] "GET / HTTP/1.1" 200 -



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
for i in range((len(c))):
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

    /var/folders/0j/6rlry4d959170vn1l9wgd1_424v2g3/T/ipykernel_14566/2903757830.py:15: DeprecationWarning: executable_path has been deprecated, please pass in a Service object
      driver = webdriver.Chrome(executable_path="/Users/s546761/Documents/chromedriver")


     * Serving Flask app '__main__'
     * Debug mode: off


    WARNING: This is a development server. Do not use it in a production deployment. Use a production WSGI server instead.
     * Running on http://127.0.0.1:5000
    Press CTRL+C to quit



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
from flask import Flask, redirect, url_for, request

app = Flask(__name__)

@app.route('/')
def func():
    return s

if __name__ == '__main__':
    app.run(threaded=True)


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


    Input In [20], in <cell line: 9>()
          9 if __name__ == '__main__':
    ---> 10     app.run(threaded=True)


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
y=x.replace(day=x.day+1, hour=8, minute=46, second=0, microsecond=0)
delta_t=y-x

secs=delta_t.seconds+1

t = Timer(secs, func)
t.start()
```

    127.0.0.1 - - [17/Oct/2022 08:45:39] "GET / HTTP/1.1" 200 -
    /var/folders/0j/6rlry4d959170vn1l9wgd1_424v2g3/T/ipykernel_11696/1590071983.py:16: DeprecationWarning: executable_path has been deprecated, please pass in a Service object
      driver = webdriver.Chrome(executable_path="/Users/s546761/Documents/chromedriver")


     * Serving Flask app '__main__'
     * Debug mode: off


    Address already in use
    Port 5000 is in use by another program. Either identify and stop that program, or start the server with a different port.
    On macOS, try disabling the 'AirPlay Receiver' service from System Preferences -> Sharing.
    127.0.0.1 - - [17/Oct/2022 08:46:32] "GET / HTTP/1.1" 200 -



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
from flask import Flask, redirect, url_for, request

app = Flask(__name__)

@app.route('/')
def func():
    return "hello"

if __name__ == '__main__':
    app.run(threaded=True)
```


```python
import os
import signal
os.kill(p.pid,signal.SIGINT)
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    Input In [1], in <cell line: 3>()
          1 import os
          2 import signal
    ----> 3 os.kill(p.pid,signal.SIGINT)


    NameError: name 'p' is not defined



```python
from pynput.keyboard import Key, Controller

keyboard = Controller()
key = "a"

keyboard.press(key)
keyboard.release(key)
```


```python
import pyautogui

# Holds down the alt key
pyautogui.press("alt")

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
from datetime import date

driver = webdriver.Chrome(executable_path="/Users/s546761/Documents/chromedriver")
driver.get("http://calendar.nwmissouri.edu")
sleep(2)
#//*[@id="calendar_control"]/table/tbody/tr[3]
#//*[@id="calendar_control"]/table/tbody/tr[3]/td[2]
#print(date.today().day)
z=0;p=date.today().day;f=p
d=driver.find_element(By.XPATH,'''//*[@id="calendar_control"]/table/tbody/tr[1]/td[3]/a''')
for i in range(3,9):
    for j in range(1,8):
        #ss="//*[@id=calendar_control]/table/tbody/tr["+str(i)+"]/td["+str(j)+"]"
        m=driver.find_elements(By.XPATH,'''//*[@id="calendar_control"]/table/tbody/tr['''+str(i)+''']/td['''+str(j)+''']''')
        for k in range(len(m)):
            m=driver.find_elements(By.XPATH,'''//*[@id="calendar_control"]/table/tbody/tr['''+str(i)+''']/td['''+str(j)+''']''')
            #print(k.text)
            if m[k].text==(str)(date.today().day):
               # print(m[k].text)
                z+=1
            if z==1:
                if int(m[k].text)<f+3:
                    print(m[k].text,f)
                    continue
                f+=3
                print(f)
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
                    #print(x,"\n--- ");x+=1
                    for w in a:
                        for ww in w.text.split("\n"):
                        #print(w.text,end="\n")
                            s+=ww+"<br>"
                        #s+="<br>"
                    driver.back()
                    sleep(1)
                m=driver.find_elements(By.XPATH,'''//*[@id="calendar_control"]/table/tbody/tr['''+str(i)+''']/td['''+str(j)+''']''')
                #print(m[k].text)
                m[k].click()
                m=driver.find_elements(By.XPATH,'''//*[@id="calendar_control"]/table/tbody/tr['''+str(i)+''']/td['''+str(j)+''']''')
            if str(m[k].text)==str(31):
                f=1;i=2
                d=driver.find_element(By.XPATH,'''//*[@id="calendar_control"]/table/tbody/tr[1]/td[3]/a''')
                d.click()
                
```

    /var/folders/0j/6rlry4d959170vn1l9wgd1_424v2g3/T/ipykernel_72828/3259006256.py:16: DeprecationWarning: executable_path has been deprecated, please pass in a Service object
      driver = webdriver.Chrome(executable_path="/Users/s546761/Documents/chromedriver")


    27 27
    28 27
    29 27
    30
    31 30



```python
from flask import Flask, redirect, url_for, request

app = Flask(__name__)

@app.route('/')
def func():
    return s

if __name__ == '__main__':
    app.run(threaded=True)
```

     * Serving Flask app '__main__'
     * Debug mode: off


    WARNING: This is a development server. Do not use it in a production deployment. Use a production WSGI server instead.
     * Running on http://127.0.0.1:5000
    Press CTRL+C to quit
    127.0.0.1 - - [27/Oct/2022 22:15:59] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [27/Oct/2022 22:19:03] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [27/Oct/2022 22:19:20] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [27/Oct/2022 22:52:59] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [27/Oct/2022 22:54:05] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [27/Oct/2022 22:54:24] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [27/Oct/2022 22:55:01] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [27/Oct/2022 22:55:40] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [27/Oct/2022 22:56:20] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [27/Oct/2022 22:56:38] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [27/Oct/2022 22:57:22] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [27/Oct/2022 22:57:55] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [27/Oct/2022 22:58:25] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [27/Oct/2022 22:58:34] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [27/Oct/2022 22:58:41] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [27/Oct/2022 22:59:40] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [27/Oct/2022 23:00:29] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [27/Oct/2022 23:06:30] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [27/Oct/2022 23:06:49] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [27/Oct/2022 23:06:57] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [27/Oct/2022 23:07:09] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [27/Oct/2022 23:07:21] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [27/Oct/2022 23:07:56] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [27/Oct/2022 23:08:02] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [27/Oct/2022 23:25:45] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [27/Oct/2022 23:25:55] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [27/Oct/2022 23:26:01] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [27/Oct/2022 23:26:10] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [27/Oct/2022 23:27:06] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [27/Oct/2022 23:27:17] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [27/Oct/2022 23:28:18] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [27/Oct/2022 23:37:44] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [27/Oct/2022 23:38:12] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [27/Oct/2022 23:39:13] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [27/Oct/2022 23:41:01] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [27/Oct/2022 23:41:50] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [27/Oct/2022 23:42:13] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [27/Oct/2022 23:42:54] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [27/Oct/2022 23:43:21] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [27/Oct/2022 23:44:32] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [27/Oct/2022 23:45:00] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [27/Oct/2022 23:46:32] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [27/Oct/2022 23:47:28] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [27/Oct/2022 23:50:29] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [27/Oct/2022 23:52:28] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [27/Oct/2022 23:56:33] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [27/Oct/2022 23:59:07] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [27/Oct/2022 23:59:55] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [28/Oct/2022 00:00:23] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [28/Oct/2022 00:00:47] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [28/Oct/2022 00:01:24] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [28/Oct/2022 00:08:31] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [28/Oct/2022 00:09:37] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [28/Oct/2022 00:11:06] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [28/Oct/2022 00:11:58] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [28/Oct/2022 00:13:11] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [28/Oct/2022 00:13:46] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [28/Oct/2022 00:14:07] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [28/Oct/2022 00:14:35] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [28/Oct/2022 00:19:06] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [28/Oct/2022 00:19:09] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [28/Oct/2022 00:19:47] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [28/Oct/2022 00:21:51] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [28/Oct/2022 00:22:12] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [28/Oct/2022 00:22:23] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [28/Oct/2022 00:22:35] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [28/Oct/2022 00:22:55] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [28/Oct/2022 00:23:35] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [28/Oct/2022 00:24:10] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [28/Oct/2022 00:26:17] "GET / HTTP/1.1" 200 -



```python

```


```python

```


```python
from flask import Flask, redirect, url_for, request

app = Flask(__name__)

@app.route('/')
def func():
    return "hello"

if __name__ == '__main__':
    app.run(threaded=True)
```

     * Serving Flask app '__main__'
     * Debug mode: off


    WARNING: This is a development server. Do not use it in a production deployment. Use a production WSGI server instead.
     * Running on http://127.0.0.1:5000
    Press CTRL+C to quit
    127.0.0.1 - - [17/Nov/2022 13:20:52] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [17/Nov/2022 13:20:52] "GET /apple-touch-icon-precomposed.png HTTP/1.1" 404 -
    127.0.0.1 - - [17/Nov/2022 13:20:52] "GET /favicon.ico HTTP/1.1" 404 -
    127.0.0.1 - - [17/Nov/2022 13:20:52] "GET /apple-touch-icon.png HTTP/1.1" 404 -



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


```python

```
