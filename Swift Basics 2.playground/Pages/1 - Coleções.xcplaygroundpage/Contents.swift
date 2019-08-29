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

/*:
 Vetores possuem uma série de funções úteis para verificar seu conteúdo:
 */

numeros.count //tamanho do vetor
numeros.contains(2) //verifica se o dado elemento existe no vetor
numeros.isEmpty //verifica se está vazio
//e assim por diante

/*:
 Outra estrutura frequentemente utilizada em Swift é o Dicionário - uma coleção de pares do tipo Chave-Valor que podem assumir tipos próprios. A seguir, dicionarioDeAlunos é craido como um dicionário do tipo *[Int:String]*. O primeiro tipo nesta assinatura, Int, corresponde às chaves, enquanto o segundo, String, aos valores. Assim, este é um dicionário que associa chaves numéricas para valores textuais (no caso, TIA para nome do aluno).
 */

var dicionarioDeAlunos:[Int:String] = [:] //cria um dicionario vazio
dicionarioDeAlunos[31319769] = "Omella" //cria a chave 31319769 e associa a esta o valor passado

//: [Próximo](@next)
