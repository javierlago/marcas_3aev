(: consulta número 9 :)
<sinVersionElectronica>
{
for $x in doc("libros.xml")/biblioteca/libros/libro
where empty($x/versionElectronica)
return <libro>{$x/titulo, $x/editorial}</libro>
}
</sinVersionElectronica>
