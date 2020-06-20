class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :trackable

  has_one_attached :image

  has_many :posts


  def update_user_with_image(image, user_params)
    self.image.attach(image)
    self.update(user_params)
  end
end
