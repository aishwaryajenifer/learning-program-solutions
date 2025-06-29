//TransferFunds
CREATE OR REPLACE PROCEDURE TransferFunds(
    fromAcc IN NUMBER,
    toAcc IN NUMBER,
    amount IN NUMBER
) AS
    fromBalance NUMBER;
BEGIN
    SELECT balance INTO fromBalance
    FROM accounts
    WHERE account_id = fromAcc
    FOR UPDATE;

    IF fromBalance < amount THEN
        RAISE_APPLICATION_ERROR(-20001, 'Insufficient balance.');
    END IF;

    UPDATE accounts
    SET balance = balance - amount
    WHERE account_id = fromAcc;

    UPDATE accounts
    SET balance = balance + amount
    WHERE account_id = toAcc;

    INSERT INTO transactions (txn_id, from_account, to_account, amount, txn_date)
    VALUES (transactions_seq.NEXTVAL, fromAcc, toAcc, amount, SYSDATE);

    COMMIT;
END;