# SE_Lab6

توضیحات مربوط به هر `MicroService` در `README` مربوط به همان پروژه آمده‌است.
## Team members
* Alireza Ziaee
* Abdollah Zohrabi

## Setup

For Linux:

```bash
chmod +x deploy.sh
./deploy.sh
```
For Windows (PowerShell):

```powershell
.\deploy.ps1
```

  <div dir='rtl'>

## معماری
![image](https://github.com/Abz81/SE_Lab6/assets/45371919/1a77169f-a74f-406a-9cec-503629f87fbf)


## پرسش‌ها
1.در این تمرین از جمله نمودار هایی که برای مدل‌سازی معماری `MicroService` استفاده کردیم `Component Diagram` و`Communication Diagram` بودند.
![Capture13](https://github.com/Abz81/SE_Lab6/assets/101315890/6631e216-d65c-42e6-a7d9-eacc26203dd8)

![Capture14](https://github.com/Abz81/SE_Lab6/assets/101315890/6ef8a2b5-9d12-44e0-9526-bbbeb1cf9ae5)



2.معماری `Microservice` براساس تقسیم‌بندی سیستم به سرویس‌های کوچکتر، مستقل و تعاملی است و `DDD` به منظور طراحی و توسعه سیستم‌های پیچیده و معقول متمرکز است و با الهام از `(business domain)`، مدل‌سازی مفاهیم و ارتباطات بین عناصر دامنه را پیشنهاد می‌دهد. بنابراین معماری `Microservice` و `DDD` بر محور‌های مشابهی پایه‌ریزی شده‌اند . هر دو تاکید بر تفکر طراحی محور دارند، با تمرکز بر دامنه کسب و کار و تکامل روابط و مدل‌ها در دامنه برنامه.به طور مختصر میتوان گفت که اجرای `DDD` در معماری `Microservice` باعث میشود  تا سرویس‌های مستقل، قابلت اجرا و بهره‌برداری خود را داشته باشد و در عین حال از تمام قدرت و منافع `DDD` نیزاستفاده شود.

3.خیر, `Docker Compose` یک ابزار برای تعریف و راه‌اندازی برنامه‌های چند سرویسه در `Docker` است، اما به تنهایی یک ابزار `Orchestration` نیست. برخلاف ابزارهای `Orchestration` مانند `Docker Swarm` یا `Kubernetes` که قدرت بیشتری در مدیریت و پیکربندی برنامه‌ها و محیط‌های توزیع شده دارند، `Docker Compose` تنها بر روی یک سیستم برنامه‌ها را اجرا و مدیریت می‌کند.

## روال انجام آزمایش

1. نمودار `UML` خواسته‌شده در بخش معماری آورده‌شده است.
2. داکر فایل نوشته‌شده برای هر دو پروژه یکسان بوده که در تصویر زیر آن را مشاهده می‌کنیم.
   ![image](https://github.com/Abz81/SE_Lab6/assets/45371919/20ac29f6-686e-4e8e-976c-46292479eb5e)
3.
