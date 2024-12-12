<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
  <body>
    <h1>Equipos de Futbol</h1>
    <table border="1">
      <tr>
        <th>Nombre</th>
        <th>Pais</th>
        <th>Presidente</th>
        <th>Entrenador</th>
        <th>Titulos</th>
        <th>Maximo goleador</th>
        <th>Mejor portero</th>
      </tr>
      <xsl:for-each select="equipos/equipo">
        <tr>
          <td><xsl:value-of select="nombre"></xsl:value-of></td>
          <td><xsl:value-of select="pais"></xsl:value-of></td>
          <td><xsl:value-of select="presidente"></xsl:value-of></td>
          <td><xsl:value-of select="entrenador"></xsl:value-of></td>
          <td><xsl:value-of select="titulos"></xsl:value-of></td>
          <td><xsl:value-of select="maximo_goleador"></xsl:value-of></td>
          <td><xsl:value-of select="mejor_portero"></xsl:value-of></td>
        </tr>
      </xsl:for-each>
    </table>
  </body>
</html>
  
  
  </xsl:template>
</xsl:stylesheet>
