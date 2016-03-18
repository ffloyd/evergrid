class User < ActiveRecord::Base
  validates :github_uid, :email, :nickname, :name, :github_token, :auth_json,
            presence: true

  has_many :datasets
  has_many :datacenters

  class << self
    def get_by_oauth(data)
      user = User.find_or_initialize_by(github_uid: data.uid)
      user.assign_attributes(
        auth_json:    data.to_h,

        email:        data.info.email,
        nickname:     data.info.nickname,
        name:         data.info.name,

        github_token: data.credentials.token
      )
      user.save!
      user
    end
  end
end
