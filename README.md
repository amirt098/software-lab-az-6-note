به نام خدا

# استقرار یک نرم‌افزار به کمک Docker

## اهداف 
- آشنایی با Docker و مفاهیم آن
- استفاده از Docker برای استقرار یک نرم‌افزار ساده

## نیازمندی‌ها
- آشنایی اولیه با Linux
- آشنایی با مقدمات شبکه و ارتباط‌ بین نرم‌افزار‌ها

## ابزارهای مورد استفاده
- یک سیستم که بر روی آن Docker نصب شده باشد یا استفاده از ابزار‌های رایگان آزمایش داکر مانند [این](https://labs.play-with-docker.com).

## منابع آموزشی
- [فیلم آموزش مقدمات داکر](https://aparat.com/v/FQubj)

## روال انجام آزمایش
پروژه‌ای ساده در [اینجا](../../base-projects/notes) قرار دارد که به کمک فریم‌ورک Django نوشته شده است و از پایگاه‌داده Postgres استفاده می‌کند. این پروژه قابلیت ثبت یادداشت‌های ساده را به کاربران مختلف می‌دهد. شما باید در این آزمایش به کمک داکر این پروژه را مستقر کنید و صحت عملکرد آن را تایید کنید.

### استقرار پروژه
استقرار شما باید نیازهای زیر را برآورده کرده باشد:
1. شما باید یک فایل docker-compose.yml داشته باشید که شامل ۲ سرویس است؛ یکی مربوط به خود وب‌سرور جنگو است و دیگری مربوط به پایگاه‌داده است.
2. در صورت نیاز می‌توانید ۱ یا چند فایل داکر (Dockerfile) داشته باشید و از آن‌ها در docker compose استفاده کنید.
3. وب‌سرور باید از طریق پورت ۸۰۰۰ درخواست‌های ارسالی را دریافت کند.
4. شما باید جنگو را طوری تنظیم بکنید که به پایگاه‌داده postgresای که بالا آورده‌اید، متصل شود.

**وظایف بخش‌های مختلف فایل‌های ارسالی خود را توضیح دهید.**

### ارسال درخواست به وب‌سرور
به کمک مرورگر، نرم‌افزار Postman، ترمینال یا هر ابزار مناسب دیگری، به وسیله ارسال درخواست مناسب به وب‌سرور، گام‌های زیر را انجام دهید:
1. یک کاربر به نام user1 با رمز ۱۲۳۴ بسازید.
   
3. یادداشتی با تیتر title1 و بدنه body1 برای user1 بسازید.
4. یادداشتی با تیتر title2 و بدنه body2 برای user1 بسازید.
3. همه یادداشت‌های user1 را دریافت کنید. (باید ۲ یادداشت بالا را به عنوان خروجی دریافت کنید)
4. یادداشت اول را پاک کنید.
5. همه یادداشت‌های user1 را دریافت کنید. (باید ۱ یادداشت وجود داشته باشد)

**درخواست ارسال شده و خروجی دریافت شده را برای همه گام‌های بالا در گزارش خود قرار دهید.**

### تعامل با داکر
کارهای زیر را انجام دهید:
1. به کمک دستورهای مناسب، image‌ها و containerهای خود را نشان دهید و آن‌هایی که مربوط به این آزمایش هستند را مشخص کنید.
![Screenshot 2024-05-28 232312 png](https://github.com/amirt098/software-lab-az-6-note/assets/63345017/77189c4f-3df9-4fd1-a07a-b7b02f8b9ce4)

![Screenshot 2024-05-28 232745 png](https://github.com/amirt098/software-lab-az-6-note/assets/63345017/13f15feb-a855-4da5-aec6-473bbb28ea8a)



3. دستوری دلخواه را در کانتینر وب‌سرور اجرا کنید. دستور مورد نظر و خروجی آن را در گزارش خود قرار دهید.

![Screenshot 2024-05-28 232745 png](https://github.com/amirt098/software-lab-az-6-note/assets/63345017/d1a3845a-6a4e-4725-9f21-563a158c5552)




## پرسش‌ها
پاسخ پرسش‌های زیر را در گزارش خود بنویسید.
1. وظایف Dockerfile، image و container را توضیح دهید.
2. docker file:
یک فایل متنی است که شامل دستورالعمل‌های ساخت Docker Image است و در آن  نوع سیستم عامل را مشخص‌ میشود همچنین مشخص میکند که در آن چه زبان‌ها، متغیرهای محیطی‌، مکان فایل‌ها، پورت‌های شبکه و… استفاده شود، و تعیین کننده این است که پس اجرای container چه کارهایی بایستی انجام شود

Docker image:
یک فایل قابل حمل است که یک سری دستورالعمل دارد و مشخص می‌کند کانتینر، کدام کامپوننت‌های نرم افزاری را اجرا کند و این اجرا چطور باشد  و به طور خلاصه Image یک تصویر استاتیک از سیستم عامل اصلی میباشد که نسخه نرم افزار ها و ... بر روی آن تعیین شده است

Docker container:
container به مانند یک ماشین مجازی عمل میکند با این تفاوت که حجم بسیار پایین تری دارد، زمان اجرای آن کوتاه است و همچنین محیط اجرای برنامه‌ها را از یکدیگر جدا‌ می‌کند‌ اما هسته اصلی سیستم عامل را بین برنامه ها به اشتراک‌ می‌گذارد و در نتیجه منابع بسیار کمتری را نیز استفاده میکند و قابلیت اجرای برنامه ها را با استفاده از یک سیستم عامل و ورژن نرم افزار های تعیین شده را میدهد


3. از kubernetes برای انجام چه کارهایی می‌توان استفاده کرد؟ رابطه آن با داکر چیست؟
کوبرنیتس از موتور داکر استفاده میکند اما ابزاری است که میتواند برای کار های high-level تر استفاده شود مانند scheduling و healing و .. در صورتی که داکر بیشتر برای کارهای ساده تر در مدیریت container ها مانند توقف و شروع به کار میرود، برای مثال با کوبرنیتس میتوان رفتار یک container  را مدیریت کرد و در صورت به وجود آمدن اشکال در آن یک container  جدید را جایگزین کرد
## نحوه ارسال پروژه
آدرس مخزن پروژه خود را ارسال کنید. توجه کنید که مخزن شما عمومی (public) باشد.
