var today varchar2(10);
exec :today := to_char(sysdate, 'YYYY.MM.DD');
update vger_report.PATRON_SIF set processed = to_date(:today, 'YYYY.MM.DD') where processed is null;
