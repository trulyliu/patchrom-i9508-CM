.class public Lcom/android/server/display/RemoteDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "RemoteDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplayDevice;,
        Lcom/android/server/display/RemoteDisplayAdapter$Stub;,
        Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;
    }
.end annotation


# static fields
.field private static final SCAN:Ljava/lang/String; = "com.cyanogenmod.server.display.SCAN"

.field private static final STOP_SCAN:Ljava/lang/String; = "com.cyanogenmod.server.display.STOP_SCAN"

.field private static final TAG:Ljava/lang/String; = "RemoteDisplayAdapter"


# instance fields
.field private mActiveDisplay:Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;

.field private mDevices:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mScanning:Z

.field mStub:Lcom/android/server/display/RemoteDisplayAdapter$Stub;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/PersistentDataStore;)V
    .locals 6
    .parameter "syncRoot"
    .parameter "context"
    .parameter "handler"
    .parameter "listener"
    .parameter "persistentDataStore"

    .prologue
    .line 310
    const-string v5, "RemoteDisplayAdapter"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V

    .line 54
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/RemoteDisplayAdapter;->mDevices:Ljava/util/Hashtable;

    .line 58
    new-instance v0, Lcom/android/server/display/RemoteDisplayAdapter$Stub;

    invoke-direct {v0, p0}, Lcom/android/server/display/RemoteDisplayAdapter$Stub;-><init>(Lcom/android/server/display/RemoteDisplayAdapter;)V

    iput-object v0, p0, Lcom/android/server/display/RemoteDisplayAdapter;->mStub:Lcom/android/server/display/RemoteDisplayAdapter$Stub;

    .line 311
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/RemoteDisplayAdapter;->mHandler:Landroid/os/Handler;

    .line 312
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/RemoteDisplayAdapter;)Ljava/util/Hashtable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/server/display/RemoteDisplayAdapter;->mDevices:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/display/RemoteDisplayAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/server/display/RemoteDisplayAdapter;->handleSendStatusChangeBroadcast()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/display/RemoteDisplayAdapter;)Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/server/display/RemoteDisplayAdapter;->mActiveDisplay:Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/display/RemoteDisplayAdapter;Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;)Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/server/display/RemoteDisplayAdapter;->mActiveDisplay:Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/display/RemoteDisplayAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/server/display/RemoteDisplayAdapter;->mScanning:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/display/RemoteDisplayAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/server/display/RemoteDisplayAdapter;->mScanning:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/display/RemoteDisplayAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/server/display/RemoteDisplayAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/display/RemoteDisplayAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/server/display/RemoteDisplayAdapter;->stopActiveDisplayLocked()V

    return-void
.end method

.method private handleSendStatusChangeBroadcast()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/server/display/RemoteDisplayAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/RemoteDisplayAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/server/display/RemoteDisplayAdapter$1;-><init>(Lcom/android/server/display/RemoteDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 278
    return-void
.end method

.method private stopActiveDisplayLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 230
    iget-object v0, p0, Lcom/android/server/display/RemoteDisplayAdapter;->mActiveDisplay:Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/RemoteDisplayAdapter;->mActiveDisplay:Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;

    iget-object v0, v0, Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;->remoteDisplayDevice:Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplayDevice;

    if-eqz v0, :cond_0

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/RemoteDisplayAdapter;->mActiveDisplay:Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;

    iget-object v0, v0, Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;->displayDevice:Landroid/hardware/display/IDisplayDevice;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayDevice;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/RemoteDisplayAdapter;->mActiveDisplay:Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;

    iget-object v0, v0, Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;->remoteDisplayDevice:Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplayDevice;

    invoke-virtual {v0}, Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplayDevice;->clearSurfaceLocked()V

    .line 236
    iget-object v0, p0, Lcom/android/server/display/RemoteDisplayAdapter;->mActiveDisplay:Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;

    iget-object v0, v0, Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;->remoteDisplayDevice:Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplayDevice;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/RemoteDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 238
    iget-object v0, p0, Lcom/android/server/display/RemoteDisplayAdapter;->mActiveDisplay:Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;

    iput-object v2, v0, Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;->remoteDisplayDevice:Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplayDevice;

    .line 240
    :cond_0
    iput-object v2, p0, Lcom/android/server/display/RemoteDisplayAdapter;->mActiveDisplay:Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;

    .line 241
    return-void

    .line 233
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic dumpLocked(Ljava/io/PrintWriter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/android/server/display/DisplayAdapter;->dumpLocked(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public bridge synthetic registerLocked()V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    return-void
.end method

.method public stopScan()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 244
    iput-boolean v8, p0, Lcom/android/server/display/RemoteDisplayAdapter;->mScanning:Z

    .line 245
    new-instance v5, Landroid/content/Intent;

    const-string v7, "com.cyanogenmod.server.display.SCAN"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 246
    .local v5, scan:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/server/display/RemoteDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 247
    .local v4, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v4, v5, v8}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 248
    .local v6, services:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v6, :cond_0

    .line 260
    :goto_0
    return-void

    .line 251
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

    .line 252
    .local v1, info:Landroid/content/pm/ResolveInfo;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 253
    .local v2, intent:Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v8, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .local v3, name:Landroid/content/ComponentName;
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 256
    const-string v7, "com.cyanogenmod.server.display.STOP_SCAN"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    invoke-virtual {p0}, Lcom/android/server/display/RemoteDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 259
    .end local v1           #info:Landroid/content/pm/ResolveInfo;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #name:Landroid/content/ComponentName;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/display/RemoteDisplayAdapter;->handleSendStatusChangeBroadcast()V

    goto :goto_0
.end method
