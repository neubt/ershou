$ ->
  $("a[data-position]").click ->
    comment_content = $('#comment_content')
    position = $(this).data("position")
    username = $(this).data("username")
    text = "##{position}楼 @#{username} "
    unless comment_content.val().trim().length == 0
      text = "\n#{text}"
    comment_content.focus().val(comment_content.val() + text);
    return false