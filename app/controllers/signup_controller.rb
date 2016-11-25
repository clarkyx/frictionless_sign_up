class SignupController < ApplicationController
  def index
  end

  def apicall
    if params["email"].empty?
      result = {}
    else
      email = params["email"]
      result = Clearbit::Enrichment.find(email: email, stream:true)
    end

    puts result
    respond_to do |format|
      format.html
      format.json {render json: result}
    end

  end
end
