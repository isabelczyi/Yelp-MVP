class ReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant

    respond_to do |format|
      if @review.save
        format.html { redirect_to restaurant_url(@restaurant), notice: "Review was successfully created." }
        format.json { render :show, status: :created, location: @review }
      else
        format.html { render 'restaurants/show', status: :unprocessable_entity }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
    # if @review.save
    #   redirect_to restaurant_path(@restaurant)
    # else
    #   render 'restaurants/show'
    # end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
