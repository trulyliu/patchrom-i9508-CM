.class public Lgov/nist/core/LogWriter;
.super Ljava/lang/Object;
.source "LogWriter.java"

# interfaces
.implements Lgov/nist/core/StackLogger;


# static fields
.field private static final TAG:Ljava/lang/String; = "SIP_STACK"


# instance fields
.field private mEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/core/LogWriter;->mEnabled:Z

    return-void
.end method


# virtual methods
.method public disableLogging()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/core/LogWriter;->mEnabled:Z

    return-void
.end method

.method public enableLogging()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/core/LogWriter;->mEnabled:Z

    return-void
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getLoggerName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "Android SIP Logger"

    return-object v0
.end method

.method public isLoggingEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lgov/nist/core/LogWriter;->mEnabled:Z

    return v0
.end method

.method public isLoggingEnabled(I)Z
    .locals 1
    .parameter "logLevel"

    .prologue
    iget-boolean v0, p0, Lgov/nist/core/LogWriter;->mEnabled:Z

    return v0
.end method

.method public logDebug(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    return-void
.end method

.method public logError(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    return-void
.end method

.method public logError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .parameter "message"
    .parameter "ex"

    .prologue
    return-void
.end method

.method public logException(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "ex"

    .prologue
    return-void
.end method

.method public logFatalError(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    return-void
.end method

.method public logInfo(Ljava/lang/String;)V
    .locals 0
    .parameter "string"

    .prologue
    return-void
.end method

.method public logStackTrace()V
    .locals 0

    .prologue
    return-void
.end method

.method public logStackTrace(I)V
    .locals 0
    .parameter "traceLevel"

    .prologue
    return-void
.end method

.method public logTrace(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    return-void
.end method

.method public logWarning(Ljava/lang/String;)V
    .locals 0
    .parameter "string"

    .prologue
    return-void
.end method

.method public setBuildTimeStamp(Ljava/lang/String;)V
    .locals 0
    .parameter "buildTimeStamp"

    .prologue
    return-void
.end method

.method public setStackProperties(Ljava/util/Properties;)V
    .locals 0
    .parameter "stackProperties"

    .prologue
    return-void
.end method
