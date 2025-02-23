USE sql_analysis;

SELECT * FROM laptop_price;

-- Most Expensive: Razer, Blade Pro, Rs.546287
SELECT Company, Product, Price_Rs 
FROM laptop_price 
ORDER BY Price_Rs DESC
LIMIT 1;

-- Least Expensive: Acer, C740-C9QX (3205U/2GB/32GB/Chrome), Rs.15585
SELECT Company, Product, Price_Rs 
FROM laptop_price 
ORDER BY Price_Rs
LIMIT 1;

-- Best Processor: AMD, A12-Series 9720P, 3.6 Ghz
SELECT CPU_Company, CPU_Type, Frequency_GHz 
FROM laptop_price
ORDER BY Frequency_GHz DESC
LIMIT 1;

-- Worst Processor: Intel, Core M 6Y30, 0.9 Ghz
SELECT CPU_Company, CPU_Type, Frequency_GHz
FROM laptop_price
ORDER BY Frequency_GHz
LIMIT 1;

-- Highest Memory: MSI,	GS73VR Stealth, 2560 GB
SELECT Company, Product, Total_Memory 
FROM laptop_price
ORDER BY Total_Memory DESC
LIMIT 1;

-- Least Memory: HP, ZBook Studio, 8 GB
SELECT Company, Product, Total_Memory
FROM laptop_price
ORDER BY Total_Memory
LIMIT 1;

-- Best Display Laptop: Lenovo, Yoga 720-15IKB, IPS Panel 4K Ultra HD / Touchscreen, GeForce GTX 1050
SELECT Company, Product, ScreenType, GPU_Type 
FROM laptop_price
WHERE ScreenType = "IPS Panel 4K Ultra HD / Touchscreen"
ORDER BY Frequency_GHz DESC, Price_Rs DESC
LIMIT 1;



-- Best Value in High Budget: Asus, ROG G703VI-E5062T, Gaming
SELECT Company, Product, TypeName 
FROM laptop_price
WHERE Frequency_Category = 'High Frequency' AND 
RAM_Category = 'High RAM' AND 
Memory_Category = 'High Memory' AND
Price_Category = "High Budget"
ORDER BY Frequency_Category DESC,Price_Rs DESC
LIMIT 1;

-- Best Value in Average Budget: HP, 15-BW091ND (A9-9420/6GB/1TB), Notebook
SELECT Company, Product, TypeName
FROM laptop_price
WHERE Frequency_Category = 'High Frequency' AND 
RAM_Category = 'Average RAM' AND 
Memory_Category = 'High Memory' AND
Price_Category = "Average Budget"
ORDER BY Frequency_Category DESC,Price_Rs DESC;

-- Best Value in Low Budget: Lenovo, IdeaPad 320-15ABR, Notebook
SELECT Company, Product, TypeName
FROM laptop_price
WHERE Frequency_Category = 'High Frequency' AND 
RAM_Category = 'Average RAM' AND 
Memory_Category = 'Average Memory' AND
Price_Category = "Low Budget"
ORDER BY Frequency_Category DESC,Price_Rs DESC
LIMIT 1;



-- Best Notebook: Lenovo, IdeaPad 320-15ABR, 80523
SELECT Company, Product, Price_Rs 
FROM laptop_price
WHERE TypeName = "Notebook" AND
Frequency_Category = 'High Frequency' AND 
RAM_Category = 'Average RAM' AND 
Memory_Category = 'High Memory'
ORDER BY Frequency_GHz DESC,Price_Rs DESC
LIMIT 1;

-- Best Gaming: Razer, Blade Pro, 546287
SELECT Company, Product, Price_Rs 
FROM laptop_price
WHERE TypeName = "Gaming" AND
Frequency_Category = 'High Frequency' AND 
RAM_Category = 'High RAM' AND 
Memory_Category = 'Average Memory'
ORDER BY Frequency_GHz DESC,Price_Rs DESC;

-- Best Ultrabook: Apple, MacBook Pro, 182722
SELECT Company, Product, Price_Rs 
FROM laptop_price
WHERE TypeName = "Ultrabook" AND
Frequency_Category = 'High Frequency' AND 
RAM_Category = 'Average RAM' AND 
Memory_Category = 'Low Memory'
ORDER BY Frequency_GHz DESC,Price_Rs DESC
LIMIT 1;

-- Best 2 in 1 Convertible: Lenovo, Yoga 720-15IKB, 170093
SELECT Company, Product, Price_Rs 
FROM laptop_price
WHERE TypeName = "2 in 1 Convertible" AND
Frequency_Category = 'Average Frequency' AND 
RAM_Category = 'Average RAM' AND RAM_GB > 8 AND
Memory_Category = 'Low Memory' AND Total_Memory > 256
ORDER BY Frequency_GHz DESC,Price_Rs DESC
LIMIT 1;

-- Best Workstation: Dell, Precision 7520, 273636
SELECT Company, Product, Price_Rs
FROM laptop_price
WHERE TypeName = "Workstation" AND
Frequency_Category = 'High Frequency' AND 
RAM_Category = 'Average RAM' AND 
Memory_Category = 'High Memory'
ORDER BY Frequency_GHz DESC,Price_Rs DESC
LIMIT 1;

-- Best Netbook: HP, Elitebook 820, 132832
SELECT Company, Product, Price_Rs 
FROM laptop_price
WHERE TypeName = "Netbook" AND
Frequency_Category = 'Average Frequency' AND 
RAM_Category = 'Average RAM' AND 
Memory_Category = 'Low Memory'
ORDER BY Frequency_GHz DESC,Price_Rs DESC
LIMIT 1;



-- Best High Budget TouchScreen: Razer, Blade Pro, 4K Ultra HD / Touchscreen, 546287
SELECT Company, Product, ScreenType, Price_Rs 
FROM laptop_price
WHERE Touchscreen = "Yes" AND Price_Category = "High Budget"
ORDER BY Frequency_GHz DESC, Price_Rs DESC
LIMIT 1;

-- Best Average Budget TouchScreen: Acer, SP315-51 (i7-7500U/12GB/1TB/FHD/W10), IPS Panel Full HD / Touchscreen, 59026
SELECT Company, Product, ScreenType, Price_Rs FROM laptop_price
WHERE Touchscreen = "Yes" AND Price_Category = "Average Budget"
ORDER BY Frequency_GHz DESC, Price_Rs DESC
LIMIT 1;

-- Best Low Budget TouchScreen: Dell, Inspiron 3567, Touchscreen, 39321
SELECT Company, Product, ScreenType, Price_Rs FROM laptop_price
WHERE Touchscreen = "Yes" AND Price_Category = "Low Budget"
ORDER BY Frequency_GHz DESC, Price_Rs DESC
LIMIT 1;