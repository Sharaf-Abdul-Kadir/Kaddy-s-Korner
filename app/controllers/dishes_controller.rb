class DishesController < ApplicationController
    http_basic_authenticate_with name:"admin" , password:"itquest123", except:[:index , :show]
    
    def index
        @dishes = Dish.all
    end

    def show
        @dishes = Dish.find(params[:c])
    end

    def new
        @dishes = Dish.all
        @categories = Category.all
        @dish = Dish.new
        @starter_id = Category.find_by(name: 'Starters').id
        @starter = Dish.where(category_id: @starter_id)
        @maincourse_id = Category.find_by(name: 'Maincourse').id
        @maincourse = Dish.where(category_id: @maincourse_id)
        @dessert_id = Category.find_by(name: 'Desserts').id
        @dessert = Dish.where(category_id: @dessert_id)
    end

    def create
        @dish = Dish.new(dish_params)
        @categories = Category.all
        @dishes = Dish.all
        if(@dish.save)
            redirect_to dishes_new_path
        else 
            render 'new'
        end
    end


    def edit
        @dish = Dish.find(params[:id])
    end

    def update
        @dish = Dish.find(params[:id])
        
        if(@dish.update(dish_params))
            redirect_to @dish
        else 
            render 'edit'
        end
    end

    def destroy
        @dish = Dish.find(params[:format])
        @dish.destroy
        redirect_to dishes_new_path
    end


    private 
    def dish_params
        params.require(:dish).permit(:name, :sub_category, :category_id)
    end

end

