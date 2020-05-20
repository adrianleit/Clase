<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions">
	<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>liga de futbol</title>
				<link rel="stylesheet" type="text/css" href="ligadefutbol.css">
			</head>
			<body>
				<xsl:for-each select="ligadefutbol/campos">
					<xsl:value-of select="nombre"></xsl:value-of>
					<xsl:value-of select="dimension"></xsl:value-of>
					<xsl:value-of select="maximo_aficionados"></xsl:value-of>
					<xsl:value-of select="direccion"></xsl:value-of>
					<xsl:value-of select="municipio"></xsl:value-of>
					<xsl:value-of select="region"></xsl:value-of>
					<xsl:value-of select="cesped"></xsl:value-of>
					<xsl:value-of select="equipo"></xsl:value-of>
				</xsl:for-each>
				<xsl:for-each select="ligadefutbol/clasificacion">
					<xsl:value-of select="nombre_liga"></xsl:value-of>
					<xsl:value-of select="puntos_totales"></xsl:value-of>
					<xsl:value-of select="equipos"></xsl:value-of>
					<xsl:value-of select="goles_favor"></xsl:value-of>
					<xsl:value-of select="goles_contra"></xsl:value-of>
					<xsl:value-of select="tarjetas_amarillas"></xsl:value-of>
					<xsl:value-of select="tarjetas_rojas"></xsl:value-of>
					<xsl:value-of select="partidos_ganados"></xsl:value-of>
					<xsl:value-of select="partidos_empatados"></xsl:value-of>
					<xsl:value-of select="partidoss_perdidos"></xsl:value-of>
					</xsl:for-each>
				<xsl:for-each select="ligadefutbol/equipos">
					<xsl:value-of select="equipo"></xsl:value-of>
					<xsl:value-of select="campos"></xsl:value-of>
					<xsl:value-of select="municipio"></xsl:value-of>
					<xsl:value-of select="region"></xsl:value-of>
					<xsl:value-of select="ligas_ganadas"></xsl:value-of>
					<xsl:value-of select="liga"></xsl:value-of>
				</xsl:for-each>
				<xsl:for-each select="ligadefutbol/jugadores">
					<xsl:value-of select="nombre"></xsl:value-of>
					<xsl:value-of select="apellido1"></xsl:value-of>
					<xsl:value-of select="apellido2"></xsl:value-of>
					<xsl:value-of select="posicion"></xsl:value-of>
					<xsl:value-of select="pais_nacimiento"></xsl:value-of>
					<xsl:value-of select="fecha_nacimiento"></xsl:value-of>
					<xsl:value-of select="goles"></xsl:value-of>
					<xsl:value-of select="expulsiones"></xsl:value-of>
					<xsl:value-of select="equipo"></xsl:value-of>
					<xsl:value-of select="capitan"></xsl:value-of>
				</xsl:for-each>
				<xsl:for-each select="ligadefutbol/ligas">
					<xsl:value-of select="nombre"></xsl:value-of>
					<xsl:value-of select="año_creacion"></xsl:value-of>
					<xsl:value-of select="equipos"></xsl:value-of>
					<xsl:value-of select="ediciones_disputadas"></xsl:value-of>
				</xsl:for-each>
				<xsl:for-each select="ligadefutbol/partidos">
					<xsl:value-of select="nombre_campos"></xsl:value-of>
					<xsl:value-of select="fecha"></xsl:value-of>
					<xsl:value-of select="hora"></xsl:value-of>
					<xsl:value-of select="resultado"></xsl:value-of>
					<xsl:value-of select="equipo_local"></xsl:value-of>
					<xsl:value-of select="equipo_visitante"></xsl:value-of>
				</xsl:for-each>
			</body>
		</html>

	</xsl:template>
</xsl:stylesheet>
