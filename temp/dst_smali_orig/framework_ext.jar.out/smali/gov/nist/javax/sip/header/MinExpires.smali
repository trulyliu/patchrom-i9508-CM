.class public Lgov/nist/javax/sip/header/MinExpires;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "MinExpires.java"

# interfaces
.implements Ljavax/sip/header/MinExpiresHeader;


# static fields
.field private static final serialVersionUID:J = 0x612b7da8cbe173b9L


# instance fields
.field protected expires:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string v0, "Min-Expires"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 1

    .prologue
    iget v0, p0, Lgov/nist/javax/sip/header/MinExpires;->expires:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpires()I
    .locals 1

    .prologue
    iget v0, p0, Lgov/nist/javax/sip/header/MinExpires;->expires:I

    return v0
.end method

.method public setExpires(I)V
    .locals 3
    .parameter "expires"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    if-gez p1, :cond_0

    new-instance v0, Ljavax/sip/InvalidArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad argument "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lgov/nist/javax/sip/header/MinExpires;->expires:I

    return-void
.end method
