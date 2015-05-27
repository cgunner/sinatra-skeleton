class User < ActiveRecord::Base
	has_many :reviews
	has_many :bakes

	# def reviews
	# 	Review.where(user_id: self.id)
	# end

	# attr_reader :name, :address

	# def name
	# 	@name
	# end

	# def address
	# 	@address
	# end

	# has_many :bakes
end

# john = User.create(name: "john")
# john.reviews
# [<Review id: 1>, <Review id: 2>, <Review id: 3, user_id: 1 >]

#methods = action

#first_run = Run.first
#john.reset_password
#first_run.name
