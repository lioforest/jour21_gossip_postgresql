class Gossip < ApplicationRecord


  belongs_to :user
  has_many :tag_gossip_links
  has_many :tags, through: :tag_gossip_links


 #critères de validation
   validates :title,
	    presence: true,
	    length: { in: 4..14 }
	validates :content, presence: true

end
