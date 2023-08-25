from django.db import models


class Note(models.Model):
    user_id = models.PositiveBigIntegerField(db_index=True)
    title = models.CharField(max_length=200)
    content = models.TextField()

    class Meta:
        unique_together = [['user_id', 'title']]

    def __str__(self):
        return self.title
