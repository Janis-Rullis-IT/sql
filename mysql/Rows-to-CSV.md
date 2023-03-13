# Rows-to-CSV

```sql
select group_concat(customer_id)
from (
    select customer_id from nice_customers WHERE nicety_level=1 LIMIT 10
) as a;
```
