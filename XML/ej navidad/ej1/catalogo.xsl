<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <body>
        <h1>Catálogo de películas</h1>
        <table border="1">
          <tr>
            <th>Título</th>
            <th>Género</th>
            <th>Director</th>
            <th>Duración(en minutos)</th>
            <th>Valoración</th>
            <th>Supera las dos horas</th>
            <th>Imagen</th>
          </tr>
          <xsl:for-each select="catalogo/pelicula">
            <tr>
              <td><xsl:value-of select="titulo"></xsl:value-of></td>
              <td><xsl:value-of select="genero"></xsl:value-of></td>
              <td><xsl:value-of select="director"></xsl:value-of></td>
              <td><xsl:value-of select="duracion"></xsl:value-of></td>
              <td><xsl:value-of select="valoracion"></xsl:value-of></td>
              <td>
                <xsl:choose>
                  <xsl:when select="duracion > 120">Si</xsl:when>
                  <xsl:otherwise>No</xsl:otherwise>
                </xsl:choose>
              </td>
              <td>
                <img>
                  <xsl:attribute name="src">
                    <xsl:value-of select="imagen"/>
                  </xsl:attribute>
                  <xsl:attribute name="height">100</xsl:attribute>
                </img>
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
