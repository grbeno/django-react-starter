from django.views.generic import TemplateView

# React home page
class React(TemplateView):
    template_name = 'index.html'
