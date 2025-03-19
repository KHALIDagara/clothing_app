module ProductsHelper
  def thumbnail(image)
    image.variant(resize_to_limit: [300, 300])
  end

  def medium(image)
    image.variant(resize_to_limit: [800, 600])
  end
end
