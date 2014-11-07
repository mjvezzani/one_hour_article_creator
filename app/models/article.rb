class Article < ActiveRecord::Base

  validates :title, presence: true,
                    uniqueness: true
  validates :author, presence: true

  def title_and_author
    "#{self.title}: by #{self.author}"
  end

end
