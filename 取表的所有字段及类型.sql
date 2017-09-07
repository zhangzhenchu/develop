select a.name tablename, b.name+',' colName, c.name colType ,c.length colLength
from sysobjects a inner join syscolumns b
on a.id=b.id and a.xtype='U'
inner join systypes c
on b.xtype=c.xusertype
where a.name='ComprehensiveStock'


