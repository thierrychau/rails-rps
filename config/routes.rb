Rails.application.routes.draw do
  get("/", { :templates => })
  get("/rock", { :controller => "zebra", :action => "giraffe" })
end
