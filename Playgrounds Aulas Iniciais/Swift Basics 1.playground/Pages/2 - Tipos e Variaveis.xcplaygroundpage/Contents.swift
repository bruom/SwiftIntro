//: [Anterior](@previous)
/*:
 ### Tipos e Variáveis
 
 *Em essência, coisas*
 */
/*: É difícil falar de Tipo sem falar de variável, e vice-versa, então vamos ver os dois juntos:
*/
var nome:String
/*:
 A linha acima é uma instrução de declaração de variável, definida pela palavra reservada *var*. O que esta instrução faz, então, é declarar a existência de uma variável chamada *nome* que é do Tipo *String*. Toda variável tem um Tipo, que representa quais dados podem ser armazenados nela. String é um tipo de dado textual, e vários outros existem. A seguir, alguns dos tipos comuns acompanhados de dados que podem guardar:
 */
var numeroInteiro:Int = 2
var numeroDecimal:Float = 3.14
var numeroDecimalBemPreciso:Double = 3.14159265358979323846264
var valorLogico:Bool = true
var texto:String = "Olá mundo"
/*: Todas as linhas acima são delcarações de variáveis de diferentes tipos acompanhadas da inicialização destas variáveis, isto é, da atribuição de um dado a elas. Uma variável só pode receber dados do seu Tipo. Não é necessário explicitar o Tipo da variável quando incializamos ela - ela assume o Tipo do dado passado.
 */
// var numeroInteiro2:Int = 2.3 --> isso não funciona
var numeroDecimal2 = 2.3 //numeroDecimal2 automaticamente assume um Tipo capaz de armazenar 2.3, no caso, Double
/*:
 Naturalmente, uma variável tem este nome pois seu valor pode mudar:
*/
var numero:Int = 2
numero = 4
print(numero)
/*:
 Podemos ainda atribuir resultados de expressões para variáveis, se estes forem do Tipo correto.
*/
numero = 2 + 6
print(numero)
/*:
 Se, por outro lado, não quisermos permitir a alteração do valor de uma variável após sua inicialização, criamos ao invés disso uma constante, usando a palavra reservada *let*:
*/
let numeroFixo:Int = 4
//numeroFixo = 6 --> não funciona
/*:
 Finalmente, Swift conta com uma funcionalidade poderosa chamada *Optionals*. As variáveis que vimos até agora são de Tipos que representam números, textos e valores lógicos, mas nenhuma delas é capaz de representar *nada*. E, muitas vezes, precisamos representar este nada! Ai que entram os Optionals:
*/
var numeroOpcional:Int?
/*: numeroOpcional pode parecer uma variável do tipo Int, mas não é. Trata-se de uma variável do tipo Int?, que se lê *Optional Int*. Isso significa que esta variável pode conter não só números inteiros, como também *nada*, representado em Swift por *nil*. Variáveis de tipos não-optionals (aqueles sem ? no final) não podem receber nil.
 */
numeroOpcional = nil
// numero = nil --> não funciona
print(numeroOpcional)
/*: A utilidade e as boas práticas de se trabalhar com Optionals serão vistas mais a frente, mas por hora basta ter em mente que isso existe e é o significado desses ? que aparecem as vezes.
 */
//: [Próximo](@next)
