.class public Lgov/nist/javax/sip/parser/ReplyToParser;
.super Lgov/nist/javax/sip/parser/AddressParametersParser;
.source "ReplyToParser.java"


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
    .parameter "replyTo"

    .prologue
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    new-instance v0, Lgov/nist/javax/sip/header/ReplyTo;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ReplyTo;-><init>()V

    .local v0, replyTo:Lgov/nist/javax/sip/header/ReplyTo;
    sget-boolean v1, Lgov/nist/javax/sip/parser/ReplyToParser;->debug:Z

    if-eqz v1, :cond_0

    const-string v1, "ReplyTo.parse"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ReplyToParser;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    const/16 v1, 0x83a

    :try_start_0
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ReplyToParser;->headerName(I)V

    const-string v1, "Reply-To"

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/ReplyTo;->setHeaderName(Ljava/lang/String;)V

    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v1, Lgov/nist/javax/sip/parser/ReplyToParser;->debug:Z

    if-eqz v1, :cond_1

    const-string v1, "ReplyTo.parse"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ReplyToParser;->dbg_leave(Ljava/lang/String;)V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v1

    sget-boolean v2, Lgov/nist/javax/sip/parser/ReplyToParser;->debug:Z

    if-eqz v2, :cond_2

    const-string v2, "ReplyTo.parse"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ReplyToParser;->dbg_leave(Ljava/lang/String;)V

    :cond_2
    throw v1
.end method
