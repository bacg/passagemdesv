class ContactMailer < ApplicationMailer
	default :from => 'same_consultas@bacg.aer.mil.br'

	def contact_message(contact)
		@user = contact
		@militar = @user["name"]
		@contact = contact
		mail(:to => 'ricardosouzaaf@bacg.intraer', :subject => 'SISPERM - Passagem de Serviço')		
	end
end
