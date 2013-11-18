.class Lcom/android/server/display/RemoteDisplayAdapter$Stub;
.super Landroid/hardware/display/IRemoteDisplayAdapter$Stub;
.source "RemoteDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/RemoteDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Stub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/RemoteDisplayAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/display/RemoteDisplayAdapter;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/display/RemoteDisplayAdapter$Stub;->this$0:Lcom/android/server/display/RemoteDisplayAdapter;

    invoke-direct {p0}, Landroid/hardware/display/IRemoteDisplayAdapter$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public connectRemoteDisplay(Ljava/lang/String;)V
    .locals 8
    .parameter "address"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v4, p0, Lcom/android/server/display/RemoteDisplayAdapter$Stub;->this$0:Lcom/android/server/display/RemoteDisplayAdapter;

    invoke-virtual {v4}, Lcom/android/server/display/RemoteDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/display/RemoteDisplayAdapter$Stub;->this$0:Lcom/android/server/display/RemoteDisplayAdapter;

    #getter for: Lcom/android/server/display/RemoteDisplayAdapter;->mDevices:Ljava/util/Hashtable;
    invoke-static {v4}, Lcom/android/server/display/RemoteDisplayAdapter;->access$100(Lcom/android/server/display/RemoteDisplayAdapter;)Ljava/util/Hashtable;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;

    .local v0, display:Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;
    if-nez v0, :cond_0

    const-string v4, "RemoteDisplayAdapter"

    const-string v6, "Could not find display?"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    :goto_0
    return-void

    :cond_0
    iget-object v4, v0, Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;->remoteDisplayDevice:Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplayDevice;

    if-eqz v4, :cond_1

    const-string v4, "RemoteDisplayAdapter"

    const-string v6, "Display device is already connected?"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    goto :goto_0

    .end local v0           #display:Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0       #display:Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;
    :cond_1
    :try_start_1
    iget-object v4, v0, Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;->displayDevice:Landroid/hardware/display/IDisplayDevice;

    invoke-interface {v4}, Landroid/hardware/display/IDisplayDevice;->createDisplaySurface()Landroid/view/Surface;

    move-result-object v3

    .local v3, surface:Landroid/view/Surface;
    if-nez v3, :cond_2

    const-string v4, "RemoteDisplayAdapter"

    const-string v6, "Returned null Surface"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    monitor-exit v5

    goto :goto_0

    .end local v3           #surface:Landroid/view/Surface;
    :catch_0
    move-exception v2

    .local v2, e:Landroid/os/RemoteException;
    const-string v4, "RemoteDisplayAdapter"

    const-string v6, "Error creating surface"

    invoke-static {v4, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v5

    goto :goto_0

    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v3       #surface:Landroid/view/Surface;
    :cond_2
    iget-object v4, v0, Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;->info:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v4, v4, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Landroid/view/SurfaceControl;->createDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;

    move-result-object v1

    .local v1, displayToken:Landroid/os/IBinder;
    new-instance v4, Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplayDevice;

    iget-object v6, p0, Lcom/android/server/display/RemoteDisplayAdapter$Stub;->this$0:Lcom/android/server/display/RemoteDisplayAdapter;

    iget-object v7, v0, Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;->info:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-direct {v4, v6, v3, v1, v7}, Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplayDevice;-><init>(Lcom/android/server/display/RemoteDisplayAdapter;Landroid/view/Surface;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;)V

    iput-object v4, v0, Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;->remoteDisplayDevice:Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplayDevice;

    iget-object v4, p0, Lcom/android/server/display/RemoteDisplayAdapter$Stub;->this$0:Lcom/android/server/display/RemoteDisplayAdapter;

    #setter for: Lcom/android/server/display/RemoteDisplayAdapter;->mActiveDisplay:Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;
    invoke-static {v4, v0}, Lcom/android/server/display/RemoteDisplayAdapter;->access$302(Lcom/android/server/display/RemoteDisplayAdapter;Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;)Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;

    iget-object v4, p0, Lcom/android/server/display/RemoteDisplayAdapter$Stub;->this$0:Lcom/android/server/display/RemoteDisplayAdapter;

    iget-object v6, v0, Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;->remoteDisplayDevice:Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplayDevice;

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Lcom/android/server/display/RemoteDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    iget-object v4, p0, Lcom/android/server/display/RemoteDisplayAdapter$Stub;->this$0:Lcom/android/server/display/RemoteDisplayAdapter;

    #calls: Lcom/android/server/display/RemoteDisplayAdapter;->handleSendStatusChangeBroadcast()V
    invoke-static {v4}, Lcom/android/server/display/RemoteDisplayAdapter;->access$200(Lcom/android/server/display/RemoteDisplayAdapter;)V

    new-instance v4, Lcom/android/server/display/RemoteDisplayAdapter$Stub$2;

    invoke-direct {v4, p0}, Lcom/android/server/display/RemoteDisplayAdapter$Stub$2;-><init>(Lcom/android/server/display/RemoteDisplayAdapter$Stub;)V

    invoke-virtual {v4}, Lcom/android/server/display/RemoteDisplayAdapter$Stub$2;->run()V

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public disconnectRemoteDisplay()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/display/RemoteDisplayAdapter$Stub;->this$0:Lcom/android/server/display/RemoteDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/RemoteDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/RemoteDisplayAdapter$Stub;->this$0:Lcom/android/server/display/RemoteDisplayAdapter;

    #calls: Lcom/android/server/display/RemoteDisplayAdapter;->stopActiveDisplayLocked()V
    invoke-static {v0}, Lcom/android/server/display/RemoteDisplayAdapter;->access$600(Lcom/android/server/display/RemoteDisplayAdapter;)V

    iget-object v0, p0, Lcom/android/server/display/RemoteDisplayAdapter$Stub;->this$0:Lcom/android/server/display/RemoteDisplayAdapter;

    #calls: Lcom/android/server/display/RemoteDisplayAdapter;->handleSendStatusChangeBroadcast()V
    invoke-static {v0}, Lcom/android/server/display/RemoteDisplayAdapter;->access$200(Lcom/android/server/display/RemoteDisplayAdapter;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public forgetRemoteDisplay(Ljava/lang/String;)V
    .locals 2
    .parameter "address"

    .prologue
    iget-object v0, p0, Lcom/android/server/display/RemoteDisplayAdapter$Stub;->this$0:Lcom/android/server/display/RemoteDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/RemoteDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRemoteDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;
    .locals 13

    .prologue
    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/display/RemoteDisplayAdapter$Stub;->this$0:Lcom/android/server/display/RemoteDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/RemoteDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v12

    monitor-enter v12

    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .local v8, availableDisplays:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/display/WifiDisplay;>;"
    new-instance v11, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/display/RemoteDisplayAdapter$Stub;->this$0:Lcom/android/server/display/RemoteDisplayAdapter;

    #getter for: Lcom/android/server/display/RemoteDisplayAdapter;->mDevices:Ljava/util/Hashtable;
    invoke-static {v1}, Lcom/android/server/display/RemoteDisplayAdapter;->access$100(Lcom/android/server/display/RemoteDisplayAdapter;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v11, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v11, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;

    .local v9, display:Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;
    iget-object v1, v9, Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;->displayDevice:Landroid/hardware/display/IDisplayDevice;

    invoke-interface {v1}, Landroid/hardware/display/IDisplayDevice;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/display/RemoteDisplayAdapter$Stub;->this$0:Lcom/android/server/display/RemoteDisplayAdapter;

    #getter for: Lcom/android/server/display/RemoteDisplayAdapter;->mDevices:Ljava/util/Hashtable;
    invoke-static {v1}, Lcom/android/server/display/RemoteDisplayAdapter;->access$100(Lcom/android/server/display/RemoteDisplayAdapter;)Ljava/util/Hashtable;

    move-result-object v1

    iget-object v3, v9, Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;->info:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v3, v3, Lcom/android/server/display/DisplayDeviceInfo;->address:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/display/RemoteDisplayAdapter$Stub;->this$0:Lcom/android/server/display/RemoteDisplayAdapter;

    #getter for: Lcom/android/server/display/RemoteDisplayAdapter;->mActiveDisplay:Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;
    invoke-static {v1}, Lcom/android/server/display/RemoteDisplayAdapter;->access$300(Lcom/android/server/display/RemoteDisplayAdapter;)Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;

    move-result-object v1

    if-ne v1, v9, :cond_0

    iget-object v1, p0, Lcom/android/server/display/RemoteDisplayAdapter$Stub;->this$0:Lcom/android/server/display/RemoteDisplayAdapter;

    #calls: Lcom/android/server/display/RemoteDisplayAdapter;->stopActiveDisplayLocked()V
    invoke-static {v1}, Lcom/android/server/display/RemoteDisplayAdapter;->access$600(Lcom/android/server/display/RemoteDisplayAdapter;)V

    goto :goto_0

    .end local v8           #availableDisplays:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/display/WifiDisplay;>;"
    .end local v9           #display:Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;>;"
    :catchall_0
    move-exception v1

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v8       #availableDisplays:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/display/WifiDisplay;>;"
    .restart local v9       #display:Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v11       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;>;"
    :cond_1
    :try_start_1
    new-instance v7, Landroid/hardware/display/WifiDisplay;

    iget-object v1, v9, Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;->info:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, v1, Lcom/android/server/display/DisplayDeviceInfo;->address:Ljava/lang/String;

    iget-object v3, v9, Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;->info:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v3, v3, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    iget-object v5, v9, Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;->info:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v5, v5, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    iget-boolean v6, v9, Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;->hidden:Z

    invoke-direct {v7, v1, v3, v5, v6}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .local v7, add:Landroid/hardware/display/WifiDisplay;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v7           #add:Landroid/hardware/display/WifiDisplay;
    .end local v9           #display:Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;
    :cond_2
    const/4 v4, 0x0

    .local v4, active:Landroid/hardware/display/WifiDisplay;
    iget-object v1, p0, Lcom/android/server/display/RemoteDisplayAdapter$Stub;->this$0:Lcom/android/server/display/RemoteDisplayAdapter;

    #getter for: Lcom/android/server/display/RemoteDisplayAdapter;->mActiveDisplay:Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;
    invoke-static {v1}, Lcom/android/server/display/RemoteDisplayAdapter;->access$300(Lcom/android/server/display/RemoteDisplayAdapter;)Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v4, Landroid/hardware/display/WifiDisplay;

    .end local v4           #active:Landroid/hardware/display/WifiDisplay;
    iget-object v1, p0, Lcom/android/server/display/RemoteDisplayAdapter$Stub;->this$0:Lcom/android/server/display/RemoteDisplayAdapter;

    #getter for: Lcom/android/server/display/RemoteDisplayAdapter;->mActiveDisplay:Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;
    invoke-static {v1}, Lcom/android/server/display/RemoteDisplayAdapter;->access$300(Lcom/android/server/display/RemoteDisplayAdapter;)Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;->info:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, v1, Lcom/android/server/display/DisplayDeviceInfo;->address:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/display/RemoteDisplayAdapter$Stub;->this$0:Lcom/android/server/display/RemoteDisplayAdapter;

    #getter for: Lcom/android/server/display/RemoteDisplayAdapter;->mActiveDisplay:Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;
    invoke-static {v3}, Lcom/android/server/display/RemoteDisplayAdapter;->access$300(Lcom/android/server/display/RemoteDisplayAdapter;)Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;->info:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v3, v3, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/display/RemoteDisplayAdapter$Stub;->this$0:Lcom/android/server/display/RemoteDisplayAdapter;

    #getter for: Lcom/android/server/display/RemoteDisplayAdapter;->mActiveDisplay:Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;
    invoke-static {v5}, Lcom/android/server/display/RemoteDisplayAdapter;->access$300(Lcom/android/server/display/RemoteDisplayAdapter;)Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;->info:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v5, v5, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v1, v3, v5}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v4       #active:Landroid/hardware/display/WifiDisplay;
    :cond_3
    new-instance v0, Landroid/hardware/display/WifiDisplayStatus;

    const/4 v1, 0x3

    iget-object v3, p0, Lcom/android/server/display/RemoteDisplayAdapter$Stub;->this$0:Lcom/android/server/display/RemoteDisplayAdapter;

    #getter for: Lcom/android/server/display/RemoteDisplayAdapter;->mScanning:Z
    invoke-static {v3}, Lcom/android/server/display/RemoteDisplayAdapter;->access$400(Lcom/android/server/display/RemoteDisplayAdapter;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x1

    :cond_4
    const/4 v3, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/hardware/display/WifiDisplay;

    sget-object v6, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    invoke-direct/range {v0 .. v6}, Landroid/hardware/display/WifiDisplayStatus;-><init>(IIILandroid/hardware/display/WifiDisplay;[Landroid/hardware/display/WifiDisplay;[Landroid/hardware/display/WifiDisplay;)V

    .local v0, status:Landroid/hardware/display/WifiDisplayStatus;
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public registerDisplayDevice(Landroid/hardware/display/IDisplayDevice;Ljava/lang/String;IIFILjava/lang/String;Z)V
    .locals 4
    .parameter "displayDevice"
    .parameter "name"
    .parameter "width"
    .parameter "height"
    .parameter "refreshRate"
    .parameter "flags"
    .parameter "address"
    .parameter "hidden"

    .prologue
    iget-object v2, p0, Lcom/android/server/display/RemoteDisplayAdapter$Stub;->this$0:Lcom/android/server/display/RemoteDisplayAdapter;

    invoke-virtual {v2}, Lcom/android/server/display/RemoteDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    new-instance v0, Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;-><init>(Lcom/android/server/display/RemoteDisplayAdapter$1;)V

    .local v0, display:Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;
    iput-boolean p8, v0, Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;->hidden:Z

    new-instance v2, Lcom/android/server/display/DisplayDeviceInfo;

    invoke-direct {v2}, Lcom/android/server/display/DisplayDeviceInfo;-><init>()V

    iput-object v2, v0, Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;->info:Lcom/android/server/display/DisplayDeviceInfo;

    iput-object p1, v0, Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;->displayDevice:Landroid/hardware/display/IDisplayDevice;

    iget-object v2, p0, Lcom/android/server/display/RemoteDisplayAdapter$Stub;->this$0:Lcom/android/server/display/RemoteDisplayAdapter;

    #getter for: Lcom/android/server/display/RemoteDisplayAdapter;->mDevices:Ljava/util/Hashtable;
    invoke-static {v2}, Lcom/android/server/display/RemoteDisplayAdapter;->access$100(Lcom/android/server/display/RemoteDisplayAdapter;)Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v2, p7, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;->info:Lcom/android/server/display/DisplayDeviceInfo;

    .local v1, info:Lcom/android/server/display/DisplayDeviceInfo;
    iput-object p2, v1, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    iput p3, v1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iput p4, v1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iput p5, v1, Lcom/android/server/display/DisplayDeviceInfo;->refreshRate:F

    iput p6, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    iput-object p7, v1, Lcom/android/server/display/DisplayDeviceInfo;->address:Ljava/lang/String;

    const/4 v2, 0x2

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    invoke-virtual {v1, p3, p4}, Lcom/android/server/display/DisplayDeviceInfo;->setAssumedDensityForExternalDisplay(II)V

    iget-object v2, p0, Lcom/android/server/display/RemoteDisplayAdapter$Stub;->this$0:Lcom/android/server/display/RemoteDisplayAdapter;

    #calls: Lcom/android/server/display/RemoteDisplayAdapter;->handleSendStatusChangeBroadcast()V
    invoke-static {v2}, Lcom/android/server/display/RemoteDisplayAdapter;->access$200(Lcom/android/server/display/RemoteDisplayAdapter;)V

    monitor-exit v3

    return-void

    .end local v0           #display:Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;
    .end local v1           #info:Lcom/android/server/display/DisplayDeviceInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public renameRemoteDisplay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "address"
    .parameter "alias"

    .prologue
    iget-object v0, p0, Lcom/android/server/display/RemoteDisplayAdapter$Stub;->this$0:Lcom/android/server/display/RemoteDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/RemoteDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public scanRemoteDisplays()V
    .locals 12

    .prologue
    iget-object v7, p0, Lcom/android/server/display/RemoteDisplayAdapter$Stub;->this$0:Lcom/android/server/display/RemoteDisplayAdapter;

    invoke-virtual {v7}, Lcom/android/server/display/RemoteDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v8

    monitor-enter v8

    :try_start_0
    iget-object v7, p0, Lcom/android/server/display/RemoteDisplayAdapter$Stub;->this$0:Lcom/android/server/display/RemoteDisplayAdapter;

    const/4 v9, 0x1

    #setter for: Lcom/android/server/display/RemoteDisplayAdapter;->mScanning:Z
    invoke-static {v7, v9}, Lcom/android/server/display/RemoteDisplayAdapter;->access$402(Lcom/android/server/display/RemoteDisplayAdapter;Z)Z

    new-instance v5, Landroid/content/Intent;

    const-string v7, "com.cyanogenmod.server.display.SCAN"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v5, scan:Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/server/display/RemoteDisplayAdapter$Stub;->this$0:Lcom/android/server/display/RemoteDisplayAdapter;

    invoke-virtual {v7}, Lcom/android/server/display/RemoteDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .local v4, pm:Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .local v6, services:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v6, :cond_0

    monitor-exit v8

    :goto_0
    return-void

    :cond_0
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .local v1, info:Landroid/content/pm/ResolveInfo;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .local v2, intent:Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v9, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v7, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v3, name:Landroid/content/ComponentName;
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v7, "com.cyanogenmod.server.display.SCAN"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/display/RemoteDisplayAdapter$Stub;->this$0:Lcom/android/server/display/RemoteDisplayAdapter;

    invoke-virtual {v7}, Lcom/android/server/display/RemoteDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #info:Landroid/content/pm/ResolveInfo;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #name:Landroid/content/ComponentName;
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    .end local v5           #scan:Landroid/content/Intent;
    .end local v6           #services:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v4       #pm:Landroid/content/pm/PackageManager;
    .restart local v5       #scan:Landroid/content/Intent;
    .restart local v6       #services:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/android/server/display/RemoteDisplayAdapter$Stub;->this$0:Lcom/android/server/display/RemoteDisplayAdapter;

    #calls: Lcom/android/server/display/RemoteDisplayAdapter;->handleSendStatusChangeBroadcast()V
    invoke-static {v7}, Lcom/android/server/display/RemoteDisplayAdapter;->access$200(Lcom/android/server/display/RemoteDisplayAdapter;)V

    iget-object v7, p0, Lcom/android/server/display/RemoteDisplayAdapter$Stub;->this$0:Lcom/android/server/display/RemoteDisplayAdapter;

    #getter for: Lcom/android/server/display/RemoteDisplayAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/display/RemoteDisplayAdapter;->access$500(Lcom/android/server/display/RemoteDisplayAdapter;)Landroid/os/Handler;

    move-result-object v7

    new-instance v9, Lcom/android/server/display/RemoteDisplayAdapter$Stub$1;

    invoke-direct {v9, p0}, Lcom/android/server/display/RemoteDisplayAdapter$Stub$1;-><init>(Lcom/android/server/display/RemoteDisplayAdapter$Stub;)V

    const-wide/16 v10, 0x2710

    invoke-virtual {v7, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public unregisterDisplayDevice(Landroid/hardware/display/IDisplayDevice;)V
    .locals 5
    .parameter "displayDevice"

    .prologue
    iget-object v2, p0, Lcom/android/server/display/RemoteDisplayAdapter$Stub;->this$0:Lcom/android/server/display/RemoteDisplayAdapter;

    invoke-virtual {v2}, Lcom/android/server/display/RemoteDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/RemoteDisplayAdapter$Stub;->this$0:Lcom/android/server/display/RemoteDisplayAdapter;

    #getter for: Lcom/android/server/display/RemoteDisplayAdapter;->mDevices:Ljava/util/Hashtable;
    invoke-static {v2}, Lcom/android/server/display/RemoteDisplayAdapter;->access$100(Lcom/android/server/display/RemoteDisplayAdapter;)Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;

    .local v0, display:Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;
    iget-object v2, v0, Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;->displayDevice:Landroid/hardware/display/IDisplayDevice;

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/android/server/display/RemoteDisplayAdapter$Stub;->this$0:Lcom/android/server/display/RemoteDisplayAdapter;

    #getter for: Lcom/android/server/display/RemoteDisplayAdapter;->mDevices:Ljava/util/Hashtable;
    invoke-static {v2}, Lcom/android/server/display/RemoteDisplayAdapter;->access$100(Lcom/android/server/display/RemoteDisplayAdapter;)Ljava/util/Hashtable;

    move-result-object v2

    iget-object v4, v0, Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;->info:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v4, v4, Lcom/android/server/display/DisplayDeviceInfo;->address:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/display/RemoteDisplayAdapter$Stub;->this$0:Lcom/android/server/display/RemoteDisplayAdapter;

    #getter for: Lcom/android/server/display/RemoteDisplayAdapter;->mActiveDisplay:Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;
    invoke-static {v2}, Lcom/android/server/display/RemoteDisplayAdapter;->access$300(Lcom/android/server/display/RemoteDisplayAdapter;)Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;

    move-result-object v2

    if-ne v2, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/display/RemoteDisplayAdapter$Stub;->disconnectRemoteDisplay()V

    :cond_1
    monitor-exit v3

    .end local v0           #display:Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;
    :goto_0
    return-void

    :cond_2
    monitor-exit v3

    goto :goto_0

    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
