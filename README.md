# TOP Ruby on Rails Auth Project (Members Only)

[assignment link](https://www.theodinproject.com/courses/ruby-on-rails/lessons/authentication?ref=lnav#project-2-members-only)

Project builds a Rails app where registered users can post (and comment) on the app about non members.  Members can see who wrote a post, but those on the outside (not logged in) can not see who wrote posts/comments.  

Signed in users have the ability to comment on posts.
Signed in users have the ability to edit/delete their comments/posts.  
Sign up requires a secret 'token' (maintain exclusivity)

Originally targeted having posts/comments all on the 'post#index' route but could not figure out how or if it is possible to nest multiple comments in multiple posts.

Devise gem used to handle authentication.  
