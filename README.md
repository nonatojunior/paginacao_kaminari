UTILIZANDO A GEM KAMINARI PARA CRIAR PAGINAÇÃO DE FORMA SIMPLES E DIRETA

--- TECNOLOGIAS UTILIZADAS:
Ruby 2.3.1

Rails 5.0.1

Sqlite3

Gem Kaminari 1.0


--- PASSO A PASSO
* Iremos criar = um projeto chamado paginacao_kaminari com o seguinte comando: rails new paginacao_kaminari.

* Agora vamos adiciona a gem kaminari no seu arquivo Gemfile: gem 'kiminari', '~> 1.0'

* Execute o comando: bundle install

* Vamos criar um scaffold pessoas com os atributos, nome e idade: rails g scaffold pessoas nome:string idade:integer

* Execute o seguinte comando, para criar as tebelas geradas pelo nosso scaffold: rake db:migrate

* Vamos inicializar nossa aplicação executando: rails s

* Na no controller pessoas, nas action index, vamos alterar a linha @pessoas = Pessoa.all por @pessoas = Pessoa.page(params[:page]).per(2), onde o params[:paga] nos informa a página em que estamos, á o per informa quantos itens queremos mostrar por página. No nosso caso, mostramos 2 itens por página.

* Na view index de pessoas, adicionamos as seguintes linhas:
	<%= paginate @pessoas %>
		O paginate helper é a linha realmente responsável por renderizar os links de paginação, o que nos possibilita a percorrer pelas páginas.
	<%= page_entries_info @pessoas %>
		O auxiliar page_entries_info exibe uma linha semelhante a esta, pessoas 1 - 10 de 100 in total. Isso pode ser extremamente útil para permitir que o usuário saiba quantos itens existem na lista.
	
* Pronto, agora basta dá um f5 no browser e teremos uma paginação.