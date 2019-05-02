class GossipsController < ApplicationController

 before_action :authenticate_user, only: [:create, :new, :edit, :destroy]
 before_action :is_author?, only: [:edit, :update, :destroy]

	def show
		@gossip = Gossip.find(params[:id])
	end

	def new

	end

	def create
		@gossip = Gossip.new(title: params[:title], content: params[:content], user_id: session[:user_id])
		#avec xxx qui sont les données obtenues à partir du formulaire

		if @gossip.save # essaie de sauvegarder en base @gossip
		    # si ça marche, il redirige vers la page d'index du site

		    flash[:notice] = "Votre gossip a bien été ajouté"
		    redirect_to root_path(success: true)
   			else
    		# sinon, il render la view new (qui est celle sur laquelle on est déjà)
		    flash[:notice] = "Erreur dans la création, merci de remplir les champs demandés"

			render 'new'
		end
	end


	def edit
		@gossip = Gossip.find(params[:id])
	end

	def update
		@gossip = Gossip.find(params[:id])
		gossip_params = params.require(:gossip).permit(:title,:content)

	  if @gossip.update(gossip_params)

	    redirect_to root_path
	  else
	    flash[:notice] = "Votre gossip n'a pas été modifié correctement, veuillez recommercer !"
	   
	    redirect_to edit_gossip_path
	  end
	end

	def destroy
	
		@gossip = Gossip.find(params[:id])

	  if @gossip.destroy

	    redirect_to root_path
	  else
	    flash[:notice] = "Votre gossip n'a pas été supprimé correctement, veuillez recommercer !"
	   
	    redirect_to edit_gossip_path
	  end
	end

end

private

