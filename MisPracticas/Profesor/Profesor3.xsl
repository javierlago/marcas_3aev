<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="xml" indent="yes"/>
<xsl:template match="/módulo/profesor">
<xsl:comment>Soy un comentario</xsl:comment>
<Profesor> Estoy volviendo para atras</Profesor>
</xsl:template>
<xsl:template match="/módulo">
 <xsl:element name="Módulo">
 <xsl:apply-templates select="profesor"/>
 </xsl:element>
</xsl:template>
</xsl:stylesheet>
