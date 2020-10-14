#language: pt
#UTF-8

Funcionalidade: Realizar a reserva no hotel de Londres e preencher o cadastro no site PHPTravels

Contexto: Reserva no hotel de Londres
    Dado que eu esteja no site PHPTravels
    E faço a busca do hotel desejado
    Quando seleciono para verificar a disponibilidade de quartos


@reservaone
Esquema do Cenario: Criar reserva  
    Quando seleciono a opção de "<tipos>" quartos "<disponiveis>"
    E insiro os "<dados>" cadastrais
    Entao finalizo minha reserva com sucesso

    Exemplos:
    |      tipos            | disponiveis |   dados   |
    | One-Bedroom Apartment |     1       | Fall Guys |         
    | One-Bedroom Apartment |     2       |  Among us |
   
@reservatriple
Esquema do Cenario: Criar reserva  
    Quando seleciono a opção de "<tipos>" triple rooms "<disponiveis>"
    E insiro os "<dados>" cadastrais
    Entao finalizo minha reserva com sucesso

    Exemplos:
    |      tipos   | disponiveis |   dados     |        
    | Triple Rooms |     1       |  Among us   |
    | Triple Rooms |     2       | The Witcher |

@reservafamily
Esquema do Cenario: Criar reserva  
    Quando seleciono a opção de "<tipos>" family rooms "<disponiveis>"
    E insiro os "<dados>" cadastrais
    Entao finalizo minha reserva com sucesso

    Exemplos:
    |                 tipos               | disponiveis |   dados     |
    | Family Room & Twin / Large Superior |     1       | Fall Guys   |         
    | Family Room & Twin / Large Superior |     2       |  Among us   |
    | Family Room & Twin / Large Superior |     3       | The Witcher |
        