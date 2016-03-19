class Webimg < ActiveRecord::Base

  #specify that the avatar is a paperclip file attachment
  #specify additional styles that you want to use in views or eslewhere
  has_attached_file :avatar, :styles => {:thumb => "400x400"}
 # validates_attachment_file_name :avatar, :matches => [/png\Z/, /jpe?g\Z/, /gif\Z/]
  do_not_validate_attachment_file_type :avatar


  #pull the image from the remote url and assign it as the avatar
  def avatar_from_url(url)
    self.avatar = open(url)
  end
  
end
