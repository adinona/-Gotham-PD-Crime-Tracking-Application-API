class OfficerInvestSerializer < ActiveModel::Serializer
  attributes :name, :rank, :unit_name, :start_date, :end_date


  def unit_name
    object.officer.unit.name
  end


	def name
		object.officer.name
		
	end



	def rank
		object.officer.rank
	end


end