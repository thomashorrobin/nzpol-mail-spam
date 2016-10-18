class PostCodeElectorateMapsController < ApplicationController
  before_action :set_post_code_electorate_map, only: [:show, :edit, :update, :destroy]

  # GET /post_code_electorate_maps
  # GET /post_code_electorate_maps.json
  def index
    @post_code_electorate_maps = PostCodeElectorateMap.all
  end

  # GET /post_code_electorate_maps/1
  # GET /post_code_electorate_maps/1.json
  def show
  end

  # GET /post_code_electorate_maps/new
  def new
    @post_code_electorate_map = PostCodeElectorateMap.new
  end

  # GET /post_code_electorate_maps/1/edit
  def edit
  end

  # POST /post_code_electorate_maps
  # POST /post_code_electorate_maps.json
  def create
    @post_code_electorate_map = PostCodeElectorateMap.new(post_code_electorate_map_params)

    respond_to do |format|
      if @post_code_electorate_map.save
        format.html { redirect_to @post_code_electorate_map, notice: 'Post code electorate map was successfully created.' }
        format.json { render :show, status: :created, location: @post_code_electorate_map }
      else
        format.html { render :new }
        format.json { render json: @post_code_electorate_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /post_code_electorate_maps/1
  # PATCH/PUT /post_code_electorate_maps/1.json
  def update
    respond_to do |format|
      if @post_code_electorate_map.update(post_code_electorate_map_params)
        format.html { redirect_to @post_code_electorate_map, notice: 'Post code electorate map was successfully updated.' }
        format.json { render :show, status: :ok, location: @post_code_electorate_map }
      else
        format.html { render :edit }
        format.json { render json: @post_code_electorate_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post_code_electorate_maps/1
  # DELETE /post_code_electorate_maps/1.json
  def destroy
    @post_code_electorate_map.destroy
    respond_to do |format|
      format.html { redirect_to post_code_electorate_maps_url, notice: 'Post code electorate map was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_code_electorate_map
      @post_code_electorate_map = PostCodeElectorateMap.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_code_electorate_map_params
      params.require(:post_code_electorate_map).permit(:electorate_id, :post_code_id)
    end
end
