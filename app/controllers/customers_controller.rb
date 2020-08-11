class CustomersController < ApplicationController

    def index
        @customers = Customer.all
    end

    def show
        @customer = Customer.find(params[:id])
    end

    def new
        @customer = Customer.new
    end

    def create
        byebug
        @customer = Customer.new(customer_params)
        if @customer.save
            redirect_to @customer
        else
            flash[:errors] = @customer.errors.full_messages
            render :new
        end
    end

    private

    def customer_params
        params.require(:customer).permit(:name, :brew_ids)
    end

    # def customer_attrs
    #     [:name, :brew_ids]
    # end
end
