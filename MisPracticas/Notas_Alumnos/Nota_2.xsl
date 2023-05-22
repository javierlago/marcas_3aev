<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <head>
        <title>Listado con for-each</title>
      </head>
      <body>
        <table>
          <caption>La taba</caption>
          <tr>
            <th>Nombre</th>
            <th>Nota</th>
          </tr>
          <xsl:for-each select="alumnos/alumno">
            <tr>
              <td>
                <xsl:value-of select="nome"/>
              </td>
              <td>
                <xsl:value-of select="nota"/>
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
