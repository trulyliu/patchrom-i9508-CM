.class public Lgov/nist/javax/sip/parser/ims/PPreferredServiceParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "PPreferredServiceParser.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/TokenTypes;


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
    .parameter "pps"

    .prologue
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    sget-boolean v5, Lgov/nist/javax/sip/parser/ims/PPreferredServiceParser;->debug:Z

    if-eqz v5, :cond_0

    const-string v5, "PPreferredServiceParser.parse"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/ims/PPreferredServiceParser;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v5, p0, Lgov/nist/javax/sip/parser/ims/PPreferredServiceParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v6, 0x860

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v5, p0, Lgov/nist/javax/sip/parser/ims/PPreferredServiceParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v5, p0, Lgov/nist/javax/sip/parser/ims/PPreferredServiceParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v5, p0, Lgov/nist/javax/sip/parser/ims/PPreferredServiceParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    new-instance v2, Lgov/nist/javax/sip/header/ims/PPreferredService;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/ims/PPreferredService;-><init>()V

    .local v2, pps:Lgov/nist/javax/sip/header/ims/PPreferredService;
    iget-object v5, p0, Lgov/nist/javax/sip/parser/ims/PPreferredServiceParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v4

    .local v4, urn:Ljava/lang/String;
    const-string v5, "urn:urn-7:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "3gpp-service"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "3gpp-service."

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v3, v5, v6

    .local v3, serviceID:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_3

    :try_start_1
    new-instance v5, Ljavax/sip/InvalidArgumentException;

    const-string v6, "URN should atleast have one sub-service"

    invoke-direct {v5, v6}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v1

    .local v1, e:Ljavax/sip/InvalidArgumentException;
    :try_start_2
    invoke-virtual {v1}, Ljavax/sip/InvalidArgumentException;->printStackTrace()V

    .end local v1           #e:Ljavax/sip/InvalidArgumentException;
    .end local v3           #serviceID:Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-super {p0}, Lgov/nist/javax/sip/parser/HeaderParser;->parse()Lgov/nist/javax/sip/header/SIPHeader;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-boolean v5, Lgov/nist/javax/sip/parser/ims/PPreferredServiceParser;->debug:Z

    if-eqz v5, :cond_2

    const-string v5, "PPreferredServiceParser.parse"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/ims/PPreferredServiceParser;->dbg_enter(Ljava/lang/String;)V

    :cond_2
    return-object v2

    .restart local v3       #serviceID:Ljava/lang/String;
    :cond_3
    :try_start_3
    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/header/ims/PPreferredService;->setSubserviceIdentifiers(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v2           #pps:Lgov/nist/javax/sip/header/ims/PPreferredService;
    .end local v3           #serviceID:Ljava/lang/String;
    .end local v4           #urn:Ljava/lang/String;
    :catchall_0
    move-exception v5

    sget-boolean v6, Lgov/nist/javax/sip/parser/ims/PPreferredServiceParser;->debug:Z

    if-eqz v6, :cond_4

    const-string v6, "PPreferredServiceParser.parse"

    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/parser/ims/PPreferredServiceParser;->dbg_enter(Ljava/lang/String;)V

    :cond_4
    throw v5

    .restart local v2       #pps:Lgov/nist/javax/sip/header/ims/PPreferredService;
    .restart local v4       #urn:Ljava/lang/String;
    :cond_5
    :try_start_4
    const-string v5, "3gpp-application"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "3gpp-application"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v0, v5, v6

    .local v0, appID:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v5

    if-eqz v5, :cond_6

    :try_start_5
    new-instance v5, Ljavax/sip/InvalidArgumentException;

    const-string v6, "URN should atleast have one sub-application"

    invoke-direct {v5, v6}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v1

    .restart local v1       #e:Ljavax/sip/InvalidArgumentException;
    :try_start_6
    invoke-virtual {v1}, Ljavax/sip/InvalidArgumentException;->printStackTrace()V

    goto :goto_0

    .end local v1           #e:Ljavax/sip/InvalidArgumentException;
    :cond_6
    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/header/ims/PPreferredService;->setApplicationIdentifiers(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .end local v0           #appID:Ljava/lang/String;
    :cond_7
    :try_start_7
    new-instance v5, Ljavax/sip/InvalidArgumentException;

    const-string v6, "URN is not well formed"

    invoke-direct {v5, v6}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    move-exception v1

    .restart local v1       #e:Ljavax/sip/InvalidArgumentException;
    :try_start_8
    invoke-virtual {v1}, Ljavax/sip/InvalidArgumentException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0
.end method
