--CREATE DATABASE TheStoreDB
--GO

--USE TheStoreDB
--GO


/***************************** CREATE TABLES ***************************************************/
CREATE TABLE [Product]
(ProductId INT IDENTITY(1,1) PRIMARY KEY, 
 ProductName VARCHAR(100),
 ProductDescription VARCHAR(400),
 ProductSku VARCHAR(100),
 ProductPrice DECIMAL(10,2),
 ProductUpdateDate DATETIME,
 ProductStatus BIT
)

CREATE TABLE [Account]
(AccountId INT IDENTITY(1,1) PRIMARY KEY,
 AccountEmail VARCHAR(50) NOT NULL,
 AccountPassword VARCHAR(10),
 AccountFirstName VARCHAR(100),
 AccountLastName VARCHAR(100),
 AccountPhone VARCHAR(100),
 AccountDate DATETIME,
 AccountStatus BIT
)

CREATE TABLE [Order]
(OrderId INT IDENTITY(1,1) PRIMARY KEY,
 OrderAmount DECIMAL(10,2),
 OrderShipName VARCHAR(100),
 OrderShipAddress VARCHAR(100),
 OrderEmail VARCHAR(100),
 OrderDate DATETIME,
 OrderStatus BIT,
 AccountId int FOREIGN KEY REFERENCES [Account](AccountId)
)


CREATE TABLE [OrderDetail]
(OrderDetailId INT IDENTITY(1,1)  PRIMARY KEY,
 OrderDetailPrice DECIMAL(10,2),
 OrderDetailName VARCHAR(100),
 OrderDetailQuantity INT,
 OrderDetailDate DATETIME,
 OrderDetailStatus BIT,
 OrderId int FOREIGN KEY REFERENCES [Order](OrderId),
 ProductId int FOREIGN KEY REFERENCES [Product](ProductId)
)

/******************************* INSERT DATA *************************************************/

INSERT INTO [Product] (ProductName, ProductDescription, ProductSku, ProductPrice, ProductUpdateDate, ProductStatus) 
							VALUES ('Mouse Wireless', 
							'Lorem ipsum dolor sit amet, cUt enim ad minim  ea commodo consequl, sunt in culpa qui officia deserunt mollit anim id est laborum.',
							'P001', 100, GETDATE(), 1)
INSERT INTO [Product] (ProductName, ProductDescription, ProductSku, ProductPrice, ProductUpdateDate, ProductStatus) 
							VALUES ('Mouse Standard', 
							'Lorem ipsum dolor sit amet, cUt enim ad minim  ea commodo consequl, sunt in culpa qui officia deserunt mollit anim id est laborum.',
							'P002', 50, GETDATE(), 1)
INSERT INTO [Product] (ProductName, ProductDescription, ProductSku, ProductPrice, ProductUpdateDate, ProductStatus) 
							VALUES ('Keyword Wireless', 
							'Lorem ipsum dolor sit amet, cUt enim ad minim  ea commodo consequl, sunt in culpa qui officia deserunt mollit anim id est laborum.',
							'P003', 220, GETDATE(), 1)
INSERT INTO [Product] (ProductName, ProductDescription, ProductSku, ProductPrice, ProductUpdateDate, ProductStatus) 
							VALUES ('Keyword Standard', 
							'Lorem ipsum dolor sit amet, cUt enim ad minim  ea commodo consequl, sunt in culpa qui officia deserunt mollit anim id est laborum.',
							'P004', 100, GETDATE(), 1)
INSERT INTO [Product] (ProductName, ProductDescription, ProductSku, ProductPrice, ProductUpdateDate, ProductStatus) 
							VALUES ('Monitor Hz100', 
							'Lorem ipsum dolor sit amet, cUt enim ad minim  ea commodo consequl, sunt in culpa qui officia deserunt mollit anim id est laborum.',
							'P005', 400, GETDATE(), 1)
INSERT INTO [Product] (ProductName, ProductDescription, ProductSku, ProductPrice, ProductUpdateDate, ProductStatus) 
							VALUES ('Monitor Hz120', 
							'Lorem ipsum dolor sit amet, cUt enim ad minim  ea commodo consequl, sunt in culpa qui officia deserunt mollit anim id est laborum.',
							'P006', 900, GETDATE(), 1)
INSERT INTO [Product] (ProductName, ProductDescription, ProductSku, ProductPrice, ProductUpdateDate, ProductStatus) 
							VALUES ('Headphones Wireless', 
							'Lorem ipsum dolor sit amet, cUt enim ad minim  ea commodo consequl, sunt in culpa qui officia deserunt mollit anim id est laborum.',
							'P007', 600, GETDATE(), 1)
INSERT INTO [Product] (ProductName, ProductDescription, ProductSku, ProductPrice, ProductUpdateDate, ProductStatus) 
							VALUES ('Headphones Standard', 
							'Lorem ipsum dolor sit amet, cUt enim ad minim  ea commodo consequl, sunt in culpa qui officia deserunt mollit anim id est laborum.',
							'P008', 300, GETDATE(), 1)
INSERT INTO [Product] (ProductName, ProductDescription, ProductSku, ProductPrice, ProductUpdateDate, ProductStatus) 
							VALUES ('Charger Wireless', 
							'Lorem ipsum dolor sit amet, cUt enim ad minim  ea commodo consequl, sunt in culpa qui officia deserunt mollit anim id est laborum.',
							'P009', 400, GETDATE(), 1)
INSERT INTO [Product] (ProductName, ProductDescription, ProductSku, ProductPrice, ProductUpdateDate, ProductStatus) 
							VALUES ('Charger Standard', 
							'Lorem ipsum dolor sit amet, cUt enim ad minim  ea commodo consequl, sunt in culpa qui officia deserunt mollit anim id est laborum.',
							'P010', 50, GETDATE(), 1)


INSERT INTO [Account] (AccountEmail, AccountPassword, AccountFirstName, AccountLastName, AccountPhone, AccountDate, AccountStatus) 
				VALUES ('miguel.ponce@mail.com', '123456', 'Miguel', 'Ponce', '99999999999', GETDATE(), 1)
INSERT INTO [Account] (AccountEmail, AccountPassword, AccountFirstName, AccountLastName, AccountPhone, AccountDate, AccountStatus) 
				VALUES ('juan.perez@mail.com', '123456', 'Juan', 'Perez', '99999999999', GETDATE(), 1)
INSERT INTO [Account] (AccountEmail, AccountPassword, AccountFirstName, AccountLastName, AccountPhone, AccountDate, AccountStatus) 
				VALUES ('carlos.uribe@mail.com', '123456', 'Carlos', 'Uribe', '99999999999', GETDATE(), 1)
INSERT INTO [Account] (AccountEmail, AccountPassword, AccountFirstName, AccountLastName, AccountPhone, AccountDate, AccountStatus)  
				VALUES ('benjamin.carrillo@mail.com', '123456', 'Benjamin', 'Carrillo', '99999999999', GETDATE(), 1)
INSERT INTO [Account] (AccountEmail, AccountPassword, AccountFirstName, AccountLastName, AccountPhone, AccountDate, AccountStatus) 
				VALUES ('diego.ponce@mail.com', '123456', 'Diego', 'Ponce', '99999999999', GETDATE(), 1)
INSERT INTO [Account] (AccountEmail, AccountPassword, AccountFirstName, AccountLastName, AccountPhone, AccountDate, AccountStatus) 
				VALUES ('oscar.segura@mail.com', '123456', 'Oscar', 'Segura', '99999999999', GETDATE(), 1)
INSERT INTO [Account] (AccountEmail, AccountPassword, AccountFirstName, AccountLastName, AccountPhone, AccountDate, AccountStatus) 
				VALUES ('rosmery.hoyos@mail.com', '123456', 'Rosmery', 'Hoyos', '99999999999', GETDATE(), 1)
INSERT INTO [Account] (AccountEmail, AccountPassword, AccountFirstName, AccountLastName, AccountPhone, AccountDate, AccountStatus)  
				VALUES ('maria.loayza@mail.com', '123456', 'Maria', 'Loayza', '99999999999', GETDATE(), 1)
INSERT INTO [Account] (AccountEmail, AccountPassword, AccountFirstName, AccountLastName, AccountPhone, AccountDate, AccountStatus) 
				VALUES ('edwin.neto@mail.com', '123456', 'Edwin', 'Neto', '99999999999', GETDATE(), 1)
INSERT INTO [Account] (AccountEmail, AccountPassword, AccountFirstName, AccountLastName, AccountPhone, AccountDate, AccountStatus) 
				VALUES ('claudia.diaz@mail.com', '123456', 'Claudia', 'Diaz', '99999999999', GETDATE(), 1)
INSERT INTO [Account] (AccountEmail, AccountPassword, AccountFirstName, AccountLastName, AccountPhone, AccountDate, AccountStatus)  
				VALUES ('sofia.satori@mail.com', '123456', 'Sofia', 'Satori', '99999999999', GETDATE(), 1)


INSERT INTO [Order] (OrderAmount, OrderShipName, OrderShipAddress, OrderEmail, OrderDate, OrderStatus, AccountId)
				VALUES (720, 'Technologies From Home', 'Address 123, Avenue GTH', 'email@email.com', GETDATE(), 1, 1)
INSERT INTO [Order] (OrderAmount, OrderShipName, OrderShipAddress, OrderEmail, OrderDate, OrderStatus, AccountId)
				VALUES (1150, 'AudioTech', 'Address 123, Avenue GTH', 'email@email.com', GETDATE(), 1, 2)
INSERT INTO [Order] (OrderAmount, OrderShipName, OrderShipAddress, OrderEmail, OrderDate, OrderStatus, AccountId)
				VALUES (1200, 'New Store', 'Address 123, Avenue GTH', 'email@email.com', GETDATE(), 1, 3)
INSERT INTO [Order] (OrderAmount, OrderShipName, OrderShipAddress, OrderEmail, OrderDate, OrderStatus, AccountId)
				VALUES (2600, 'Iot New Things', 'Address 123, Avenue GTH', 'email@email.com', GETDATE(), 1, 4)


INSERT INTO [OrderDetail] (OrderDetailPrice, OrderDetailName, OrderDetailQuantity, OrderDetailDate, OrderDetailStatus, OrderId, ProductId)
					VALUES (100, 'Adding Mouse Wireless', 1, GETDATE(), 1, 1, 1)
INSERT INTO [OrderDetail] (OrderDetailPrice, OrderDetailName, OrderDetailQuantity, OrderDetailDate, OrderDetailStatus, OrderId, ProductId)
					VALUES (220, 'Adding Keyword Wireless', 1, GETDATE(), 1, 1, 3)
INSERT INTO [OrderDetail] (OrderDetailPrice, OrderDetailName, OrderDetailQuantity, OrderDetailDate, OrderDetailStatus, OrderId, ProductId)
					VALUES (400, 'Adding Charger Wireless', 1, GETDATE(), 1, 1, 9)

INSERT INTO [OrderDetail] (OrderDetailPrice, OrderDetailName, OrderDetailQuantity, OrderDetailDate, OrderDetailStatus, OrderId, ProductId)
					VALUES (200, 'Adding Mouse Standard', 4, GETDATE(), 1, 2, 2)
INSERT INTO [OrderDetail] (OrderDetailPrice, OrderDetailName, OrderDetailQuantity, OrderDetailDate, OrderDetailStatus, OrderId, ProductId)
					VALUES (300, 'Adding Keyword Standard', 3, GETDATE(), 1, 2, 4)
INSERT INTO [OrderDetail] (OrderDetailPrice, OrderDetailName, OrderDetailQuantity, OrderDetailDate, OrderDetailStatus, OrderId, ProductId)
					VALUES (600, 'Adding Headphones Standard', 2, GETDATE(), 1, 2, 8)
INSERT INTO [OrderDetail] (OrderDetailPrice, OrderDetailName, OrderDetailQuantity, OrderDetailDate, OrderDetailStatus, OrderId, ProductId)
					VALUES (50, 'Adding Charger Standard', 1, GETDATE(), 1, 2, 10)

INSERT INTO [OrderDetail] (OrderDetailPrice, OrderDetailName, OrderDetailQuantity, OrderDetailDate, OrderDetailStatus, OrderId, ProductId)
					VALUES (1200, 'Adding Headphones Wireless', 2, GETDATE(), 1, 3, 7)

INSERT INTO [OrderDetail] (OrderDetailPrice, OrderDetailName, OrderDetailQuantity, OrderDetailDate, OrderDetailStatus, OrderId, ProductId)
					VALUES (800, 'Adding Mouse Wireless', 2, GETDATE(), 1, 4, 5)
INSERT INTO [OrderDetail] (OrderDetailPrice, OrderDetailName, OrderDetailQuantity, OrderDetailDate, OrderDetailStatus, OrderId, ProductId)
					VALUES (1800, 'Adding Mouse Wireless', 2, GETDATE(), 1, 4, 6)

SELECT * FROM [Account]
SELECT * FROM [Product]
SELECT * FROM [Order]
SELECT * FROM [OrderDetail]
