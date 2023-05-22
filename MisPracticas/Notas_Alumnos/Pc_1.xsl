<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <head>
        <title>Listado de Maquinas</title>
      </head>
      <body>
        <h1>Táboa de maquinas</h1>
        <table>
          <tr>
            <th>Máquinas</th>
            <th>Tipo</th>
          </tr>
          <xsl:for-each select="equipos/máquina[not(starts-with(hardware/tipo,'Impresora'))]">
            <xsl:element name="tr">
              <xsl:if test="hardware/tipo ='Semitorre' or hardware/tipo ='PC Sobremesa' ">
                <xsl:attribute name="bgcolor">yellow</xsl:attribute>
              </xsl:if>
              <td>
                <xsl:value-of select="@nome"/>
              </td>
              <td>
                <xsl:value-of select="hardware/tipo"/>
              </td>
            </xsl:element>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
