.class public Lgov/nist/javax/sip/header/ims/SecurityVerifyList;
.super Lgov/nist/javax/sip/header/SIPHeaderList;
.source "SecurityVerifyList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/javax/sip/header/SIPHeaderList",
        "<",
        "Lgov/nist/javax/sip/header/ims/SecurityVerify;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7d0e45cc8c51435L


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-class v0, Lgov/nist/javax/sip/header/ims/SecurityVerify;

    const-string v1, "Security-Verify"

    invoke-direct {p0, v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    new-instance v0, Lgov/nist/javax/sip/header/ims/SecurityVerifyList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/SecurityVerifyList;-><init>()V

    .local v0, retval:Lgov/nist/javax/sip/header/ims/SecurityVerifyList;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/SecurityVerifyList;->hlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/ims/SecurityVerifyList;->clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;

    move-result-object v1

    return-object v1
.end method
