### O presente respositório visa expor uma possível solução uma aplicação simples e em interface de linha de comando de uma _Locadora-de-carro_ (`ToDo List`) que foi solicitada como requisito para finalização do módulo de _Banco de dados(Mysql)_ do curso de _back-end_ ministrado pela [ADA](https://ada.tech/) em parceria com [iFood](https://www.ifood.com.br/).

### Requisitos para executar a aplicação
DbGate .
Conectar ao banco Mysql.
### Sobre o projeto:
Trabalho final do módulo 3 banco de dados

Carloca:
Sua tarefa é criar o banco de dados para o sistema de locadora de carros a CARLOCA!
Requisitos funcionais:
Um carro possui modelo montadora, cor e versão.
As cores de carro disponiveis são apenas branco, preto e prata.
Existem várias categorias de veiculos (hatch, sedam compacto, sedam médio, SUV, etc...)
Um cliente pode alugar um carro somente na modalidade "diária".
Um cliente não pode alugar mais de um carro.
Enquanto um carro estiver locado por um cliente não pode ser ofetado para outro.
O sistema deve manter o histórico dos clientes que locaram determinado carro.
O sistema deve manter o histórico de quantos quilometros o cliente rodou com o carro bem como a quilometragem atual de cada um dos carros.
Existem várias unidades da fraquia CARLOCA o sistema deve saber onde o carro foi locado e onde foi devolvido cada veículo.
Requisitos não funcionais:
Devem ser gerados inserts e selects que possibilitem validar cada um dos requisitos acima.
O exercicio deve ser desenvolvido considerando todos os principios de normalização de dados.
Por hora não falaremos de nada relacionado a pagamento, por tanto o foco do projeto é um atender estritamente os requisitos acima!

#### Os requisitos do projeto foram originalmente definidos como:

[x] Histórico
[x] Carro:
[x] Carro possui nome,disponivel,cor(branco, preto e prata).
[x] Modelo possui nome.
[x] Montadora possui nome.
[x] Versão possui nome.
[x] Categoria possui nome(hatch, sedam compacto, sedam médio, SUV, etc...)

[X]  Locadora
[X]  Locadora possui nome, data e quiolometragem.
[x]  Endereço

[x] Cliente, possui nome, cpf e telefone.

[x] Iserts
[x] Selects
[X] Diagrama.
