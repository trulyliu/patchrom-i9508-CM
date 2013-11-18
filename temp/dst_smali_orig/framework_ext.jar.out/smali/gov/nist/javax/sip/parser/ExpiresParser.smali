.class public Lgov/nist/javax/sip/parser/ExpiresParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "ExpiresParser.java"


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
    .parameter "text"

    .prologue
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

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
    new-instance v2, Lgov/nist/javax/sip/header/Expires;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/Expires;-><init>()V

    .local v2, expires:Lgov/nist/javax/sip/header/Expires;
    sget-boolean v4, Lgov/nist/javax/sip/parser/ExpiresParser;->debug:Z

    if-eqz v4, :cond_0

    const-string v4, "parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ExpiresParser;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ExpiresParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0x82a

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v4, p0, Lgov/nist/javax/sip/parser/ExpiresParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v4, p0, Lgov/nist/javax/sip/parser/ExpiresParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v4, p0, Lgov/nist/javax/sip/parser/ExpiresParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v4, p0, Lgov/nist/javax/sip/parser/ExpiresParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getNextId()Ljava/lang/String;

    move-result-object v3

    .local v3, nextId:Ljava/lang/String;
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ExpiresParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .local v0, delta:I
    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/header/Expires;->setExpires(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    sget-boolean v4, Lgov/nist/javax/sip/parser/ExpiresParser;->debug:Z

    if-eqz v4, :cond_1

    const-string v4, "parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ExpiresParser;->dbg_leave(Ljava/lang/String;)V

    :cond_1
    return-object v2

    .end local v0           #delta:I
    :catch_0
    move-exception v1

    .local v1, ex:Ljava/lang/NumberFormatException;
    :try_start_2
    const-string v4, "bad integer format"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ExpiresParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v1           #ex:Ljava/lang/NumberFormatException;
    .end local v3           #nextId:Ljava/lang/String;
    :catchall_0
    move-exception v4

    sget-boolean v5, Lgov/nist/javax/sip/parser/ExpiresParser;->debug:Z

    if-eqz v5, :cond_2

    const-string v5, "parse"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/ExpiresParser;->dbg_leave(Ljava/lang/String;)V

    :cond_2
    throw v4

    .restart local v3       #nextId:Ljava/lang/String;
    :catch_1
    move-exception v1

    .local v1, ex:Ljavax/sip/InvalidArgumentException;
    :try_start_3
    invoke-virtual {v1}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ExpiresParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method
