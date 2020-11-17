class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string     :title,               null: false
      t.string     :place,               null: false
      t.date       :date_of_visiting,    null: false
      t.text       :pros
      t.text       :cons
      t.integer    :type_of_visitor_id,  null: false
      t.integer    :type_of_beach_id,    null: false
      t.integer    :color_of_sand_id,    null: false
      t.integer    :cleanliness_id,      null: false
      t.integer    :transparency_id,     null: false
      t.integer    :quietness_id,        null: false
      t.integer    :crowd_id,            null: false
      t.integer    :street_vendor_id,    null: false
      t.integer    :shop_id,             null: false
      t.integer    :toilet_id,           null: false
      t.integer    :shower_id,           null: false
      t.integer    :recommended_id,      null: false
      t.references :user,                null: false, foreign_key: true
      t.timestamps
    end
  end
end
