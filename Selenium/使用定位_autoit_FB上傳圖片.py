"""此範例使用selenium、autoit"""

from selenium import webdriver	
import autoit,time


#開啟Chrome
driver = webdriver.Chrome()

#登入網頁
driver.get("https://www.facebook.com/?stype=lo&jlou=AffAEaiE2NvRSlIHoLBWMEAFoXSkIqesM3zc2VIQuGlCeqOyUDtCHZpQqIBCMDvlCpwSjvpTRfWKvYHHJHTypzVY0yIhUUdG-k2qlue5qK3_eQ&smuh=59985&lh=Ac_eI6-XjMgnBoDh")

#透過ID定位
driver.find_element_by_id("email").clear()	#clear清除欄位
driver.find_element_by_id("email").send_keys("adviewqa@gmail.com")	#send_keys輸入字串
driver.find_element_by_id("pass").clear()
driver.find_element_by_id("pass").send_keys("53535664")
driver.find_element_by_id("u_0_l").click()	#click點擊
time.sleep(3)	#停頓3秒

#透過xpath定位
driver.find_element_by_xpath("//div [@class='_3jk']").click()	

#使用autoit操作
autoit.win_wait_active("上傳檔案")	#偵測'上傳檔案'視窗
autoit.control_set_text("上傳檔案","1148","水母.jpg")	#輸入'水母.jpg'於ID:1148欄位中
# driver.implicitly_wait(3)
time.sleep(3)
autoit.control_click("上傳檔案","1")	#點擊ID:1按鍵
