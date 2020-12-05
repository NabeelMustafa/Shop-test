class HomeController < ActionController::Base
    before_action :authenticate_user!
    def index
        @products = Product.limit(10)
    end
end
