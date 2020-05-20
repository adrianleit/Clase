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
						<th>Nombre del Equipo</th>
						<th>Campo</th>
						<th>Municipio</th>
						<th>Region</th>
						<th>Nº de ligas ganadas</th>
						<th>Liga</th>
						<th>Video</th>

					</tr>
					<xsl:for-each select="pma_xml_export/database/table">
						<tr>
							<td><xsl:value-of select="column[@name= 'equipo' ]"/></td>
							<td><xsl:value-of select="column[@name= 'campo' ]"/></td>
							<td><xsl:value-of select="column[@name= 'municipio' ]"/></td>
							<td><xsl:value-of select="column[@name= 'region' ]"/></td>
							<td><xsl:value-of select="column[@name= 'ligas_ganadas' ]"/></td>
							<td><xsl:value-of select="column[@name= 'liga' ]"/></td>
							<td><iframe width="auto" height="auto" src="{column[@name= 'video' ]}" frameborder="0"></iframe></td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>

