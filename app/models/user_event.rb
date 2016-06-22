class UserEvent < ActiveRecord::Base
  #多対多の実装
  belongs_to :user
  belongs_to :event
end
