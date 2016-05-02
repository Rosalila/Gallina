class Metric < ActiveRecord::Base

  belongs_to :gallina
  has_many :questions
  belongs_to :metric_type

end
