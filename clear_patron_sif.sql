delete from vger_report.patron_sif where created < (sysdate - 365);
