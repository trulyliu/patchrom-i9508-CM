.class public Lgov/nist/javax/sip/parser/RecordRouteParser;
.super Lgov/nist/javax/sip/parser/AddressParametersParser;
.source "RecordRouteParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .parameter "lexer"

    .prologue
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "recordRoute"

    .prologue
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x2c

    new-instance v2, Lgov/nist/javax/sip/header/RecordRouteList;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/RecordRouteList;-><init>()V

    .local v2, recordRouteList:Lgov/nist/javax/sip/header/RecordRouteList;
    sget-boolean v3, Lgov/nist/javax/sip/parser/RecordRouteParser;->debug:Z

    if-eqz v3, :cond_0

    const-string v3, "RecordRouteParser.parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/RecordRouteParser;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v3, p0, Lgov/nist/javax/sip/parser/RecordRouteParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0x82c

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v3, p0, Lgov/nist/javax/sip/parser/RecordRouteParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v3, p0, Lgov/nist/javax/sip/parser/RecordRouteParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v3, p0, Lgov/nist/javax/sip/parser/RecordRouteParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    :goto_0
    new-instance v1, Lgov/nist/javax/sip/header/RecordRoute;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/RecordRoute;-><init>()V

    .local v1, recordRoute:Lgov/nist/javax/sip/header/RecordRoute;
    invoke-super {p0, v1}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V

    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/header/RecordRouteList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    iget-object v3, p0, Lgov/nist/javax/sip/parser/RecordRouteParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v3, p0, Lgov/nist/javax/sip/parser/RecordRouteParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v0

    .local v0, la:C
    if-ne v0, v5, :cond_2

    iget-object v3, p0, Lgov/nist/javax/sip/parser/RecordRouteParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v3, p0, Lgov/nist/javax/sip/parser/RecordRouteParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0           #la:C
    .end local v1           #recordRoute:Lgov/nist/javax/sip/header/RecordRoute;
    :catchall_0
    move-exception v3

    sget-boolean v4, Lgov/nist/javax/sip/parser/RecordRouteParser;->debug:Z

    if-eqz v4, :cond_1

    const-string v4, "RecordRouteParser.parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/RecordRouteParser;->dbg_leave(Ljava/lang/String;)V

    :cond_1
    throw v3

    .restart local v0       #la:C
    .restart local v1       #recordRoute:Lgov/nist/javax/sip/header/RecordRoute;
    :cond_2
    const/16 v3, 0xa

    if-ne v0, v3, :cond_4

    sget-boolean v3, Lgov/nist/javax/sip/parser/RecordRouteParser;->debug:Z

    if-eqz v3, :cond_3

    const-string v3, "RecordRouteParser.parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/RecordRouteParser;->dbg_leave(Ljava/lang/String;)V

    :cond_3
    return-object v2

    :cond_4
    :try_start_1
    const-string v3, "unexpected char"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/RecordRouteParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v3

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method
