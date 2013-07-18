module Tweetable
	class NoBodyError < StandardError; end
	def tweet
		raise NoBodyError if @body.nil?
		puts "It's a tweet: #{@body}."
	end
end