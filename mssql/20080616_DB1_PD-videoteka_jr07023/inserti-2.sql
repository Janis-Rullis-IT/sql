
insert filmas.dbo.kasetes values (3600)
insert filmas.dbo.kasetes values (1800)
insert filmas.dbo.kasetes values (900)
insert filmas.dbo.kasetes values (1800)
insert filmas.dbo.kasetes values (7200)
insert filmas.dbo.kasetes values (7200)
insert filmas.dbo.kasetes values (7200)
insert filmas.dbo.kasetes values (7200)

insert filmas.dbo.filmas values ('A',3600)
insert filmas.dbo.filmas values ('B',3600)
insert filmas.dbo.filmas values ('C',7200)
insert filmas.dbo.filmas values ('D',1700)
insert filmas.dbo.filmas values ('E',600)
insert filmas.dbo.filmas values ('F',1000)

insert filmas.dbo.ievieto_kasete values (10000,1,0)
insert filmas.dbo.ievieto_kasete values (10001,5,0)
insert filmas.dbo.ievieto_kasete values (10002,6,0)
insert filmas.dbo.ievieto_kasete values (10004,4,100)
insert filmas.dbo.ievieto_kasete values (10005,8,200)

insert filmas.dbo.brivs values (2,1800,0,1800)
insert filmas.dbo.brivs values (3,900,0,900)
insert filmas.dbo.brivs values (4,100,0,100)
insert filmas.dbo.brivs values (4,1100,700,1800)
insert filmas.dbo.brivs values (5,7200,3600,7200)
insert filmas.dbo.brivs values (7,7200,0,7200)
insert filmas.dbo.brivs values (8,200,0,200)
insert filmas.dbo.brivs values (8,6000,1200,7200)
--------------

select * from filmasUnKasetes
order by k_id
select * from brivas_vietas
order by k_id
select * from kasetes
order by k_id

insert filmas.dbo.kasetes values (7200)
insert filmas.dbo.kasetes values (7200)
insert filmas.dbo.ievieto_kasete values (10005,9,200)

