class UserAgreementsController < ApplicationController
  before_action :set_user_agreement, only: [:show, :edit, :update, :destroy]

  # GET /user_agreements
  # GET /user_agreements.json
  def index
    @user_agreements = UserAgreement.all
  end

  # GET /user_agreements/1
  # GET /user_agreements/1.json
  def show
  end

  # GET /user_agreements/new
  def new
    @user_agreement = UserAgreement.new
  end

  # GET /user_agreements/1/edit
  def edit
  end

  # POST /user_agreements
  # POST /user_agreements.json
  def create
    @user_agreement = UserAgreement.new(user_agreement_params)
    if !@user_agreement.agreement.gallina.users.include?(current_user)
      redirect_to @user_agreement.agreement.gallina
      return
    end
    respond_to do |format|
      if @user_agreement.save
        format.html { redirect_to @user_agreement, notice: 'User agreement was successfully created.' }
        format.json { render :show, status: :created, location: @user_agreement }
      else
        format.html { render :new }
        format.json { render json: @user_agreement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_agreements/1
  # PATCH/PUT /user_agreements/1.json
  def update
    if !@user_agreement.agreement.gallina.users.include?(current_user)
      redirect_to @user_agreement.agreement.gallina
      return
    end
    respond_to do |format|
      if @user_agreement.update(user_agreement_params)
        format.html { redirect_to @user_agreement, notice: 'User agreement was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_agreement }
      else
        format.html { render :edit }
        format.json { render json: @user_agreement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_agreements/1
  # DELETE /user_agreements/1.json
  def destroy
    if !@user_agreement.agreement.gallina.users.include?(current_user)
      redirect_to @user_agreement.agreement.gallina
      return
    end
    @user_agreement.destroy
    respond_to do |format|
      format.html { redirect_to user_agreements_url, notice: 'User agreement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_agreement
      @user_agreement = UserAgreement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_agreement_params
      params.require(:user_agreement).permit(:user_id, :agreement_id, :accepted)
    end
end
