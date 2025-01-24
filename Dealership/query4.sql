-- Анулиране на транзакция
UPDATE CarTransactionsquery1
SET Status = 'Анулирана'
WHERE TransactionID = 5;