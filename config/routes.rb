Rails.application.routes.draw do

  get("/", { :controller => "items", :action => "index" })

  get("/backdoor", { :controller => "items", :action => "display_form" })

  post("/add_item_row", { :controller => "items", :action => "save_item" })

end
