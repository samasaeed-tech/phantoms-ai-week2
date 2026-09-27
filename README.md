# Phantoms AI - Week 2 Capstone Integration

مشروع ختام الأسبوع الثاني لدمج مفاهيم قواعد البيانات SQLite، التعامل مع REST APIs، استقبال الـ Webhooks، وأتمتة الـ Pipelines.

## هيكل المشروع (Project Structure)
- `data/`: يحتوي على قاعدة البيانات `store.db`.
- `src/`: يحتوي على أكواد التعامل مع الـ API والـ Webhook والـ Pipeline.
- `tests/`: ملفات التحقق واختبار التشغيل.
- `main.py`: نقطة التشغيل الرئيسية للمشروع.
- `db_design.md`: تصميم قاعدة بيانات نظام الحجز (Appointment Booking System).
- `debug_solution.sql`: تصحيح استعلام المبيعات وحل مشكلة الـ LEFT JOIN والـ NULL.

## خطوات التشغيل
1. لتشغيل الـ Pipeline الرئيسي:
   ```bash
   python main.py
