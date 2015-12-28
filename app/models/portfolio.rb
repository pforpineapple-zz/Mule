class Portfolio < ActiveRecord::Base
	validates :title, presence: true, uniqueness: true
	validates :description, uniqueness: true
	validates :content, presence: true
end
