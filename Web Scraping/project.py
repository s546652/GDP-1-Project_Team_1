#project
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
    from datetime import date

    driver = webdriver.Chrome(executable_path="/Users/s546761/Documents/chromedriver")
    driver.get("http://calendar.nwmissouri.edu")
    sleep(2)
    #//*[@id="calendar_control"]/table/tbody/tr[3]
    #//*[@id="calendar_control"]/table/tbody/tr[3]/td[2]
    #print(date.today().day)
    z=0;p=date.today().day;f=p;s=""
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
    
  