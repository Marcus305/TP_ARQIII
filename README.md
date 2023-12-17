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

## Instalação

Para instalar o projeto, basta fazer o download do repositório:

* git clone https://github.com/Marcus305/TP_ARQIII
* Abrir com software adequado (Foi utilizado o Quartus para desenvolvimento do trabalho).

