class ShoesController < ApplicationController
  before_action :set_shoe, only: [:show, :update, :destroy]
  before_action :authorize_request, except: [:index, :show]


  # GET /shoes
  def index
    @shoes = Shoe.all

    render json: @shoes
  end

  # GET /shoes/1
  def show
    render json: @shoe
  end

  # POST /shoes
  def create
    @shoe = Shoe.new(shoe_params)
    @shoe.user = @current_user
    @genre = Genre.find(params[:genre_id])
    @shoe.genre = @genre
    if @shoe.save
      render json: @shoe, status: :created, location: @shoe
    else
      render json: @shoe.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /shoes/1
  def update
    
    if @shoe.update!(shoe_params)
    
      render json: @shoe
    else
      render json: @shoe.errors, status: :unprocessable_entity
    end
  end

  # DELETE /shoes/1
  def destroy
    @shoe.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shoe
      @shoe = Shoe.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def shoe_params
      params.require(:shoe).permit(:id,:name, :description, :price, :image_url, :genre_id, :created_at, :updated_at, :user_id)

    end
end


# <ActionController::Parameters {
#   "id"=>1,
#    "name"=>"Jordan 3", 
#    "description"=>"HELLO", 
#    "price"=>0, 
#    "image_url"=>"https://www.stadiumgoods.com/cdn-cgi/image/fit%3Dcontain%2Cformat%3Dauto%2Cwidth%3D2000/media/Fcatalog/product/3/1/317111-062_1.png", 
#    "genre_id"=>1,
#    "created_at"=>"2019-12-05T13:13:09.972Z", 
#    "updated_at"=>"2019-12-05T13:13:09.972Z"} permitted: true>