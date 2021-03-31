# Lista_de_Tarefas
[![NPM](https://img.shields.io/npm/l/react)](https://github.com/willianfrancisco/Conversor_Moedas/blob/main/LICENSE)

Um App Mobile para criar lista de Tarefas.

# Sobre o Projeto

Projeto Realizado Durante estudos de desenvolvimento ultilizando a lingaugem Dart e Flutter Framework.Ele permite: 
- Adicionar tarefas (Inserindo o Nome da Tarefa e clicando em adicionar)
- Marcar como concluida (Assinalar a checkbox na direita da tarefa)
- Atualizar a pagina (puxar a tela para baixo a fim de atualizar as tarefas)
- Excluir (Deslize a tarefa que deseja excluir da esquerda para a direita)
- Desfazer a eclusão (clicar na mensagem no rodape do app para recolocar a nota escluida)

## Layout
![Mobile 1](https://github.com/willianfrancisco/Lista_de_Tarefas/blob/main/lista_tarefas_inicio.PNG) ![Mobile 2](https://github.com/willianfrancisco/Lista_de_Tarefas/blob/main/lista_tarefas.PNG)![Mobile 3](https://github.com/willianfrancisco/Lista_de_Tarefas/blob/main/lista_tarefas_del.PNG)

## Tecnologia Ultilizada
- Flutter 
- Dart
- Visual Studio Code
- Android Studio

## Bibliotecas Ultilizadas
- path_provider/path_provider.dart
- dart:convert

## Como Executar o projeto

```bash
# clonar o repositorio
https://github.com/willianfrancisco/Lista_de_Tarefas.git

# usar o visual studio code ou android studio e abrir a pasta do projeto.
```

### Pré Requisitos
- Ter um Emulador Android Instalado.
- Ter o fluter Instalado e Configurado.
- Ter um editor como Android Studio ou Visual Studio Code(Com extensão do Fluter Instalado).

### Importante
- Talves a versão do flutter instalada não venha com o pacote do Path-Provide Instalada.
- Para incluir Devemos adicionar o plugin do Path-Provider no arquivo pubspec.yaml.
  - cupertino_icons: ^0.1.2
  - path_provider: ^1.1.0  
- Tome bastante cuidado com o alinhamento! O path_provider deve ficar no mesmo alinhamento do cupertino_icons e logo abaixo do mesmo!
- Logo após clique no botão flutter packages get, caso não apareça a opção o seu flutter já possui o pacote Http instalado.

## Autor
Willian Francisco de Souza

https://www.linkedin.com/in/willian-francisco-b47605127/
