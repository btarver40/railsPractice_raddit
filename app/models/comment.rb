class Comment < ApplicationRecord
  belongs_to :topic
  before_save :check_author
  validates :body, presence: true

  def check_author
    if self.author.blank?
      self.author = 'Anon Coward'
    end
  end
end
#if self.author is blank
#put 'anon coward'