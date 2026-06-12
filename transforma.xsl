<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">

    <html>
      <head>
        <title>Equips de Futbol</title>

        <style>
          table {
            border-collapse: collapse;
            width: 100%;
          }
          th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: center;
          }
          th {
            background-color: #222;
            color: white;
          }
        </style>
      </head>

      <body>

        <h2>Lliga de Futbol</h2>

        <table>
          <tr>
            <th>Nom</th>
            <th>Entrenador</th>
            <th>Estadi</th>
            <th>Capacitat</th>
            <th>Any</th>
          </tr>

          <xsl:for-each select="CATALOG/EQUIP">
            <tr>
              <td><xsl:value-of select="NOM"/></td>
              <td><xsl:value-of select="ENTRENADOR"/></td>
              <td><xsl:value-of select="ESTADI"/></td>
              <td><xsl:value-of select="CAPACITAT"/></td>
              <td><xsl:value-of select="ANY"/></td>
            </tr>
          </xsl:for-each>

        </table>

      </body>
    </html>

  </xsl:template>

</xsl:stylesheet>
