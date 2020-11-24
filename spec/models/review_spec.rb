require 'rails_helper'

RSpec.describe Review, type: :model do
  before do
    @review = FactoryBot.build(:review)
  end
  describe '新規投稿' do
    context '投稿がうまくいくとき' do
      it 'title, place, date_of_visiting, type_of_visitor_id, type_of_beach_id, color_of_sand_id, cleanliness_id, transparency_id, quietness_id, crowd_id, street_vendor_id, shop_id, toilet_id, shower_id, recommended_idが存在すれば投稿できる' do
        expect(@review).to be_valid
      end
      it 'prosがなくても投稿できる' do
        @review.pros = nil
        expect(@review).to be_valid
      end
      it 'consがなくても投稿できる' do
        @review.cons = nil
        expect(@review).to be_valid
      end
      it 'imageがなくても投稿できる' do
        @review.image = nil
        expect(@review).to be_valid
      end
    end

    context '投稿がうまくいかないとき' do
      it 'titleが空では投稿できない' do
        @review.title = nil
        @review.valid?
        expect(@review.errors.full_messages).to include("Title can't be blank")
      end
      it 'placeが空では投稿できない' do
        @review.place = nil
        @review.valid?
        expect(@review.errors.full_messages).to include("Place can't be blank")
      end
      it 'date_of_visitingが空では投稿できない' do
        @review.date_of_visiting = nil
        @review.valid?
        expect(@review.errors.full_messages).to include("Date of visiting can't be blank")
      end
      it 'type_of_visitor_idが空では投稿できない' do
        @review.type_of_visitor_id = nil
        @review.valid?
        expect(@review.errors.full_messages).to include("Type of visitor can't be blank")
      end
      it 'type_of_visitor_idのidが1だった場合は投稿できない' do
        @review.type_of_visitor_id = 1
        @review.valid?
        expect(@review.errors.full_messages).to include("Type of visitor Select")
      end
      it 'type_of_beach_idが空では投稿できない' do
        @review.type_of_beach_id = nil
        @review.valid?
        expect(@review.errors.full_messages).to include("Type of beach can't be blank")
      end
      it 'type_of_beach_idのidが1だった場合は投稿できない' do
        @review.type_of_beach_id = 1
        @review.valid?
        expect(@review.errors.full_messages).to include("Type of beach Select")
      end
      it 'color_of_sand_idが空では投稿できない' do
        @review.color_of_sand_id = nil
        @review.valid?
        expect(@review.errors.full_messages).to include("Color of sand can't be blank")
      end
      it 'color_of_sand_idのidが1だった場合は投稿できない' do
        @review.color_of_sand_id = 1
        @review.valid?
        expect(@review.errors.full_messages).to include("Color of sand Select")
      end
      it 'cleanliness_idが空では投稿できない' do
        @review.cleanliness_id = nil
        @review.valid?
        expect(@review.errors.full_messages).to include("Cleanliness can't be blank")
      end
      it 'cleanliness_idのidが1だった場合は投稿できない' do
        @review.cleanliness_id = 1
        @review.valid?
        expect(@review.errors.full_messages).to include("Cleanliness Select")
      end
      it 'transparency_idが空では登録できない' do
        @review.transparency_id = nil
        @review.valid?
        expect(@review.errors.full_messages).to include("Transparency can't be blank")
      end
      it 'transparency_idのidが1だった場合は投稿できない' do
        @review.transparency_id = 1
        @review.valid?
        expect(@review.errors.full_messages).to include("Transparency Select")
      end
      it 'quietness_idが空では投稿できない' do
        @review.quietness_id = nil
        @review.valid?
        expect(@review.errors.full_messages).to include("Quietness can't be blank")
      end
      it 'quietness_idのidが1だった場合は投稿できない' do
        @review.quietness_id = 1
        @review.valid?
        expect(@review.errors.full_messages).to include("Quietness Select")
      end
      it 'crowd_idが空では投稿できない' do
        @review.crowd_id = nil
        @review.valid?
        expect(@review.errors.full_messages).to include("Crowd can't be blank")
      end
      it 'crowd_idのidが1だった場合は投稿できない' do
        @review.crowd_id = 1
        @review.valid?
        expect(@review.errors.full_messages).to include("Crowd Select")
      end
      it 'street_vendor_idが空では投稿できない' do
        @review.street_vendor_id = nil
        @review.valid?
        expect(@review.errors.full_messages).to include("Street vendor can't be blank")
      end
      it 'street_vendor_idのidが1だった場合は投稿できない' do
        @review.street_vendor_id = 1
        @review.valid?
        expect(@review.errors.full_messages).to include("Street vendor Select")
      end
      it 'shop_idが空では投稿できない' do
        @review.shop_id = nil
        @review.valid?
        expect(@review.errors.full_messages).to include("Shop can't be blank")
      end
      it 'shop_idのidが1だった場合は投稿できない' do
        @review.shop_id = 1
        @review.valid?
        expect(@review.errors.full_messages).to include("Shop Select")
      end
      it 'toilet_idが空では投稿できない' do
        @review.toilet_id = nil
        @review.valid?
        expect(@review.errors.full_messages).to include("Toilet can't be blank")
      end
      it 'toilet_idのidが1だった場合は投稿できない' do
        @review.toilet_id = 1
        @review.valid?
        expect(@review.errors.full_messages).to include("Toilet Select")
      end
      it 'shower_idが空では投稿できない' do
        @review.shower_id = nil
        @review.valid?
        expect(@review.errors.full_messages).to include("Shower can't be blank")
      end
      it 'shower_idのidが1だった場合は投稿できない' do
        @review.shower_id = 1
        @review.valid?
        expect(@review.errors.full_messages).to include("Shower Select")
      end
      it 'recommended_idが空では投稿できない' do
        @review.recommended_id = nil
        @review.valid?
        expect(@review.errors.full_messages).to include("Recommended can't be blank")
      end
      it 'recommended_idのidが1だった場合は投稿できない' do
        @review.recommended_id = 1
        @review.valid?
        expect(@review.errors.full_messages).to include("Recommended Select")
      end
    end
  end
end
