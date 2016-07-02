class Account < ActiveRecord::Base
  not_sharded

  has_many :users
end
