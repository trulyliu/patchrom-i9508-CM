.class public Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;
.super Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;
.source "BasicPooledConnAdapter.java"


# direct methods
.method protected constructor <init>(Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;Lorg/apache/http/impl/conn/AbstractPoolEntry;)V
    .locals 0
    .parameter "tsccm"
    .parameter "entry"

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/impl/conn/AbstractPoolEntry;)V

    invoke-virtual {p0}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->markReusable()V

    return-void
.end method


# virtual methods
.method protected detach()V
    .locals 0

    .prologue
    invoke-super {p0}, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->detach()V

    return-void
.end method

.method protected getManager()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 1

    .prologue
    invoke-super {p0}, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->getManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method protected getPoolEntry()Lorg/apache/http/impl/conn/AbstractPoolEntry;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    return-object v0
.end method
