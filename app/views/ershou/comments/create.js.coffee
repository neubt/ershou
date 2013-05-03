$(".comments").append("<%= escape_javascript(render(@comment)) %>")
$("#new_comment").each -> this.reset()