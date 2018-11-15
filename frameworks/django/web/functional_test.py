from selenium import webdriver
from selenium.webdriver.firefox.options import Options

opts = Options()
opts.headless=True
browser = webdriver.Firefox(options=opts)
browser.get('http://localhost:8000')

assert 'Django' in browser.title
