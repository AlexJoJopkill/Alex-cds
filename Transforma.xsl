<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <title>Lliga de Futbol</title>
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
            background-color: #333;
            color: white;
          }
        </style>
      </head>

      <body>
        <h2>Lliga de Futbol - Equips</h2>

        <table>
          <tr>
            <th>Nom</th>
            <th>Entrenador</th>
            <th>Estadi</th>
            <th>Capacitat</th>
            <th>Any fundació</th>
          </tr>

          <xsl:for-each select="lliga_futbol/equip">
            <tr>
              <td><xsl:value-of select="nom"/></td>
              <td><xsl:value-of select="entrenador"/></td>
              <td><xsl:value-of select="estadi"/></td>
              <td><xsl:value-of select="capacitat"/></td>
              <td><xsl:value-of select="any_fundacio"/></td>
            </tr>
          </xsl:for-each>

        </table>

      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
