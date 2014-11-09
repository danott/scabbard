class PassageSerializer < ActiveModel::Serializer
  embed :ids
  attributes :sha, :heading, :html
end
