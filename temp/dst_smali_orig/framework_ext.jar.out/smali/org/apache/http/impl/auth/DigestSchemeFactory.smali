.class public Lorg/apache/http/impl/auth/DigestSchemeFactory;
.super Ljava/lang/Object;
.source "DigestSchemeFactory.java"

# interfaces
.implements Lorg/apache/http/auth/AuthSchemeFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/auth/AuthScheme;
    .locals 1
    .parameter "params"

    .prologue
    new-instance v0, Lorg/apache/http/impl/auth/DigestScheme;

    invoke-direct {v0}, Lorg/apache/http/impl/auth/DigestScheme;-><init>()V

    return-object v0
.end method
