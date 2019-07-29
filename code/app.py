"""
@author: magician
@file: app.py
@date: 2019/7/29
"""
from flask import Flask
from redis import Redis

app = Flask(__name__)
redis = Redis(host='redis', port=6379)


@app.route('/')
def hello():
    count = redis.incr('hits')
    return 'Hello World! 该页面已被访问 {} 次。\n'.format(count)


if __name__ == '__main__':
    app.run(host='0.0.0.0', port='6666', debug=True)
