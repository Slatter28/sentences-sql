select c.id as id_cliente, c.first_name as nombre, c.last_name as apellido, c.email as email, a.account_no as cuenta, a.balance as saldo from clients c left join accounts a  on c.id = a.client_id ;

select a.account_no as cuenta, a.client_id as "id cliente" , at2."name" as "tipo cuenta" from accounts a left join account_types at2 on a."type"  = at2.id ;

select t.id as transaccion , t.amount as monto , tt."name" as "tipo de transaccion" from transactions t left join transactions_types tt on t.transaction_type = tt.id  ;

select t.id as transaccion , t.amount as monto , tt."name" as "tipo de transaccion" from transactions_types tt 
left join transactions t  on t.transaction_type = tt.id;



create view v_clients_accounts as select c.id as id_cliente, c.first_name as nombre, c.last_name as apellido, c.email as email, a.account_no as cuenta, a.balance as saldo from clients c left join accounts a  on c.id = a.client_id ;

create view v_accounts_types as select a.account_no as cuenta, a.client_id as "id cliente" , at2."name" as "tipo cuenta" from accounts a left join account_types at2 on a."type"  = at2.id ;

create view v_transactions_detail as select t.id as transaccion , t.amount as monto , tt."name" as "tipo de transaccion" from transactions t left join transactions_types tt on t.transaction_type = tt.id;

create view v_transations_types_detail as select t.id as transaccion , t.amount as monto , tt."name" as "tipo de transaccion" from transactions_types tt 
left join transactions t  on t.transaction_type = tt.id;


select * from v_clients_accounts

select * from v_accounts_types

select * from v_transactions_detail

select * from v_transations_types_detail