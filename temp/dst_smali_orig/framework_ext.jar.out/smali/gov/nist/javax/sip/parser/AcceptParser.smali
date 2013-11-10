.class public Lgov/nist/javax/sip/parser/AcceptParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "AcceptParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .parameter "lexer"

    .prologue
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "accept"

    .prologue
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Ljava/lang/String;)V

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

    sget-boolean v3, Lgov/nist/javax/sip/parser/AcceptParser;->debug:Z

    if-eqz v3, :cond_0

    const-string v3, "AcceptParser.parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/AcceptParser;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lgov/nist/javax/sip/header/AcceptList;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/AcceptList;-><init>()V

    .local v1, list:Lgov/nist/javax/sip/header/AcceptList;
    const/16 v3, 0x814

    :try_start_0
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/AcceptParser;->headerName(I)V

    new-instance v0, Lgov/nist/javax/sip/header/Accept;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Accept;-><init>()V

    .local v0, accept:Lgov/nist/javax/sip/header/Accept;
    const-string v3, "Accept"

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/Accept;->setHeaderName(Ljava/lang/String;)V

    iget-object v3, p0, Lgov/nist/javax/sip/parser/AcceptParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v3, p0, Lgov/nist/javax/sip/parser/AcceptParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0xfff

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v3, p0, Lgov/nist/javax/sip/parser/AcceptParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v2

    .local v2, token:Lgov/nist/core/Token;
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/Accept;->setContentType(Ljava/lang/String;)V

    iget-object v3, p0, Lgov/nist/javax/sip/parser/AcceptParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v3, p0, Lgov/nist/javax/sip/parser/AcceptParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0xfff

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v3, p0, Lgov/nist/javax/sip/parser/AcceptParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/Accept;->setContentSubType(Ljava/lang/String;)V

    iget-object v3, p0, Lgov/nist/javax/sip/parser/AcceptParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/AcceptList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    :goto_0
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AcceptParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    if-ne v3, v5, :cond_2

    iget-object v3, p0, Lgov/nist/javax/sip/parser/AcceptParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v3, p0, Lgov/nist/javax/sip/parser/AcceptParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    new-instance v0, Lgov/nist/javax/sip/header/Accept;

    .end local v0           #accept:Lgov/nist/javax/sip/header/Accept;
    invoke-direct {v0}, Lgov/nist/javax/sip/header/Accept;-><init>()V

    .restart local v0       #accept:Lgov/nist/javax/sip/header/Accept;
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AcceptParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0xfff

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v3, p0, Lgov/nist/javax/sip/parser/AcceptParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/Accept;->setContentType(Ljava/lang/String;)V

    iget-object v3, p0, Lgov/nist/javax/sip/parser/AcceptParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v3, p0, Lgov/nist/javax/sip/parser/AcceptParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0xfff

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v3, p0, Lgov/nist/javax/sip/parser/AcceptParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/Accept;->setContentSubType(Ljava/lang/String;)V

    iget-object v3, p0, Lgov/nist/javax/sip/parser/AcceptParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/AcceptList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0           #accept:Lgov/nist/javax/sip/header/Accept;
    .end local v2           #token:Lgov/nist/core/Token;
    :catchall_0
    move-exception v3

    sget-boolean v4, Lgov/nist/javax/sip/parser/AcceptParser;->debug:Z

    if-eqz v4, :cond_1

    const-string v4, "AcceptParser.parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/AcceptParser;->dbg_leave(Ljava/lang/String;)V

    :cond_1
    throw v3

    .restart local v0       #accept:Lgov/nist/javax/sip/header/Accept;
    .restart local v2       #token:Lgov/nist/core/Token;
    :cond_2
    sget-boolean v3, Lgov/nist/javax/sip/parser/AcceptParser;->debug:Z

    if-eqz v3, :cond_3

    const-string v3, "AcceptParser.parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/AcceptParser;->dbg_leave(Ljava/lang/String;)V

    :cond_3
    return-object v1
.end method
