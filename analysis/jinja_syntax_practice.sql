-- practice setting basic variables!

{% set my_cool_string = 'wow! cool!' %}
{% set my_second_cool_string = 'this is jinja!' %}
{% set my_cool_number = 100 %}

-- practice printing basic variables

{{ my_cool_string }} {{ my_second_cool_string }} I want to write jinja for {{ my_cool_number }} years!

-- practice setting list

{% my_animals = ['lemur', 'wolf', 'panther', 'tardigrade'] %}

-- practice accessing items of list

{{ my_animals[0] }}
{{ my_animals[1] }}
{{ my_animals[2] }}
{{ my_animals[3] }}

-- practice iterating over a list


{% for animal in my_animals %}
  
  My favorite animal is the {{ animal }}

{% endfor %}

-- practice with if statements

{% set temperature = 45 %}

{% if temperature < 65 %}
    Time for a cappuccino!
{% else %}
    Time for a cold brew!
{% endif %} 

-- practice with nesting if statements and for loops

