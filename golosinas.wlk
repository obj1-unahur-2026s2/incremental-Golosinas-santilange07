class Bombon{
    var peso = 15
    method peso(){
        return peso
    }
    method precio(){
        return 5
    }
    method gusto(){
        return "frutilla"
    }
    method esLibreDeGluten(){
        return true
    }
    method mordisco(){
        peso = ((peso * 0.8) - 1).max(0)
    }
}

class Alfajor{
    var peso = 300
    method peso(){
        return peso
    }
    method precio(){
        return 12
    }
    method gusto(){
        return "chocolate"
    }
    method esLibreDeGluten(){
        return false
    }
    method mordisco(){
        peso = (peso * 0.8).max(0)
    }
}

class Caramelo{
    var peso = 5
    method peso(){
        return peso
    }
    method precio(){
        return 1
    }
    method gusto(){
        return "frutilla"
    }
    method esLibreDeGluten(){
        return true
    }
    method mordisco(){
        peso -= 1
    }
}

class Chupetin{
    var peso = 7
    method peso(){
        return peso
    }
    method precio(){
        return 2
    }
    method gusto(){
        return "naranja"
    }
    method esLibreDeGluten(){
        return true
    }
    method mordisco(){
    if(peso>2){
        peso = peso * 0.9
    }
    }
}

class Oblea{
    var peso = 250
    method peso(){
        return peso
    }
    method precio(){
        return 5
    }
    method gusto(){
        return "vainilla"
    }
    method esLibreDeGluten(){
        return false
    }
    method mordisco(){
        if(peso>70){
            peso = peso * 0.5
        }
        else{
            peso = peso * 0.75
        }
    }
}

class Chocolatin{
    var peso
    method peso(){
        return peso
    } 
    method precio(){
        return peso * 0.50
    }
    method gusto(){
        return "chocolate"
    }
    method esLibreDeGluten(){
        return false
    }
    method mordisco(){
        peso -=2
    }
}

object bañada inherits Oblea {
    var contador = 0
    override method peso() {
        return peso + 4
    }
    override method precio() {
        return super() + 2
    }
    override method mordisco(){
        super()
        if(contador == 0 or contador == 1){
            peso -=2
        }
        contador += 1
    }
}

class Pastilla{
    var peso = 5
    var esLibreDeGluten = true
    var sabor = "frutilla"
    method esLibreDeGluten() = esLibreDeGluten
    method peso()= peso
    method precio() = if (self.esLibreDeGluten()){7} else{10}
    method hacerLibreDeGluten(){esLibreDeGluten = true}
    method deshacerLibreDeGluten(){esLibreDeGluten = false}
    method mordisco(){
    }
}