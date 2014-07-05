	{% block css %}
	    {{ stylesheet_link('css/bootstrap.css') }}
	    {{ stylesheet_link('css/ui-lightness/jquery-ui-1.9.2.custom.min.css') }}
      {{ stylesheet_link('css/jquery.tagedit.css') }}
	{% endblock %}
    {#===include JS ====#}
    {% block js %}
        {{javascript_include('js/jquery-1.10.2.min.js')}}
        {{javascript_include('js/jquery-ui-1.9.2.custom.min.js')}}
        {{javascript_include('js/jquery.autoGrowInput.js')}}
        {{javascript_include('js/jquery.tagedit.js')}}
        <script type="text/javascript">$(function() {
		    $( "#tagform-full" ).find('input.tag').tagedit({
			    //autocompleteURL: 'autocomplete'
		    });
        var availableTags = [
          "ActionScript",
          "AppleScript",
          "Asp",
          "BASIC",
        ];
          $( "#tags" ).autocomplete({
             source: availableTags
        });
	    });
	    </script>
    {% endblock %}
{{ form("index/formtarget", "id":"tagform-full") }}
    <input id="tags" type="text" name="tag[19-a]" value="" class="tag"/>
    {{ submit_button("Save") }}
{{ endform }}
<br>
<input id="tags">
