Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })
  get("/square/:number", { :controller => "calculations", :action => "square" })
  get("/square_root/:number2", { :controller => "calculations", :action => "square_root" })
  get("/random/:min/:max", { :controller => "calculations", :action => "min_max" })
  get("/payment/:apr/:years/:pv", { :controller => "calculations", :action => "payment" })

end
