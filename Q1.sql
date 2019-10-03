SELECT customer.first_name, customer.last_name, customer.email, purchase.purchase_id, purchase.purchase_time, 
sum(purchase_item.total_amount_paid) as total_amount_paid, sum(purchase_item.quantity) as total_quantity
FROM purchase
JOIN purchase_item
ON purchase.purchase_id=purchase_item.purchase_id
JOIN customer
on purchase.customer_id=customer.customer_id
GROUP BY purchase.purchase_id;