import elementos.*
import armas.*
import jugador.*

object floki {
	var property arma = ballesta
	method arma(){
		return arma
	}	
	method encontrar(elemento){
		elemento.recibirAtaque()
	
}}


object mario {	
	var valorRecolectado = 0
	var ultimoElemento 
	method valorRecolectado() = valorRecolectado
	method ultimoElemento(){
		return ultimoElemento
	}
	
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
