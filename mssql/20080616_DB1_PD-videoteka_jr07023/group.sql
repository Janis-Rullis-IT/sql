
select fuk.k_id,b.brivs,b.sak,b.beigas from filmasUnKasetes as fuk, brivs as  b
where fuk.k_id=b.k_id  and b.k_id=8

select k_id, sum(brivs)
from brivs
group by k_id