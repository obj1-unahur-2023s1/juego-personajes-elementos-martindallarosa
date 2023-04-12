import personajes.*
import elementos.*
import jugador.*

object ballesta {
	var uso = 0
	method potencia(){
		return 4
	}
	method estaCargada(){
		return uso<11		
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
		return uso == 0
	}
	method registrarUso(){
		uso = uso + 1
	}
}