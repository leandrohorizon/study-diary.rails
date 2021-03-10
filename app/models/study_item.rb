class StudyItem < ApplicationRecord

  def full_title
    "#{title} - #{category}"
  end
end

# rails migration = estrutura do db