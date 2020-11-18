class Review < ApplicationRecord
  has_one_attached :image
  has_many :comments
  belongs_to :user

  def self.search(search)
    if search != ""
      Review.where('place LIKE(?)', "%#{search}%")
    else
      Review.all
    end
  end
  
  with_options presence: true do
    validates :title
    validates :place
    validates :date_of_visiting

    with_options numericality: {other_than: 1 } do
      validates :type_of_visitor_id
      validates :type_of_beach_id
      validates :color_of_sand_id
      validates :cleanliness_id
      validates :transparency_id
      validates :quietness_id
      validates :crowd_id
      validates :street_vendor_id
      validates :shop_id
      validates :toilet_id
      validates :shower_id
      validates :recommended_id
    end
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :type_of_visitor
  belongs_to :type_of_beach
  belongs_to :color_of_sand
  belongs_to :cleanliness
  belongs_to :transparency
  belongs_to :quietness
  belongs_to :crowd
  belongs_to :street_vendor
  belongs_to :shop
  belongs_to :toilet
  belongs_to :shower
  belongs_to :recommended

end
