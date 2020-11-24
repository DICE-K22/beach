require 'rails_helper'

describe User do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録がうまくいくとき' do
      it 'username、country、email、password、password_confirmationが存在すれば登録できる' do
        expect(@user).to be_valid
      end
      it 'emailに＠が含まれていたら登録できる' do
        @user.email = 's@s.com'
        expect(@user).to be_valid
      end
      it 'passwordが6文字以上で登録できる' do
        @user.password = 'dddddd'
        @user.password_confirmation = 'dddddd'
        expect(@user).to be_valid
      end
    end

    context '新規登録がうまくいかないとき' do
      it 'usernameが空だと登録できない' do
        @user.username = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Username can't be blank")
      end
      it 'countryが空だと登録できない' do
        @user.country = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Country can't be blank")
      end
      it 'emailが空だと登録できない' do
        @user.email = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Email can't be blank")
      end
      it 'emailに＠が含まれていないと登録できない' do
        @user.email = 'aaa.com'
        @user.valid?
        expect(@user.errors.full_messages).to include('Email is invalid')
      end
      it '重複したemailが存在する場合は登録できない' do
        @user.save
        another_user = FactoryBot.build(:user, email: @user.email)
        another_user.valid?
        expect(another_user.errors.full_messages).to include('Email has already been taken')
      end
      it 'passwordが空だと登録できない' do
        @user.password = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Password can't be blank")
      end
      it 'passwordが6文字以下なら登録できない' do
        @user.password = 'ddddd'
        @user.password_confirmation = 'ddddd'
        @user.valid?
        expect(@user.errors.full_messages).to include('Password is too short (minimum is 6 characters)')
      end
      it 'passwordが存在してもpassword_confirmationが空では登録できない' do
        @user.password_confirmation = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end
      it 'passwordとpassword_confirmationが一致しないと登録できない' do
        @user.password = 'dddddd'
        @user.password_confirmation = 'aaaaaa'
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end
    end
  end
end
