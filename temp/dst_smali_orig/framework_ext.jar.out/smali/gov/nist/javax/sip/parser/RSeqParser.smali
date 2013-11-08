.class public Lgov/nist/javax/sip/parser/RSeqParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "RSeqParser.java"


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
    .parameter "rseq"

    .prologue
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    sget-boolean v3, Lgov/nist/javax/sip/parser/RSeqParser;->debug:Z

    if-eqz v3, :cond_0

    const-string v3, "RSeqParser.parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/RSeqParser;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    new-instance v2, Lgov/nist/javax/sip/header/RSeq;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/RSeq;-><init>()V

    .local v2, rseq:Lgov/nist/javax/sip/header/RSeq;
    const/16 v3, 0x83c

    :try_start_0
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/RSeqParser;->headerName(I)V

    const-string v3, "RSeq"

    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/header/RSeq;->setHeaderName(Ljava/lang/String;)V

    iget-object v3, p0, Lgov/nist/javax/sip/parser/RSeqParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .local v1, number:Ljava/lang/String;
    :try_start_1
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lgov/nist/javax/sip/header/RSeq;->setSeqNumber(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v3, p0, Lgov/nist/javax/sip/parser/RSeqParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v3, p0, Lgov/nist/javax/sip/parser/RSeqParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-boolean v3, Lgov/nist/javax/sip/parser/RSeqParser;->debug:Z

    if-eqz v3, :cond_1

    const-string v3, "RSeqParser.parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/RSeqParser;->dbg_leave(Ljava/lang/String;)V

    :cond_1
    return-object v2

    :catch_0
    move-exception v0

    .local v0, ex:Ljavax/sip/InvalidArgumentException;
    :try_start_3
    invoke-virtual {v0}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/RSeqParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v3

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0           #ex:Ljavax/sip/InvalidArgumentException;
    .end local v1           #number:Ljava/lang/String;
    :catchall_0
    move-exception v3

    sget-boolean v4, Lgov/nist/javax/sip/parser/RSeqParser;->debug:Z

    if-eqz v4, :cond_2

    const-string v4, "RSeqParser.parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/RSeqParser;->dbg_leave(Ljava/lang/String;)V

    :cond_2
    throw v3
.end method
