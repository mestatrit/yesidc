--disable the CK_Customer_CustomerType constraint 
ALTER TABLE Sales.Customer NOCHECK CONSTRAINT CK_Customer_CustomerType 
--enable the CK_Customer_CustomerType constraint 
ALTER TABLE Sales.Customer CHECK CONSTRAINT CK_Customer_CustomerType

--disable all constraints for the Sales.SalesOrderHeader table 
ALTER TABLE Sales.SalesOrderHeader NOCHECK CONSTRAINT ALL  
--enable all constraints for the Sales.SalesOrderHeader table 
ALTER TABLE Sales.SalesOrderHeader CHECK CONSTRAINT ALL  