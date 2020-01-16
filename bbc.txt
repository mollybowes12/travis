from bs4 import BeautifulSoup
import requests

url = [r'https://www.bbc.co.uk/news']

titles = []

for i in url:
    r = requests.get(i)
    soup = BeautifulSoup(r.text, 'html.parser')
    tag = 'title'
    results = soup.find(tag).text
    titles.append(results)

print(titles)