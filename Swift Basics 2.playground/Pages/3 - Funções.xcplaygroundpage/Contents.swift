//: [Anterior](@previous)
/*:
 ### Funções
 
 *Quem, o que e, mais importante, por quê*
 
 */
import Foundation


func helloWorld(){
    print("Hello World")
}

/*:
 Uma função é um bloco de código - comandos contidos entre um par de { } - que recebe uma assinatura, por meio da qual podemos chamá-lo posteriormente. Podemos relacionar estas às funções matemáticas. Por exemplo:
 */

func f(x:Double) -> Double {
    return x * 2
}

/*:
 Usamos a palavra reservada func para declarar uma função. Depois desta, vem o *nome* que queremos dar para a função, no caso f - é usual que este seja em letra minuscula. Após o nome, temos um par de ( ). Dentro destes vem a lista de *parâmetros* que a função recebe. No caso, f recebe apenas um parâmetro, o Double denominado x, mas poderia receber mais parâmetros, ou mesmo nenhum, como a função helloWorld ali acima. Após o ), temos a símbolo -> que representa *retorno*. Este é o resultado que a função nos devolve após ser executada. O que vem depois deste símbolo é o tipo do retorno, no caso um Double. Se olharmos o a função helloWorld acima, temos um exemplo de função que não retorna nada - não existe sequer o símbolo -> em sua assinatura.
 
 Isso tudo se lê da seguinte forma: a função f recebe um valor do tipo Double denominado x e  retorna um valor do tipo Double.
 
 Ao analisar o conteúdo desta função, é possível ver que o retorno dado é duas vezes x. Mas, para ter certeza, vamos *invocar*, ou chamar a função, da seguinte maneira:
 */
f(x: 23)
var resultado:Double = f(x:2.56)

//:Temos chamado funções toda vez que usamos, por exemplo, *print*. É só escrever seu nome e passar os parâmetros entre ( ).
//:Vamos ver um exemplo um pouco mais complexo de função.

func bhaskara(a:Double, b:Double, c:Double) -> (Double?,Double?) {
    var x1,x2:Double?
    let delta:Double = b*b - (4*a*c)
    if(delta < 0){
        x1 = nil
        x2 = nil
    } else {
        x1 = (-b + sqrt(delta))/(2*a)
        x2 = (-b - sqrt(delta))/(2*a)
    }
    return (x1,x2)
}

/*:
 A função bhaskara aqui recebe três parâmetros, a,b,c, todos do tipo Double, e nos retorna uma tupla de dois Doubles opcionais. Esses são opcionais pois, dependendo dos parâmetros passados, a função bhaskara pode ter que retornar valores nulos, ou *nil*, caso o delta calculado seja menor que 0. Vamos chamar a função e verificar seu funcionamento.
 */

var raizes:(Double?,Double?) = bhaskara(a: 2, b: 3, c: 1)
print(raizes)

if let raizReal = raizes.0, let raizReal2 = raizes.1 {
    print("\(raizReal), \(raizReal2)")
    raizReal + raizReal2
}



