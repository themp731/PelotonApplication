WITH purchase_group (purchase_id, purchase_time, customer_id, purchase_quantity, purchase_amount_paid) AS
(
  SELECT purchase.purchase_id, purchase_time, customer_id, sum(purchase_item.quantity) as purchase_quantity, sum(purchase_item.total_amount_paid) as purchase_amount_paid
  FROM purchase
  JOIN purchase_item
  ON purchase.purchase_id=purchase_item.purchase_id
  GROUP BY purchase.purchase_id
)
SELECT first_name, last_name, email, purchase_id, most_recent_purchase, purchase_group.customer_id, purchase_quantity, purchase_amount_paid
FROM purchase_group
JOIN
  (
    SELECT customer_id, max(purchase_group.purchase_time) as most_recent_purchase
    FROM purchase_group
    GROUP BY purchase_group.customer_id
  ) as recent_purchase
ON purchase_group.purchase_time=recent_purchase.most_recent_purchase
JOIN customer
ON customer.customer_id=purchase_group.customer_id