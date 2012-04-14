class User < ActiveRecord::Base
   
  acts_as_gmappable :validation => lambda { |u| u.published? }
  
  def published?
    false
  end
  
  def gmaps4rails_address
    sec_address
  end

  #   def gmaps4rails_marker_picture
  #     {
  #     "width" => "32",
  #     "height" => "32",
  #    "marker_anchor" => [4, 3],
  #  #   "picture" =>  "https://secure.gravatar.com/avatar/808bec1c640143bd7091888d9edfb2f2.png",
  #     "rich_marker" => "<div class='my-marker'>It works!<img height='30' width='30' src='http://farm4.static.flickr.com/3212/3012579547_097e27ced9_m.jpg'/></div>",
  # #    "shadow_picture" => "http://www.blankdots.com/img/github-32x32.png",
  # #    "shadow_height" => 40, 
  # #    "shadow_width" => 50,
  # #    "shadow_anchor" => [10, 10]
  #     }
  #   end
  #   #   
  # def gmaps4rails_sidebar
  #    "<b>#{name}</b>"
  #  end
  #   
 # def gmaps4rails_infowindow
 #    "<div style='width:500px; background-color:#b0c4de;'><b>je suis l'infowindow de <h1>#{name}</h1></b> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>"
 #  end
 # 
end
