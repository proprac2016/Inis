class TutorController < ApplicationController
  def index
  	@e = Entrevistum.all
   @hr = Horario.all
   @driv = Derivacion.all 
  end
end