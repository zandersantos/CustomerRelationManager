class CustomersController < ApplicationController

    def index
      @customers = Customer.all
    end

    def alphabetized
      @customers = Customer.order(:FullName)
    end

    def missingEmail
      @customers = Customer.where(EmailAddress: nil)
    end
end
