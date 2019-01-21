class CategoriesController < ApplicationController
   http_basic_authenticate_with name:"admin" , password:"itquest123", except:[:index , :show]
   
    def index
        @categories = Category.all
    end

    def show
        @category = Category.find(params[:id])
    end

    def new
        @categories = Category.all
        @category = Category.new
    end

    def create
        @category = Category.new(category_params)
        @categories = Category.all
        if(@category.save)
            redirect_to categories_new_path
        else 
            render 'new'
        end
    end


    def edit
        @category = Category.find(params[:id])
    end

    def update
        @category = Category.find(params[:id])
        
        if(@category.update(category_params))
            redirect_to @category
        else 
            render 'edit'
        end
    end

    def destroy
        @category = Category.find(params[:format])
        @category.destroy

        redirect_to categories_new_path
    end


    private def category_params
        params.require(:category).permit(:name)
    end

end
