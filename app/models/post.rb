class Post < ApplicationRecord
    validates :title, :image_url, :content, presence: true

    before_save :censor

    def censor
        self.content = self.content.gsub("censura", " ")
    end
end
