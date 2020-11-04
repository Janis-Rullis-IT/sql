# [Priveleges](https://www.postgresql.org/docs/12/ddl-priv.html)

## REFERENCES
Allows creation of a foreign key constraint referencing a table, or specific column(s) of a table.

## TRIGGER
Allows creation of a trigger on a table, view, etc.

## CONNECT
Allows the grantee to connect to the database. This privilege is checked at connection startup (in addition to checking any restrictions imposed by pg_hba.conf).

## TEMPORARY
Allows temporary tables to be created while using the database.

## EXECUTE
Allows calling a function or procedure, including use of any operators that are implemented on top of the function. This is the only type of privilege that is applicable to functions and procedures.

## USAGE
For procedural languages, allows use of the language for the creation of functions in that language. This is the only type of privilege that is applicable to procedural languages.

For schemas, allows access to objects contained in the schema (assuming that the objects' own privilege requirements are also met). Essentially this allows the grantee to “look up” objects within the schema. Without this permission, it is still possible to see the object names, e.g. by querying system catalogs. Also, after revoking this permission, existing sessions might have statements that have previously performed this lookup, so this is not a completely secure way to prevent object access.

For sequences, allows use of the currval and nextval functions.

For types and domains, allows use of the type or domain in the creation of tables, functions, and other schema objects. (Note that this privilege does not control all “usage” of the type, such as values of the type appearing in queries. It only prevents objects from being created that depend on the type. The main purpose of this privilege is controlling which users can create dependencies on a type, which could prevent the owner from changing the type later.)

For foreign-data wrappers, allows creation of new servers using the foreign-data wrapper.

For foreign servers, allows creation of foreign tables using the server. Grantees may also create, alter, or drop their own user mappings associated with that server.

![priv-tab.png](priv-tab.png)
