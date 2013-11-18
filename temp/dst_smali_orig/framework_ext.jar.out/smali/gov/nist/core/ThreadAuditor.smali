.class public Lgov/nist/core/ThreadAuditor;
.super Ljava/lang/Object;
.source "ThreadAuditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgov/nist/core/ThreadAuditor$ThreadHandle;
    }
.end annotation


# instance fields
.field private pingIntervalInMillisecs:J

.field private threadHandles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Thread;",
            "Lgov/nist/core/ThreadAuditor$ThreadHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/core/ThreadAuditor;->threadHandles:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lgov/nist/core/ThreadAuditor;->pingIntervalInMillisecs:J

    return-void
.end method


# virtual methods
.method public declared-synchronized addCurrentThread()Lgov/nist/core/ThreadAuditor$ThreadHandle;
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Lgov/nist/core/ThreadAuditor$ThreadHandle;

    invoke-direct {v0, p0, p0}, Lgov/nist/core/ThreadAuditor$ThreadHandle;-><init>(Lgov/nist/core/ThreadAuditor;Lgov/nist/core/ThreadAuditor;)V

    .local v0, threadHandle:Lgov/nist/core/ThreadAuditor$ThreadHandle;
    invoke-virtual {p0}, Lgov/nist/core/ThreadAuditor;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgov/nist/core/ThreadAuditor;->threadHandles:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    .end local v0           #threadHandle:Lgov/nist/core/ThreadAuditor$ThreadHandle;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized auditThreads()Ljava/lang/String;
    .locals 6

    .prologue
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, auditReport:Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lgov/nist/core/ThreadAuditor;->threadHandles:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lgov/nist/core/ThreadAuditor$ThreadHandle;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/core/ThreadAuditor$ThreadHandle;

    .local v3, threadHandle:Lgov/nist/core/ThreadAuditor$ThreadHandle;
    invoke-virtual {v3}, Lgov/nist/core/ThreadAuditor$ThreadHandle;->isThreadActive()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lgov/nist/core/ThreadAuditor$ThreadHandle;->getThread()Ljava/lang/Thread;

    move-result-object v2

    .local v2, thread:Ljava/lang/Thread;
    if-nez v0, :cond_0

    const-string v0, "Thread Auditor Report:\n"

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   Thread ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] has failed to respond to an audit request.\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v2           #thread:Ljava/lang/Thread;
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/ThreadAuditor$ThreadHandle;->setThreadActive(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lgov/nist/core/ThreadAuditor$ThreadHandle;>;"
    .end local v3           #threadHandle:Lgov/nist/core/ThreadAuditor$ThreadHandle;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lgov/nist/core/ThreadAuditor$ThreadHandle;>;"
    :cond_2
    monitor-exit p0

    return-object v0
.end method

.method public getPingIntervalInMillisecs()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lgov/nist/core/ThreadAuditor;->pingIntervalInMillisecs:J

    return-wide v0
.end method

.method public isEnabled()Z
    .locals 4

    .prologue
    iget-wide v0, p0, Lgov/nist/core/ThreadAuditor;->pingIntervalInMillisecs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized ping(Lgov/nist/core/ThreadAuditor$ThreadHandle;)V
    .locals 1
    .parameter "threadHandle"

    .prologue
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Lgov/nist/core/ThreadAuditor$ThreadHandle;->setThreadActive(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeThread(Ljava/lang/Thread;)V
    .locals 1
    .parameter "thread"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgov/nist/core/ThreadAuditor;->threadHandles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgov/nist/core/ThreadAuditor;->threadHandles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPingIntervalInMillisecs(J)V
    .locals 0
    .parameter "value"

    .prologue
    iput-wide p1, p0, Lgov/nist/core/ThreadAuditor;->pingIntervalInMillisecs:J

    return-void
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 5

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v2, "Thread Auditor - List of monitored threads:\n"

    .local v2, toString:Ljava/lang/String;
    iget-object v3, p0, Lgov/nist/core/ThreadAuditor;->threadHandles:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lgov/nist/core/ThreadAuditor$ThreadHandle;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/core/ThreadAuditor$ThreadHandle;

    .local v1, threadHandle:Lgov/nist/core/ThreadAuditor$ThreadHandle;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lgov/nist/core/ThreadAuditor$ThreadHandle;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    goto :goto_0

    .end local v1           #threadHandle:Lgov/nist/core/ThreadAuditor$ThreadHandle;
    :cond_0
    monitor-exit p0

    return-object v2

    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lgov/nist/core/ThreadAuditor$ThreadHandle;>;"
    .end local v2           #toString:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
