class Movie < ActiveRecord::Base
	attr_accessible :title, :rating, :description, :release_date, :create_at, :updated_at
	validates :title, :rating, :release_date, :presence => true
end