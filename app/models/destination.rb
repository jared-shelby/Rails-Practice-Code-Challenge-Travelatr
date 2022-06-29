## DESTINATION MODEL
class Destination < ApplicationRecord
    
    # associations
    has_many :posts
    has_many :bloggers, through: :posts

    # post with most likes
    def featured_post
        self.posts.max_by { |post| post.likes }
    end

    # average age of all unique bloggers who have written about destination
    def average_age
        self.bloggers.uniq.sum { |blogger| blogger.age } / self.bloggers.uniq.length
    end

    # return array of 5 most recent posts
    def recent_posts
        self.posts.last(5)
    end
end
