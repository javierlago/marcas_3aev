<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output encoding="UTF-8" indent="yes" method="html"/>
  <xsl:template match="/">
    <html>
      <head>
        <title>Notas de los alumnos</title>
      </head>
      <body>
        <h1>Las notas</h1>
        <table border="1">
          <caption>Notas 2023</caption>
          <tr bgcolor="green">
            <th>Nombre</th>
            <th>Nota</th>
          </tr>
          <xsl:apply-templates select="alumnos/alumno"/>
        </table>
      </body>
    </html>
  </xsl:template>
  <xsl:template match="alumno">
    <xsl:element name="tr">
      <xsl:choose>
        <xsl:when test="nota &lt; 5">
          <xsl:attribute name="bgcolor">red</xsl:attribute>
        </xsl:when>
        <xsl:when test="nota &lt; 7">
          <xsl:attribute name="bgcolor">blue</xsl:attribute>
        </xsl:when>
        <xsl:otherwise>
          <xsl:attribute name="bgcolor">green</xsl:attribute>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:element>
    <xsl:element name="td">
      <xsl:value-of select="nome"/>
    </xsl:element>
    <xsl:element name="td">
      <xsl:value-of select="nota"/>
    </xsl:element>
  </xsl:template>
</xsl:stylesheet>
