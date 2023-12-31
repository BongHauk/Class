CREATE DATABASE BMS;
USE BMS;

CREATE TABLE `ADMIN`(
    ADMIN_ID 	VARCHAR(20) PRIMARY KEY,
	PASSWD 		VARCHAR(100),				# NOT NULL
	JOIN_DT 	TIMESTAMP 	 				# NOT NULL
);	

INSERT INTO `ADMIN` VALUES ('bmsadmin' , 'P@ssw0rd' , NOW());


CREATE TABLE MEMBER(
    MEMBER_ID 		VARCHAR(30) PRIMARY KEY,
	MEMBER_NM 		VARCHAR(50),				# NOT NULL
    PASSWD 			VARCHAR(200),				# NOT NULL UNIQUE
	SEX 			CHAR(1),					# NOT NULL
	DATE_BIRTH 		CHAR(10),					# NOT NULL
	HP 				VARCHAR(20), 				# NOT NULL
	SMSSTS_YN 		CHAR(1),					# NOT NULL
	EMAIL 			VARCHAR(50),				# NOT NULL
	EMAILSTS_YN 	CHAR(1),					# NOT NULL
	ZIPCODE 		VARCHAR(10),
	ROAD_ADDRESS 	VARCHAR(500),
	JIBUN_ADDRESS 	VARCHAR(500),
	NAMUJI_ADDRESS 	VARCHAR(500),
	POINT			INT,						# NOT NULL
	JOIN_DT 		TIMESTAMP					# NOT NULL
);


CREATE TABLE GOODS(
    GOODS_CD 		  INT AUTO_INCREMENT PRIMARY KEY,
    GOODS_NM 		  VARCHAR(500),						# NOT NULL
    WRITER 			  VARCHAR(200),						# NOT NULL	
	PRICE 			  INT,								# NOT NULL				
	DISCOUNT_RATE 	  INT,								# NOT NULL
	STOCK			  INT,								# NOT NULL
	PUBLISHER 		  VARCHAR(100),						# NOT NULL
	SORT 			  VARCHAR(50),						# NOT NULL
	POINT 			  INT,								# NOT NULL		
	PUBLISHED_DT 	  TIMESTAMP,						# NOT NULL
	TOTAL_PAGE 		  INT,								# NOT NULL
	ISBN 			  VARCHAR(50),						# NOT NULL
	DELIVERY_PRICE 	  INT,								# NOT NULL
	PART 			  VARCHAR(50),						# NOT NULL
	WRITER_INTRO 	  VARCHAR(3000),
	CONTENTS_ORDER 	  VARCHAR(3000),
	INTRO 			  VARCHAR(3000),
	PUBLISHER_COMMENT VARCHAR(3000),
	RECOMMENDATION 	  VARCHAR(3000),
	GOODS_FILE_NAME	  VARCHAR(300),						# NOT NULL UNIQUE
	ENROLL_DT 		  TIMESTAMP							# NOT NULL
);


CREATE TABLE `ORDER`(
	ORDER_CD 			BIGINT AUTO_INCREMENT PRIMARY KEY,
    MEMBER_ID 			VARCHAR(30),							# NOT NULL			
    GOODS_CD 			INT,							# NOT NULL
	ORDER_GOODS_QTY 	INT,							# NOT NULL
	PAYMENT_AMT			INT,							# NOT NULL
    ORDERER_NM 			VARCHAR(20),					# NOT NULL
    ORDERER_HP 			VARCHAR(20),					# NOT NULL
	RECEIVER_NM 		VARCHAR(20),					# NOT NULL
	RECEIVER_HP 		VARCHAR(20),					# NOT NULL
	ZIPCODE 			VARCHAR(10),					# NOT NULL
	ROAD_ADDRESS 		VARCHAR(200),					# NOT NULL
	JIBUN_ADDRESS 		VARCHAR(200),					# NOT NULL
	NAMUJI_ADDRESS 		VARCHAR(200),					# NOT NULL
    DELIVERY_METHOD 	VARCHAR(40),					# NOT NULL
    DELIVERY_MESSAGE 	VARCHAR(300),
    DELIVERY_STATUS 	VARCHAR(30),					# NOT NULL
	GIFT_WRAPPING 		CHAR(1),						# NOT NULL
	PAY_METHOD 			VARCHAR(100),
	PAY_ORDERER_HP 		VARCHAR(50), 
	CARD_COMPANY_NM 	VARCHAR(50),
	CARD_PAY_MONTH 		VARCHAR(20),
    PAY_ORDER_TIME 		TIMESTAMP				
);


CREATE TABLE CART (
	CART_CD   	   BIGINT AUTO_INCREMENT PRIMARY KEY,
	MEMBER_ID 	   VARCHAR(300),					# NOT NULL
	GOODS_CD  	   INT,								# NOT NULL
	CART_GOODS_QTY INT,								# NOT NULL
	ENROLL_DT 	   TIMESTAMP						# NOT NULL
);


CREATE TABLE CONTACT (
	CONTACT_CD  INT AUTO_INCREMENT PRIMARY KEY,
	NAME		VARCHAR(30),					# NOT NULL			
	EMAIL		VARCHAR(30),					# NOT NULL
	SUBJECT		VARCHAR(300),					# NOT NULL
	CONTENT		VARCHAR(3000),					# NOT NULL
	REG_DT  	TIMESTAMP						# NOT NULL
);

