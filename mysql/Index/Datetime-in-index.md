# Datetime-in-index.md

It is avoided because it is useless. Each datetime entry will most probably be unique anyway, so what is the point of index
the query engine would need to read the whole table anyway. They are actually harmful, because they take up space and slow down inserts.
