class Comment < ApplicationRecord


  belongs_to :user
  belongs_to :gossip


 #critères de validation
    validates :content,
	    presence: true ,
	    length: { in: 4..800 }
	    

end
