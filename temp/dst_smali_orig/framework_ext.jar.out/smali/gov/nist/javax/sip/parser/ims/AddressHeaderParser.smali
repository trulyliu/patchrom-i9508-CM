.class abstract Lgov/nist/javax/sip/parser/ims/AddressHeaderParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "AddressHeaderParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .parameter "lexer"

    .prologue
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "buffer"

    .prologue
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected parse(Lgov/nist/javax/sip/header/ims/AddressHeaderIms;)V
    .locals 5
    .parameter "addressHeader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const-string v3, "AddressHeaderParser.parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/AddressHeaderParser;->dbg_enter(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Lgov/nist/javax/sip/parser/AddressParser;

    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/ims/AddressHeaderParser;->getLexer()Lgov/nist/javax/sip/parser/Lexer;

    move-result-object v3

    invoke-direct {v1, v3}, Lgov/nist/javax/sip/parser/AddressParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .local v1, addressParser:Lgov/nist/javax/sip/parser/AddressParser;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/parser/AddressParser;->address(Z)Lgov/nist/javax/sip/address/AddressImpl;

    move-result-object v0

    .local v0, addr:Lgov/nist/javax/sip/address/AddressImpl;
    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/header/ims/AddressHeaderIms;->setAddress(Ljavax/sip/address/Address;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "AddressParametersParser.parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/AddressHeaderParser;->dbg_leave(Ljava/lang/String;)V

    return-void

    .end local v0           #addr:Lgov/nist/javax/sip/address/AddressImpl;
    .end local v1           #addressParser:Lgov/nist/javax/sip/parser/AddressParser;
    :catch_0
    move-exception v2

    .local v2, ex:Ljava/text/ParseException;
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2           #ex:Ljava/text/ParseException;
    :catchall_0
    move-exception v3

    const-string v4, "AddressParametersParser.parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ims/AddressHeaderParser;->dbg_leave(Ljava/lang/String;)V

    throw v3
.end method
