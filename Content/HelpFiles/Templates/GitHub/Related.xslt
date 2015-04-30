﻿<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
    xmlns:command="http://schemas.microsoft.com/maml/dev/command/2004/10"
    xmlns:maml="http://schemas.microsoft.com/maml/2004/10"
    xmlns:dev="http://schemas.microsoft.com/maml/dev/2004/10"
    xmlns:MSHelp="http://msdn.microsoft.com/mshelp"
>
  <xsl:template match="maml:relatedLinks">
    <h2 class="heading">Related topics</h2>
    <div id="seeAlsoNoToggle" class="section">
      <xsl:apply-templates select="maml:navigationLink"/>
    </div>
  </xsl:template>

  <xsl:template match="maml:navigationLink">
    <br />
    <xsl:choose>
      <xsl:when test="maml:uri !=''">
        <a href="{maml:uri}">
          <xsl:value-of select="maml:linkText"/>
        </a>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="maml:linkText"/>
      </xsl:otherwise>
    </xsl:choose>
    <br />
  </xsl:template>
</xsl:stylesheet>
