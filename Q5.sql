WITH bike_purchases (quantity, amount_paid, purchase_has_bike) AS
(
  SELECT purchase_item.quantity, purchase_item.total_amount_paid,
    CASE
      WHEN purchase_item.sku = 'bike' THEN 'Yes'
      ELSE 'No'
    END AS purchase_has_bike
  FROM purchase
  JOIN purchase_item
  ON purchase.purchase_id=purchase_item.purchase_id
)
SELECT * FROM bike_purchases