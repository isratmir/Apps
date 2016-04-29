class AppType < ActiveRecord::Base
  has_many :apps

  def to_s
    "#{title}"
  end
end
