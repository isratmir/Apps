class Category < ActiveRecord::Base
  extend FriendlyId
  has_and_belongs_to_many :websites, join_table: :websites_categories

  before_save :set_slug

  friendly_id :title, :use => [:slugged, :finders]

  def to_s
    "#{title}"
  end

  private
    def set_default_title
      self.title ||= "category"
    end

    def set_slug

      formatted = self.title.gsub(/\s/, "-")

      translit = {'А'=>'A','Б'=>'B','В'=>'V','Г'=>'G','Д'=>'D','Е'=>'E','Ё'=>'Jo','Ж'=>'Zh','З'=>'Z','И'=>'I','Й'=>'J','К'=>'K','Л'=>'L','М'=>'M','Н'=>'N','О'=>'O','П'=>'P','Р'=>'R','С'=>'S','Т'=>'T','У'=>'U','Ф'=>'F','Х'=>'H','Ц'=>'C','Ч'=>'Ch','Ш'=>'Sh','Щ'=>'Shh','Ъ'=>'\"','Ы'=>'Y','Ь'=>'\'','Э'=>'Eh','Ю'=>'Yu','Я'=>'Ya',
          'а' => 'a', 'б' => 'b', 'в' => 'v','г' => 'g','д' => 'd','е' => 'e','ё' => 'e','ж' => 'j','з' => 'z','и' => 'i','к' => 'k','л' => 'l','м' => 'm','н' => 'n','о' => 'o','п' => 'p','р' => 'r','с' => 's','т' => 't','у' => 'u','ф' => 'f','х' => 'h','ь' => '','ч' => 'ch','ш' => 'sh','щ' => 'sh','ц' => 'tz','й' => 'j','ы' => 'yi','э' => 'ye','ю' => 'yu','я' => 'ya','-'=>'-'}

      slugged = []
      arr = formatted.split(//)
      arr.each do |value|
        translit.each do |key, val|
          if value == key
            slugged.push val
          else
            slugged.push value
          end
        end
      end

      self.slug = slugged.join.downcase
    end

end
