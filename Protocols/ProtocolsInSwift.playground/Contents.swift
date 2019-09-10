/*:
 ### Protocolos em Swift
 */
/*:
 Em Swift, um protocolo é um supertipo que especifica comportamentos para outros tipos que o implementem. Em outras linguagens, este conceito é similar ao de classe abstrata: um tipo que não é instanciado por si só, mas qualifica de alguma forma outros tipos.
 
 Um protocolo é comumente definido em um arquivo próprio, tal qual uma classe, e tem a seguinte estrutura:
 */
protocol Descritivo{
    
    func descrever()
    
}
/*:
 O meu protocolo de exemplo é definido pela palavra reservada **protocol**, seguida do nome escolhido - no caso deste exemplo, *Falante*. Dentro das chaves que definem o escopo do protocolo, são elencadas as funções que este protocolo prevê - neste caso, uma única função denominada *falar*. É importante notar que, no protocolo, a função não precisa ser implementada, apenas declarada.
 
 Uma vez que existe um protocolo, este pode ser **implementado** por uma ou mais classes. Cada classe pode implementar qualquer número de protocolos, podendo inclusive herdar de uma outra classe além de implementar protocolos.
 */
import UIKit
class InfoView:UIView, Descritivo{
    func descrever() {
        print("Uma view de informações")
    }
}

class OptionView:UIView, Descritivo{
    func descrever() {
        print("Uma view de opções")
    }
}
/*:
 As duas classes acima definidas são subclasses de UIView, e implementam o protocolo Descritivo. Por implementarem este protocolo, estas classes obrigatoriamente devem implementar a função *descrever*, cada uma com sua implementação própria.
 
    Se quisermos, podemos ainda ter uma versão genérica da função *descrever* no próprio protocolo. Nesse caso, classes que implementam o protocolo não são obrigadas a implementar a função, podendo ao invés disso asusmir o comportamento padrão. Ter ou não uma implementação genérica é uma escolha que depende da finalidade do protocolo, mas é importante notar que, para um programador usando o protocolo, é muitas vezes impossíveis saber se uma dada função de um protocolo contém um comportamento padrão completo ou se é apenas uma função vazia.
 
 Para criarmos esta implementação genérica, precisamos fazer uso de uma *extensão* do protocolo:
 */
//extension Descritivo{
//    func descrever(){
//        print("asd")
//    }
//}
/*:
 Sendo um tipo, um protocolo pode ser especificado como parâmetro, tipo de retorno ou tipo de variável:
 */
var algoQueSeDescreve:Descritivo

func fazerAlgoComDescritivos(algo:Descritivo) {
    //fazer algo
}
/*:
 Esta qualidade dada pelo polimorfismo é uma das grandes utilidades dos protocolos: poder tratar de forma genérica de um conjunto de tipos que podem ser, em termos de hierarquia de classes, completamente distintos, mas unidos por algum comportamento similar - aquele descrito pelo protocolo que todos implementam. Um exemplo disso é o protoclo *Equatable*, que descreve tipos que podem compor uma operação de igualdade:
 */
class Coordenada:Equatable{
    static func == (lhs: Coordenada, rhs: Coordenada) -> Bool {
        return lhs.x == rhs.x && lhs.y == rhs.y
    }
    
    var x:Int
    var y:Int
    
    init(x:Int,y:Int){
        self.x = x
        self.y = y
    }
}

let c1 = Coordenada(x: 2, y: 4)
let c2 = Coordenada(x: 6, y: 7)
let c3 = Coordenada(x: 2, y: 4)

c1 == c2
c1 == c3
/*:
 Qualquer tipo que implemente Equatable - logo, que é também do tipo Equatable - pode ser usado em operações de igualdade ou desigualdade contendo dois objetos de mesmo tipo. Por meio do protocolo Equatable podemos então tratar genericamente de tipos extremamente diferentes de forma unificada, contanto que todos eles possam ser igualáveis.
*/

