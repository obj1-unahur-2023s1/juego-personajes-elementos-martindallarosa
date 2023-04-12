import personajes.*
import armas.*
import jugador.*	


object castillo {
	var nivelDefensa = 150
	method nivelDefensa() = nivelDefensa
	method altura(){
		return 20
	}
	method recibirAtaque(){
		nivelDefensa = 0.max(nivelDefensa - floki.arma().potencia())
	}
	
	method recibirTrabajo(){
		mario.cambiarValor(nivelDefensa/5)
		nivelDefensa = 200.min(nivelDefensa + 20)
	}
	
}

object aurora {
	var estaViva = true
	method altura(){
		return 1
	}
	method estaViva(){
		return estaViva 
	}
	method recibirAtaque(){
		if(floki.arma().potencia()>=10){
			estaViva = false
		}else{}
	}
	
	method recibirTrabajo(){
		mario.cambiarValor(15)
	}
	
}

object tipa {
	var altura = 8
	method altura(){
		return altura
	}
	method recibirAtaque(){}
	
	method recibirTrabajo(){
		mario.cambiarValor(altura*2)
		altura = altura + 1
	}
	
}
