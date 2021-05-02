# Django-Bootstrap Integration

This document covers steps to integrate bootstrap in django.
This is to help new comers to easily integrate bootstrap in Django module including Django Admin.

### Integration Steps

- [Download Bootstrap](https://github.com/twbs/bootstrap/releases/download/v5.0.0-beta3/bootstrap-5.0.0-beta3-dist.zip) 
Extract the downloaded folder and you will get two folder named css and js.

- Now create a folder name static in your created app and paste the above extracted folder in it.

- Again create a folder named template inside the app and make file index.html can copy the given code to it 
```
<!DOCTYPE html>  
<html lang="en">  
<head>  
    <meta charset="UTF-8">  
    <title>Title</title>  
    {% load staticfiles %}  
    <link href="{% static 'css/bootstrap.min.css' %}" >  
    <script src="{% static 'bootstrap.min.js' %}"></script>  
</head>  
<body>  
</body>  
</html>
```

- Now copy the below code in your setting.py
```
STATIC_URL = '/static/'
STATICFILES_DIRS = [
    os.path.join(BASE_DIR, 'app_name/static')
]
STATIC_ROOT = os.path.join(BASE_DIR, 'assets')
```
Note: app_name will contain your application name.

- After that run command python manage.py collectstatic to collect all your static file under assests directory.

- Congratulation! you have integrated bootstrap in your django project. Now you only have to extends index.html in your templates to use bootstrap.

### Additional Step for Django Admin

- Integration with admin is almost same but in place of creating index.html follow the below instructions.

- Create a folder named admin inside your template folder.
- Create a file name base_site.html and paste the below code
```
{% extends 'admin/base_site.html' %}

{% load static %}

{% block extrastyle %}
<link rel="stylesheet" type="text/css" href="{% static 'css/bootstrap.min.css' %}">
<script src="{% static 'bootstrap.min.js' %}"></script>
{% endblock %}
```

- Now extend base_site.html in order to use bootstrap in your templates.