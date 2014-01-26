class Beer < ActiveRecord::Base
	belongs_to :brewery
	has_many :ratings, dependent: :destroy
	include RatingAverage

  	def average_rating
		ratings = Rating.where beer_id:id
		#score = 0
		#ratings.each do |rating|
		#	score += rating.score
		#end
		average = ratings.average('score')
		return "Has #{ratings.length} " +  "rating".pluralize(ratings.length) + ", average #{average}."
  	end

	def to_s
		"#{(Brewery.find brewery_id).name}: " "#{name}"
	end
end
