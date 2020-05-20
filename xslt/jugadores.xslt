<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions">
	<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<html>
			<head>
				<meta charset="UTF-8"/>
				<title>XML</title>
				<link rel="stylesheet" type="text/css" href="../css/css.css"/>
			</head>
			<body>
					<nav class="barra_navegacion">
					<img alt="Escudo de la LIGA" width="auto" height="55px" src="{pma_xml_export/database/column[@name= 'img' ]}"/>
					<ul>
						<li>
							<a href="../xml/campos.xml">Campos</a></li>
						<li>
							<a href="../xml/clasificacion.xml">Clasificacion</a></li>
						<li>
							<a href="../xml/equipos.xml">Equipos</a></li>
						<li>
							<a href="../xml/jugadores.xml">Jugadores</a></li>
						<li>
							<a href="../xml/ligas.xml">Ligas</a></li>
						<li>
							<a href="../xml/partidos.xml">Partidos</a></li>
					</ul>
				</nav>
				<table>
					<tr>
						<th>Nombre del Jugador</th>
						<th>Primer Apellido</th>
						<th>Segundo Apellido</th>
						<th>Posicion</th>
						<th>Pais de Nacimiento</th>
						<th>Dorsal</th>
						<th>Fecha de Nacimiento</th>
						<th>Goles</th>
						<th>Expulsiones</th>
						<th>Equipo</th>
						<th>Capitan</th>

					</tr>
					<xsl:for-each select="pma_xml_export/database/table">
						<xsl:sort order="ascending" select="column[@name= 'equipo' ]"/>
						<tr>
							<td><xsl:value-of select="column[@name= 'nombre' ]"/></td>
							<td><xsl:value-of select="column[@name= 'apellido1' ]"/></td>
							<td><xsl:value-of select="column[@name= 'apellido2' ]"/></td>
							<td><xsl:value-of select="column[@name= 'posicion' ]"/></td>
							<td><xsl:value-of select="column[@name= 'pais_nacimiento' ]"/></td>
							<td><xsl:value-of select="column[@name= 'dorsal' ]"/></td>
							<td><xsl:value-of select="column[@name= 'fecha_nacimiento' ]"/></td>
							<td><xsl:value-of select="column[@name= 'goles' ]"/></td>
							<td><xsl:value-of select="column[@name= 'expulsiones' ]"/></td>
							<td><xsl:value-of select="column[@name= 'equipo' ]"/></td>
							<td><xsl:value-of select="column[@name= 'capitan' ]"/></td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
