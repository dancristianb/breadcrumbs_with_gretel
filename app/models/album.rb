class Album < ApplicationRecord
  def self.to_slug(string)
    string.parameterize.truncate(80, omission: '')
  end

  def self.add_slugs
    Album.find_each do |album|
      album.update(slug: to_slug(album.title))
    end
  end

  def to_param
    slug
  end
end
