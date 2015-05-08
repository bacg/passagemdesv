class ServiceNotifier < ApplicationMailer

	#definindo o remetente default da app
	default :from => 'antonio.eschola@gmail.com'

	# Método que trabalho o disparo do email
	def send_service_email(user)
		@user = user["nome"]
		mail(:to => 'antonio.eschola@gmail.com',
		 :subject => 'Passagem de Serviço - Permanência ao ETI')
	end
end
