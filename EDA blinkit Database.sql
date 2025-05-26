SELECT * FROM blinkit_data;

 SELECT count(*) FROM  blinkit_data;

 UPDATE blinkit_data
 SET Item_Fat_Content = 
 CASE 
 WHEN Item_Fat_Content IN ('LF','low fat') THEN 'Low Fat'
 WHEN Item_Fat_Content = 'reg' THEN 'Regular'
 ELSE Item_Fat_Content
 END 

 SELECT DISTINCT(Item_Fat_Content) FROM blinkit_data
 SELECT SUM(Sales) FROM blinkit_data

 SELECT CAST(AVG(Sales) AS decimal(10,0)) As Avg_Sales From blinkit_data;
 SELECT COUNT(*) AS Total_no_of_items FROM blinkit_data
  SELECT CAST(AVG(Rating) AS decimal(10,0)) As Avg_Sales From blinkit_data;

 SELECT CAST(AVG(rating) AS decimal(10,1)) FROM blinkit_data;
 SELECT Item_Fat_Content,
	CAST (SUM(Sales) AS decimal(10,2)) AS Total_Sales,
	CAST(AVG(Sales) AS decimal(10,0)) AS Avg_Sales,
	COUNT(*) AS No_of_Items,	
	CAST(AVG(rating) AS decimal(10,1)) AS Avg_Rating
 FROM blinkit_data
 WHERE Outlet_Establishment_Year = 2022
 GROUP BY Item_Fat_Content;

 SELECT Item_Type,
	CAST (SUM(Sales) AS decimal(10,2)) AS Total_Sales,
	CAST(AVG(Sales) AS decimal(10,0)) AS Avg_Sales,
	COUNT(*) AS No_of_Items,	
	CAST(AVG(rating) AS decimal(10,1)) AS Avg_Rating
 FROM blinkit_data
 WHERE Outlet_Establishment_Year = 2022
 GROUP BY Item_Type
 ORDER BY Total_Sales Desc;
 --top5
 SELECT TOP 5 Item_Type,
	CAST (SUM(Sales) AS decimal(10,2)) AS Total_Sales,
	CAST(AVG(Sales) AS decimal(10,0)) AS Avg_Sales,
	COUNT(*) AS No_of_Items,	
	CAST(AVG(rating) AS decimal(10,1)) AS Avg_Rating
 FROM blinkit_data
 WHERE Outlet_Establishment_Year = 2022
 GROUP BY Item_Type
 ORDER BY Total_Sales Desc;

 --bottom 5
 SELECT TOP 5 Item_Type,
	CAST (SUM(Sales) AS decimal(10,2)) AS Total_Sales,
	CAST(AVG(Sales) AS decimal(10,0)) AS Avg_Sales,
	COUNT(*) AS No_of_Items,	
	CAST(AVG(rating) AS decimal(10,1)) AS Avg_Rating
 FROM blinkit_data
 WHERE Outlet_Establishment_Year = 2022
 GROUP BY Item_Type
 ORDER BY Total_Sales;

SELECT Outlet_Establishment_Year,
			CAST (SUM(Sales) AS decimal(10,2)) AS Total_Sales,
			CAST(AVG(Sales) AS decimal(10,0)) AS Avg_Sales,
			COUNT(*) AS No_of_Items,
			CAST(AVG(rating) AS decimal(10,1)) AS Avg_Rating

FROM blinkit_data
GROUP BY Outlet_Establishment_Year
ORDER BY Outlet_Establishment_Year


SELECT
	Outlet_Size,
	CAST (SUM(Sales) AS decimal(10,2)) AS Total_Sales,
	CAST ((SUM(Sales) * 100.0 / SUM(SUM(Sales)) OVER()) AS decimal(10,2)) AS Sales_Percentage 
FROM blinkit_data
GROUP BY Outlet_Size
ORDER BY Total_Sales DESC;

SELECT Outlet_Location_Type,
			CAST (SUM(Sales) AS decimal(10,2)) AS Total_Sales,
			CAST ((SUM(Sales) * 100.0 / SUM(SUM(Sales)) OVER()) AS decimal(10,2)) AS Sales_Percentage,
			CAST(AVG(Sales) AS decimal(10,0)) AS Avg_Sales,
			COUNT(*) AS No_of_Items,
			CAST(AVG(rating) AS decimal(10,1)) AS Avg_Rating

FROM blinkit_data
GROUP BY Outlet_Type
ORDER BY Total_Sales
 SELECT Outlet_Type,
			CAST (SUM(Sales) AS decimal(10,2)) AS Total_Sales,
			CAST ((SUM(Sales) * 100.0 / SUM(SUM(Sales)) OVER()) AS decimal(10,2)) AS Sales_Percentage,
			CAST(AVG(Sales) AS decimal(10,0)) AS Avg_Sales,
			COUNT(*) AS No_of_Items,
			CAST(AVG(rating) AS decimal(10,1)) AS Avg_Rating

FROM blinkit_data
GROUP BY Outlet_Type
ORDER BY Total_Sales
