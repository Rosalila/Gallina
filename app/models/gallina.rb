class Gallina < ActiveRecord::Base

  has_many :agreements
  has_many :metrics
  has_many :gallina_members
  has_many :users, through: :gallina_members

  def reviews
    result = []
    metrics.each do |metric|
      metric.questions.each do |question|
        question.reviews.each do |review|
          result.push(review)
        end
      end
    end
    return result
  end

end
