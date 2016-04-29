class Derivacion < ActiveRecord::Base
	belongs_to :departamento
	belongs_to :entrevista

	validates :entrevista_id, :presence => true
	validates :departamento_id, :presence => true
end
