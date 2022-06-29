## BLOGGER MODEL
class Blogger < ApplicationRecord
    
    # associations
    has_many :posts
    has_many :destinations, through: :posts

    # validations
    validates :name, presence: true, uniqueness: true
    validates :age, numericality: { only_integer: true, greater_than: 0 }
    validates :bio, length: { minimum: 31 }

    # return total likes on all posts
    def total_likes
        self.posts.sum { |post| post.likes }
    end

    # return post with most likes
    def featured_post
        self.posts.max_by { |post| post.likes } 
    end

end
