<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet
   version="1.0"
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
   xmlns:xsd="http://www.w3.org/2001/XMLSchema"
   xmlns:msxsl="urn:schemas-microsoft-com:xslt"
>
  <xsl:strip-space elements="*"/>
  <xsl:output method="xml"
      omit-xml-declaration="yes"
      indent="yes"
      standalone="yes" />

  <xsl:template match="/">
    <xsl:for-each select="newDataSet">
      <xsl:element name="newDataSet">
        <xsl:for-each select="Products" >
          <xsl:element  name="Products">
            <xsl:attribute name="ProductID">
              <xsl:value-of select="ProductID"/>
            </xsl:attribute>
            <xsl:attribute name="ProductName">
              <xsl:value-of select="ProductName"/>
            </xsl:attribute>
            <xsl:attribute name="SupplierID">
              <xsl:value-of select="SupplierID"/>
            </xsl:attribute>
            <xsl:attribute name="CategoryID">
              <xsl:value-of select="CategoryID"/>
            </xsl:attribute>
            <xsl:attribute name="UnitPrice">
              <xsl:value-of select="UnitPrice"/>
            </xsl:attribute>
            <xsl:attribute name="UnitsInStock">
              <xsl:value-of select="UnitsInStock"/>
            </xsl:attribute>
            <xsl:attribute name="UnitsOnOrder">
              <xsl:value-of select="UnitsOnOrder"/>
            </xsl:attribute>
          </xsl:element>
        </xsl:for-each>
      </xsl:element>
    </xsl:for-each>
  </xsl:template>

</xsl:stylesheet>