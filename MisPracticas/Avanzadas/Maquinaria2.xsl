<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
 <xsl:output encoding="UTF-8" method="html"/>
  <xsl:template match="/">
  <xsl:element name="html"> <!-- inicio html -->
  <xsl:element name="titlt">Listado de máquinas</xsl:element><!-- Title -->
  <xsl:element name="body">
  <xsl:element name="h1">Máquinas</xsl:element>
  <xsl:apply-templates select="equipos/máquina" mode="enlaces"/>
  <xsl:apply-templates select="equipos/máquina" mode="listado"/>
  </xsl:element><!--fin BODY -->
  </xsl:element><!--fin html -->

  </xsl:template>
  <xsl:template match="máquina" mode="enlaces">
  <xsl:element name="a">
  <xsl:attribute name="href">
{@nome}  
  </xsl:attribute>
  <xsl:value-of select="@nome"/>
  </xsl:element>
  <xsl:element name="br"></xsl:element>
  </xsl:template>

  <xsl:template match="máquina" mode="listado">
  <xsl:element name="h2"><xsl:value-of select="@nome"></xsl:value-of></xsl:element>
  <xsl:element name="ul">
  <xsl:apply-templates select="hardware*"/>
  </xsl:element>
  </xsl:template>

  <xsl:template match="memoria">
  <xsl:element name="li">
Memoria:  <xsl:value-of select="text()"/>GB
  </xsl:element>
  </xsl:template>
  
  
   <xsl:template match="disco">
  <xsl:element name="li">
Disco:  <xsl:value-of select="@capacidade"/>GB
  </xsl:element>
  </xsl:template>
  
  
  
  <xsl:template match="lectora|gravadora">
  <xsl:element name="li">
<xsl:value-of select="name()" /> <xsl:value-of select="@tipo"/>
  </xsl:element>
  </xsl:template>
  
  
  <xsl:template match="*">
  <xsl:element name="li"><xsl:value-of select="text()"/>  </xsl:element>
</xsl:template>
</xsl:stylesheet>
