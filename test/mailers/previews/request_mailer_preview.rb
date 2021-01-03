# Preview all emails at http://localhost:3000/rails/mailers/request_mailer
class RequestMailerPreview < ActionMailer::Preview
    def new_request
        request = Request.last
        RequestMailer.new_request(request)
    end
end
