class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :update_access_token!
  validates :user_name, presence: true
  validates :email, presence: true
  has_many :items

  private

  def update_access_token!
    self.access_token = "#{self.id}:#{Devise.friendly_token}"
    save
  end

end
