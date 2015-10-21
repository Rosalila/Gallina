class GallinaMembersController < ApplicationController
  before_action :set_gallina_member, only: [:show, :edit, :update, :destroy]

  # GET /gallina_members
  # GET /gallina_members.json
  def index
    @gallina_members = GallinaMember.all
  end

  # GET /gallina_members/1
  # GET /gallina_members/1.json
  def show
  end

  # GET /gallina_members/new
  def new
    @gallina_member = GallinaMember.new
  end

  # GET /gallina_members/1/edit
  def edit
  end

  # POST /gallina_members
  # POST /gallina_members.json
  def create
    @gallina_member = GallinaMember.new(gallina_member_params)
    if !@gallina_member.gallina.users.include?(current_user)
      redirect_to @gallina_member.gallina
      return
    end
    respond_to do |format|
      if @gallina_member.save
        format.html { redirect_to @gallina_member, notice: 'Gallina member was successfully created.' }
        format.json { render :show, status: :created, location: @gallina_member }
      else
        format.html { render :new }
        format.json { render json: @gallina_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gallina_members/1
  # PATCH/PUT /gallina_members/1.json
  def update
    if !@gallina_member.gallina.users.include?(current_user)
      redirect_to @gallina_member.gallina
      return
    end
    respond_to do |format|
      if @gallina_member.update(gallina_member_params)
        format.html { redirect_to @gallina_member, notice: 'Gallina member was successfully updated.' }
        format.json { render :show, status: :ok, location: @gallina_member }
      else
        format.html { render :edit }
        format.json { render json: @gallina_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gallina_members/1
  # DELETE /gallina_members/1.json
  def destroy
    if !@gallina_member.gallina.users.include?(current_user)
      redirect_to @gallina_member.gallina
      return
    end
    @gallina_member.destroy
    respond_to do |format|
      format.html { redirect_to gallina_members_url, notice: 'Gallina member was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gallina_member
      @gallina_member = GallinaMember.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gallina_member_params
      params.require(:gallina_member).permit(:gallina_id, :user_id)
    end
end
