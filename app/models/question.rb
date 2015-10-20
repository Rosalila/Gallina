class Question < ActiveRecord::Base

  belongs_to :metric
  has_many :reviews

end
