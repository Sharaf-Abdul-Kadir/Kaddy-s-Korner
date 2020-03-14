json.posts @posts do |post|
    json.post_title post.title
    json.post_body post.body
end