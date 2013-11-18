.class public Lgov/nist/javax/sip/parser/AcceptLanguageParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "AcceptLanguageParser.java"


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
    .parameter "acceptLanguage"

    .prologue
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x2c

    const/16 v7, 0x3b

    new-instance v1, Lgov/nist/javax/sip/header/AcceptLanguageList;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/AcceptLanguageList;-><init>()V

    .local v1, acceptLanguageList:Lgov/nist/javax/sip/header/AcceptLanguageList;
    sget-boolean v5, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->debug:Z

    if-eqz v5, :cond_0

    const-string v5, "AcceptLanguageParser.parse"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    const/16 v5, 0x82f

    :try_start_0
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->headerName(I)V

    :goto_0
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_5

    new-instance v0, Lgov/nist/javax/sip/header/AcceptLanguage;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/AcceptLanguage;-><init>()V

    .local v0, acceptLanguage:Lgov/nist/javax/sip/header/AcceptLanguage;
    const-string v5, "Accept-Language"

    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/header/AcceptLanguage;->setHeaderName(Ljava/lang/String;)V

    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    if-eq v5, v7, :cond_1

    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v6, 0xfff

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v4

    .local v4, value:Lgov/nist/core/Token;
    invoke-virtual {v4}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/header/AcceptLanguage;->setLanguageRange(Ljava/lang/String;)V

    .end local v4           #value:Lgov/nist/core/Token;
    :cond_1
    :goto_1
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    if-ne v5, v7, :cond_3

    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v6, 0x3b

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v6, 0x71

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v6, 0xfff

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .restart local v4       #value:Lgov/nist/core/Token;
    :try_start_1
    invoke-virtual {v4}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .local v3, fl:F
    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/AcceptLanguage;->setQValue(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .end local v0           #acceptLanguage:Lgov/nist/javax/sip/header/AcceptLanguage;
    .end local v3           #fl:F
    .end local v4           #value:Lgov/nist/core/Token;
    :catchall_0
    move-exception v5

    sget-boolean v6, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->debug:Z

    if-eqz v6, :cond_2

    const-string v6, "AcceptLanguageParser.parse"

    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->dbg_leave(Ljava/lang/String;)V

    :cond_2
    throw v5

    .restart local v0       #acceptLanguage:Lgov/nist/javax/sip/header/AcceptLanguage;
    .restart local v4       #value:Lgov/nist/core/Token;
    :catch_0
    move-exception v2

    .local v2, ex:Ljava/lang/NumberFormatException;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v5

    throw v5

    .end local v2           #ex:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v2

    .local v2, ex:Ljavax/sip/InvalidArgumentException;
    invoke-virtual {v2}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v5

    throw v5

    .end local v2           #ex:Ljavax/sip/InvalidArgumentException;
    .end local v4           #value:Lgov/nist/core/Token;
    :cond_3
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/AcceptLanguageList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    if-ne v5, v8, :cond_4

    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    goto/16 :goto_0

    :cond_4
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .end local v0           #acceptLanguage:Lgov/nist/javax/sip/header/AcceptLanguage;
    :cond_5
    sget-boolean v5, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->debug:Z

    if-eqz v5, :cond_6

    const-string v5, "AcceptLanguageParser.parse"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->dbg_leave(Ljava/lang/String;)V

    :cond_6
    return-object v1
.end method
