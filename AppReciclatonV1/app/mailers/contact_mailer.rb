class ContactMailer < ApplicationMailer

def contactame (asunto, contenido)
	@asunto = asunto	
	@contenido = contenido
    mail(to: ["gutierrezomaritza@gmail.com", "mateojm77@gmail.com", "jaemunoz8@gmail.com"], subject: @asunto)
  end

end
