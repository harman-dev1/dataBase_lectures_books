---Write a query to report those supplier IDs along with productIDs
--which supplied maximum number of proucts.(ProductID,supplierID)
use northwind
SELECT P.ProductID, P.SupplierID FROM Products AS P INNER JOIN (SELECT SupplierID, COUNT(ProductID) AS TotalProducts FROM Products GROUP BY SupplierID ) AS SubQuery ON P.SupplierID = SubQuery.SupplierID WHERE SubQuery.TotalProducts = ( SELECT MAX(TotalProducts) FROM ( SELECT COUNT(ProductID) AS TotalProducts FROM Products GROUP BY SupplierID ) AS InnerSubQuery );
