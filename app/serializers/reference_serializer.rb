class ReferenceSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :title, :html

  def id
    object.sha
  end
end
