require_relative "blog"
require_relative "tweetable"

post = Blog::Post.new({
                        author: "Jose Mota",
                        title: "A title",
                        body: nil
                        # comments: Blog::Comment.new(user: "Jeffey way", body: "A comment")
})

post.extend Tweetable

# begin
#   post.tweet
# rescue Tweetable::NoBodyError
#   # rescue
#   puts "No bydy was in the post. Tweet could not be sent."
# ensure
#   #close file
#   puts "ensure"
# end

post.insert_comment Blog::Comment.new({user: "Jose Mota", body: "User here!"})
post.insert_comment Blog::Comment.new user: nil, body: "User there!"

post.print
