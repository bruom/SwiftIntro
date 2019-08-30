//: [Anterior](@previous)
/*:
 ### Herança e Polimorfismo
 
 *Matéria de prova na FCI*
 
 Herança, como o nome implica, tem a ver com a forma como uma classe herda características de outra que vem acima dela numa hierarquia, como se fosse uma família. Para entender melhor, vamos ver um exemplo:
 */
class Aluno{
    var nome:String
    
    init(nome:String){
        self.nome = nome
        print("ola, eu sou \(nome)")
    }
}

class AlunoMackenzie: Aluno {
    var tia:Int
    
    override init(nome: String) {
        self.tia = 1111111
        super.init(nome: nome)
    }
    
    init(nome: String, tia:Int) {
        self.tia = tia
        super.init(nome: nome)
    }
}
/*:
 A classe AlunoMackenzie herda da classe Aluno, como declarado no final de sua assinatura: o tipo Aluno após os dois pontos indica este herança. Por isso, AlunoMackenzie herda o atributo *nome*, tendo este mesmo sem tê-lo explicitamente declarado em seu código. AlunoMackenzie também herda o construtor de Aluno, mas modifica este: a palavra reservada *override* indica que AlunoMackenzie tem sua própria versão do construtor básico, em que coloca 11111111 para o tia.
 
 Dizemos então que AlunoMackenzie é uma *subclasse* de Aluno, e que Aluno é uma *superclasse* de AlunoMackenzie.
 */
var euler:Aluno = Aluno(nome: "Euler")
var newton:AlunoMackenzie = AlunoMackenzie(nome: "Newton", tia: 00022387)
var faustao:Aluno = AlunoMackenzie(nome: "Fausto")

newton.tia
//euler.tia
//:Newton, sendo AlunoMackenzie, tem tia, enquanto Euler, sendo apenas Aluno, não tem. Agora, faustao é declarado como Aluno mas instanciado a partir de AlunoMackenzie. Ele tem tia? E se sim, qual é?
//faustao.tia

(faustao as! AlunoMackenzie).tia
//:O que foi feito aqui foi um *casting*: especificamos que queremos tratar a variável faustao como sendo do tipo AlunoMackenzie, ao invés de genericamente como Aluno, como ela havia sido declarada acima. Isso só funciona porque faustao foi instanciado como um AlunoMackenzie. Não podemos, por exemplo, fazer o mesmo com Euler:
//(euler as? AlunoMackenzie).tia
/*:
 Quer dizer, podemos, mas explode. Isso por causa do *force unwrap* - olha a ! lá. A regra é a seguinte:
 
 * Se o objeto foi criado como *subclasse*, como no caso faustao, ele pode ser tratado como se fosse da *superclasse*
 * Se o objeto foi criado como *superclasse*, como no caso do euler, ele **NÃO** pode ser tratado como se fosse de uma *subclasse*
 
 Para garantir que não vamos explodir nada, o ideal é sempre fazer um unwrap seguro, usando *if let* ou *guard let*:
 */
if let fausto = faustao as? AlunoMackenzie{
    fausto.tia
}
/*:
 Agora, qual a utilidade de herança? Além de economizar em linhas de código, usar estruturas hierarquicas nos permite fazer uso do polimorfismo. Este é um dos coinceitos mais importantes de orientação a objetos, mas por hora basta vermos um exemplo de um caso básico:
 */
func descreverAluno(aluno:Aluno){
    print(aluno.nome)
    if let alunoMack = aluno as? AlunoMackenzie {
        print("Seu tia é \(alunoMack.tia)")
    } else {
        print("Este aluno não é do mackenzie")
    }
}

descreverAluno(aluno: euler)
descreverAluno(aluno: newton)
descreverAluno(aluno: faustao)
/*:
 Graças ao polimorfismo, podemos usar uma mesma assinatura e uma mesma função para tratar qualquer tipo de aluno, e podemos ainda descrever comportamentos distintos para esta função de acordo com o tipo do aluno. Naturalmente que este exemplo é bem básico e meio inútil no mundo real, mas conforme praticarmos mais a utilidade do polimorfismo vai ficar mais evidente.
 */
