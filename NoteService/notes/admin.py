from django.contrib import admin
from notes import models as notes_models


class NoteAdmin(admin.ModelAdmin):
    pass


admin.site.register(notes_models.Note, NoteAdmin)
