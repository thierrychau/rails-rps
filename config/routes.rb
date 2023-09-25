Rails.application.routes.draw do
  get("/", { :controller => "rps", :action => "rules" })

  get("/:move", { :controller => "rps", :action => "move" })
end
