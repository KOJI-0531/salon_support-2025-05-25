class ContactMailer < ApplicationMailer
    def send_mail
        @contact = params[:contact]

        mail(
            to: "koji.engineer0609@gmail.com",
            from: @contact.email,
            subject: "【お問い合わせ】#{@contact.name}様より"
        )
    end
end
