class ReviewsController < ApplicationController
  before_action :move_to_index, except: [:index, :show, :search]

  def index
    @reviews = Review.includes(:user).order(created_at: :desc)
  end

  def new
    @review = Review.new
    @user = current_user.username
  end

  def create

    @review = Review.create(review_params)
    if @review.save
      redirect_to root_path
    else
      @user = current_user.username
      render :new
    end
  end

  def show
    @review = Review.find(params[:id])
    @comment = Comment.new
    @comments = @review.comments.includes(:user)
  end

  def destroy
    review = Review.find(params[:id])
    if review.destroy
      redirect_to root_path
    else
      render :show
    end
  end

  def search
    @reviews = Review.search(params[:keyword])
  end
      

  private

  def review_params
    params.require(:review).permit(:title, :place, :date_of_visiting, :pros, :cons, :type_of_visitor_id, :type_of_beach_id, :color_of_sand_id, :cleanliness_id, :transparency_id, :quietness_id, :crowd_id, :street_vendor_id, :shop_id, :toilet_id, :shower_id, :recommended_id, :image).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to new_user_session_path
    end
  end

end
