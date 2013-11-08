.class public Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "SecurityAgreeParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .parameter "lexer"

    .prologue
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "security"

    .prologue
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public parse(Lgov/nist/javax/sip/header/ims/SecurityAgree;)Lgov/nist/javax/sip/header/SIPHeaderList;
    .locals 13
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v12, 0xfff

    const/16 v11, 0x2c

    const/16 v10, 0xa

    const/16 v9, 0x3b

    const/4 v8, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    new-instance v7, Lgov/nist/javax/sip/header/ims/SecurityClient;

    invoke-direct {v7}, Lgov/nist/javax/sip/header/ims/SecurityClient;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v4, Lgov/nist/javax/sip/header/ims/SecurityClientList;

    invoke-direct {v4}, Lgov/nist/javax/sip/header/ims/SecurityClientList;-><init>()V

    .local v4, list:Lgov/nist/javax/sip/header/SIPHeaderList;
    :goto_0
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6, v12}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v5

    .local v5, type:Lgov/nist/core/Token;
    invoke-virtual {v5}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->setSecurityMechanism(Ljava/lang/String;)V

    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6, v8}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    .local v2, la:C
    if-ne v2, v10, :cond_3

    invoke-virtual {v4, p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .end local v2           #la:C
    .end local v4           #list:Lgov/nist/javax/sip/header/SIPHeaderList;
    .end local v5           #type:Lgov/nist/core/Token;
    :goto_1
    return-object v4

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    new-instance v7, Lgov/nist/javax/sip/header/ims/SecurityServer;

    invoke-direct {v7}, Lgov/nist/javax/sip/header/ims/SecurityServer;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v4, Lgov/nist/javax/sip/header/ims/SecurityServerList;

    invoke-direct {v4}, Lgov/nist/javax/sip/header/ims/SecurityServerList;-><init>()V

    .restart local v4       #list:Lgov/nist/javax/sip/header/SIPHeaderList;
    goto :goto_0

    .end local v4           #list:Lgov/nist/javax/sip/header/SIPHeaderList;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    new-instance v7, Lgov/nist/javax/sip/header/ims/SecurityVerify;

    invoke-direct {v7}, Lgov/nist/javax/sip/header/ims/SecurityVerify;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v4, Lgov/nist/javax/sip/header/ims/SecurityVerifyList;

    invoke-direct {v4}, Lgov/nist/javax/sip/header/ims/SecurityVerifyList;-><init>()V

    .restart local v4       #list:Lgov/nist/javax/sip/header/SIPHeaderList;
    goto :goto_0

    .end local v4           #list:Lgov/nist/javax/sip/header/SIPHeaderList;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .restart local v2       #la:C
    .restart local v4       #list:Lgov/nist/javax/sip/header/SIPHeaderList;
    .restart local v5       #type:Lgov/nist/core/Token;
    :cond_3
    if-ne v2, v9, :cond_4

    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6, v9}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    :cond_4
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->SPorHT()V

    move-object v1, p1

    .end local p1
    .local v1, header:Lgov/nist/javax/sip/header/ims/SecurityAgree;
    :goto_2
    :try_start_0
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v6

    if-eq v6, v10, :cond_5

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->parseParameter(Lgov/nist/javax/sip/header/ims/SecurityAgree;)V

    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    .local v3, laInLoop:C
    if-eq v3, v10, :cond_5

    if-nez v3, :cond_6

    .end local v3           #laInLoop:C
    :cond_5
    invoke-virtual {v4, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    move-object p1, v1

    .end local v1           #header:Lgov/nist/javax/sip/header/ims/SecurityAgree;
    .restart local p1
    goto :goto_1

    .end local p1
    .restart local v1       #header:Lgov/nist/javax/sip/header/ims/SecurityAgree;
    .restart local v3       #laInLoop:C
    :cond_6
    if-ne v3, v11, :cond_b

    invoke-virtual {v4, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    new-instance v7, Lgov/nist/javax/sip/header/ims/SecurityClient;

    invoke-direct {v7}, Lgov/nist/javax/sip/header/ims/SecurityClient;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    new-instance p1, Lgov/nist/javax/sip/header/ims/SecurityClient;

    invoke-direct {p1}, Lgov/nist/javax/sip/header/ims/SecurityClient;-><init>()V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #header:Lgov/nist/javax/sip/header/ims/SecurityAgree;
    .restart local p1
    :goto_3
    :try_start_1
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v7, 0x2c

    invoke-virtual {v6, v7}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v7, 0xfff

    invoke-virtual {v6, v7}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v5

    invoke-virtual {v5}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->setSecurityMechanism(Ljava/lang/String;)V

    :goto_4
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v6

    if-ne v6, v9, :cond_7

    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v7, 0x3b

    invoke-virtual {v6, v7}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    :cond_7
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, p1

    .end local p1
    .restart local v1       #header:Lgov/nist/javax/sip/header/ims/SecurityAgree;
    goto :goto_2

    :cond_8
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    new-instance v7, Lgov/nist/javax/sip/header/ims/SecurityServer;

    invoke-direct {v7}, Lgov/nist/javax/sip/header/ims/SecurityServer;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    new-instance p1, Lgov/nist/javax/sip/header/ims/SecurityServer;

    invoke-direct {p1}, Lgov/nist/javax/sip/header/ims/SecurityServer;-><init>()V

    .end local v1           #header:Lgov/nist/javax/sip/header/ims/SecurityAgree;
    .restart local p1
    goto :goto_3

    .end local p1
    .restart local v1       #header:Lgov/nist/javax/sip/header/ims/SecurityAgree;
    :cond_9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    new-instance v7, Lgov/nist/javax/sip/header/ims/SecurityVerify;

    invoke-direct {v7}, Lgov/nist/javax/sip/header/ims/SecurityVerify;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    new-instance p1, Lgov/nist/javax/sip/header/ims/SecurityVerify;

    invoke-direct {p1}, Lgov/nist/javax/sip/header/ims/SecurityVerify;-><init>()V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    .end local v1           #header:Lgov/nist/javax/sip/header/ims/SecurityAgree;
    .restart local p1
    goto :goto_3

    .end local v3           #laInLoop:C
    .end local p1
    .restart local v1       #header:Lgov/nist/javax/sip/header/ims/SecurityAgree;
    :catch_0
    move-exception v0

    move-object p1, v1

    .end local v1           #header:Lgov/nist/javax/sip/header/ims/SecurityAgree;
    .local v0, ex:Ljava/text/ParseException;
    .restart local p1
    :goto_5
    throw v0

    .end local v0           #ex:Ljava/text/ParseException;
    .restart local v3       #laInLoop:C
    :catch_1
    move-exception v0

    goto :goto_5

    .end local p1
    .restart local v1       #header:Lgov/nist/javax/sip/header/ims/SecurityAgree;
    :cond_a
    move-object p1, v1

    .end local v1           #header:Lgov/nist/javax/sip/header/ims/SecurityAgree;
    .restart local p1
    goto :goto_3

    .end local p1
    .restart local v1       #header:Lgov/nist/javax/sip/header/ims/SecurityAgree;
    :cond_b
    move-object p1, v1

    .end local v1           #header:Lgov/nist/javax/sip/header/ims/SecurityAgree;
    .restart local p1
    goto :goto_4
.end method

.method protected parseParameter(Lgov/nist/javax/sip/header/ims/SecurityAgree;)V
    .locals 3
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    sget-boolean v1, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->debug:Z

    if-eqz v1, :cond_0

    const-string v1, "parseParameter"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    const/16 v1, 0x3d

    :try_start_0
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->nameValue(C)Lgov/nist/core/NameValue;

    move-result-object v0

    .local v0, nv:Lgov/nist/core/NameValue;
    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->setParameter(Lgov/nist/core/NameValue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v1, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->debug:Z

    if-eqz v1, :cond_1

    const-string v1, "parseParameter"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->dbg_leave(Ljava/lang/String;)V

    :cond_1
    return-void

    .end local v0           #nv:Lgov/nist/core/NameValue;
    :catchall_0
    move-exception v1

    sget-boolean v2, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->debug:Z

    if-eqz v2, :cond_2

    const-string v2, "parseParameter"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->dbg_leave(Ljava/lang/String;)V

    :cond_2
    throw v1
.end method
