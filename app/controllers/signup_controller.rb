# single page controller for populating relevent data by
# provding an working email address.
class SignupController < ApplicationController
  # Default index page
  def index
  end

  # Simple Apicall
  def apicall
    # Get enriched data reuslt from clearbit api
    result = Apicall.new.send('clearbit', params)

    # return result to client
    respond_to do |format|
      format.html
      format.json { render json: result }
    end
  end
end
