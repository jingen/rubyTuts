# encoding: utf-8
# require_relative "tweetable"

module Blog

  class Post
    # include Tweetable
    attr_reader :author, :title, :body, :comments

    def initialize options
      @author = options[:author]
      @title = options[:title]
      @body = options[:body]
      @comments = options[:comments] || []
    end

    def insert_comment comments
      # comments.each {|c| @comments << c}
      @comments << comments
    end

    def insert_random_comment
      @comments << Comment.new(user: "Jose Mota", body: "A body")
    end

    def print
      puts "This post is called: '#{@title} and it has the following comments:"
      begin
        @comments.each do |c|
          c.print
        end
      rescue UserNotFound => details
        # rescue => details
        puts "this user doesn't exist."
        puts "Error: #{details.message}"
        raise
      end
    end
  end

  class Comment
    attr_reader :user, :body
    def initialize options
      @user = options[:user]
      @body = options[:body]
    end

    def print
      raise UserNotFound , "Comment has no user, please fix this!" if @user.nil?
      puts "This comment was posted by '#@user': #@body"
    end
  end

  class UserNotFound < StandardError

  end

end
