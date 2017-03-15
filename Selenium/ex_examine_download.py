"""使用subprocess搜尋路徑"""


from selenium import webdriver	#load selenium webdriver
from selenium.webdriver.common.by import By	#load webdriver.common.by for local element
from selenium.webdriver.common.keys import Keys	#load webdriver.common.keys for sendkey
import autoit,pymsgbox,time,subprocess

#pymsgbox 此為msgbox模組
#subprocess 為搜尋路徑的模組
"""下載後檢查資料夾"""
driver = webdriver.Chrome()
driver.get("http://plustek.com/tc/support/drivers-and-downloads.html")
driver.find_element_by_id("searchThis").clear()
driver.find_element_by_id("searchThis").send_keys("406U")
driver.find_element_by_xpath("//input[@type='button']").click()
driver.implicitly_wait(3)	#搜尋時會延遲,所以需要等待一下
string_406U = driver.find_element_by_xpath("//select[@id='productBox']/option[1]").text #text不可以()
if string_406U == "SmartOffice PS406U" :
	driver.find_element_by_xpath("//select[@id='productBox']/option[1]").click()
else:
	pymsgbox.alert('NO PS406U String','Error','OK')	#pop msg
driver.find_element_by_xpath("//a[@href='http://downloads.plustek.com/downloads/english/driver/SmartOfficePS406U-v5102_13L.zip']").click()
autoit.win_wait_active("開啟中: SmartOfficePS406U")
autoit.send("!s")
time.sleep(2)
autoit.send("{enter}")

driver.find_element_by_id("searchThis").clear()
driver.find_element_by_id("searchThis").send_keys("286 Plus")
driver.find_element_by_xpath("//input[@type='button']").click()
driver.implicitly_wait(3)
string_286Plus = driver.find_element_by_xpath("//select[@id='productBox']/option[1]").text
if string_286Plus == "SmartOffice PS286 Plus" :
	driver.find_element_by_xpath("//select[@id='productBox']/option[1]").click()
else:
	pymsgbox.alert('NO PS286 Plus String','Error','OK')	#pop msg
driver.find_element_by_xpath("//a[@href='http://downloads.plustek.com/downloads/english/driver/SmartOfficePS286Plus-DAP-V5000_1L.zip']").click()
autoit.win_wait_active("開啟中: SmartOfficePS286Plus")
autoit.send("!s")
time.sleep(2)
autoit.send("{enter}")
subprocess.Popen(r'explorer "C:\Users\windows7\Downloads"') #空格會影響路徑'後要緊接,explorer後要空格




