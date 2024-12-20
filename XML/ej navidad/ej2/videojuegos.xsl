<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <body>
        <h1>Inventario de Videojuegos</h1>
          <table  border="1">
            <tr>
              <th>Nombre</th>
              <th>Género</th>
              <th>Precio</th>
              <th>Desarrollador</th>
              <th>Imagen</th>
              <th>Precio con 10% de descuento</th>
            </tr>
              <xsl:for-each select="inventario/videojuegos">
                <tr>
                  <td><xsl:value-of select="nombre"></xsl:value-of></td>
                  <td><xsl:value-of select="plataforma"></xsl:value-of></td>
                  <td><xsl:value-of select="genero"></xsl:value-of></td>
                  <td><xsl:value-of select="precio"></xsl:value-of>€</td>
                  <td><xsl:value-of select="desarollador"></xsl:value-of></td>
                  <td><xsl:value-of select="precio * 0.90"/>€</td>
                </tr>
              </xsl:for-each>
          </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>