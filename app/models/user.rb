class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :referrals

  def view_company
    return "#{company_name}".strip if (company_name)
    "Anonymous"
  end
  
end
