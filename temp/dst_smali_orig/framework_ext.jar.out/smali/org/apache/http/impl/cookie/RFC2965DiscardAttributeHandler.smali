.class public Lorg/apache/http/impl/cookie/RFC2965DiscardAttributeHandler;
.super Ljava/lang/Object;
.source "RFC2965DiscardAttributeHandler.java"

# interfaces
.implements Lorg/apache/http/cookie/CookieAttributeHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z
    .locals 1
    .parameter "cookie"
    .parameter "origin"

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public parse(Lorg/apache/http/cookie/SetCookie;Ljava/lang/String;)V
    .locals 2
    .parameter "cookie"
    .parameter "commenturl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    instance-of v1, p1, Lorg/apache/http/cookie/SetCookie2;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/apache/http/cookie/SetCookie2;

    .local v0, cookie2:Lorg/apache/http/cookie/SetCookie2;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/apache/http/cookie/SetCookie2;->setDiscard(Z)V

    .end local v0           #cookie2:Lorg/apache/http/cookie/SetCookie2;
    :cond_0
    return-void
.end method

.method public validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V
    .locals 0
    .parameter "cookie"
    .parameter "origin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    return-void
.end method
