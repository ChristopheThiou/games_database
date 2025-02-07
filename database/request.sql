SELECT * FROM account;

SELECT * FROM purchase WHERE account_id = 1;

SELECT t.* FROM token t
JOIN token_account ta ON t.id = ta.token_id
WHERE ta.account_id = 1;

SELECT * FROM token_pack;

SELECT t.* FROM token t
JOIN token_pack_token tpt ON t.id = tpt.token_id
WHERE tpt.token_pack_id = 1;

SELECT * FROM login WHERE account_id = 1;

SELECT * FROM purchase WHERE purchase_date = '2020-01-01';

SELECT * FROM account WHERE chat_restriction = 1;

SELECT * FROM account WHERE freemium = 1;

SELECT * FROM account WHERE country = 'France';