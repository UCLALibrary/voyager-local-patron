select
distinct ltrim(rtrim(pa.address_line1)) as email
from
ucladb.patron p
inner join ucladb.patron_address pa on p.patron_id = pa.patron_id
inner join ucladb.circ_transactions ct on p.patron_id = ct.patron_id
where
p.expire_date >= sysdate
and (pa.expire_date >= sysdate or pa.expire_date is null)
and pa.address_type = 3
and pa.protect_address = 'N'
and instr(pa.address_line1, '@') > 0
order by
email;
