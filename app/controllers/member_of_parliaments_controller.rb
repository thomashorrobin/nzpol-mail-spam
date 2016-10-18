class MemberOfParliamentsController < ApplicationController
  before_action :set_member_of_parliament, only: [:show, :edit, :update, :destroy]

  # GET /member_of_parliaments
  # GET /member_of_parliaments.json
  def index
    @member_of_parliaments = MemberOfParliament.all
  end

  # GET /member_of_parliaments/1
  # GET /member_of_parliaments/1.json
  def show
  end

  # GET /member_of_parliaments/new
  def new
    @member_of_parliament = MemberOfParliament.new
  end

  # GET /member_of_parliaments/1/edit
  def edit
  end

  # POST /member_of_parliaments
  # POST /member_of_parliaments.json
  def create
    @member_of_parliament = MemberOfParliament.new(member_of_parliament_params)

    respond_to do |format|
      if @member_of_parliament.save
        format.html { redirect_to @member_of_parliament, notice: 'Member of parliament was successfully created.' }
        format.json { render :show, status: :created, location: @member_of_parliament }
      else
        format.html { render :new }
        format.json { render json: @member_of_parliament.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /member_of_parliaments/1
  # PATCH/PUT /member_of_parliaments/1.json
  def update
    respond_to do |format|
      if @member_of_parliament.update(member_of_parliament_params)
        format.html { redirect_to @member_of_parliament, notice: 'Member of parliament was successfully updated.' }
        format.json { render :show, status: :ok, location: @member_of_parliament }
      else
        format.html { render :edit }
        format.json { render json: @member_of_parliament.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /member_of_parliaments/1
  # DELETE /member_of_parliaments/1.json
  def destroy
    @member_of_parliament.destroy
    respond_to do |format|
      format.html { redirect_to member_of_parliaments_url, notice: 'Member of parliament was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member_of_parliament
      @member_of_parliament = MemberOfParliament.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def member_of_parliament_params
      params.require(:member_of_parliament).permit(:first_name, :last_name, :email, :electorate_id)
    end
end
