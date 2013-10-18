class ReferenceSerializer < ActiveModel::Serializer
  embed :ids
  attributes :sha, :title, :html
end
