<html>
<head>
<title>Ejemplo 9</title>
</head>

<body>
<table border="1">
<caption>CANCIONES POR DISCO </caption>
<tr><td>Artista</td><td>Nombre disco</td><td>Grabada en</td></tr>
{
for $i in doc("canciones.xml")/MiBibliotecaMP3/archivo
order by number($i/puntuacion) descending
return if ($i/@almacenado="DISCO1")
then <tr><td>{data($i/artista)}</td><td>{data($i/disco)}</td>
     <td>{data($i/puntuacion)}</td><td>{data($i/@almacenado)}</td></tr>
else <tr><td>{data($i/artista)}</td><td>{data($i/disco)}</td>
     <td>{data($i/puntuacion)}</td><td>{data($i/@almacenado)}</td></tr>
}
</table>
</body>
</html>
