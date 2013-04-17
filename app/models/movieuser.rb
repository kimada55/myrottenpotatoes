# Edit app/models/moviegoer.rb to look like this:
class Movieuser < ActiveRecord::Base
  include ActiveModel::MassAssignmentSecurity
  attr_protected :uid, :provider, :name # see text for explanation
  def self.create_with_omniauth(auth)
    Movieuser.create!(
      :provider => auth["provider"],
      :uid => auth["uid"],
      :name => auth["info"]["name"])
  end
end