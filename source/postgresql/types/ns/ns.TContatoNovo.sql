CREATE TYPE ns.TContatoNovo AS (
     id uuid
   , idPessoa uuid
   , nome character varying(200)
   , primeiroNome character varying(100)
   , sobreNome character varying(100)
   , email character varying(100)
   , cargo character varying(100)
   , sexo integer
   , observacao text
   , dataNascimento date
	
);
