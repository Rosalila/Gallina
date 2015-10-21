class HomeController < ApplicationController

  def index
  end

  def accept_agreement
    user_agreement = UserAgreement.new
    user_agreement.user_id = current_user.id
    user_agreement.agreement_id = params[:agreement_id]
    user_agreement.accepted = params[:accepted]

    if !Agreement.find_by_id(user_agreement.agreement_id).gallina.users.include?(current_user)
      redirect_to Agreement.find_by_id(user_agreement.agreement_id).gallina
      return
    end

    user_agreement.save
    redirect_to user_agreement.agreement.gallina
  end

end
