INSERT INTO account (avatar, pseudo, birth_date, country, chat_restriction, freemium, currency) VALUES (
    'avatar.png',
    'testuser',
    '1990-01-01',
    'France',
    0,
    1,
    'EUR'
);

INSERT INTO login (email, password, token, account_id) VALUES (
    'test@test.com',
    'password',
    'token',
    1
);

INSERT INTO token_pack (token_numbers) VALUES (
    100
);

INSERT INTO purchase (purchase_amount, purchase_date, purchase_list, purchase_info, purchase_type, account_id, token_pack_id) VALUES (
    10,
    '2020-01-01',
    'token pack',
    'token pack info',
    'token pack type',
    1,
    1
);

INSERT INTO token (token, token_value) VALUES (
    769,
    10
);

INSERT INTO token_account (account_id, token_id) VALUES (
    1,
    1
);

INSERT INTO token_pack_token (token_pack_id, token_id) VALUES (
    1,
    1
);
