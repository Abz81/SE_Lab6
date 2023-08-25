from rest_framework import serializers
from .models import User


class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = '__all__'


class AuthenticationSerializer(serializers.Serializer):
    username = serializers.CharField()
    password = serializers.CharField()
    user_id = serializers.IntegerField()
