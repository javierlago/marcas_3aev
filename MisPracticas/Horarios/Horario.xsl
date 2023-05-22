<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
  <xsl:element name="html">
<xsl:element name="head">
<xsl:element name="title">Horario Asir</xsl:element>
</xsl:element>  <!-- Fin del head-->
  <xsl:element name="body"> <!-- Comienzo del body -->
  <xsl:element name="h1">
  <xsl:value-of select="horario/@ciclo"/>,ano  <xsl:value-of select="horario/@ano"/>
  </xsl:element>  <!-- Fin del h1 -->
  <xsl:element name="table">
  <xsl:attribute name="border">1</xsl:attribute>
  <xsl:element name="tr"><!-- Primera fila -->
  <xsl:element name="th"/>
  <xsl:element name="th">Inicio</xsl:element>
   <xsl:element name="th">Fin</xsl:element>
  </xsl:element><!-- Fin Primera fila -->
<xsl:apply-templates select="horario/horas/hora" /> <!-- Aplicamos plantilla -->
  </xsl:element> <!-- Fin del table -->
  </xsl:element><!-- Fin del body -->
  </xsl:element>  <!-- Fin del html-->
  </xsl:template>
 <xsl:template match="hora"> 
<xsl:element name="tr"> <!-- Fila -->
<xsl:element name="td"><xsl:value-of select="@id"/></xsl:element>

<xsl:element name="td"><xsl:value-of select="inicio"/></xsl:element>
<xsl:element name="td"><xsl:value-of select="fin"/></xsl:element>
</xsl:element> 
 </xsl:template>
</xsl:stylesheet>
