# Trabalho Prático de Arquitetura de Computadores III
Professor: Ricardo Carlini

Grupo:

* Arthur Lanna
* Arthur Oliveira
* Marcus Leandro
* Rafael Ramos

Trabalho utilizando Microprocessador com o conceito Superescalar com Pipeline de Instruções em VerilogHDL baseado na Arquitetura MIPS.
Durante o desenvolvimento do trabalho, buscamos atender aos requisitos de:

* Utilizar técnicas avançadas de pipeline de instruções
* Maximizar a taxa de instruções por ciclo
* Reforçar princípios da arquitetura MIPS e o conceito de superescalar estudados nas aulas téoricas

## Descrição

A arquitetura utilizada é arquitetura MIPS genérica, com base em um processador de 32bits. A memória RAM está implementada para utilizar 256 palavras de 32bits. 

Destinados aos dispositivos E/S temos duas portas de entrada e uma porta de saída, as 3 em 32 bits.

O caminho de dados implementado consiste em os principais componentes: Unidade de Controle, ALU, conjuntos de registradores e memória.

Para as instruções seguimos as especificações deixadas nas intruções do trabalho, implementando também os formatos das instruções designadas: R-type, I-type, J-type.

Cada componente foi implementado de forma modular garantindo a funcionalidade da pipelina superescalar e o controle de hazard.

Conforme solicitado, foram feitas simulações para testar o funcionamento das implementações e verificar o desempenho.

## Implementação

Utilizou-se de todos os recursos e técnicas aprendidas em sala de aula para a adoção e execução de estratégias para a contrução do processador.

Os estágios de pipeline, para esse processador 5 estágios, podem ser observados no módulo principal do projeto.

O test bench do projeto inclui o valor dos principais sinais do pipeline. Com a utilização do software ModelSim é possível também ver cada um dos sinais internos em intervalos de tempo determinados.

### Conjunto de instruções implementadas

* addi
* sw
* lw
* add
* and
* andi
* or
* ori
* nor
* sll
* srl
* mul
* j
* beq
* bne
* slt
* jal
* jr

Cada uma das intruções possuem a codificação padrão do MIPS.

### Input de instruções

Para carregar instruções para a memória de programa, é necessário editar o arquivo `modules/instr.txt` com as instruções codificadas em binário.
 
## Instalação

Para instalar o projeto, basta fazer o download do repositório:

* git clone https://github.com/Marcus305/TP_ARQIII
* Abrir com software adequado (Foi utilizado o Quartus em conjunto do ModelSim para desenvolvimento do trabalho).

