class Post < ApplicationRecord
    has_many :sims, dependent: :destroy
    belongs_to :user
    def already_simed?(post)
        self.sims.exists?(post_id: post.id)
    end
end
