class ReferenceSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :title, :html
end
