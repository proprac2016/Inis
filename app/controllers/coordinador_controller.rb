class CoordinadorController < ApplicationController
  def index
  	@m = Motivo.all
   @ma = Aula.all
   @dp = Departamento.all
  end
end
