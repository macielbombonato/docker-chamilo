# docker-chamilo

Esta imagem usa como ponto de partida a imagem oficial do PHP com apache (php:5.6-apache) e implementa sobre ela as instalações necessárias para conseguir disponibilizar um sistema chamilo totalmente funcional.

Pontos de observação:
- Como já tive históricos ruins com arquivos de download do chamilo deixarem de ser disponibilizados em determinado link, coloquei o repositório todo junto a este para que este recurso não deixe de funcionar futuramente por fatores externos.
- A versão oficial da imagem do chamilo não funcionou nos testes que fiz (normalmente estava subindo um terminal unix e por baixo, sobe o apache, achei o processo estranho e ruim, por isso montei essa imagem alternativa).


- Essa imagem ainda está construção, portanto, ainda apresenta estabilidade satisfatória.
