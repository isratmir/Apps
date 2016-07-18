class Category < ActiveRecord::Base
  has_and_belongs_to_many :websites, join_table: :websites_categories

  def to_s
    "#{title}"
  end
end
