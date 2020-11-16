class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string     :title,           null: false
      t.string     :place,           null: false
      t.integer    :year_visit,      null: false
      t.integer    :month_visit,     null: false
      t.text       :pros
      t.text       :cons
      t.integer    :type_of_visitor, null: false
      t.integer    :type_of_beach,   null: false
      t.integer    :color_of_sand,   null: false
      t.integer    :cleanliness,     null: false
      t.integer    :transparency,    null: false
      t.integer    :quietness,       null: false
      t.integer    :crowd,           null: false
      t.integer    :street_vendor,   null: false
      t.integer    :shop,            null: false
      t.integer    :toilet,          null: false
      t.integer    :shower,          null: false
      t.integer    :recommended,     null: false
      
      t.timestamps
    end
  end
end
