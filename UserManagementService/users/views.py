from rest_framework import viewsets
from .models import User
from .serializers import UserSerializer
from rest_framework import views
from rest_framework.response import Response


class UserViewSet(viewsets.ModelViewSet):
    queryset = User.objects.all()
    serializer_class = UserSerializer


class AuthenticationView(views.APIView):
    def post(self, request, *args, **kwargs):
        username = request.data.get('username')
        password = request.data.get('password')
        user = User.objects.filter(username=username, password=password).first()
        if user:
            return Response({'user_id': user.id})
        else:
            return Response({'detail': 'Authentication failed'}, status=401)
