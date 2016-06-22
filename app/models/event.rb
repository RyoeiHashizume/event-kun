class Event < ActiveRecord::Base
  # 多対多の実装
  has_many :user_events #中間dbをhas_manyしている
  has_many :users, through: :user_events #中間dbを返してusersデータベースをたくさん持っている

end
