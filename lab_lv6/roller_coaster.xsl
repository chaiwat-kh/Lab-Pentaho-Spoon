<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns="http://www.w3.org/1999/xhtml">
  <xsl:output method="xml" indent="yes" encoding="UTF-8"/>
  <xsl:template match="/Rows">
    <html>
      <head>
        <title>Roller Coasters</title>
      </head>
      <body>
        <h1>Roller Coasters</h1>
        <table border="1">
          <!-- grid header -->
          <tr bgcolor="lightblue">
            <td>Name</td>
            <td>Speed</td>
            <td>Park</td>
            <td>Location</td>
            <td>Country</td>
            <td>Year</td>
          </tr>
          <xsl:apply-templates select="Row">
            <xsl:sort select="Roller_Coaster" />
          </xsl:apply-templates>
        </table>
      </body>
    </html>
  </xsl:template>
  <xsl:template match="Row">
    <!-- grid value fields -->
    <tr>
      <td>
        <xsl:value-of select="Roller_Coaster"/>
      </td>
      <td>
        <xsl:value-of select="Speed"/>
      </td>
      <td>
        <xsl:value-of select="park"/>
      </td>
      <td>
        <xsl:value-of select="location"/>
      </td>
      <td>
        <xsl:value-of select="country"/>
      </td>
      <td>
        <xsl:value-of select="Year"/>
      </td>
    </tr>
  </xsl:template>
</xsl:stylesheet>