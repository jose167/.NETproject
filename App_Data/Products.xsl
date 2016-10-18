<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <body>
        <h2>Products XML</h2>
        <table border="2">
          <tr bgcolor="#9acd32">
            <th>ProductID</th>
            <th>ProductName</th>
            <th>SupplierID</th>
            <th>CategoryID</th>
            <th>QuantityPerUnit</th>
            <th>UnitPrice</th>
          </tr>
          <xsl:for-each select="/stuck/Products">
            <tr>
              <td>
                <xsl:value-of select="ProductID"/>
              </td>
              <td>
                <xsl:value-of select="ProductName"/>
              </td>
              <td>
                <xsl:value-of select="SupplierID"/>
              </td>
              <td>
                <xsl:value-of select="CategoryID"/>
              </td>
              <td>
                <xsl:value-of select="QuantityPerUnit"/>
              </td>
              <td>
                <xsl:value-of select="UnitPrice"/>
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
	