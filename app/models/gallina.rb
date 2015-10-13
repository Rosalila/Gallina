class Gallina < ActiveRecord::Base

  has_many :agreements
  has_many :metrics

end
