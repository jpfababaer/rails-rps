Rails.application.routes.draw do

#Input a second argument of a hash literal (containing two keys) when using Rails.
#Why? Rather than putting all of our code into one file, we break it up into multiple files -> :controller is the name of a Class and :action is the name of the 

#This Ruby class (:controller) needs to be placed into a SPECIFIC folder app -> controllers -> create an .rb file with the controller name (i.e. "rock")
  get("/", {:controller => "homepage", :action => "erb"})
  get("/rock", {:controller => "rock", :action => "erb"})
  get("/paper", {:controller => "paper", :action => "erb"})
  get("/scissors", {:controller => "scissors", :action => "erb"})

end
