class Brewery < ActiveRecord::Base
	has_many :beers, dependent: :destroy
	has_many :ratings, through: :beers
	include RatingAverage

	#def average_rating
	#	b = Brewery.find_by name:name
	#	ratings = b.ratings
	#	average = ratings.average('score')
	#	return "Has #{ratings.length} " +  "rating".pluralize(ratings.length) + ", average #{average}."
  	#end

	def to_s
		"#{name}"
	end
end
