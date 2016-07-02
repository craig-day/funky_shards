class Account < ActiveRecord::Base
  not_sharded
  has_paper_trail

  has_many :users
end
