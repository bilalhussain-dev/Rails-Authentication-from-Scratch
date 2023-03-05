module ApplicationHelper
  def gravatar_for(user)
    gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: "Hi, #{user.username}. Here is your profile image", class:'image-responsive
image-gravtar')
  end
end
