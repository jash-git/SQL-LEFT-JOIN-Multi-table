SQL LEFT JOIN 多表


資料來源:http://blog.csdn.net/dxnn520/article/details/8281467


表1：------------------------------ 【人事表】
     表名：【man】
     欄位： Man_Id,Man_Name，Zw_Id
              1     貂蟬       2
              2     曹操       1

表2：------------------------------ 【職務表】
     表名：【zw】
     欄位： Zw_Id,Zw_Name
              1     校長 
              2     班主任

表3：------------------------------ 【工資表】
     表名：【gZ】
     欄位： Man_Id,Money，Sex_Id
              1    2500     1
              2    4000     2

表3：------------------------------ 【性別表】
     表名：【xb】
     欄位： Sex_Id,Sex_Name
              1    女
              2    男

需要的------------------------------- 【查詢結果】：

     Man_Id,Man_Name,sex_name,Zw_Name,Money
       1      貂蟬     女      班主任   2500
       2      曹操     男       校長    4000
	   

ANS01[推薦]:
	SELECT a.man_id,man_name,d.sex_name,zw_name,c.money  
	FROM man AS a   
      LEFT JOIN zw AS b ON a.zw_id=b.zw_id   
      LEFT JOIN gz AS c ON a.man_id=c.man_id   
      LEFT JOIN xb AS d ON c.sex_id=d.sex_id 

ANS02:
	SELECT Man_Id,Man_Name,sex_name,Zw_Name,Money FROM  
	(  
		   SELECT  a.Man_Id,Man_Name,b.Zw_Id,Zw_Name,Money,Sex_Id  FROM  [man] a   
				   LEFT JOIN  [zw] b ON a.Zw_Id=b.Zw_Id  
				   LEFT JOIN  [gz] c ON a.Man_Id=c.Man_Id  
	)t  
	LEFT JOIN xb m ON m.Sex_Id=t.Sex_Id

ANS03:
	SELECT man.man_id,man.man_name,xb.sex_name,zw_name,gz.money  
	FROM man   
      LEFT JOIN zw ON man.zw_id=zw.zw_id   
      LEFT JOIN gz ON man.man_id=gz.man_id   
      LEFT JOIN xb ON gz.sex_id=xb.sex_id     	
