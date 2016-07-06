class StudentSubmitSerializer < ActiveModel::Serializer
  attributes :id, :name, :year, :can_graduate?

  def can_graduate?
    object.can_graduate?
  end
end
