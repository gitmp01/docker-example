import uwsgi
import redis


r = redis.Redis('redis')

def application(env, start_response):
    start_response('200 OK', [('Content-Type','text/html')])

    r.append('hello', 'world!')
    r.save()

    return [b"Hello World"]


