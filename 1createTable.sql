
USE [MDHealth]

DROP TABLE [dbo].[品項表];
DROP TABLE [dbo].[品項紀錄];
DROP TABLE [dbo].[客戶過敏暨病史瀏覽];
DROP TABLE [dbo].[會員基本資料];
DROP TABLE [dbo].[銷售紀錄];


----1
CREATE TABLE 會員基本資料
(
會員號碼 CHAR(12) PRIMARY KEY,
姓名 	TEXT ,
身分證字號 	CHAR(10),
電話H 	TEXT,
電話O 	TEXT, 
行動電話 	TEXT, 
地址 	TEXT, 
血型 	TEXT, 
身高 	INT, 
體重 	INT, 
統一編號 	INT, 
會員建檔日期  DATE, 	
最後購買日 	DATE,
今年消費金額 	INT, 
去年消費金額 	INT, 
會員等級 	TEXT, 
點數餘額 	INT
)
GO

----2
CREATE TABLE 銷售紀錄
(
銷售紀錄編號 INT IDENTITY(1,1) PRIMARY KEY,
銷售日期 	DATE,
門市代號 	INT, 
使用點數 	INT, 
獲得點數 	INT, 
品項編號    INT,
)
GO

CREATE TABLE 品項紀錄
(
品項編號   INT ,
數量 	INT, 
單價 	INT 
)
GO
CREATE TABLE 品項表
(
品名編號 INT IDENTITY(1,1) PRIMARY KEY,
品名 	 TEXT, 
單位 	 TEXT,
)
GO

-----3
CREATE TABLE 客戶過敏暨病史瀏覽
(
瀏覽編號 INT IDENTITY(1,1) PRIMARY KEY,
項目代號 TEXT,
資料性質 TEXT
)
GO
CREATE TABLE 過敏原既往病史對照
(
項目	BIT,	-- 0 過敏原, 1 既往病史
文字說明 TEXT
)
GO