class Post < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: :true, length: { maximum: 140 } #"validates" says there MUST be a user_id present in order to post!
  default_scope -> {order(created_at: :desc)} #newest tweets post first.
end
