class Musician < ActiveRecord::Base
  belongs_to :origin
  if Rails.env.development?
    has_attached_file :image, styles: { medium: "200x200>", thumb: "100x100>" }, default_url: 'default.png'
  else
    has_attached_file :image, styles: { medium: "200x200>", thumb: "100x100>" }, default_url: 'default.png',
                      :storage => :dropbox,
                      :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
                      :path => ":style/:id_:filename"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  end
end
