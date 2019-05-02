module SessionsHelper


   def current_user
    User.find_by(id: session[:user_id])
  end

   def log_in(user)
    session[:user_id] = user.id
  end

def authenticate_user
    unless current_user
      flash[:notice] = "Merci de vous connecter! "
      redirect_to new_session_path
    end
  end

    def is_author?
    unless current_user.id == params[:id]
      flash[:notice] = "Tu n'es pas l'auteur de ce potin."
      redirect_to root_path
    end
end


end