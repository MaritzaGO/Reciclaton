class HomeController < ApplicationController


def index
end

def compra_venta
	@supplies = Supply.all
	@demands = Demand.all
end

def l_reciclaje
	@categories = Category.all
end

def red_reciclatones
end

def nosotros
end

def contactenos
end

def camp_sens
end

def operacion

end

def enviar_correo

@asunto = params[:asunto]
@contenido = params[:contenido]

ContactMailer.contactame(@asunto,@contenido).deliver_now
redirect_to root_path
end


end