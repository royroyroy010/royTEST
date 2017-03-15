import sqlite3
db = sqlite3.connect("mrtds_1.db")
iterator = db.cursor()

iterator.execute("select * from PASSPORT ")

error_count = []
error_index = []
#取出table 資料
for customer in iterator.fetchall(): 
    # print(customer[1:6])
    #比對資料,正確pass,不正確error
    if customer[1:10] == ('310305145','T123788291', 'LIU', 'CHUAN CHANG', 'M', '劉' , '權璋' , '2015-01-05 00:00:00', '2025-01-05 00:00:00') and customer[11] == ('TWN') and customer[16] == ('1987-10-17 00:00:00') and customer[17]== ('TWN'):
    	error_count.append('pass')
		
    else:
    	error_count.append('error')

#計算串列error_count個數  	
number = error_count.__len__()

for i in range(number) :
	#將error填入error_count
	if error_count[i] == 'error':
		i += 1 
		error_index.append(i)
	else:
		pass


print(error_count)
print('Error Count:',len(error_index))
print(error_index)





   