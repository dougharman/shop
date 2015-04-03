class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  

  # GET /products
  # GET /products.json
  def index
    @products = Product.all

    def Product.create(params)
      @description = params[:description]
      @price = params[:price]
    end

  end

  def price
#    @price = Product.each {|price| puts "product : #{price}" }
    
      
#    h = Hash.new { |h, k| hash[key] = "product : #{price}" }
    
 #  h = Hash.new { |hash, key| hash[key] = "price: #{key}" }

  
  end

  def description
  end



  # GET /products/1
  # GET /products/1.json
  def show
    @products = Product.find(params[:id])
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def save
    respond_to do |format|
      format.html
      format.json
    end
  end

  def upload
    respond_to do |format|
      format.html
      format.json
    end
  end

  def upload_hot_1
  end

  def upload_hot_2
  end

  def upload_blueimp
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :description, :price)
    end
end
