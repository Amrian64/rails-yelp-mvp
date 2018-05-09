class ReviewsController < ActionController::Base


  # def index
  #   @reviews = Review.all
  # end
  def new
      # we need @restaurant in our `simple_form_for`
      @restaurant = Restaurant.find(params[:restaurant_id])
      @review = Review.new
    end

    def create
      @review = Review.new(review_params)
      # we need `restaurant_id` to asssociate review with corresponding restaurant
      @review.restaurant = Restaurant.find(params[:restaurant_id])
      if @review.save
        redirect_to restaurant_path(params[:restaurant_id])
      else
        render :new
      end
    end

    private

    def review_params
      params.require(:review).permit(:content, :rating)
    end

end

 # t.text "content"
 #    t.integer "rating"
 #    t.integer "restaurant_id"
 #    t.datetime "created_at", null: false
 #    t.datetime "updated_at", null: false
 #    t.index ["restaurant_id"], name: "index_reviews_on_restaurant_id"
