<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:srv="http://www.isotc211.org/2005/srv/2.0/2013-06-24"
  xmlns:mds="http://www.isotc211.org/2005/mds/1.0/2013-06-24"
  xmlns:mcc="http://www.isotc211.org/2005/mcc/1.0/2013-06-24"
  xmlns:mri="http://www.isotc211.org/2005/mri/1.0/2013-06-24"
  xmlns:mrs="http://www.isotc211.org/2005/mrs/1.0/2013-06-24"
  xmlns:mrd="http://www.isotc211.org/2005/mrd/1.0/2013-06-24"
  xmlns:mco="http://www.isotc211.org/2005/mco/1.0/2013-06-24"
  xmlns:msr="http://www.isotc211.org/2005/msr/1.0/2013-06-24"
  xmlns:lan="http://www.isotc211.org/2005/lan/1.0/2013-06-24"
  xmlns:gcx="http://www.isotc211.org/2005/gcx/1.0/2013-06-24"
  xmlns:gex="http://www.isotc211.org/2005/gex/1.0/2013-06-24"
  xmlns:dqm="http://www.isotc211.org/2005/dqm/1.0/2013-06-24"
  xmlns:cit="http://www.isotc211.org/2005/cit/1.0/2013-06-24"
  xmlns:gco="http://www.isotc211.org/2005/gco"
  xmlns:gn="http://www.fao.org/geonetwork"
  xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="#all">

  <xsl:include href="utility-tpl-multilingual.xsl"/>


  <xsl:template name="get-iso19115-3-online-source-config">
    <xsl:param name="pattern"/>
    <config>
      <!--<xsl:for-each select="$metadata/descendant::gmd:onLine[
        matches(
        gmd:CI_OnlineResource/gmd:protocol/gco:CharacterString,
        $pattern) and
        normalize-space(gmd:CI_OnlineResource/gmd:linkage/gmd:URL) != '']">
        <xsl:variable name="protocol" select="gmd:CI_OnlineResource/gmd:protocol/gco:CharacterString"/>
        <xsl:variable name="fileName">
          <xsl:choose>
            <xsl:when test="matches($protocol, '^DB:.*')">
              <xsl:value-of select="concat(gmd:CI_OnlineResource/gmd:linkage/gmd:URL, '#',
                gmd:CI_OnlineResource/gmd:name/gco:CharacterString)"/>
            </xsl:when>
            <xsl:when test="matches($protocol, '^FILE:.*')">
              <xsl:value-of select="gmd:CI_OnlineResource/gmd:linkage/gmd:URL"/>
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="gmd:CI_OnlineResource/gmd:name/gmx:MimeFileType|
                gmd:CI_OnlineResource/gmd:name/gco:CharacterString"/>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:variable>

        <xsl:if test="$fileName != ''">
          <resource>
            <ref><xsl:value-of select="gn:element/@ref"/></ref>
            <refParent><xsl:value-of select="gn:element/@parent"/></refParent>
            <name><xsl:value-of select="$fileName"/></name>
            <url><xsl:value-of select="gmd:CI_OnlineResource/gmd:linkage/gmd:URL"/></url>
            <title><xsl:value-of select="normalize-space($metadata/gmd:identificationInfo/*/
              gmd:citation/gmd:CI_Citation/gmd:title/gco:CharacterString)"/></title>
            <abstract><xsl:value-of select="normalize-space($metadata/
              gmd:identificationInfo/*/gmd:abstract)"/></abstract>
            <protocol><xsl:value-of select="gmd:CI_OnlineResource/gmd:protocol/gco:CharacterString"/></protocol>
          </resource>
        </xsl:if>
      </xsl:for-each>-->
    </config>
  </xsl:template>
</xsl:stylesheet>
