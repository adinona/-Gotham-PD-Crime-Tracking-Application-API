class SuspectSerializer < ActiveModel::Serializer
  attributes :name, :aka, :date_added, :date_dropped

  def name
  	object.criminal.name
  	
  end

  def aka
  	object.criminal.aka

  end

	def date_added
		object.added_on
	end
	def date_dropped
		
		object.dropped_on
	end
end