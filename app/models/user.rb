# Userモデル
class User < ApplicationRecord
  # 投稿文を複数持つことが出来る
  has_many :microposts
  # 名前をメールアドレスは空にできない
  validates :name,  presence: true
  validates :email, presence: true
end
