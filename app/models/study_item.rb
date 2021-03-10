class StudyItem < ApplicationRecord
  validates :title, presence: true
  
  def full_title
    "#{title} - #{category}"
  end
end

# rails migration = estrutura do db