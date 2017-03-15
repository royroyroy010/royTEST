"""此範例使用requests與BeautifulSoup"""
"""使用post方式篩選資訊"""


import requests #網路資源(URLs)擷取套件

from bs4 import BeautifulSoup #HTML剖析套件

#post 先將所需資訊填進字典中,進入網站撈取時直接抓取所需資訊
payload = {
'StartStation':'2f940836-cedc-41ef-8e28-c2336ac8fe68',#南港站
'EndStation':'f2519629-5973-4d08-913b-479cce78a356',#左營站
'SearchDate':'2016/10/13',
'SearchTime':'08:00',
'SearchWay':'DepartureInMandarin'

}

#使用request.post獲取網頁資訊
res  = requests.post("https://www.thsrc.com.tw/tw/TimeTable/SearchResult",data = payload)

#使用BeautifulSoup分析網頁資訊 ※使用'.text'
bs = BeautifulSoup(res.text, "html.parser")

#透過'infolite'網路掛載工具搜尋".pds",或透過原始碼(F12)搜尋(ID前須加#,class前須加.)  
#透過 select 選擇擷取哪一個資訊
for time in bs.select('.result_table'):
	for time2 in time.select('.toTouch '):
		print(time.select('.column1')[0].text.strip(),time2.select('.column1')[0].text.strip(),time.select('.column3')[0].text.strip(),time2.select('.column3')[0].text.strip())