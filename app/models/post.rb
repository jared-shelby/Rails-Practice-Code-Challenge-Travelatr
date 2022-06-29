## POST MODEL
class Post < ApplicationRecord
    
    # associations
    belongs_to :blogger
    belongs_to :destination

    # validations
    validates :title, presence: true
    validates :content, length: { minimum: 101 }

end
