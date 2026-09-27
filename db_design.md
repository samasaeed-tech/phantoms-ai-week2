# Appointment Booking System - DB Design

## Assumptions
- يوجد مستخدمون متعددون (مرضى / عملاء) وطباء متعددون.
- الموعد يرتبط بعميل واحد وطبيب واحد وخدمة محددة.
- يتم الاحتفاظ بسجل الحجوزات وحالاتها (مثل: Pending, Completed, Cancelled) لتتبع المواعيد المُلغاة.

## Database Schema

### 1. Patients Table
- `patient_id` (INTEGER, Primary Key)
- `name` (TEXT)
- `email` (TEXT)

### 2. Doctors Table
- `doctor_id` (INTEGER, Primary Key)
- `name` (TEXT)
- `specialty` (TEXT)

### 3. Appointments Table
- `appointment_id` (INTEGER, Primary Key)
- `patient_id` (INTEGER, Foreign Key)
- `doctor_id` (INTEGER, Foreign Key)
- `appointment_date` (TEXT)
- `status` (TEXT) -- 'COMPLETED', 'CANCELLED', 'PENDING'
