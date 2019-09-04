/*:
 ### Classes e Objetos

 *Em que avançamos vários capítulos nos livros de programação*
*/
/*:
 Orientação a objetos é o paradigma de programação dentro do qual trabalhamos aqui (e todo mundo que faz esse tipo de aplicação também). Os dois conceitos mais fundamentais de orientação a objetos são classes e objetos. A seguir, vemos uma classe:
 */
import Foundation

class Shape{
    var name:String
    var numberOfSides:Int
    
    init(shapeName:String, shapeSides:Int){
        self.name = shapeName
        self.numberOfSides = shapeSides
    }
    
    public func innerAngles() -> Double{
        return (Double(numberOfSides-2)*180)/Double(numberOfSides)
    }
}
/*:
 Usamos a palavra reservada class para declarar uma classe, seguida do nome que damos a classe - começando com maíuscula. A nossa classe então é a Shape. Dentro das { } vem a classe em si, o código que a compõe. As duas primeiras linhas são declarações de *atributos* - qualidades da nossa Shape.
 
 A seguir, vem o *construtor* - a função init usada para criar objetos desta classe. Vamos ver isso logo mais.
 
 Por fim, temos uma função da classe, chamada innerAngles, que nos dá o valor dos ângulos internos da forma.
 
 Agora, vamos ver o que é um objeto:
 */
var oneShape:Shape = Shape(shapeName: "square", shapeSides: 4)
/*:
 Um objeto é uma realização concreta da classe. O que fizemos acima foi criar uma *instância* da classe Shape chamada oneShape. oneShape é o nosso objeto, nomeado com letra minuscula, e que se parece muito com uma variável do tipo Shape. Isso porque oneShape *é* uma variável do tipo Shape.
 
 Lembram-se como todos os tipos báscios (String, Int e seus amigos) começam com letra maiúscula? Nome de classe também começa com letra maiúscula, e não é coincidência: esse é o padrão usado para nomear Tipos. Classes são Tipos.
 
 Quando chamamos a função Shape(shapeName: "square", shapeSides: 4) estamos invocando o *construtor* de Shape, aquela coisa parecida com uma função que tem o init lá em cima na classe. É por meio deste construtor que criamos objetos do Tipo Shape, como o oneShape. Podemos criar quantos objetos quisermos.
 */
var anotherShape:Shape = Shape(shapeName: "triangle", shapeSides: 3)
var shape3:Shape = Shape(shapeName: "heptadecagono", shapeSides: 17)
var forma:Shape = Shape(shapeName: "circulo low poly", shapeSides: 200)
//: Para acessar os elementos internos de um objeto (atributos e funções da classe que contruimos) usamos a chamada *Dot Notation*: chamamos o nome do objeto seguido por . seguido pelo elementos que desejamos acessar.
print(oneShape.numberOfSides)
print(oneShape.innerAngles())
//:Podemos por fim usar o Tipo Shape e seus elementos em qualquer lugar que usaríamos outros tipos, como em parâmetros de funções e dentro de expressões.
func addNumberOfSides(shape1:Shape, shape2:Shape) -> Int {
    let result:Int = shape1.numberOfSides + shape2.numberOfSides
    return result
}

addNumberOfSides(shape1: oneShape, shape2: anotherShape)
//: [Próximo](@next)

