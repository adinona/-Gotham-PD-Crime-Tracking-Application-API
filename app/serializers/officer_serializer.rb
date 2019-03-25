class OfficerSerializer < ActiveModel::Serializer
  attributes :id, :name, :rank, :unit_name, :assignments

  def name
  	object.first_name + " " + object.last_name
  	
  end

  def unit_name
    object.unit.name
  end

  def assignments
  	object.investigations.map do |invest|
	  	OfficerInvestigationSerializer.new(invest)
	end
  	
  end
end
