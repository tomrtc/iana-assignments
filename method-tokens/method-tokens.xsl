<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'method-tokens-1'">
        <tr><th>Token</th><th>Description</th><th>Reference</th><th>Registration Date</th></tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'method-tokens-1'">
        <tr>
          <td><xsl:value-of select="iana:token"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
          <td><xsl:value-of select="@date"/></td>
        </tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
