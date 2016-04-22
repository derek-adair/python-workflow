import asyncio
from aiohttp import web

@asyncio.coroutine
def handle(request):
    name = request.match_info.get('name', "Anonymous")
    text = "Hello, " + name
    return web.Response(body=text.encode('utf-8'))

my_web_app = web.Application()
my_web_app.router.add_route('GET', '/{name}', handle)
