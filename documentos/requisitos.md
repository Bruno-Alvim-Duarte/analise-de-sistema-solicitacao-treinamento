# Teste Técnico Fiesc Senai

## **1. Requisitos Funcionais**

- Os colaboradores devem poder criar novas solicitações de treinamentos;
- O sistema deve permitir que o colaborador visualize o histórico e status de suas solicitações, agrupadas por status e ordenadas por data;
- Os colaboradores poderão ser cadastrados com nome e e-mail;
- Os colaboradores devem poder visualizar os treinamentos disponíveis antes de realizar uma solicitação;
- O sistema deve notificar o colaborador quando sua solicitação for aprovada ou rejeitada;
- Os gestores devem poder aprovar ou rejeitar uma ou mais solicitações de treinamentos;
- O sistema deve permitir que o gestor adicione o motivo da rejeição;
- O sistema deve notificar os gestores sobre novas solicitações pendentes;
- O RH deve poder validar as solicitações aprovadas;
- O RH deve acompanhar todo o processo da solicitação;
- O sistema deve notificar o RH sobre solicitações aprovadas aguardando validação;
- Treinamentos devem ser cadastrados com título e descrição;
- A listagem de solicitações e treinamentos deve ter paginação;
- Deve existir um contador com o total de resultados na listagem, atualizado conforme os filtros aplicados;
- O sistema deve permitir que gestores e RH visualizem e filtrem as solicitações por colaborador, status, data, validação, etc, agrupadas por status e ordenadas por data de criação.

## **2. Requisitos Não Funcionais**

- **Usabilidade**: A interface deve ser intuitiva, com uso de cores para indicar status (ex: verde para aprovado, vermelho para rejeitado, amarelo para pendente);
- **Responsividade**: O sistema deve ser acessível em dispositivos móveis e desktops;
- **Segurança**: O acesso ao sistema será controlado por autenticação com níveis de permissão (Colaborador, Gestor e RH);
- **Desempenho**: As páginas de listagem devem carregar em até 2 segundos.

## 3. Regras de Negócio

- Um colaborador não pode aprovar sua própria solicitação;
- Uma solicitação só pode ser aprovada por um gestor;
- Apenas gestores ou RH podem cadastrar novos treinamentos;
- Uma solicitação só pode ser validada pelo RH após a aprovação do gestor;
- Solicitações rejeitadas não podem ser reabertas — deve ser criada uma nova.

## 4. Histórias do usuário com Critérios de Aceitação

**Para o Colaborador:**

- **Título:** Solicitação de Treinamento
- **Eu, como** um Colaborador,
- **Quero** submeter uma solicitação de treinamento e acompanhar seu status,
- **Para que** eu possa desenvolver novas habilidades.
- **Critérios de Aceite:**
    - Deve ser possível selecionar um treinamento da lista de treinamentos criados.
    - Após submeter, a solicitação deve aparecer na minha lista com o status "Pendente".
    - Após submeter deve notificar os gestores

**Para o Gestor:**

- **Título:** Aprovação de Solicitação
- **Eu, como** um Gestor,
- **Quero** visualizar as solicitações de treinamento da minha equipe para aprová-las ou rejeitá-las,
- **Para que** eu possa gerenciar o desenvolvimento do meu time.
- **Critérios de Aceite:**
    - Ao aprovar, o status da solicitação muda para "Aprovado".
    - Ao rejeitar, o status da solicitação muda pra “Rejeitado”.
    - Ao rejeitar, deve ter um campo para preencher um campo de justificativa.
    - Ao aprovar ou rejeitar deve notificar o colaborador responsável pela solicitação

**Para o RH:**

- **Título:** Validação Final da Solicitação
- **Eu, como** um membro do RH,
- **Quero** visualizar as solicitações já aprovadas pelos gestores para poder realizar a validação final,
- **Para que** eu possa garantir que o treinamento está alinhado com as políticas da empresa e oficializar a inscrição.
- **Critérios de Aceite:**
    - Devo ter uma visão/filtro que mostre apenas solicitações com status "Aprovado".
    - Ao validar, deve alterar o valor do campo validado_por_rh para true e adicionar a data de validação.
    - Ao validar, uma notificação deve ser enviada ao colaborador.

### Para Gestores e RH

- **Título:** Criação de Novos Treinamentos
- **Eu, como** um Gestor ou membro do RH,
- **Quero** cadastrar novos treinamentos no sistema com título e descrição,
- **Para que** os colaboradores possam solicitá-los e a empresa possa expandir seu catálogo de cursos.
- **Critérios de Aceite:**
    - Deve existir um formulário para adicionar um novo treinamento com os campos "Título" e "Descrição".
    - Após o cadastro, o novo treinamento deve aparecer na lista de treinamentos visível para todos os colaboradores.
    - Apenas usuários com perfil "Gestor" ou "RH" devem ter acesso a esta funcionalidade.
- **Título:** Visualização e Filtragem Avançada de Solicitações
- **Eu, como** um Gestor ou membro do RH,
- **Quero** visualizar todas as solicitações e usar filtros avançados,
- **Para que** eu possa ter uma visão completa, encontrar informações específicas e gerar relatórios.
- **Critérios de Aceite:**
    - A lista de solicitações deve ser paginada.
    - Devo poder filtrar as solicitações por: colaborador, treinamento, status, data e validado por rh ou não.
    - A lista deve exibir um contador com o total de resultados encontrados atualizadas com a aplicação de um filtro.
    - A lista deve ser agrupada por status e ordenada por data de criação.

### Para o Colaborador

- **Título:** Visualização do Histórico de Solicitações
- **Eu, como** um Colaborador,
- **Quero** visualizar meu histórico de solicitações de forma organizada,
- **Para que** eu possa acompanhar o andamento de cada uma de forma clara e rápida.
- **Critérios de Aceite:**
    - Minhas solicitações devem estar agrupadas por status.
    - Dentro de cada grupo de status, as solicitações devem ser ordenadas pela data em que foram criadas (a mais recente primeiro).
    - A coluna de status deve usar cores para facilitar a identificação visual (amarelo para pendente, verde para aprovado, vermelho para rejeitado).

## Atores Identificados:

- **Colaborador:** Quem solicita os treinamentos.
- **Gestor:** Quem aprova ou rejeita as solicitações dos seus liderados.
- **RH:** Quem acompanha o processo e realiza a validação final.