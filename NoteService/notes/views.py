from rest_framework import viewsets
from .models import Note
from .serializers import NoteSerializer
import requests
from django.conf import settings
from urllib.parse import urljoin

class NoteViewSet(viewsets.ModelViewSet):
    queryset = Note.objects.all()
    serializer_class = NoteSerializer

    def authenticate(self):
        username = self.request.data.get('username')
        password = self.request.data.get('password')
        authenticate_url = urljoin(settings.USER_MANAGEMENT_URL, "/api/authenticate/")
        response = requests.post(authenticate_url, data={'username': username, 'password': password})
        if response.status_code == 200:
            user_data = response.json()
            return user_data.get('user_id')
        else:
            raise Exception('Authentication failed')

    def perform_create(self, serializer):
        user_id = self.authenticate()
        serializer.save(user_id=user_id)

    def perform_update(self, serializer):
        user_id = self.authenticate()
        note = self.get_object()
        if note.user_id == user_id:
            serializer.save()
        else:
            raise Exception('Note does not belong to the authenticated user')

    def perform_destroy(self, instance):
        user_id = self.authenticate()
        note = instance
        if note.user_id == user_id:
            instance.delete()
        else:
            raise Exception('Note does not belong to the authenticated user')
