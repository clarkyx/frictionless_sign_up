# class for utlizing api call
class Apicall
  # method for clearbit api call by providing a email
  def clearbit(params)
    # if client email is empty, set result to empty, otherwise set
    # result to data returned from clearbit api

    return {} if params['email'].empty?

    email = params['email']
    clearbitformatresult(Clearbit::Enrichment.find(email: email,
                                                   stream: true))
  end

  private

  # Format data result to compensate frontend data handling.
  def clearbitformatresult(result)
    unless result.nil?
      result.person = {} if result.person.nil?
      result.person.avatar = nil if result.person.avatar.nil?
    end
    result
  end
end
