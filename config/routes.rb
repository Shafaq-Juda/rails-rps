Rails.application.routes.draw do
  get("/", { :controller => "game", :action => "home" })
  # get("/rock", {:controller=>"game", :action=>"play"})
  # get("/paper", { :controller => "game", :action => "play" })
  # get("/scissors", { :controller => "game", :action => "play" })
  get("/:play", { :controller => "game", :action => "play" }) # /:play is a dynamic path that means whatever will be there in the path it will become our next page. And then we have to use that word to make it run correctly either it is rock,paper or scissors. So that's why we don't need to define each route separately. 
end
