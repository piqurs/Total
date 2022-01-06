INSERT INTO BERCA.DBO.INVOICE 
(INVNO, INV, INVTHN, CUSTOMERID, 
INVDATE, DUEDATE, CURRENCY, RATE, 
INVAMTIDR, OPENAMTIDR, INVAMTFRG, OPENAMTFRG,
REMARK, ISACTIVE, TGLENT, BLNENT, 
THNENT, JAMENT, MNTENT, DTKENT)
VALUES
(@invno, @inv, @invthn, @customerid, 
@invdate, @duedate, @currency, @rate, 
@invamtidr, @openamtidr, @invamtfrg, @openamtfrg,
@remark, @isactive, @tglent, @blnent, 
@thnent, @jament, @mntent, @dtkent)