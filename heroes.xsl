<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <body>
        <h2>My Heroes</h2>
        <xsl:apply-templates/>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="heroes">
    <table border="1">
      <tr bgcolor="#9acd32">
        <th style="text-align:left">Name</th>
        <th style="text-align:left">Title</th>

        <th style="text-align:left">Role - Range</th>
        <th style="text-align:left">Role - Type</th>

        <th style="text-align:left">franchise</th>

        <th style="text-align:left">Life at 1</th>
        <th style="text-align:left">Life at 10</th>
        <th style="text-align:left">Life at 20</th>
        <th style="text-align:left">Life at 30</th>
        <th style="text-align:left">Healthregen</th>


        <th style="text-align:left">Damage at 1</th>
        <th style="text-align:left">Damage at 10</th>
        <th style="text-align:left">Damage at 20</th>
        <th style="text-align:left">Damage at 30</th>

        <th style="text-align:left">dps at 1</th>
        <th style="text-align:left">dps at 10</th>
        <th style="text-align:left">dps at 20</th>
        <th style="text-align:left">dps at 30</th>

        <th style="text-align:left">Attack Speed</th>
        <th style="text-align:left">Attack Range</th>
      </tr>
      <tr>
        <xsl:apply-templates select="hero"/>
      </tr>
    </table>
  </xsl:template>

  <xsl:template match="hero">
    <td><xsl:value-of select="name"/></td>
    <td><xsl:value-of select="title"/></td>

    <xsl:apply-templates select="role"/>
    <xsl:apply-templates select="franchise"/>
    <xsl:apply-templates select="lifeStats"/>
    <xsl:apply-templates select="attackStats"/>
  </xsl:template>

  <xsl:template match="role">
    <xsl:for-each select="range/*">
      <td><xsl:value-of select="local-name()"/></td>
    </xsl:for-each>

    <xsl:for-each select="type/*">
      <td><xsl:value-of select="local-name()"/></td>
    </xsl:for-each>
  </xsl:template>

  <xsl:template match="franchise">
    <xsl:for-each select="*">
      <td><xsl:value-of select="local-name()"/></td>
    </xsl:for-each>
  </xsl:template>

  <xsl:template match="lifeStats">
    <xsl:for-each select="*">
      <td><xsl:value-of select="current()"/></td>
    </xsl:for-each>
  </xsl:template>

  <xsl:template match="attackStats">

    <xsl:for-each select="damage/*">
      <td><xsl:value-of select="current()"/></td>
    </xsl:for-each>

    <xsl:for-each select="dps/*">
      <td><xsl:value-of select="current()"/></td>
    </xsl:for-each>

    <td><xsl:value-of select="attackSpeed"/></td>
    <td><xsl:value-of select="attackRange"/></td>

  </xsl:template>

</xsl:stylesheet>
