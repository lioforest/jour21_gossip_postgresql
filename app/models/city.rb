class City < ApplicationRecord
  has_many :users

 #critères de validation
   validates :zip_code,
	    presence: true,
	    uniqueness: true,
	    length: { is: 5 },
	    format: { with: /\A(([0-8][0-9])|(9[0-5])|(2[ab]))[0-9]{3}\z/, message: "please enter a valid french zip code" }
   validates :name,
	    presence: true,
	    length: { in: 3..30 }
end
