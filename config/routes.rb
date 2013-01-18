Humanex::Application.routes.draw do  
  root :to => "page#index", :constraints => {:host => "humanex.hu"}
  root :to => "page#index", :constraints => {:host => "humanex-tech.hu"}
  root :to => "page#en_index", :constraints => {:host => "humanex.com"}
  root :to => "page#en_index", :constraints => {:host => "humanex-tech.com"}
  
  if Rails.env == "development"
    root :to => "page#index", :constraints => {:host => "localhost"}
  end
  
  get "/termekeink", to: "page#termekeink"
  get "/kapcsolat", to: "page#kapcsolat"
  
  get "/products", to: "page#products"
  get "/contact", to: "page#contact"
end
