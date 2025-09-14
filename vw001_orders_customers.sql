CREATE VIEW v001_orders_customers AS
	(
	SELECT 
		O.orderNumber
		,O.orderDate
		,O.requiredDate
		,O.shippedDate
		,O.status
		,O.comments
		,O.customerNumber
		,C.customerName
		,C.contactFirstName
		,C.contactLastName
		,C.phone
		,C.addressLine1
		,C.addressLine2
		,C.city
		,C.state
		,C.postalcode
		,C.country
		,C.salesRepEmployeeNumber
		,C.creditLimit
	FROM
		classicmodels.orders O
	LEFT JOIN
		classicmodels.customers C
	ON
		O.customerNumber = C.customerNumber
	);