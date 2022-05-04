class AppearanceWithEpisodeAndGuestSerializer < ActiveModel::Serializer
  attributes :id, :rating
  belongs_to :episode
  belongs_to :guest
end
