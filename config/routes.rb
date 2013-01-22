Humanex::Application.routes.draw do
  require 'domains'
  
  constraints(Subdomain) do
    match '/' => 'ibolya#index'
    get "/szakszolgalat", to: "ibolya#szakszolgalat"
    get "/diagnosztika", to: "ibolya#diagnosztika"
    get "/foglalkozasok", to: "ibolya#foglalkozasok"
    get "/perinatalis", to: "ibolya#perinatalis"
    get "/kepzes", to: "ibolya#kepzes"
  end
  
  constraints(RootDomain) do
    root :to => "page#index", :constraints => {:host => "humanex.hu"}
    root :to => "page#index", :constraints => {:host => "humanex-tech.hu"}
    root :to => "page#en_index", :constraints => {:host => "humanex.com"}
    root :to => "page#en_index", :constraints => {:host => "humanex-tech.com"}
    root :to => "page#index"
    
    if Rails.env == "development"
      root :to => "page#index", :constraints => {:host => "localhost"}
    end
    
    get "/termekeink", to: "page#termekeink"
    get "/kapcsolat", to: "page#kapcsolat"
    
    get "/products", to: "page#products"
    get "/contact", to: "page#contact"
    
    #for testing purposes
    get "/ibolya", to: "ibolya#index"
    get "/ibolya/szakszolgalat", to: "ibolya#szakszolgalat"
    get "/ibolya/diagnosztika", to: "ibolya#diagnosztika"
    get "/ibolya/foglalkozasok", to: "ibolya#foglalkozasok"
    get "/ibolya/perinatalis", to: "ibolya#perinatalis"
    get "/ibolya/kepzes", to: "ibolya#kepzes"
  end

end
