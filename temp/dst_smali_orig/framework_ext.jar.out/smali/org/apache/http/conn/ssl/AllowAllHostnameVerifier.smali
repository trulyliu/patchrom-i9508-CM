.class public Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;
.super Lorg/apache/http/conn/ssl/AbstractVerifier;
.source "AllowAllHostnameVerifier.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lorg/apache/http/conn/ssl/AbstractVerifier;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "ALLOW_ALL"

    return-object v0
.end method

.method public final verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "host"
    .parameter "cns"
    .parameter "subjectAlts"

    .prologue
    return-void
.end method