﻿<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
  <xsl:element name="almacenamiento">
 <xsl:element name="discos">
 <xsl:attribute name="num">
<xsl:value-of select="count(//disco)"/>
 </xsl:attribute>
 <xsl:copy-of select="//disco" />
</xsl:element>
<xsl:element name="memorias">
<xsl:attribute name="num">
<xsl:value-of select="count(//memoria)"></xsl:value-of>
</xsl:attribute>
<xsl:copy-of select="//memoria"/>
</xsl:element>
</xsl:element>
</xsl:template>
</xsl:stylesheet>
