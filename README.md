 SQL SELECT Fundamentals - TechStore

Este repositorio contiene consultas SQL básicas realizadas sobre la tabla sales de TechStore. El objetivo es practicar la exploración y selección de datos y el uso de alias para presentar información de forma clara para usuarios del negocio.

## ¿Por qué es mala práctica usar SELECT * en producción?

SELECT * puede ser útil cuando estamos explorando una tabla y queremos conocer rápidamente su estructura y contenido. Sin embargo, no es recomendable utilizarlo habitualmente en producción.

En primer lugar, puede afectar el rendimiento, ya que recupera todas las columnas de la tabla aunque no sean necesarias. Esto implica procesar y transferir más datos.

En segundo lugar, dificulta el mantenimiento de las consultas. Si en el futuro se agregan o modifican columnas en la tabla, SELECT * puede devolver información diferente de la esperada.

También puede representar un problema de seguridad, porque podría recuperar columnas con información sensible que el usuario no necesita consultar.

Por ejemplo, si el equipo de finanzas solamente necesita identificar al cliente, el producto y el monto de la operación, es preferible utilizar:

```sql
SELECT customer_id, product_id, total_amount
FROM sales;
