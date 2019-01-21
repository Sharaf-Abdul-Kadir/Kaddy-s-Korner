class PagesController < ApplicationController

    def about
        @title = 'About Us';
        @content = 'Kaddy\'s korner: A tempting corner you would like to visit everytime. We provide dishes which you will find mouth-watering and be addicted. Dishes here are unique and made when you order. Feel free to contact us at: kaddy@mailinator.com ' ;
    end

    def booking
        @title = 'Reserve your seat';
        @content = 'You are just a call away from your fabulous and tempting dinner. Call us at "9009009009"' ;
    end

    def contact
        @title = 'Give a call';
        @content = 'Call us at "9009009009" or mail us at kaddy@mailinator.com' ;
    end

    def menu
        @title = 'Give a call';
        @content = 'Call us at "9009009009" or mail us at kaddy@mailinator.com' ;
    end

    def starters
        @title = 'Sizzling Starters';
        @content = 'Sizzling Starters' ;
    end

    def maincourse
        @title = 'Magnificent Maincourse';
        @content = 'Magnificent Maincourse' ;
    end

    def desserts
        @title = 'Delicious Desserts';
        @content = 'Delicious Desserts' ;
    end

    def login
        @title = 'Login';
    end

    def veg_starters
        @title = 'Sizzling Veg Starters';
        @content = 'Available Sizzling Veg Starters in Kaddy\'s Korner' ;
        @dishes=Dish.where(sub_category:"Veg",category_id:"2")
    end

    

    def n_v_starters
        @title = 'Sizzling Non-Veg Starters';
        @content = 'Available Sizzling Non-veg Starters in Kaddy\'s Korner' ;
        @dishes=Dish.where(sub_category:"Non-Veg",category_id:"2")
    end


    def v_m
        @title = 'Veg Maincourse';
        @content = 'Available Magnificient Veg in Kaddy\'s Korner' ;
        @dishes=Dish.where(sub_category:"Veg",category_id:"3")
    end

    def n_v_m
        @title = 'Non-Veg Maincourse';
        @content = 'Available Magnificient Maincourse in Kaddy\'s Korner' ;
        @dishes=Dish.where(sub_category:"Non-Veg",category_id:"3")
    end


end
