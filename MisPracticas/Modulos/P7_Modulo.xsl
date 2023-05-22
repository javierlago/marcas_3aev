<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="cliente">
 <xsl:text>Cliente;</xsl:text>
 <xsl:value-of select="//cliente/@cod"/>
 <xsl:text>Numero de producto:</xsl:text>
 <xsl:value-of select="count(//produto)"/>
  </xsl:template>
</xsl:stylesheet>
