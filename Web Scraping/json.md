```python
from flask import Flask

app = Flask(__name__)

@app.route('/')
def func():
    f=open("file.txt","r")
    return f.read()

if __name__ == '__main__':
    app.run()
```

     * Serving Flask app "__main__" (lazy loading)
     * Environment: production
    [31m   WARNING: This is a development server. Do not use it in a production deployment.[0m
    [2m   Use a production WSGI server instead.[0m
     * Debug mode: off


     * Running on http://127.0.0.1:5000/ (Press CTRL+C to quit)
    127.0.0.1 - - [22/Sep/2022 23:09:35] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [22/Sep/2022 23:09:57] "GET / HTTP/1.1" 200 -



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
