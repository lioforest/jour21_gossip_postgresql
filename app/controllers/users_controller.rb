class UsersController < ApplicationController

   
	def show
		@user = User.find(params[:id])
	end

	def create

		
		#avec xxx qui sont les données obtenues à partir du formulaire

		if $city_test = City.find_by(name: params[:city])

			user_save

		else

				@city = City.new(name: params[:city], zip_code: params[:zip_code] )

				if @city.save
				    flash[:notice] = "Votre ville a été créé "
					user_save	    

		   			else
		    		# sinon, il render la view new (qui est celle sur laquelle on est déjà)
				    flash[:notice] = "Erreur dans la création, merci de remplir les champs demandés"

					render 'new'
				end


		end
	end


end


private

	def user_save
			@user = User.new(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password], city: City.find($city_test.id) )

			if @user.save
				
			    flash[:notice] = "Vous avez bien été créé... bienvenue chez nous !"
			    redirect_to root_path(success: true)

	   			else
	    		# sinon, il render la view new (qui est celle sur laquelle on est déjà)
			    flash[:notice] = "Erreur dans la création, merci de remplir les champs demandés"

				render 'new'
			end
	end
