<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">

<xsl:element name="materias">
    <xsl:copy-of select="horario/dia"/>
</xsl:element>

</xsl:template>
</xsl:stylesheet>
