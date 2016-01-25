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
        <th style="text-align:left">Franchise</th>

        <th style="text-align:left">Role - Range</th>
        <th style="text-align:left">Role - Type</th>

        <th style="text-align:left">Life - At 1</th>
        <th style="text-align:left">Life - At 10</th>
        <th style="text-align:left">Life - At 20</th>
        <th style="text-align:left">Life - At 30</th>
        <th style="text-align:left">Life - Regen</th>

        <th style="text-align:left">Attack - Speed</th>
        <th style="text-align:left">Attack - Range</th>

        <th style="text-align:left">Damage - At 1</th>
        <th style="text-align:left">Damage - At 10</th>
        <th style="text-align:left">Damage - At 20</th>
        <th style="text-align:left">Damage - At 30</th>

        <th style="text-align:left">DPS - At 1</th>
        <th style="text-align:left">DPS - At 10</th>
        <th style="text-align:left">DPS - At 20</th>
        <th style="text-align:left">DPS - At 30</th>

      </tr>
      <xsl:apply-templates select="hero"/>
    </table>
  </xsl:template>

  <xsl:template match="hero">
    <tr>
    <td><xsl:value-of select="@name"/></td>
    <td><xsl:value-of select="@title"/></td>
    <td><xsl:value-of select="@franchise"/></td>

    <xsl:apply-templates select="role"/>
    <xsl:apply-templates select="life"/>
    <xsl:apply-templates select="atk"/>
    <xsl:apply-templates select="dmg"/>
    <xsl:apply-templates select="dps"/>
    </tr>
  </xsl:template>

  <xsl:template match="role">
    <td><xsl:value-of select="@range"/></td>
    <td><xsl:value-of select="@type"/></td>
  </xsl:template>

  <xsl:template match="life">
    <td><xsl:value-of select="@at1"/></td>
    <td><xsl:value-of select="@at10"/></td>
    <td><xsl:value-of select="@at20"/></td>
    <td><xsl:value-of select="@at30"/></td>
    <td><xsl:value-of select="@regen"/></td>
  </xsl:template>

  <xsl:template match="atk">
    <td><xsl:value-of select="@speed"/></td>
    <td><xsl:value-of select="@range"/></td>
  </xsl:template>

  <xsl:template match="dmg">
    <td><xsl:value-of select="@at1"/></td>
    <td><xsl:value-of select="@at10"/></td>
    <td><xsl:value-of select="@at20"/></td>
    <td><xsl:value-of select="@at30"/></td>
  </xsl:template>

  <xsl:template match="dps">
    <td><xsl:value-of select="@at1"/></td>
    <td><xsl:value-of select="@at10"/></td>
    <td><xsl:value-of select="@at20"/></td>
    <td><xsl:value-of select="@at30"/></td>
  </xsl:template>

</xsl:stylesheet>
