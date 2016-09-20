class Question < ActiveRecord::Base
  validates_presence_of :prompt, :option1, :option2
  has_many :answers

  def totalCount
    return self.option1_count + self.option2_count
  end

  def averageCount(count)
    if self.totalCount > 0
      return (count.to_f/self.totalCount.to_f * 100).round
    end
  end
end
