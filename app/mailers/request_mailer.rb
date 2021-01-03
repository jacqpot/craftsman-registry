class RequestMailer < ApplicationMailer


    def new_request(request) 
        @request = request

        mail to: "potgieter.g.jacques@gmail.com", subject: "New Request from Craftsman Connect"
    end
end
