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
        @comments = option[:comments]
    end
end

class Comment
    attr_reader :user, :body
    def initialized(user, body)
        @user = user
        @body = body
    end
end
#post = Post.new "Jose Mota", "My first post", "The post is awesome"
post = Post.new author: "Jingen Lin",
                title: "My first post",
                body: "The post is awesome",
                comments: []
p post
