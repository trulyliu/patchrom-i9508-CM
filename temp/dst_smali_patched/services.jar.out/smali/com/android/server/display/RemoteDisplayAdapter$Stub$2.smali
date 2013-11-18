.class Lcom/android/server/display/RemoteDisplayAdapter$Stub$2;
.super Ljava/lang/Object;
.source "RemoteDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/RemoteDisplayAdapter$Stub;->connectRemoteDisplay(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/RemoteDisplayAdapter$Stub;


# direct methods
.method constructor <init>(Lcom/android/server/display/RemoteDisplayAdapter$Stub;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/display/RemoteDisplayAdapter$Stub$2;->this$1:Lcom/android/server/display/RemoteDisplayAdapter$Stub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/server/display/RemoteDisplayAdapter$Stub$2;->this$1:Lcom/android/server/display/RemoteDisplayAdapter$Stub;

    iget-object v1, v1, Lcom/android/server/display/RemoteDisplayAdapter$Stub;->this$0:Lcom/android/server/display/RemoteDisplayAdapter;

    #getter for: Lcom/android/server/display/RemoteDisplayAdapter;->mActiveDisplay:Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;
    invoke-static {v1}, Lcom/android/server/display/RemoteDisplayAdapter;->access$300(Lcom/android/server/display/RemoteDisplayAdapter;)Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;

    move-result-object v0

    .local v0, activeDisplay:Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, v0, Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;->displayDevice:Landroid/hardware/display/IDisplayDevice;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;->displayDevice:Landroid/hardware/display/IDisplayDevice;

    invoke-interface {v1}, Landroid/hardware/display/IDisplayDevice;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/display/RemoteDisplayAdapter$Stub$2;->this$1:Lcom/android/server/display/RemoteDisplayAdapter$Stub;

    iget-object v1, v1, Lcom/android/server/display/RemoteDisplayAdapter$Stub;->this$0:Lcom/android/server/display/RemoteDisplayAdapter;

    #getter for: Lcom/android/server/display/RemoteDisplayAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/display/RemoteDisplayAdapter;->access$500(Lcom/android/server/display/RemoteDisplayAdapter;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/display/RemoteDisplayAdapter$Stub$2;->this$1:Lcom/android/server/display/RemoteDisplayAdapter$Stub;

    iget-object v1, v1, Lcom/android/server/display/RemoteDisplayAdapter$Stub;->this$0:Lcom/android/server/display/RemoteDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/RemoteDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/RemoteDisplayAdapter$Stub$2;->this$1:Lcom/android/server/display/RemoteDisplayAdapter$Stub;

    iget-object v1, v1, Lcom/android/server/display/RemoteDisplayAdapter$Stub;->this$0:Lcom/android/server/display/RemoteDisplayAdapter;

    #calls: Lcom/android/server/display/RemoteDisplayAdapter;->stopActiveDisplayLocked()V
    invoke-static {v1}, Lcom/android/server/display/RemoteDisplayAdapter;->access$600(Lcom/android/server/display/RemoteDisplayAdapter;)V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
