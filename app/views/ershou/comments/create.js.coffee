$(".comments").append("<%= escape_javascript(render(@comment)) %>")
$("#new_comment").each -> this.reset()
$('#new_comment .nav-tabs a[href="#content"]').tab('show');