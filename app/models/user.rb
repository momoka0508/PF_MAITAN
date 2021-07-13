class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :it_words, dependent: :destroy
  has_many :bookmarks, dependent: :destroy
  has_many :dangers, dependent: :destroy
  has_many :study_counts, dependent: :destroy

end
