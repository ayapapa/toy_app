# 投稿文のモデル
class Micropost < ApplicationRecord
  # user_idがUserに紐づけられていることを宣言する
  belongs_to :user
  # コンテンツの長さは140文字以内、空文字列禁止
  validates :content, length: { maximum: 140 },
                      presence: true 
end
