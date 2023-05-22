<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="equipos">
<xsl:element name="discos">
<xsl:apply-templates select="máquina/hardware/disco"/>
</xsl:element>
</xsl:template>
<xsl:template match="disco">
<xsl:element name="disco">
              <xsl:attribute name="tecnoloxia">
                          <xsl:value-of select="@tecnoloxía"/>
              </xsl:attribute>
              <xsl:attribute name="capacidade">
                            <xsl:value-of select="@capacidade"/>
              </xsl:attribute>
              <xsl:attribute name="nome">
                              <xsl:value-of select="../../@nome"/>
                </xsl:attribute>
</xsl:element>
</xsl:template>
</xsl:stylesheet>
