<h2>Sign up using this form</h2>
{{ form("signup/register") }}
<p>
    <label for="name">Name</label>
    {{ text_field("name") }}
</p>
<p>
    <label for="email">E-mail</label>
    {{ text_field("email") }}
</p>
<p>
    {{ submit_button("Register") }}
</p>