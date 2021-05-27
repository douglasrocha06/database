#------------------- Create Databases ---------------------------------
#Clientes
echo 'create database api_clientes default character set utf8 default collate utf8_general_ci' | mysql -h djlbanco.cxycaymkd24m.us-east-1.rds.amazonaws.com -u admin -p'12345678'

#Vendas
echo 'create database api_inventario default character set utf8 default collate utf8_general_ci' | mysql -h djlbanco.cxycaymkd24m.us-east-1.rds.amazonaws.com -u admin -p'12345678'

#Produtos
echo 'create database api_produtos default character set utf8 default collate utf8_general_ci' | mysql -h djlbanco.cxycaymkd24m.us-east-1.rds.amazonaws.com -u admin -p'12345678'

#------------------- Create Tables  -----------------------------------------
#Clientes
mysql -h djlbanco.cxycaymkd24m.us-east-1.rds.amazonaws.com -u admin -p'12345678' api_clientes < api_clientes.sql

#Vendas
mysql -h djlbanco.cxycaymkd24m.us-east-1.rds.amazonaws.com -u admin -p'12345678' api_inventario < api_inventario.sql

#Produtos
mysql -h djlbanco.cxycaymkd24m.us-east-1.rds.amazonaws.com -u admin -p'12345678' api_produtos < api_produtos.sql

#clearh bash_history
history -cw