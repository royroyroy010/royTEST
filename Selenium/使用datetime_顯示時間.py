"""範例使用datetime顯示時間"""



from datetime import date,timedelta
# today = date.today()
# for i in range(1,10):
# 	today = today + timedelta(days=1)
# 	dayary = (str(today).split('-'))
# 	print ('-'.join([str(int(dayary[0])-1911),dayary[1],dayary[2]]))

#抓取到當日時間
today = date.today()

#顯示10筆日期
for i in range(1,10):	#範圍取0~9共10筆
	today = today + timedelta(days=2)	#timedelta設定間隔
	dayary = (str(today).split('-'))	#轉成字串且依照'-'來劃分
	print('/'.join([str(int(dayary[0])-1911),dayary[1],dayary[2]]))	#加入'/',將dayary[0]轉成數字減掉1911換成民國後再轉成文字