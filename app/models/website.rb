class Website < ActiveRecord::Base
  has_and_belongs_to_many :categories, join_table: :websites_categories

  validates :image,
            attachment_content_type: { content_type: /\Aimage\/.*\Z/ },
            attachment_size: { less_than: 5.megabytes }

  has_attached_file :image, :styles => { :big => "600x400", :medium => "242x200>", :thumb => "100x100>" }, default_url: "/icon/missing.png"

end
