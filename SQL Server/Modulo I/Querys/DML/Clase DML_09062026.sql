select distinct CustomerID from Orders

select distinct Country from Customers
where (Country = 'Mexico')

select * from Customers
where (Country = 'USA')
ORDER BY Country DESC, ContactName DESC, ContactTitle DESC

select * from Customers
where (Country = 'USA') AND (ContactName LIKE '%G') 

select * from Customers
where (Country = 'USA') AND NOT (Region = 'WA') 

select * from Customers
where (Country = 'USA') AND (Region IN('WA','OR','ID') ) 

select * from Customers
where (Country = 'USA') OR (Region NOT IN('PE') ) 

select * from Customers
where FAX IS NULL

select * from Customers
where FAX IS NOT NULL

/**
Funciones de Agregado
**/

select * from Orders
where ShipCountry = 'Brazil' and ShipVia = 1
order by Freight 

select min(Freight) from Orders
where (ShipCountry = 'Brazil')

select ShipCountry,ShipVia, max(Freight) as 'Freight' from Orders
where ShipCountry = 'Brazil'
GROUP BY ShipCountry,ShipVia

select ShipCountry,ShipVia, count(Freight) as 'Freight' from Orders
where ShipCountry = 'Brazil'
GROUP BY ShipCountry,ShipVia

select ShipCountry,ShipVia, sum(Freight) as 'Freight' from Orders
where ShipCountry = 'Brazil'
GROUP BY ShipCountry,ShipVia





