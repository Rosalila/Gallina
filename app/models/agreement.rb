class Agreement < ActiveRecord::Base

  belongs_to :gallina
  has_many :user_agreements

end
