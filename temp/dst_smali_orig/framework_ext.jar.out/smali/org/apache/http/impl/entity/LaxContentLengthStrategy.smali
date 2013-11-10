.class public Lorg/apache/http/impl/entity/LaxContentLengthStrategy;
.super Ljava/lang/Object;
.source "LaxContentLengthStrategy.java"

# interfaces
.implements Lorg/apache/http/entity/ContentLengthStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public determineLength(Lorg/apache/http/HttpMessage;)J
    .locals 18
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    if-nez p1, :cond_0

    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "HTTP message may not be null"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpMessage;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v11

    .local v11, params:Lorg/apache/http/params/HttpParams;
    const-string v15, "http.protocol.strict-transfer-encoding"

    invoke-interface {v11, v15}, Lorg/apache/http/params/HttpParams;->isParameterTrue(Ljava/lang/String;)Z

    move-result v13

    .local v13, strict:Z
    const-string v15, "Transfer-Encoding"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lorg/apache/http/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v14

    .local v14, transferEncodingHeader:Lorg/apache/http/Header;
    const-string v15, "Content-Length"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lorg/apache/http/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .local v1, contentLengthHeader:Lorg/apache/http/Header;
    if-eqz v14, :cond_7

    const/4 v6, 0x0

    .local v6, encodings:[Lorg/apache/http/HeaderElement;
    :try_start_0
    invoke-interface {v14}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    if-eqz v13, :cond_2

    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    array-length v15, v6

    if-ge v9, v15, :cond_2

    aget-object v15, v6, v9

    invoke-interface {v15}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v5

    .local v5, encoding:Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_1

    const-string v15, "chunked"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_1

    const-string v15, "identity"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_1

    new-instance v15, Lorg/apache/http/ProtocolException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unsupported transfer encoding: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v15

    .end local v5           #encoding:Ljava/lang/String;
    .end local v9           #i:I
    :catch_0
    move-exception v12

    .local v12, px:Lorg/apache/http/ParseException;
    new-instance v15, Lorg/apache/http/ProtocolException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Invalid Transfer-Encoding header value: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v12}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v15

    .end local v12           #px:Lorg/apache/http/ParseException;
    .restart local v5       #encoding:Ljava/lang/String;
    .restart local v9       #i:I
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .end local v5           #encoding:Ljava/lang/String;
    .end local v9           #i:I
    :cond_2
    array-length v10, v6

    .local v10, len:I
    const-string v15, "identity"

    invoke-interface {v14}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    const-wide/16 v2, -0x1

    .end local v6           #encodings:[Lorg/apache/http/HeaderElement;
    .end local v10           #len:I
    :cond_3
    :goto_1
    return-wide v2

    .restart local v6       #encodings:[Lorg/apache/http/HeaderElement;
    .restart local v10       #len:I
    :cond_4
    if-lez v10, :cond_5

    const-string v15, "chunked"

    add-int/lit8 v16, v10, -0x1

    aget-object v16, v6, v16

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    const-wide/16 v2, -0x2

    goto :goto_1

    :cond_5
    if-eqz v13, :cond_6

    new-instance v15, Lorg/apache/http/ProtocolException;

    const-string v16, "Chunk-encoding must be the last one applied"

    invoke-direct/range {v15 .. v16}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_6
    const-wide/16 v2, -0x1

    goto :goto_1

    .end local v6           #encodings:[Lorg/apache/http/HeaderElement;
    .end local v10           #len:I
    :cond_7
    if-eqz v1, :cond_b

    const-wide/16 v2, -0x1

    .local v2, contentlen:J
    const-string v15, "Content-Length"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lorg/apache/http/HttpMessage;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v8

    .local v8, headers:[Lorg/apache/http/Header;
    if-eqz v13, :cond_8

    array-length v15, v8

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_8

    new-instance v15, Lorg/apache/http/ProtocolException;

    const-string v16, "Multiple content length headers"

    invoke-direct/range {v15 .. v16}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_8
    array-length v15, v8

    add-int/lit8 v9, v15, -0x1

    .restart local v9       #i:I
    :goto_2
    if-ltz v9, :cond_9

    aget-object v7, v8, v9

    .local v7, header:Lorg/apache/http/Header;
    :try_start_1
    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v2

    .end local v7           #header:Lorg/apache/http/Header;
    :cond_9
    const-wide/16 v15, 0x0

    cmp-long v15, v2, v15

    if-gez v15, :cond_3

    const-wide/16 v2, -0x1

    goto :goto_1

    .restart local v7       #header:Lorg/apache/http/Header;
    :catch_1
    move-exception v4

    .local v4, e:Ljava/lang/NumberFormatException;
    if-eqz v13, :cond_a

    new-instance v15, Lorg/apache/http/ProtocolException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Invalid content length: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_a
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .end local v2           #contentlen:J
    .end local v4           #e:Ljava/lang/NumberFormatException;
    .end local v7           #header:Lorg/apache/http/Header;
    .end local v8           #headers:[Lorg/apache/http/Header;
    .end local v9           #i:I
    :cond_b
    const-wide/16 v2, -0x1

    goto :goto_1
.end method
