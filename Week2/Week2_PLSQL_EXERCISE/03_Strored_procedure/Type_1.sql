//ProcessMonthlyInterest

CREATE OR REPLACE PROCEDURE ProcessMonthlyInterest AS
BEGIN
    FOR rec IN (
        SELECT account_id, balance
        FROM accounts
        WHERE UPPER(account_type) = 'SAVINGS'
    )
    LOOP
        UPDATE accounts
        SET balance = balance + (balance * 0.01)
        WHERE account_id = rec.account_id;
    END LOOP;
    COMMIT;
END;