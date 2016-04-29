class App < ActiveRecord::Base
  belongs_to :app_type
  has_many :comments

  def to_s
    "#{title}"
  end
end
