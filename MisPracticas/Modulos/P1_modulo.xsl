<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
<xsl:element name="html">
<xsl:element name="body">
<xsl:element name="h1">
My CD Collection
</xsl:element>
<xsl:element name="table">
<xsl:attribute name="border">1</xsl:attribute>
<xsl:element name="tr">
<xsl:element name="th">
<xsl:attribute name ="bgcolor">green</xsl:attribute>
Title
</xsl:element>
<xsl:element name="th">
<xsl:attribute name ="bgcolor">green</xsl:attribute>
Artist
</xsl:element>

</xsl:element>
<xsl:apply-templates/>
</xsl:element>
</xsl:element>
</xsl:element>
  </xsl:template>
<xsl:template match="cd">
<xsl:element name="tr">
<xsl:element name="td">
<xsl:value-of select="title"/>
</xsl:element>
<xsl:element name="td">
<xsl:value-of select="artist"/>
</xsl:element>
</xsl:element>
 </xsl:template>
</xsl:stylesheet>
