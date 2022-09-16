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


```python

```
