-- تصحيح الاستعلام:
-- حطينا شرط حالة الطلب جوة الـ ON عشان العميل اللي ملوش طلبات مكتملة يظهر برضه بـ 0 وما يتلغيش من النتائج

SELECT 
    c.customer_id,
    c.customer_name,
    COALESCE(SUM(o.total_amount), 0) AS total_spent
FROM customers c
LEFT JOIN orders o 
    ON c.customer_id = o.customer_id 
   AND o.order_status = 'COMPLETED'
GROUP BY c.customer_id, c.customer_name;
