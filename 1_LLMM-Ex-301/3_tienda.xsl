<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" />
    <xsl:template match="/tienda">
        <html>
            <head>
                <title><xsl:value-of select="title"/></title>
                <link rel="stylesheet" href="3_tienda.css"/>
            </head>
            <body>
                <header>
                    <div>
                    <h1><xsl:value-of select="encabezado"/></h1>
                    </div>
                    <div>
                        <p><xsl:value-of select="descripcion"/></p>
                    </div>
                </header>
                
                 <section id="productos" >
                        <div id="containerProd">
                            <xsl:for-each select="/tienda/productos/producto">
                                    <div class="producto">
                                        <h3><xsl:value-of select="tituloProducto"/></h3>
                                        <p><xsl:value-of select="descripcionProducto"/></p>
                                        <h4><xsl:value-of select="precio"/></h4>
                                    </div>      
                            </xsl:for-each>
                        </div>
                        
                    </section>
            </body>
        </html>
    
    </xsl:template>
</xsl:stylesheet>