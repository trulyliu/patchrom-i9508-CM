.class public Lorg/apache/commons/logging/impl/NoOpLog;
.super Ljava/lang/Object;
.source "NoOpLog.java"

# interfaces
.implements Lorg/apache/commons/logging/Log;
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/Object;)V
    .locals 0
    .parameter "message"

    .prologue
    return-void
.end method

.method public debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "message"
    .parameter "t"

    .prologue
    return-void
.end method

.method public error(Ljava/lang/Object;)V
    .locals 0
    .parameter "message"

    .prologue
    return-void
.end method

.method public error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "message"
    .parameter "t"

    .prologue
    return-void
.end method

.method public fatal(Ljava/lang/Object;)V
    .locals 0
    .parameter "message"

    .prologue
    return-void
.end method

.method public fatal(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "message"
    .parameter "t"

    .prologue
    return-void
.end method

.method public info(Ljava/lang/Object;)V
    .locals 0
    .parameter "message"

    .prologue
    return-void
.end method

.method public info(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "message"
    .parameter "t"

    .prologue
    return-void
.end method

.method public final isDebugEnabled()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public final isErrorEnabled()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public final isFatalEnabled()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public final isInfoEnabled()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public final isTraceEnabled()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public final isWarnEnabled()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public trace(Ljava/lang/Object;)V
    .locals 0
    .parameter "message"

    .prologue
    return-void
.end method

.method public trace(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "message"
    .parameter "t"

    .prologue
    return-void
.end method

.method public warn(Ljava/lang/Object;)V
    .locals 0
    .parameter "message"

    .prologue
    return-void
.end method

.method public warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "message"
    .parameter "t"

    .prologue
    return-void
.end method
