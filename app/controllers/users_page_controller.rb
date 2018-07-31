class UsersPageController < ApplicationController

	def users

	end

	def new

	  @user = User.new()
    @user.username = params[:name]
    @user.bio = params[:bio]
    

    @user.save
    if @user.username.include?(" ")
      redirect_to "/error"
    elsif @user.id != nil
      

      redirect_to "/users/#{User.last.username}"
    else
      redirect_to "/error"
    end


	end


  def show
    
    @username = params[:username]
    @id = User.find_by(username: @username).id
    @bio = User.find_by(username: @username).bio


  end

  def error


  end

    


end
	