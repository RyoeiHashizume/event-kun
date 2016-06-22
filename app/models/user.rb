class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  # 多対多の実装
  has_many :user_events #中間dbをhas_manyしている
  has_many :events, through: :user_events #中間dbを返してevetsデータベースをたくさん持っている
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :user_name, presence: true, uniqueness: true
end
