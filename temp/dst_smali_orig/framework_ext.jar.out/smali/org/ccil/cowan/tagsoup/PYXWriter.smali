.class public Lorg/ccil/cowan/tagsoup/PYXWriter;
.super Ljava/lang/Object;
.source "PYXWriter.java"

# interfaces
.implements Lorg/ccil/cowan/tagsoup/ScanHandler;
.implements Lorg/xml/sax/ContentHandler;
.implements Lorg/xml/sax/ext/LexicalHandler;


# static fields
.field private static dummy:[C


# instance fields
.field private attrName:Ljava/lang/String;

.field private theWriter:Ljava/io/PrintWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    new-array v0, v0, [C

    sput-object v0, Lorg/ccil/cowan/tagsoup/PYXWriter;->dummy:[C

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1
    .parameter "w"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/io/PrintWriter;

    .end local p1
    iput-object p1, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    :goto_0
    return-void

    .restart local p1
    :cond_0
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    goto :goto_0
.end method


# virtual methods
.method public adup([CII)V
    .locals 2
    .parameter "buff"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->attrName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->attrName:Ljava/lang/String;

    return-void
.end method

.method public aname([CII)V
    .locals 2
    .parameter "buff"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PrintWriter;->write([CII)V

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->attrName:Ljava/lang/String;

    return-void
.end method

.method public aval([CII)V
    .locals 1
    .parameter "buff"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PrintWriter;->write([CII)V

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->attrName:Ljava/lang/String;

    return-void
.end method

.method public cdsect([CII)V
    .locals 0
    .parameter "buff"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1, p2, p3}, Lorg/ccil/cowan/tagsoup/PYXWriter;->pcdata([CII)V

    return-void
.end method

.method public characters([CII)V
    .locals 0
    .parameter "buff"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1, p2, p3}, Lorg/ccil/cowan/tagsoup/PYXWriter;->pcdata([CII)V

    return-void
.end method

.method public cmnt([CII)V
    .locals 0
    .parameter "buff"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public comment([CII)V
    .locals 0
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1, p2, p3}, Lorg/ccil/cowan/tagsoup/PYXWriter;->cmnt([CII)V

    return-void
.end method

.method public decl([CII)V
    .locals 0
    .parameter "buff"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public endCDATA()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public endDTD()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "uri"
    .parameter "localname"
    .parameter "qname"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    move-object p3, p2

    :cond_0
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public entity([CII)V
    .locals 0
    .parameter "buff"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public eof([CII)V
    .locals 1
    .parameter "buff"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    return-void
.end method

.method public etag([CII)V
    .locals 2
    .parameter "buff"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PrintWriter;->write([CII)V

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public getEntity()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public gi([CII)V
    .locals 2
    .parameter "buff"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PrintWriter;->write([CII)V

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .parameter "buff"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1, p2, p3}, Lorg/ccil/cowan/tagsoup/PYXWriter;->characters([CII)V

    return-void
.end method

.method public pcdata([CII)V
    .locals 4
    .parameter "buff"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    .local v1, inProgress:Z
    add-int/2addr p3, p2

    move v0, p2

    .local v0, i:I
    :goto_1
    if-ge v0, p3, :cond_5

    aget-char v2, p1, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_3

    if-eqz v1, :cond_2

    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    :cond_2
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    const-string v3, "-\\n"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(C)V

    :cond_4
    aget-char v2, p1, v0

    sparse-switch v2, :sswitch_data_0

    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    aget-char v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(C)V

    :goto_3
    const/4 v1, 0x1

    goto :goto_2

    :sswitch_0
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    const-string v3, "\\t"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    :sswitch_1
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    const-string v3, "\\\\"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch
.end method

.method public pi([CII)V
    .locals 1
    .parameter "buff"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PrintWriter;->write([CII)V

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public pitarget([CII)V
    .locals 2
    .parameter "buff"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PrintWriter;->write([CII)V

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->write(I)V

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "target"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0
    .parameter "locator"

    .prologue
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public stagc([CII)V
    .locals 0
    .parameter "buff"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public stage([CII)V
    .locals 2
    .parameter "buff"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public startCDATA()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "publicId"
    .parameter "systemId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .parameter "uri"
    .parameter "localname"
    .parameter "qname"
    .parameter "atts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    move-object p3, p2

    :cond_0
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(C)V

    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-virtual {v2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object p3

    :cond_1
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    const/16 v3, 0x41

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(C)V

    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-virtual {v2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(C)V

    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "prefix"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    return-void
.end method
