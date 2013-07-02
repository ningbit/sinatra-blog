# app.rb
require "sinatra"
require "sinatra/activerecord"

set :database, "sqlite3:///blog.db"

module SinatraBlog
  class App < Sinatra::Application

    get "/" do
      @posts = Post.order("created_at DESC")
      erb :"posts/index"
    end
  end
end

class Post < ActiveRecord::Base
end