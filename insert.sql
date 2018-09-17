USE Condominio2;

INSERT INTO Condominio (id, nome, CNPJ, emp_resp) VALUES
(1, 'Vila Mar', 68417055, 'EriJão Imóveis'),
(2, 'Vila Ar', 87462639, 'EriJão Imóveis'),
(3, 'Vila Dunar', 08429645, 'EriJão Imóveis');

INSERT INTO gastos (id, descricao, data, condominio) VALUES
(1, 'Piso novo para o banheiro do décimo andar', '2018-01-18', 1),
(2, 'Pão de sal para festinha de despedida', '2018-01-18', 2),
(3, 'Tijolos para construir churrasqueira', '2018-01-18', 3);

INSERT INTO blocos (id, nome, condominio) VALUES
(1, 'Bloco A', 1),
(2, 'Bloco B', 2),
(3, 'Bloco C', 3);

INSERT INTO funcionarios (id, nome, cpf, salario, telefone) VALUES
(1, 'Cris Flores da Silva', 32749728, 1500.50, 998764520),
(2, 'Armando Pena Santos', 61964252, 1280.90, 992756646),
(3, 'Dominique Sampaio da Costa', 15039010, 1605.10, 992717770);

INSERT INTO apartamento (id, andar, numero, bloco) VALUES
(1, 2, 210, 1),
(2, 6, 601, 2),
(3, 1, 105, 3);

INSERT INTO morador (id, nome, cpf, email, telefone) VALUES
(1, 'Gilmar de Fideliz Novanta', 68410500, 'gil.mar0nov00@gmail.com', 995139487),
(2, 'Alex Sandro Deodoro', 84663900, 'alexyz_dead@gmail.com', 999874657),
(3, 'Fátima Costa Barros', 10969400, 'coxtinha12399@gmail.com', 990378412);

INSERT INTO visitas (id, nome, cpf, entrada, saida) VALUES
(1, 'Vilma Pagliarim', 10914382, '20180908 14:20:08', '20180909 08:43:58'),
(2, 'Altair Robespierre', 69564174, '20180111 10:00:12', '20180111 23:34:07'),
(3, 'Eduardo de Araujo', 10128497, '20180524 13:32:26', '20180524 21:10:19');

INSERT INTO areasLazer (id, nome) VALUES
(1, 'Quadra de Vôlei 2'),
(2, 'Mesa de Tênis 5'),
(3, 'Balanço 4');

INSERT INTO quarto (id, nome, camas, apartamento) VALUES
(1, 'Pais e bebê', 2, 1),
(2, 'Lua de mel', 1, 2),
(3, 'Solteiro', 1, 3);

INSERT INTO recurso (id, nome) VALUES
(1, 'Isolamento acústico'),
(2, 'Banheira'),
(3, 'Tv e X-box one');

INSERT INTO funcionario_condominio (idF, idC) VALUES
(1, 1),
(2, 2),
(3, 3);

INSERT INTO areaLazer_condominio (idAL, idC) VALUES
(1, 1),
(2, 2),
(3, 3);

INSERT INTO morador_apartamento (idM, idA) VALUES
(1, 1),
(2, 2),
(3, 3);

INSERT INTO visita_apartamento (idV, idA) VALUES
(1, 1),
(2, 2),
(3, 3);

INSERT INTO recurso_quarto (idR, idQ) VALUES
(1, 1),
(2, 2),
(3, 3);