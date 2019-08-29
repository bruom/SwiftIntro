//: [Anterior](@previous)
/*:
 ### Controle de Fluxo
 
 *Coisas que acontecem só as vezes e, em vezes, muitas vezes*
 
 */

import UIKit

/*:
 Como outras linguagens de programação, Swift conta com estruturas condicionais e de repetição para controlar o fluxo de execução de algoritmos.
 
 A forma mais básica de estrutura condicional é o *if*:
 */

var condicao:Bool = true
if condicao {
    //faz algo
    print("algo")
}

/*:
 O código entro das chaves do *if* só é executado se a *condicao* for verdadeira. No caso, *condicao* é uma variável booleana, mas qualquer expressão que resulte num valor verdadeiro/falso pode ser usada como condição.
 */

var x:Int = 1
var y:Int = 3
if x < y {
    print("\(x) é menor que \(y)")
}

var lista:[Int] = [1,2,3]
if lista.contains(2) {
    print("lista contem 2")
}

var umNome:String = "André"
var outroNome:String = "Artur"
if umNome != outroNome {
    print("umNome é diferente do outroNome")
}

/*:
 É possível ainda contruir condições compostas por meio do uso de operadores lógico *E* (&&) e *OU* (||).
 */

var usuarioExiste:Bool = true
var senhaCorreta:Bool = true
if usuarioExiste && senhaCorreta {
    print("realizar login")
}

var passouDasSeis:Bool = false
var choveu:Bool = true
if passouDasSeis || choveu {
    print("o trânsito está impossível")
}

/*:
 Como em muitas outras linguagens, o *if* pode vir acompanhado do *else*, que diz o que fazer caso a condição seja falsa.
 */

var horario:Int = 16
if horario > 12 {
    print("\(horario - 12) PM")
} else {
    print("\(horario) AM")
}

/*:
 Estruturas condicionais também são amplamente utilizadas para verificar conteúdo de variáveis opcionais de maneira segura, através de construções como a seguinte:
 */

var numeroOpcional:Int? = 2
if let numeroNaoOpcional = numeroOpcional {
    print(numeroNaoOpcional)
}

/*:
 O código acima verifica, por meio da expressão *if let* se a variável numeroOpcional contém um valor ou está nula. Isso é feito através da criação de uma nova variável, numeroNaoOpcional (os nomes podem ser o que você quiser). Se numeroOpcional contém um valor não-nulo, este valor é passado para a variável numeroNaoOpcional recém-criada, e a execução entra no bloco do if. Caso contrário, a variável numeroNaoOpcional nem sequer é criada, e a execução pula o bloco do if. Se houver um *else*, este é executado quando a variável testada contém valor nulo.
 */

numeroOpcional = nil
if let numeroNaoOpcional = numeroOpcional {
    print(numeroNaoOpcional)
} else {
    print("numeroOpcional contém valor nulo")
}

//*: De qualquer forma, a variável numeroNaoOpcional existe apenas dentro do bloco do if, não existindo fora deste contexto em qualquer situação.

/*:
 Quanto às estruturas de repetição, Swift conta com uma implementação de *for* baseada em percorrer conjuntos de valores.
 */

for i in 0..<3 {
    print(i)
}

/*:
 O trecho *0..<3* descreve a construção de um objeto que representa o conjunto de valores numéricos entre 0 (incluido) e 3 (excluido). A variável *i* é declarada na própria linha do for, e automaticamente assume o tipo do conjunto. No caso, é um conjunto de inteiros, logo i é inteiro também.
 
 Essa mesma estrutura pode ser usada para percorrer conjuntos de outros tipos.
 */

var linguagens:[String] = ["Swift","Java","Python","C#","R","C++"]
for linguagem in linguagens {
    print(linguagem)
}

/*:
 Também podemos fazer uso do *while* em Swift, para reptir um dado bloco enquanto uma condição for verdadeira. Assim como no *if*, qualquer expressão que resulte em um valor booleano pode ser usada.
 */

var vidas = 3
while vidas > 0 {
    //jogar
}

/*:
 Como sempre, se a condição nunca parar de ser verdadeira, entramos em loop infinito. O que é ruim.
 */

//while true {} <-- bem ruim

//: [Próximo](@next)
