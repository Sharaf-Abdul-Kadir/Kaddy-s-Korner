require 'rails_helper'

RSpec.describe DishesController, "Adding a new dish" type: :controller do
    integrate_views
    fixtures :dishes

    it "should redirect to index with a notice on successful save"
        dish.any_instance.stubs(:valid?).returns(true)
        post 'create'
        flash[:notice].should_not be_nil
        response.should redirect_to(dishes_new_path)
    end 
    it "should re-render new template on failed save"
    
    end

end
