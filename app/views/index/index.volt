  {% block css %}
	    {{ stylesheet_link('css/bootstrap.css') }}
	    {{ stylesheet_link('css/ui-lightness/jquery-ui-1.9.2.custom.min.css') }}
      {{ stylesheet_link('css/jquery.tagedit.css') }}
      {{ stylesheet_link('css/bootstrap-tags.css') }}
	{% endblock %}
    {#===include JS ====#}
    {% block js %}
        {{javascript_include('js/jquery-1.10.2.min.js')}}
        {{javascript_include('js/bootstrap-tags.min.js')}}
        <script type="text/javascript">
          $(function() {
            var availableTags = [
              "ActionScript",
              "AppleScript",
              "Asp",
              "BASIC",
            ];
            var tags = $('#my-tag-list').tags({
                suggestions: availableTags,
                afterAddingTag: updateInput,
                afterDeletingTag: updateInput,
            });
            function updateInput() {
                var all_tags = tags.getTags();
                $("#tags").val(all_tags.join());
            }
    	    });
	    </script>
    {% endblock %}
{{ form("index/formtarget", "id":"tagform-full") }}
    <div id="my-tag-list" class="tag-list"></div>
    <input id="tags" type="text" name="tag[19-a]" value="" class="tag" hidden/>
    {{ submit_button("Save") }}
</form>
<br>
