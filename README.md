# زبدة · BUTTER

منصة المذاكرة كاملة في مجلد `site/`، وكل صفحة تفتح لحالها من الجهاز (`site/index.html`).
صفحة الأدمن خاصة: ما تنحفظ هنا ولا تدخل الصورة، والـ workflow يوقف إذا لقاها.

## كيف يوصل التحديث للسيرفر

1. أي تحديث ينرفع على `main` (من GitHub Desktop: **Commit to main** ثم **Push origin**).
2. الـ workflow يبني صورة Docker وينشرها: `ghcr.io/ahmed-ayman-abdalla/butter:latest`.
3. على السيرفر، Watchtower يشيّك كل 5 دقائق، ولقى صورة جديدة يسحبها ويعيد تشغيل الموقع.

## تشغيل السيرفر أول مرة

```sh
docker compose up -d
```

الموقع على المنفذ 8080. بعد أول تشغيل ناجح للـ workflow، افتح **Packages** في الريبو
وخل الصورة **Public** عشان السيرفر يسحبها بدون تسجيل دخول.

## تجربة محلية

```sh
docker build -t butter . && docker run --rm -p 8080:80 butter
```

ثم افتح <http://localhost:8080>.
