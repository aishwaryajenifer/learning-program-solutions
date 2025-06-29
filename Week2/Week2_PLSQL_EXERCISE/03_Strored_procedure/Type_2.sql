//UpdateEmployeeBonus
CREATE OR REPLACE PROCEDURE UpdateEmployeeBonus(
    deptId IN NUMBER,
    bonusPct IN NUMBER
) AS
BEGIN
    UPDATE employees
    SET salary = salary + (salary * bonusPct / 100)
    WHERE department_id = deptId;
    COMMIT;
END;