class Topic < ApplicationRecord
  belongs_to :sub
  has_many :comments, dependent: :destroy
  validates :name, :body, presence: true
end
#since we made a controller of comments, we need to put it in our topics.rb file
#to let it know that we will have many comments for each topic
# optional:true means that something doesnt have to belong
# to one thing or the other; it is optional
