.class Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplayDevice;
.super Lcom/android/server/display/DisplayDevice;
.source "RemoteDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/RemoteDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteDisplayDevice"
.end annotation


# instance fields
.field private mInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field private surface:Landroid/view/Surface;

.field final synthetic this$0:Lcom/android/server/display/RemoteDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/RemoteDisplayAdapter;Landroid/view/Surface;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;)V
    .locals 0
    .parameter
    .parameter "surface"
    .parameter "displayToken"
    .parameter "info"

    .prologue
    iput-object p1, p0, Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplayDevice;->this$0:Lcom/android/server/display/RemoteDisplayAdapter;

    invoke-direct {p0, p1, p3}, Lcom/android/server/display/DisplayDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;)V

    iput-object p2, p0, Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplayDevice;->surface:Landroid/view/Surface;

    iput-object p4, p0, Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    return-void
.end method


# virtual methods
.method public clearSurfaceLocked()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplayDevice;->surface:Landroid/view/Surface;

    iget-object v0, p0, Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplayDevice;->this$0:Lcom/android/server/display/RemoteDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/RemoteDisplayAdapter;->sendTraversalRequestLocked()V

    return-void
.end method

.method public getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplayDevice;->this$0:Lcom/android/server/display/RemoteDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/RemoteDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public performTraversalInTransactionLocked()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplayDevice;->surface:Landroid/view/Surface;

    invoke-virtual {p0, v0}, Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplayDevice;->setSurfaceInTransactionLocked(Landroid/view/Surface;)V

    return-void
.end method
