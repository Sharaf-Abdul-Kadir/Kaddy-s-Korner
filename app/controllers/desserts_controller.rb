class DessertsController < ApplicationController
    
    def new
        @dessert = Dessert.new
        @desserts = Dessert.all 
        @dishes=Dish.where(sub_category:["Veg","Non-Veg"],category_id:"8")
    end

    def create
        @dessert = Dessert.new(allowed_params)
        @dessert.owner = session[:user_id]
        if @dessert.save
            redirect_to new_dessert_path
        else
            redirect_to new_dessert_path
        end

    end

    def destroy
        @dessert = Dessert.find(params[:id])
        @dessert.destroy
        @dishes=Dish.where(sub_category:["Veg","Non-Veg"],category_id:"8")
        redirect_to new_dessert_path
    end

    private def allowed_params
        params.require(:dessert).permit(Dessert.attribute_names)
   end

end
