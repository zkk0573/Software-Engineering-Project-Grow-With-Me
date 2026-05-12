{% extends "base.html" %}
{% load static %}
{% block content %}

<div class="leaves">
    <span>🍃</span>
    <span>🍂</span>
    <span>🍁</span>
    <span>🍃</span>
    <span>🍂</span>
    <span>🍁</span>
    <span>🍃</span>
    <span>🍂</span>
    
</div>
<div class="background-tree">
    <img src="{% static 'tree/tree.png' %}" alt="Tree">
</div>
<div class="form-container">
  <h2 style="text-align: center;">Login</h2>
  <form method="POST">
    {% csrf_token %}
    {{ form.as_p }}
    <button type="submit" class="btn-save">Login</button>
  </form>
  <div class="mt-4">
      Don't have an account? <a href="{% url 'register' %}" class="mt-2">Sign Up</a>
  </div>
  
</div>
<script>
		var form_fields = document.getElementsByTagName('input')
		form_fields[1].placeholder='Username';
		form_fields[2].placeholder='Enter password';

		for (var field in form_fields){	
			form_fields[field].className += ' form-control'
		}
    </script>
{% endblock %}
