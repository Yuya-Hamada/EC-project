class UsersController < ApplicationController
  def show
    @user= User.find_by(id: params[:id])
  end

  def new
    @user= User.new
  end

  def create
    @user= User.new(name: params[:name], email: params[:email], password_digest: params[:password_digest])
    if @user.save
      session[:user_id]=@user.id
      flash[:notice] = "登録完了です"
      redirect_to("/users/#{@user.id}")
    else
      render("users/new")
    end
  end

  def edit
    @user=User.find_by(id: params[:id])
  end

  def update
    @user=User.find_by(id: params[:id])
    @user.name= params[:name]
    @user.email=params[:email]
    if @user.save
      flash[:notice] = "登録内容を変更しました"
      redirect_to("/users/#{@user.id}")
    else
      render("users/#{@user.id}/edit")
    end
  end

  def login_form
  end

  def login
    @user=User.find_by(email: params[:email], password_digest: params[:password_digest])
    if @user
      session[:user_id]= @user.id
      flash[:notice]= "ログイン成功"
      redirect_to("/top")
    else
      @error_message = "ログイン情報が違います"
      @email= params[:email]
      @password= params[:password]
      render("users/login_form")
    end
  end

  def logout
    session[:user_id]= nil
    flash[:notice]="ログアウトしました"
    redirect_to("/login")
  end

end
