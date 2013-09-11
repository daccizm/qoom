class User < ActiveRecord::Base
  has_many :users_rooms
  has_many :rooms, :through=>:users_rooms

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :account

  validates :account,:presence=>true,:uniqueness => true, :length=>{:maximum=>20}

  # scope :guest, lambda { where(:account=>'guest').first }
  scope :guest, where(:account=>'guest')

  def email_required?
    false
  end

end
