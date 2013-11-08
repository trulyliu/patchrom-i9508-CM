.class public Lgov/nist/javax/sip/header/RSeq;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "RSeq.java"

# interfaces
.implements Ljavax/sip/header/RSeqHeader;


# static fields
.field private static final serialVersionUID:J = 0x79a63e78c9b0a382L


# instance fields
.field protected sequenceNumber:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string v0, "RSeq"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected encodeBody()Ljava/lang/String;
    .locals 2

    .prologue
    iget-wide v0, p0, Lgov/nist/javax/sip/header/RSeq;->sequenceNumber:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSeqNumber()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lgov/nist/javax/sip/header/RSeq;->sequenceNumber:J

    return-wide v0
.end method

.method public getSequenceNumber()I
    .locals 2

    .prologue
    iget-wide v0, p0, Lgov/nist/javax/sip/header/RSeq;->sequenceNumber:J

    long-to-int v0, v0

    return v0
.end method

.method public setSeqNumber(J)V
    .locals 3
    .parameter "sequenceNumber"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const-wide v0, 0x80000000L

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad seq number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-wide p1, p0, Lgov/nist/javax/sip/header/RSeq;->sequenceNumber:J

    return-void
.end method

.method public setSequenceNumber(I)V
    .locals 2
    .parameter "sequenceNumber"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lgov/nist/javax/sip/header/RSeq;->setSeqNumber(J)V

    return-void
.end method
