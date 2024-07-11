Rails.application.routes.draw do
 get("/", {:controller=>"games",:action=>"homepage"})
 get("/rock", {:controller=>"games",:action=>"rock"})
 get("/paper", {:controller=>"games",:action=>"paper"})
 get("/scissors", {:controller=>"games",:action=>"scissors"})
end
