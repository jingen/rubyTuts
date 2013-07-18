# encoding: utf-8

#Classes

class Post
  attr_reader :author, :title, :body, :comments
  #    def initialize author, title, body, comments=[]
  #        @author = author
  #        @title = title
  #        @body = body
  #        @comments = comments
  #    end
  def initialize option
    @author = option[:author]
    @title = option[:title]
    @body = option[:body]
    @comments = option[:comments] || []
  end

  def insert_comment *comments
  # def insert_comment first, second, *thirds, options, &block
    comments.each {|c| @comments << c}
  end

end

class Comment
  attr_reader :user, :body
  # def initialized(user, body)
  #   @user = user
  #   @body = body
  # end
  def initialize option
    @user = option[:user]
    @body = option[:body]
  end
end
#post = Post.new "Jose Mota", "My first post", "The post is awesome"
post = Post.new author: "Jingen Lin", title: "My first post", body: "The post is awesome"
# comments: []
# p post

post.insert_comment Comment.new({ user: "Jeffrey Way", body: "Nice post, I'll take it."}),
                    Comment.new({ user: "Jose Mota", body: "Sorry, not for sale."})
p post

def method *list
    p list.inspect
end

# method 1,2,3,4,5
# args = [6,7,8,9,10]
# method *args
method *[1,2], 3, *[4,5]


