# getx_example

Uma aplicação em flutter usando o GetX

## Tópicos abordados

- GetXController para controle de estado;
    - GetBuilder(): usado para criar a instância do meu objeto controller e também responsável por reconstruir os widgets quando dados na árvore forem atualizados.
    
- GetMaterialApp usado para o navegação entre rotas;
    - Get.to(MinhaPágina()): Navega para uma rota específica;
    - Get.toNamed('/home'): Navegar para uma rota nomeada;
    - GetPage(): usado para instanciar as minhas páginas;
