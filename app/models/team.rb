

class Team
  attr_accessor :name, :motto


  def initialize(params)
    @name = params[:team][:name]
    @motto = params[:team][:motto]
  end

end
