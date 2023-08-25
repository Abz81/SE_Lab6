import socket


class ReplicaHeaderMiddleware:
    def __init__(self, get_response):
        self.get_response = get_response

    def __call__(self, request):
        response = self.get_response(request)
        try:
            replica_id = socket.gethostname()
            if isinstance(response.data, dict):
                response.data['Replica-ID'] = replica_id
            response['X-Replica-ID'] = replica_id
            return response
        except:
            return response
