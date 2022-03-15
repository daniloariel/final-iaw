class UserController < ApplicationController
  def user
    paciente = User.find(params[:id])
    if paciente.role == "medico"
      @paciente = nill
    else
      @paciente = paciente
    end

    @age = ((Date.today - paciente.dob.to_date) / 365).floor
  
    @studies = Study.where(user: User.find(params[:id]))

  end 

  #def create
  #  @mdpa = Study.new()
  #end

end
