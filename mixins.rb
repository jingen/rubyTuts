# class User
# 	def initialize username, password
# 		@username = username
# 		@password = password
# 	end

# 	def login
		
# 	end

# 	def logout
		
# 	end

# 	def sign_up
		
# 	end

# end
module Login

	def login username, password
		if @username == username and @password == password
			puts "sucessfully logged in as #{@username}"
		end
	end

	def logout
		
	end

	def sign_up
		
	end
end


# class Student < User
class Student 
	include Login
	def initialize name, born_at, gender, username, password
		@name = name
		@born_at = born_at
		@gender = gender
		@username = username
		@password = password
	end

	def age
		age = Time.now.year - @born_at.year
		age -= 1 if Date.now < birthday + age.years
	end

end

# class Teacher < User
class Teacher 
	include Login
	def initialize name, proficiency, list_of_grades, username, password
		@name = name
		@proficiency = proficiency
		@list_of_grades = list_of_grades
		@username = username
		@password = password
	end
end

student = Student.new "Bob", Time.new(1970,4,12), "M", "bob", "alice"
teacher = Teacher.new "Alice", Time.new(1970,4,12), "F", "alice", "tony"

student.login "bob", "alice"
teacher.login "alice", "charlie"
teacher.login "alice", "tony"
