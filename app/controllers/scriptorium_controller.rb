class ScriptoriumController < ApplicationController
  def index
    @articles = Article.all
  end
end
