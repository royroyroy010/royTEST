from PIL import Image,ImageChops

compare_result = []
for imgnumber in range(10):
    #開啟原圖與比較圖
    img1 = Image.open('original.png')
    img2 = Image.open(str(imgnumber) + '.png')

    #crop兩張圖
    img1_item1 = img1.crop((611,102,810,116))
    img1_item2 = img1.crop((611,132,810,150))
    img1_item3 = img1.crop((611,158,810,177))
    img1_item4 = img1.crop((611,191,810,211))
    img1_item5 = img1.crop((611,219,810,238))
    img1_item6 = img1.crop((611,250,810,268))
    img1_item7 = img1.crop((611,281,810,298))
    img1_item8 = img1.crop((610,312,810,328))
    img1_item9 = img1.crop((610,339,810,360))
    img1_item10 = img1.crop((610,369,810,390))
    img1_item11 = img1.crop((610,401,810,419))
    img1_item12 = img1.crop((610,429,810,448))

    img2_item1 = img2.crop((611,102,810,116))
    img2_item2 = img2.crop((611,132,810,150))
    img2_item3 = img2.crop((611,158,810,177))
    img2_item4 = img2.crop((611,191,810,211))
    img2_item5 = img2.crop((611,219,810,238))
    img2_item6 = img2.crop((611,250,810,268))
    img2_item7 = img2.crop((611,281,810,298))
    img2_item8 = img2.crop((610,312,810,328))
    img2_item9 = img2.crop((610,339,810,360))
    img2_item10 = img2.crop((610,369,810,390))
    img2_item11 = img2.crop((610,401,810,419))
    img2_item12 = img2.crop((610,429,810,448))
    item_list = [img1_item1, img1_item2, img1_item3, img1_item4, img1_item5, img1_item6, img1_item7, img1_item8,
                 img1_item9, img1_item10, img1_item11, img1_item12]
    item_list2 = [img2_item1, img2_item2, img2_item3, img2_item4, img2_item5, img2_item6, img2_item7, img2_item8,
                  img2_item9, img2_item10, img2_item11, img2_item12]
    #比較兩張圖
    for item in range(12):
        c = ImageChops.difference(item_list[item], item_list2[item])

        #將差異點列出左.上.右.下座標
        d = c.getbbox()

        #判斷回傳值是否None
        if d == None:
            compare_result.append('Pass')
        else:
            compare_result.append('NG')
for print_ in range(10):
    print(compare_result[print_*12:print_*12+12])
print('NG count:', compare_result.count('NG'))