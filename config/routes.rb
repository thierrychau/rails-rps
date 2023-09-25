Rails.application.routes.draw do
  get("/", { :controller => "rps", :action => "rules" })

  get("/rock", { :controller => "rps", :action => "rock" })

  get("/paper", { :controller => "rps", :action => "rock" })

  get("/scissors", { :controller => "rps", :action => "scissors" })
end
