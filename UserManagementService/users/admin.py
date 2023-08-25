from django.contrib import admin
from users import models as users_models


class UserAdmin(admin.ModelAdmin):
    pass


admin.site.register(users_models.User, UserAdmin)
