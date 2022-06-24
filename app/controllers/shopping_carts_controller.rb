class ShoppingCartsController < ApplicationController
  before_action :set_shopping_cart, only: %i[ show edit update destroy ]
  before_action :find_user, :find_product, only: %i[ new ]
  # GET /shopping_carts or /shopping_carts.json
  def index
    # @shopping_carts = ShoppingCart.all
    @user=User.first
    @shopping_cart= @user.shopping_cart
    @products= @shopping_cart.products
  end

  # GET /shopping_carts/1 or /shopping_carts/1.json
  def show
  end

  # GET /shopping_carts/new
  def new
  
    @shopping_cart = ShoppingCart.new

  end

  # GET /shopping_carts/1/edit
  def edit
  end

  # POST /shopping_carts or /shopping_carts.json
  def create
    
    # @shopping_cart = ShoppingCart.new(shopping_cart_params)
    @shopping_cart= User.first.shopping_cart
    # respond_to do |format|
    #   if @shopping_cart.save
        # binding.pry
        @shopping_cart.product_shopping_carts.create(product_shopping_cart_params)
       redirect_to shopping_carts_url,notice: "Shopping cart was successfully created." 
        # format.json { render :show, status: :created, location: @shopping_cart }
      # else
      #   format.html { render :new, status: :unprocessable_entity }
      #   format.json { render json: @shopping_cart.errors, status: :unprocessable_entity }
      # end
    # end
  end

  # PATCH/PUT /shopping_carts/1 or /shopping_carts/1.json
  def update
    respond_to do |format|
      if @shopping_cart.update(shopping_cart_params)
        format.html { redirect_to shopping_cart_url(@shopping_cart), notice: "Shopping cart was successfully updated." }
        format.json { render :show, status: :ok, location: @shopping_cart }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @shopping_cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shopping_carts/1 or /shopping_carts/1.json
  def destroy
    @shopping_cart.destroy

    respond_to do |format|
      format.html { redirect_to shopping_carts_url, notice: "Shopping cart was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shopping_cart
      @shopping_cart = ShoppingCart.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shopping_cart_params
      params.require(:shopping_cart).permit( :user_id, :product_id)
    end

    def product_shopping_cart_params
       params.require(:shopping_cart).permit( :product_id, :quantity)
      # params.fetch(:user_id, :product_id, :quantity)
    end

    def find_user
      @user= User.find(params[:user_id])
    end

    def find_product
      @product= Product.find(params[:product_id])
    end
end
