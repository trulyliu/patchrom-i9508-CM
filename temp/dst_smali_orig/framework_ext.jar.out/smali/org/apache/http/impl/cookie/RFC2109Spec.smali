.class public Lorg/apache/http/impl/cookie/RFC2109Spec;
.super Lorg/apache/http/impl/cookie/CookieSpecBase;
.source "RFC2109Spec.java"


# static fields
.field private static final DATE_PATTERNS:[Ljava/lang/String;

.field private static final PATH_COMPARATOR:Lorg/apache/http/cookie/CookiePathComparator;


# instance fields
.field private final datepatterns:[Ljava/lang/String;

.field private final oneHeader:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    new-instance v0, Lorg/apache/http/cookie/CookiePathComparator;

    invoke-direct {v0}, Lorg/apache/http/cookie/CookiePathComparator;-><init>()V

    sput-object v0, Lorg/apache/http/impl/cookie/RFC2109Spec;->PATH_COMPARATOR:Lorg/apache/http/cookie/CookiePathComparator;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss zzz"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "EEEE, dd-MMM-yy HH:mm:ss zzz"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "EEE MMM d HH:mm:ss yyyy"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/http/impl/cookie/RFC2109Spec;->DATE_PATTERNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/cookie/RFC2109Spec;-><init>([Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 3
    .parameter "datepatterns"
    .parameter "oneHeader"

    .prologue
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/CookieSpecBase;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/impl/cookie/RFC2109Spec;->datepatterns:[Ljava/lang/String;

    :goto_0
    iput-boolean p2, p0, Lorg/apache/http/impl/cookie/RFC2109Spec;->oneHeader:Z

    const-string v0, "version"

    new-instance v1, Lorg/apache/http/impl/cookie/RFC2109VersionHandler;

    invoke-direct {v1}, Lorg/apache/http/impl/cookie/RFC2109VersionHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/RFC2109Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    const-string v0, "path"

    new-instance v1, Lorg/apache/http/impl/cookie/BasicPathHandler;

    invoke-direct {v1}, Lorg/apache/http/impl/cookie/BasicPathHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/RFC2109Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    const-string v0, "domain"

    new-instance v1, Lorg/apache/http/impl/cookie/RFC2109DomainHandler;

    invoke-direct {v1}, Lorg/apache/http/impl/cookie/RFC2109DomainHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/RFC2109Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    const-string v0, "max-age"

    new-instance v1, Lorg/apache/http/impl/cookie/BasicMaxAgeHandler;

    invoke-direct {v1}, Lorg/apache/http/impl/cookie/BasicMaxAgeHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/RFC2109Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    const-string v0, "secure"

    new-instance v1, Lorg/apache/http/impl/cookie/BasicSecureHandler;

    invoke-direct {v1}, Lorg/apache/http/impl/cookie/BasicSecureHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/RFC2109Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    const-string v0, "comment"

    new-instance v1, Lorg/apache/http/impl/cookie/BasicCommentHandler;

    invoke-direct {v1}, Lorg/apache/http/impl/cookie/BasicCommentHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/RFC2109Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    const-string v0, "expires"

    new-instance v1, Lorg/apache/http/impl/cookie/BasicExpiresHandler;

    iget-object v2, p0, Lorg/apache/http/impl/cookie/RFC2109Spec;->datepatterns:[Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/http/impl/cookie/BasicExpiresHandler;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/RFC2109Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    return-void

    :cond_0
    sget-object v0, Lorg/apache/http/impl/cookie/RFC2109Spec;->DATE_PATTERNS:[Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/impl/cookie/RFC2109Spec;->datepatterns:[Ljava/lang/String;

    goto :goto_0
.end method

.method private doFormatManyHeaders(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, cookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .local v2, headers:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/Header;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/cookie/Cookie;

    .local v1, cookie:Lorg/apache/http/cookie/Cookie;
    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    move-result v4

    .local v4, version:I
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v5, 0x28

    invoke-direct {v0, v5}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .local v0, buffer:Lorg/apache/http/util/CharArrayBuffer;
    const-string v5, "Cookie: "

    invoke-virtual {v0, v5}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const-string v5, "$Version="

    invoke-virtual {v0, v5}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const-string v5, "; "

    invoke-virtual {v0, v5}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1, v4}, Lorg/apache/http/impl/cookie/RFC2109Spec;->formatCookieAsVer(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/cookie/Cookie;I)V

    new-instance v5, Lorg/apache/http/message/BufferedHeader;

    invoke-direct {v5, v0}, Lorg/apache/http/message/BufferedHeader;-><init>(Lorg/apache/http/util/CharArrayBuffer;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0           #buffer:Lorg/apache/http/util/CharArrayBuffer;
    .end local v1           #cookie:Lorg/apache/http/cookie/Cookie;
    .end local v4           #version:I
    :cond_0
    return-object v2
.end method

.method private doFormatOneHeader(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, cookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    const v5, 0x7fffffff

    .local v5, version:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/cookie/Cookie;

    .local v1, cookie:Lorg/apache/http/cookie/Cookie;
    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    move-result v6

    if-ge v6, v5, :cond_0

    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    move-result v5

    goto :goto_0

    .end local v1           #cookie:Lorg/apache/http/cookie/Cookie;
    :cond_1
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    mul-int/lit8 v6, v6, 0x28

    invoke-direct {v0, v6}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .local v0, buffer:Lorg/apache/http/util/CharArrayBuffer;
    const-string v6, "Cookie"

    invoke-virtual {v0, v6}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const-string v6, ": "

    invoke-virtual {v0, v6}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const-string v6, "$Version="

    invoke-virtual {v0, v6}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/cookie/Cookie;

    .local v2, cooky:Lorg/apache/http/cookie/Cookie;
    const-string v6, "; "

    invoke-virtual {v0, v6}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    move-object v1, v2

    .restart local v1       #cookie:Lorg/apache/http/cookie/Cookie;
    invoke-virtual {p0, v0, v1, v5}, Lorg/apache/http/impl/cookie/RFC2109Spec;->formatCookieAsVer(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/cookie/Cookie;I)V

    goto :goto_1

    .end local v1           #cookie:Lorg/apache/http/cookie/Cookie;
    .end local v2           #cooky:Lorg/apache/http/cookie/Cookie;
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .local v3, headers:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/Header;>;"
    new-instance v6, Lorg/apache/http/message/BufferedHeader;

    invoke-direct {v6, v0}, Lorg/apache/http/message/BufferedHeader;-><init>(Lorg/apache/http/util/CharArrayBuffer;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v3
.end method


# virtual methods
.method protected formatCookieAsVer(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/cookie/Cookie;I)V
    .locals 2
    .parameter "buffer"
    .parameter "cookie"
    .parameter "version"

    .prologue
    invoke-interface {p2}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1, p3}, Lorg/apache/http/impl/cookie/RFC2109Spec;->formatParamAsVer(Lorg/apache/http/util/CharArrayBuffer;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p2}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v0, p2, Lorg/apache/http/cookie/ClientCookie;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/apache/http/cookie/ClientCookie;

    const-string v1, "path"

    invoke-interface {v0, v1}, Lorg/apache/http/cookie/ClientCookie;->containsAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "; "

    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const-string v0, "$Path"

    invoke-interface {p2}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1, p3}, Lorg/apache/http/impl/cookie/RFC2109Spec;->formatParamAsVer(Lorg/apache/http/util/CharArrayBuffer;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    invoke-interface {p2}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v0, p2, Lorg/apache/http/cookie/ClientCookie;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lorg/apache/http/cookie/ClientCookie;

    const-string v1, "domain"

    invoke-interface {v0, v1}, Lorg/apache/http/cookie/ClientCookie;->containsAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "; "

    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const-string v0, "$Domain"

    invoke-interface {p2}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1, p3}, Lorg/apache/http/impl/cookie/RFC2109Spec;->formatParamAsVer(Lorg/apache/http/util/CharArrayBuffer;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public formatCookies(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, cookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "List of cookies may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "List of cookies may not be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .end local p1           #cookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .local v0, cookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    sget-object v1, Lorg/apache/http/impl/cookie/RFC2109Spec;->PATH_COMPARATOR:Lorg/apache/http/cookie/CookiePathComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object p1, v0

    .end local v0           #cookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .restart local p1       #cookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    :cond_2
    iget-boolean v1, p0, Lorg/apache/http/impl/cookie/RFC2109Spec;->oneHeader:Z

    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Lorg/apache/http/impl/cookie/RFC2109Spec;->doFormatOneHeader(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_3
    invoke-direct {p0, p1}, Lorg/apache/http/impl/cookie/RFC2109Spec;->doFormatManyHeaders(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method protected formatParamAsVer(Lorg/apache/http/util/CharArrayBuffer;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "buffer"
    .parameter "name"
    .parameter "value"
    .parameter "version"

    .prologue
    const/16 v1, 0x22

    invoke-virtual {p1, p2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    if-lez p4, :cond_1

    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    invoke-virtual {p1, p3}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, p3}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public getVersionHeader()Lorg/apache/http/Header;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public parse(Lorg/apache/http/Header;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;
    .locals 3
    .parameter "header"
    .parameter "origin"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/Header;",
            "Lorg/apache/http/cookie/CookieOrigin;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Header may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cookie origin may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-interface {p1}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v0

    .local v0, elems:[Lorg/apache/http/HeaderElement;
    invoke-virtual {p0, v0, p2}, Lorg/apache/http/impl/cookie/RFC2109Spec;->parse([Lorg/apache/http/HeaderElement;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V
    .locals 3
    .parameter "cookie"
    .parameter "origin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cookie may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v0

    .local v0, name:Ljava/lang/String;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    new-instance v1, Lorg/apache/http/cookie/MalformedCookieException;

    const-string v2, "Cookie name may not contain blanks"

    invoke-direct {v1, v2}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lorg/apache/http/cookie/MalformedCookieException;

    const-string v2, "Cookie name may not start with $"

    invoke-direct {v1, v2}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/cookie/CookieSpecBase;->validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V

    return-void
.end method
