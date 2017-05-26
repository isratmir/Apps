class Category < ActiveRecord::Base
  extend FriendlyId
  has_and_belongs_to_many :websites, join_table: :websites_categories

  before_validation :set_default_title

  friendly_id :title, :use => [:slugged, :finders, :simple_i18n]

  def to_s
    "#{title}"
  end

  def slug=(value)
    if value.present?
      write_attribute(:slug, value)
    end
  end

  private
    def set_default_title
      self.title ||= "cat"
    end

end
