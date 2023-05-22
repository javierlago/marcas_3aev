<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
  <xsl:element name="html"><!--Iinicio HTML-->
<xsl:element name="title">Horario 1 Asir Ordinario</xsl:element>  
<xsl:element name="h1">Asignaturas por dia</xsl:element>
<xsl:element name="body">
  <xsl:apply-templates select="horario/dia"/>
  </xsl:element>
  </xsl:element><!--Fin HTML-->
  </xsl:template>
  <xsl:template match="dia">
<xsl:element name="ul">
<xsl:element name="li"> Dia<xsl:value-of select="@num"/>
<xsl:element name="ul">
<xsl:apply-templates select="materia"/>
</xsl:element>
</xsl:element>
</xsl:element>  
</xsl:template>
<xsl:template match="materia">
<xsl:element name="li"> <xsl:value-of select="@nome"/></xsl:element>
</xsl:template>
</xsl:stylesheet>
