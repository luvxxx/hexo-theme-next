{% extends '_layout.swig' %}
{% import '_macro/post.swig' as post_template %}
{% import '_macro/sidebar.swig' as sidebar_template %}

{% block title %} {{ config.title }} {% endblock %}

{% block page_class %}
  {% if is_home() %} page-home {% endif %}
{% endblock %}

{% block content %}
 <section id="posts" class="posts-expand">
    {% for post in page.posts %}
        {% for tag in post.tags %}
            {% if tag.name=='main' %} 
                {{ post_template.render(post, true) }}
            {% endif %} 
        {% endfor %}
    {% endfor %}
  </section>
{% endblock %}

{% block sidebar %}
  {{ sidebar_template.render(false) }}
{% endblock %}
