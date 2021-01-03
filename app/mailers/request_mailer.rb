class RequestMailer < ApplicationMailer


    def new_request
        @request = params[:request]

        mail to: "potgieter.g.jacques@gmail.com", subject: "New Request from Craftsman Connect"
    end
end
