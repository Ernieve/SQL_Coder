-- Vista 1
-- Mostrar directores y academias correspondientes
create view academia_mambolaye.vw_direccion as
select a.nombre_sede as Sede
,concat(b.nombre,' ', b.apellido) as Director
from sede a  
join director b 
on (a.id_director = b.id_director);

-- Vista 2
-- Mostrar estilos de Baile y sus respectivos generos
create view academia_mambolaye.vw_estilo_genero as
SELECT est.nombre_estilo as 'Estilo de Baile',
gen.nombre_genero as 'Genero Musical'
from estilo est
join genero_musical gen
on (est.id_genero = gen.id_genero);

-- Vista 3
-- Mostrar Las diferentes clase que se encuentran registradas
create view academia_mambolaye.vw_detalle_clases as
select cla.id_clase
,est.nombre_estilo as 'Estilo Baile'
,concat(pro.nombre, ' ',pro.apellido) as 'Profesor(a)'
,concat(hc.dia, ' ', hc.hora_inicio, ' ', hc.hora_fin) as 'Horario'
,nv.descripcion 'Nivel'
,sl.nombre_salon 'Salon'
from clase cla
join estilo est 
on (cla.id_estilo = est.id_estilo)
join profesor pro
on (cla.id_profesor = pro.id_profesor)
join horario_clase hc
on (cla.id_horario = hc.id_horario)
join nivel nv
on (cla.id_nivel = nv.id_nivel)
join salon sl
on (cla.id_salon = sl.id_salon);

-- Vista 4
-- Salones que estan en cada sede
create view academia_mambolaye.vw_lugares as
select sed.nombre_sede
,sed.direccion
,sed.telefono
,sal.nombre_salon as Salon
from salon sal
join sede sed
on (sal.id_sede = sed.id_sede);

-- Vista 5 
-- Membresias
create view academia_mambolaye.vw_detalle_membresia as
select al.*
,pay.descripcion_pago
from alumno al
join membresia mem
on (mem.id_alumno = al.id_alumno)
join tipo_pago pay
on (mem.id_tipo_pago = pay.id_tipo_pago)
order by al.id_alumno asc;