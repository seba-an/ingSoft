class WelcomeController < ApplicationController

  def index
    end

  def create
   render :text => params[:post].inspect
   @post = Login.new(params[:post])
   @post.save
   redirect_to :action => :show, :id => @login.id
    end

  def show
    @login = Login.find(params[:id])
  end

end
