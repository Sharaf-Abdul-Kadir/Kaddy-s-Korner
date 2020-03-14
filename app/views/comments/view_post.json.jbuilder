json.comments @comments do |comment|
  json.comment_name comment.username
  json.comment_body comment.body
end