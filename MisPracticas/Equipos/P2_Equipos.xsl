<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
<xsl:element name="html">
<xsl:element name="title">Táboa de máquinas</xsl:element>
<xsl:element name="body">
<xsl:element name="h1">Táboas das máquinas</xsl:element>
<xsl:element name="table">
<xsl:attribute name="border">1</xsl:attribute>
<xsl:element name="tr">
<xsl:element name="th">Maquinas</xsl:element>
<xsl:element name="th">Procesador</xsl:element>
<xsl:element name="th">Memoria</xsl:element>
</xsl:element>
<xsl:apply-templates select="equipos/máquina" />

</xsl:element> 
</xsl:element>
</xsl:element>  
  </xsl:template>
 <xsl:template match="máquina">
 <xsl:element name="tr">
<xsl:element name="td">
<xsl:value-of select="@nome"/>
</xsl:element> 
 <xsl:element name="td">
<xsl:value-of select="hardware/procesador/@marca"/>
<xsl:value-of select="hardware/procesador/text()"></xsl:value-of>
</xsl:element> 
 <xsl:element name="td">
<xsl:value-of select="hardware/memoria"/>
<xsl:text>GB</xsl:text>
<xsl:value-of select="hardware/memoria/@tecnoloxia"></xsl:value-of>
</xsl:element> 
</xsl:element>
</xsl:template> 
</xsl:stylesheet>
