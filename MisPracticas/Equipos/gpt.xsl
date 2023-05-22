<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="equipos">
    <html>
      <title>Táboa de máquinas</title>
      <body>
        <h1>Táboas das máquinas</h1>
        <table border="1">
          <tr>
            <th>Maquinas</th>
            <th>Procesador</th>
            <th>Memoria</th>
          </tr>
          <xsl:apply-templates select="máquina"/>
        </table> 
      </body>
    </html>
  </xsl:template>
  
  <xsl:template match="máquina">
    <tr>
      <td>
        <xsl:value-of select="@nome"/>
      </td> 
      <td>
        <xsl:value-of select="hardware/procesador/@marca"/>
        <xsl:value-of select="hardware/procesador"/>
      </td> 
      <td>
        <xsl:value-of select="hardware/memoria"/>
        <xsl:text>GB</xsl:text>
        <xsl:value-of select="hardware/memoria/@tecnoloxía"/>
      </td> 
    </tr>
  </xsl:template> 
</xsl:stylesheet>