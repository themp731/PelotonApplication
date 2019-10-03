Application for a role at Peloton required me to answer some SQL questions. My answers are pasted as individual SQL queries. QUESTIONS are below

1. Write the SQL to generate a report of the total quantity and amount paid for each purchase. The result should have the following columns. (Difficulty: Easy)
*	customer_id
*	first_name
*	last_name
*	email
*	purchase_id
*	purchase_time
*	total_quantity
*	total_amount_paid

2. Write the SQL to generate a report of customers who have made more than 1 purchase, sorted by the total number of purchases in descending order. The result should have the following columns. (Difficulty: Medium)
*	customer_id
*	first_name
*	last_name
*	email
*	number_of_purchases

3. Write the SQL to generate a report of the number of customers who have purchased each sku. Any skus with no purchases don't need to be included in the report. The result should have the resulting columns. (Difficulty: Medium)
*	sku
*	total_number_of_customers

4. Write the SQL to generate a report of all customers and the total amount they’ve spent. Users who haven’t made any purchases should still be included in the report. The result should have the following columns. (Difficulty: Medium)
*	customer_id
*	first_name
*	last_name
*	email
*	total_amount_paid

5. Write the SQL to show the some basic statistics about two types of purchases: those that include a bike (has a purchase_item with sku = ‘bike’) and those that do not. For these two cases, we’re interested in knowing how many purchases there are, the average amount paid across those purchases (known as AOV for “average order value”), and the average quantity in each purchase. The result should be two rows with the following columns. (Difficulty: Hard)
*	purchase_has_bike (boolean)
*	num_purchases
*	avg_amount_paid
*	avg_quantity

6. Write the SQL to generate a report of customers with their most recent purchase. You don’t need to include customers who haven’t made a purchase. The result should have the following columns. (Hint: you can assume the underlying database supports window functions. But it is still possible without window functions.) (Difficulty: Hard)
*	customer_id
*	first_name
*	last_name
*	email
*	purchase_id
*	purchase_time
*	purchase_quantity
*	purchase_amount_paid

