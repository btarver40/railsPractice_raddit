class Sub < ApplicationRecord
has_many :topics, dependent: :destroy
validates :name, presence: true
end
# what is the parent to child relationship?
# validates is server side validation 
