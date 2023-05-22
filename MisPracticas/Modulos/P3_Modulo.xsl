<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
  <xsl:element name="html">
  <xsl:element name="body">
  <xsl:element name="h1">My CD Collection</xsl:element>
  <xsl:element name="table">
  <xsl:apply-templates/>
</xsl:element>
</xsl:element>
</xsl:element>
</xsl:template>
<xsl:template match="cd">
<xsl:element name="tr">
<xsl:element name="td">
 <xsl:value-of select="title"></xsl:value-of>
<xsl:element name="br"></xsl:element>
<xsl:value-of select="artist"></xsl:value-of>(<xsl:value-of select="year"></xsl:value-of>)
</xsl:element>
</xsl:element>
</xsl:template>
</xsl:stylesheet>
