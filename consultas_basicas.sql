-- ==============================================
-- TechStore - Consultas Básicas SELECT
-- Autor: Ana Cecilia
-- Fecha: 20/09/2026
-- ==============================================

-- Consulta 1: Exploración general de la tabla sales
-- SELECT * es útil para explorar inicialmente una tabla y conocer
-- su estructura y contenido. En producción es preferible seleccionar
-- únicamente las columnas necesarias.
SELECT *
FROM sales;

-- Consulta 2: Selección de columnas específicas para finanzas
SELECT
    customer_id,
    product_id,
    total_amount
FROM sales;

-- Consulta 3: Selección con alias en español para stakeholders
SELECT
    order_date AS fecha_pedido,
    product_name AS nombre_producto,
    quantity AS cantidad_unidades
FROM sales;