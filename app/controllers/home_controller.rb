class HomeController < ApplicationController
  def home
    @pacientes = User.where(role:"paciente")    
  end

  def new
  end

  def create
    
  end

  def edit
    if current_user.role = "paciente"
      @study = Study.find(user: current_user)
    else
      @study = Study.find(user: User.find(param[:id]))
    end

  end

  def show
    if current_user.role = "paciente"
      @study = Study.find(user: current_user)
    else
      @study = Study.find(user: User.find(param[:id]))
    end
  end

end
