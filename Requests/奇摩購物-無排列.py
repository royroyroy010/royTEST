"""此範例使用requests與BeautifulSoup"""
# from operator import itemgetter, attrgetter


import requests	#網路資源(URLs)擷取套件

from bs4 import BeautifulSoup #HTML剖析套件

s = [] #創建一個空串列

#使用request.get獲取網頁資訊
r = requests.get("https://tw.buy.yahoo.com/?catitemid=74080&act=2014fpbundle") 

#使用BeautifulSoup分析網頁資訊
bs = BeautifulSoup(r.text,"html.parser")

#透過'infolite'網路掛載工具搜尋".pds",或透過原始碼(F12)搜尋(ID前須加#,class前須加.)  
#透過 select 選擇擷取哪一個資訊
for item in bs.select(".pds"):	
	print(item.select('.nums')[0].text,item.select('.name')[0].text)


