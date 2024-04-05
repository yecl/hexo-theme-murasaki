<!doctype html>
<html lang="{{ config.language }}">
<head>
  <title>{% block title %}{% endblock %}</title>
  {% include '_partials/head-meta.swig' %}
</head>
<body>

<header>
  <div class="container">
    <div class="site-name">
      <a class="logo" href="{{ config.root }}">{{ config.title }}</a>
      <span class="description">{{ config.subtitle }}</span>
    </div>
  </div>
</header>

<main>
  <div class="container">
    <div class="row">
      <section class="content col-md-8 col-12">
        {% block content %}{% endblock %}
      </section>
      <aside class="sidebar col-md-3 offset-md-1 col-12">
        {% block widgets %}{% endblock %}
        {% include '_partials/sidebar.swig' %}
      </aside>
    </div>
  </div>
</main>

<footer>
  {% set year = date(Date.now(), "YYYY") %}
  <div class="container">
    <p>
      <span style='display: inline-block; text-align: right; margin: 0px; -moz-transform: scaleX(-1); -o-transform: scaleX(-1); -webkit-transform: scaleX(-1); transform: scaleX(-1); filter: FlipH; -ms-filter: “FlipH”;'>&copy;</span> {{ year }} <a href="{{ config.url }}">{{ config.title }}</a>. Proudly published with
      <a href="https://hexo.io/" target="_blank">Hexo</a> & <a href="https://github.com/printempw/hexo-theme-murasaki/" target="_blank">Murasaki</a>.
    </p>
  </div>
</footer>

{% include '_partials/scripts.swig' %}
</body>
</html>
