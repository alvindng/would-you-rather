class Question < ActiveRecord::Base
  validates_presence_of :prompt, :option1, :option2
  has_many :answers
end
