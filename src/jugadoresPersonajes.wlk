object luisa {
	
}


object floki {
	var arma = ballesta
	method arma(){
		return arma
	}	
	method armaEstaCargada(){
		return arma.estaCargada()
	}
	
	method encontrar(elemento){
		if(arma.EstaCargada()){
			elemento.recibirAtaque()
		}
		else{}
	}
	method cambiarArma(){
		if (arma == ballesta){
			arma = jabalina 
		}
		else{arma = ballesta}
	}
	
}


object mario {
	var valorRecolectado = 0
	var ultimoElemento 
	method cambiarValor(valor){
		valorRecolectado +=  valor
	}
	method encontrar(elemento){
		elemento.recibirTrabajo()
		 ultimoElemento = elemento
	}
	method esFeliz(){
		return valorRecolectado >= 50 or ultimoElemento.altura() >= 10
	}
	}
	


object castillo {
	var nivelDefensa = 150
	method altura(){
		return 20
	}
	method recibirAtaque(){
		nivelDefensa = nivelDefensa - floki.arma().potencia()
	}
	
	method recibirTrabajo(){
		mario.cambiarValor(nivelDefensa/5)
		nivelDefensa += 20
	}
	
}

object aurora {
	var vida = true
	method altura(){
		return 1
	}
	method estaViva(){
		return vida
	}
	method recibirAtaque(){
		if(floki.arma().potencia()>=10){
			vida = false
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

object ballesta {
	var uso = 0
	method potencia(){
		return 4
	}
	method estaCargada(){
		if (uso < 11){
		return true}
		else{return false}
	}
	method registrarUso(){
		uso = uso + 1
	}
}
object jabalina {
	var uso = 0
	method potencia(){
		return 30
	}
	method estaCargada(){
		if (uso == 0){
		return true}
		else{return false}
	}
	method registrarUso(){
		uso = uso + 1
	}
}


































