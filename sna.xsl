<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:output omit-xml-declaration="yes" />
    
    <xsl:template match="modsCollection">
        <xsl:text>
            Source,Target
        </xsl:text>
        
        <xsl:apply-templates select="mods" />
    </xsl:template>
    
    <xsl:template match="mods">
        
        <xsl:if test="originInfo/publisher[1] = 'Elzevier, Bonaventura' or originInfo/publisher[1] = 'Elzevier, Abraham (I)'">
<xsl:text>"</xsl:text>
        <xsl:value-of select="originInfo/publisher[1]"/>
            <xsl:text>"</xsl:text>
        <xsl:text>;</xsl:text>
            <xsl:text>"</xsl:text>
        <xsl:value-of select="name[1]/namePart"/>
            <xsl:text>"</xsl:text>
        <xsl:text>
        </xsl:text>
            
        </xsl:if>
        
    </xsl:template>
    
</xsl:stylesheet>