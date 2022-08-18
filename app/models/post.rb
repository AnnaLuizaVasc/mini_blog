class Post < ApplicationRecord
    validates :title, :description, presence: true
    validates :title, length: {minimum: 5}
    validates :description, length: {minimum: 5}

    before_save do
        self.title = self.title + " Anna"
    end

    def first_title 
        title.split(' ').first
    end
end
