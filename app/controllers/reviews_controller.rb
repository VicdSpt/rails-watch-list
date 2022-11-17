# class ReviewsController < ApplicationController
#   def index
#     @reviews = Reviews.all
#   end

#   def show
#     @review = Review.find(params[:id])
#   end
  
#   def new
#     @review = Review.new
#   end

#   def create
#     @review= reviewnew(reviewparams)
#     if @reviewsave
#     redirect_to review_path(@review)
#     else
#       render:new, status: :unprocessable_entity    
#    end
#   end

#   def destroy
#     @review = Review.find(params[:id])
#     @review.destroy
#     redirect_to review_path, status: :see_other
#   end

#   private

#   def review_params
#     params.require(:review).permit(:comment, :rating)
#   end
# end
