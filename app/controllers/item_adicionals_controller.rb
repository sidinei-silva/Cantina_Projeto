class ItemAdicionalsController < ApplicationController
  before_action :set_item_adicional, only: [:show, :edit, :update, :destroy]

  # GET /item_adicionals
  # GET /item_adicionals.json
  def index
    @item_adicionals = ItemAdicional.all
  end

  # GET /item_adicionals/1
  # GET /item_adicionals/1.json
  def show
  end

  # GET /item_adicionals/new
  def new
    @item_adicional = ItemAdicional.new
  end

  # GET /item_adicionals/1/edit
  def edit
  end

  # POST /item_adicionals
  # POST /item_adicionals.json
  def create
    @item_adicional = ItemAdicional.new(item_adicional_params)

    respond_to do |format|
      if @item_adicional.save
        format.html { redirect_to @item_adicional, notice: 'Item adicional was successfully created.' }
        format.json { render :show, status: :created, location: @item_adicional }
      else
        format.html { render :new }
        format.json { render json: @item_adicional.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /item_adicionals/1
  # PATCH/PUT /item_adicionals/1.json
  def update
    respond_to do |format|
      if @item_adicional.update(item_adicional_params)
        format.html { redirect_to @item_adicional, notice: 'Item adicional was successfully updated.' }
        format.json { render :show, status: :ok, location: @item_adicional }
      else
        format.html { render :edit }
        format.json { render json: @item_adicional.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_adicionals/1
  # DELETE /item_adicionals/1.json
  def destroy
    @item_adicional.destroy
    respond_to do |format|
      format.html { redirect_to item_adicionals_url, notice: 'Item adicional was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item_adicional
      @item_adicional = ItemAdicional.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_adicional_params
      params.require(:item_adicional).permit(:adicional_id, :item_pedido_id)
    end
end
