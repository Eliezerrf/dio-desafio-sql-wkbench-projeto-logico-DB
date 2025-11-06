
USE ECOMMERCE;

INSERT INTO clients          (FNAME, MINIT, LNAME, CLIENT_TYPE, CPF_CNPJ, ADDRESS, DATEBIRTH)
					  VALUES ('Maria','M','Silva','PF','12346789012','rua silva de prata 29, Carangola - Cidade das flores',NULL),
                             ('Matheus','O','Pimentel','PF','98765432106','rua alemeda 289, Centro - Cidade das flores',NULL),
                             ('Ricardo','F','Silva','PF','45678913110','avenida alemeda vinha 1009, Centro - Cidade das flores',NULL),
                             ('Julia','S','França','PF','78912345612','rua lareijras 861, Centro - Cidade das flores',NULL),
                             ('Roberta','G','Assis','PF','09874563113','avenidade koller 19, Centro - Cidade das flores',NULL),
                             ('Isabela','M','Cruz','PF','65547891230','rua alemeda das flores 28, Centro - Cidade jardim',NULL),
                             ('Jose','J','Antunes','PF','36892587410','rua campos sales 2094, Carangola - Cidade os anjos',NULL),
                             ('Marcos','R','Pinheiro','PF','25857413695','rua floriano peixoto 358, Centro - Conjunto Paraiso',NULL),
                             ('Raimundo','W','Vasconcelos','PF','74185279606','avenida sete de setembro, Centro - Condominio Palmeiras',NULL),
                             ('Mercado','S','Paulo','PJ','02584359000125','rua princesa isabel 9874, Centro - Edificio Sol Nascente',NULL),
                             ('Jessica','V','Oliveira','PF','35795148108','avenidade do contorno 654, Centro - Vila Velha',NULL),
                             ('Farmacia','P','Baixo','PJ','03584962000145','rua almeida prado, Centro - Porto Seguro',NULL);
					        
					        
INSERT INTO product          (PNAME, CLASSIFICATION_KIDS, CATEGORY, PAVALIATION, PSIZE) 
                      VALUES ('Fone de ouvido',0,'ELETRÔNICO',4,NULL),
                             ('Barbie Elsa',1,'BRINQUEDOS',3,NULL),
                             ('Body Carters',1,'VESTIMENTA',5,NULL),
                             ('Microfone Vedo - Youtuber',0,'ELETRÔNICO',4,NULL),
                             ('Sofá retrátil',0,'MÓVEIS',3,'3x57x80'),
                             ('Farinha de arroz',0,'ALIMENTOS',2,NULL),
                             ('Fire Stick Amazon',0,'ELETRÔNICO',3,NULL),
                             ('Smarth Whatch',0,'ELETRÔNICO',7,NULL),
                             ('Telefone Celular',1,'ELETRÔNICO',9,NULL),
                             ('Teclado Mecânico',1,'ELETRÔNICO',5,NULL),
                             ('Ventilador de Teto',0,'MÓVEIS',4,NULL),
                             ('Cadeira Anatômica',0,'MÓVEIS',3,'3x57x80'),
                             ('Smart TV',0,'ELETRÔNICO',2,NULL),
                             ('Calça Jeans',0,'VESTIMENTA',3,NULL);


INSERT INTO orders          (IDORDERCLIENT, ORDERSTATUS, ORDERDESCRIPTION, SENDVALUE, TOTALVALUEORDER, PAYMENTCASH)  
                     VALUES (1,'EM PROCESSAMENTO','compra via aplicativo',NULL,1000,1),
                            (2,'EM PROCESSAMENTO','compra via aplicativo',50,500,0),
                            (3,'CONFIRMADO',NULL,NULL,350,1),
                            (4,'EM PROCESSAMENTO','compra via web site',150,285,0),
                            (5,'EM PROCESSAMENTO','compra via aplicativo',NULL,2850,1),
                            (6,'EM PROCESSAMENTO','compra via web site',50,3920,0),
                            (7,'CONFIRMADO',NULL,NULL,838,1),
                            (8,'EM PROCESSAMENTO','compra via web site',150,680,0),
                            (1,'EM PROCESSAMENTO','compra via aplicativo',NULL,120,1),
                            (5,'EM PROCESSAMENTO','compra via aplicativo',50,425,0),
                            (8,'CONFIRMADO',NULL,NULL,180,1);	
					 

INSERT INTO payments          (IDPAYMORDER, IDPAYMCLIENT, IDPAYMENT, TYPEPAYMENT, LIMITAVAILABLE)  
				       VALUES (1,1,1,'CARTÃO',1000),
                              (2,2,1,'DOIS CARTÕES',250),
                              (2,2,2,'DOIS CARTÕES',250),
                              (3,3,1,'BOLETO',350),
                              (4,4,1,'CARTÃO',285),
                              (5,5,1,'DOIS CARTÕES',1500),
                              (5,5,2,'DOIS CARTÕES',1350),
                              (6,6,1,'BOLETO',3920),
                              (7,7,1,'CARTÃO',838),
                              (8,8,1,'DOIS CARTÕES',340),
                              (8,8,2,'DOIS CARTÕES',340);
					   

			  
INSERT INTO dispatchs          (IDDISPORDER, IDDISPCLIENT, IDDISPATCH, COMPANY, CONTACT, SEND_DATE, IDTRACKING, STATUS)
						VALUES (3,3,1,'CORREIOS','01132459854','2025-01-05','65489231487BR','Entregue'),
                               (7,7,1,'DHL     ','06187584561','2025-12-05','465138978842164','Em Transito');	


INSERT INTO productorder   (IDPOPRODUCT, IDPOORDER, POQUANTITY, POSTATUS)
				    VALUES (1,5,2,NULL),
						   (2,5,1,NULL),
                           (2,7,2,NULL),
                           (3,6,1,NULL),
                           (4,6,2,NULL),
                           (5,5,1,NULL),
                           (5,6,1,NULL),
                           (6,6,1,NULL);


INSERT INTO productstorage          (STORAGELOCATION, QUANTITY)
							 VALUES ('Rio de Janeiro',1000),
                                    ('Rio de Janeiro',500),
                                    ('São Paulo',10),
                                    ('São Paulo',100),
                                    ('São Paulo',10),
                                    ('Brasília',60),
                                    ('Cuiaba',1000),
                                    ('Manaus',500),
                                    ('Belém',10),
                                    ('Manaus',100),
                                    ('Manaus',10),
                                    ('Belo Horizonte',60);


INSERT INTO storagelocation          (IDLPRODUCT, IDLSTORAGE, LOCATION)
                              VALUE  (1,2,'RJ'),
                                     (2,6,'GO'),
                                     (3,2,'MG'),
                                     (4,6,'AM');


INSERT INTO supplier          (SOCIALNAME, CNPJ, CONTACT) 
					   VALUES ('Almeida e filhos','123456789123456','21985474'),
                              ('Eletrônicos Silva','854519649143457','21985484'),
                              ('Utilar Eletromóveis','934567893934695','21975474'),
                              ('Ideal Alimentos','564782196542371','21985474'),
                              ('Atacadão dos Eletrônicos','856748321987653','21985484'),
                              ('Hipermercado Preço Bom','658745823169837','21975474');

INSERT INTO productsupplier          (IDPSSUPPLIER, IDPSPRODUCT, QUANTITY)
                              VALUES (1,1,500),
                                     (1,2,400),
                                     (2,4,633),
                                     (2,5,10),
                                     (3,3,5),
                                     (3,10,16),
                                     (4,6,385),
                                     (4,7,251),
                                     (4,9,125),
                                     (5,8,956);	

							  

INSERT INTO seller          (SOCIALNAME, ABSTNAME, CNPJ, CPF, LOCATION, CONTACT)
				   VALUES   ('Tech eletronics',NULL,'123456789456321',NULL,'Rio de Janeiro','219946287'),
                            ('Botique Durgas',NULL,NULL,'123456783','Rio de Janeiro','219567895'),
                            ('Kids World',NULL,'456789123654485',NULL,'São Paulo','1198657484'),
                            ('HiTech eletronics',NULL,'658732549715634',NULL,'Rio de Janeiro','219946287'),
                            ('Bella Botique ',NULL,NULL,'659745281','Rio de Janeiro','219567895'),
                            ('Mundo Kids',NULL,'798542378652145',NULL,'São Paulo','1198657484');		


INSERT INTO productseller        (IDPSELLER, IDPPRODUCT, PRODQUANTITY)
					      VALUES (1,6,80),
                                 (2,7,10),
                                 (3,8,90),
                                 (4,9,100);
							

					 

						  

					   




