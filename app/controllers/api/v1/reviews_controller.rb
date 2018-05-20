class ReviewsController < ApplicationController
  before_action :set_book
  before_action :set_review, only: [:show, :update, :destroy]

  # GET /api/v1/reviews
  def index
    @reviews = @book.reviews

    render json: @reviews
  end

  # GET /api/v1/reviews/1
  def show
    render json: @review
  end

  # POST /api/v1/reviews
  def create
    @review = @book.reviews.new(review_params)

    if @review.save
      render json: @review, status: :created, location: api_v1_book_url(@book)
    else
      render json: @review.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/reviews/1
  def update
    if @review.update(review_params)
      render json: @review
    else
      render json: @review.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/reviews/1
  def destroy
    @review.destroy
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_review
    @review = Review.find(params[:id])
  end

  def set_book
    @book = Book.find(params[:book_id])
  end

  # Only allow a trusted parameter "white list" through.
  def review_params
    params.require(:review).permit(:book_id, :title, :description)
  end
end
