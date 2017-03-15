"""此範例使用requests與BeautifulSoup"""
# from operator import itemgetter, attrgetter 


import requests	#網路資源(URLs)擷取套件

from bs4 import BeautifulSoup	#HTML剖析套件

s = []	#創建一個空串列

#使用request.get獲取網頁資訊
r = requests.get("https://tw.buy.yahoo.com/?catitemid=74080&act=2014fpbundle")

#使用BeautifulSoup分析網頁資訊
bs = BeautifulSoup(r.text,"html.parser")

#透過'infolite'網路掛載工具搜尋".pds",或透過原始碼(F12)搜尋(ID前須加#,class前須加.)  
#透過 select 選擇擷取哪一個資訊
for item in bs.select(".pds"):	
	# mix = (item.select('.nums')[0].text,item.select('.name')[0].text)	#將擷取資訊以tuple包裝起來(價格在前)
	mix = (item.select('.name')[0].text,item.select('.nums')[0].text)	#將擷取資訊以tuple包裝起來(描述在前)
	s.append(mix)	#新增到空串列中
# a = sorted(s,key=itemgetter(0))	#排列串列(描述在前,排序選擇第二項的'價格'排列)
a = sorted(s)	#排列串列
for c in range(9) :	#共9筆資料,故依序輸出9次
	print(a[c]) #c是0~8,填入a[c]串列中




