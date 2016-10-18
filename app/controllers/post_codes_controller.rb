class PostCodesController < ApplicationController
  before_action :set_post_code, only: [:show, :edit, :update, :destroy]

  # GET /post_codes
  # GET /post_codes.json
  def index
    @post_codes = PostCode.all
  end

  # GET /post_codes/1
  # GET /post_codes/1.json
  def show
  end

  # GET /post_codes/new
  def new
    @post_code = PostCode.new
  end

  # GET /post_codes/1/edit
  def edit
  end

  # POST /post_codes
  # POST /post_codes.json
  def create
    @post_code = PostCode.new(post_code_params)

    respond_to do |format|
      if @post_code.save
        format.html { redirect_to @post_code, notice: 'Post code was successfully created.' }
        format.json { render :show, status: :created, location: @post_code }
      else
        format.html { render :new }
        format.json { render json: @post_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /post_codes/1
  # PATCH/PUT /post_codes/1.json
  def update
    respond_to do |format|
      if @post_code.update(post_code_params)
        format.html { redirect_to @post_code, notice: 'Post code was successfully updated.' }
        format.json { render :show, status: :ok, location: @post_code }
      else
        format.html { render :edit }
        format.json { render json: @post_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post_codes/1
  # DELETE /post_codes/1.json
  def destroy
    @post_code.destroy
    respond_to do |format|
      format.html { redirect_to post_codes_url, notice: 'Post code was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_code
      @post_code = PostCode.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_code_params
      params.require(:post_code).permit(:code)
    end
end