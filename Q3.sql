SELECT customer.first_name, customer.last_name, customer.email, count(customer.customer_id) as number_of_purchases
FROM purchase
JOIN customer
ON purchase.customer_id=customer.customer_id
GROUP BY purchase.customer_id
HAVING count(customer.customer_id) > 1