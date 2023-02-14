from django.http import HttpResponse


def index(request):
    return HttpResponse("<h1>It works!</h1>")
