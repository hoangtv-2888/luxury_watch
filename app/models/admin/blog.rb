class Admin::Blog < ApplicationRecord
  has_rich_text :content
  has_one_attached :image

  def display_image image
    image.variant(resize: "671x325!").processed if image.present?
  end
end
