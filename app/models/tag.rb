class Tag < ApplicationRecord
  has_many :tag_gossip_links
  has_many :gossips, through: :tag_gossip_links

 #critères de validation
   validates :title,
	    presence: true,
	    length: { in: 3..30 }
end
