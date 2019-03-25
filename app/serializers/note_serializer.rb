class NoteSerializer < ActiveModel::Serializer
  attributes :date, :name, :content
  def name
    object.officer.name
  end

end