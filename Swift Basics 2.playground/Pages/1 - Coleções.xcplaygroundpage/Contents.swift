/*:
 ### Coleções
 
 *Um monte de coisas.*
 
 */

import Foundation

/*:
 Coleções são tipos de dados qe contém múltiplos outros dados dentro de si. O tipo mais básico de coleção é o vetor, que é a representação computacional de uma lista ordenada de objetos.
 
 Um vetor, ou *array*, é um tipo que depende de outro tipo. Isto é, um array de Int é diferente de um array de String, que é diferente de um array de array de Int. Estes tipos são descritos da seguinte forma:
 */

var arrayInt:[Int]
var arrayString:[String]
var arrayArrayInt:[[Int]]

/*:
 Um vetor vazio não é lá essas coisas. Podemos colocar elementos em um array tanto no momento de sua criação quanto depois, a qualquer momento.
 */

var numeros:[Int] = [1,2]
numeros.append(3)

/*:
 Uma vez que o array contém elementos, eventualmente vamos querer acessar estes. Acessamos elementos diretamente por meio de seu índice.
 */

numeros[2] // elemento na posição 2, no caso o número 3

//: [->](@next)
