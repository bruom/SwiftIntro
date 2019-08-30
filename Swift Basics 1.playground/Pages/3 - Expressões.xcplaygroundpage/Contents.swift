//: [Anterior](@previous)
/*:
 ### Expressões
 
 *Em que um monte de coisas vira uma coisa só*
 */
/*:
 Na página anterior vimos o conceito de Tipos, e também como variáveis representam um Tipo específico de dados. Expressões tem tudo a ver com isso: uma expressão é qualquer trecho de código que possa ser resolvido e interpretado como um único valor de um único Tipo. Vamos ver exemplos:
*/
//Suponha que existe uma variável
var x:Int = 2
//x é do Tipo Int e representa um valor deste Tipo. Por causa disso, a linha a seguir é uma expressão:
x //Simplesmente chamar o nome x já nos trás um único valor (2) e de um único tipo (Int). Logo, é uma expressão.
x + 2 //Mais similar a uma expressão como conhecemos o termo da Matemática, x + 2 também representa um único valor de um tipo.
x + x
x + x - 2
/*:
 Todas as expressões acima são do tipo Int, assim como a variável x, mas nem sempre a expressão é do mesmo tipo que as variáveis envolvidas:
*/
x > 3
/*:
 Neste caso, o valor da expressão é do tipo Bool, verdadeiro ou falso. Isso porque o *operador* utilizado é um que resulta neste Tipo. Comparações sempre são do tipo Bool: uma coisa ou é ou não é maior, menor ou igual a outra. Outras expressões com operadores de comparação:
*/
var y = 4
x > y
x < y
x >= y
x <= y
x == y
x != y
/*:
 Não são só os operadores matemáticos algébricos e de comparação que podem ser usados em expressões. Tipos lógicos também possuem operadores binários:
*/
var a:Bool = true
var b:Bool = false
a && b //a E b
a || b // a OU b
/*:
 Tudo isso que vimos são expressões, e, portanto, representam um único valor de um único tipo. Isso significa que nós podemos fazer com expressões qualquer coisa que podemos fazer com variáveis ou valores específicos. Entre essas coisas está, por exemplo, guardar em uma variável:
*/
var z:Int = x + (2*y)
var c:Bool = ((x > y) && (b || (y == z))) //da pra ir longe
