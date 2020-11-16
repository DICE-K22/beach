class ReviewsController < ApplicationController
  def index
    @reviews = Review.all.order(created_at: :desc)
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.create(review_params)
    if @review.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:title, :place, :date_of_visiting, :pros, :cons, :type_of_visitor_id, :type_of_beach_id, :color_of_sand_id, :cleanliness_id, :transparency_id, :quietness_id, :crowd_id, :street_vendor_id, :shop_id, :toilet_id, :shower_id, :recommended_id, :image)
  end
end
