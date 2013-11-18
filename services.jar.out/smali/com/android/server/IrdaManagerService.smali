.class public Lcom/android/server/IrdaManagerService;
.super Landroid/hardware/IIrdaManager$Stub;
.source "IrdaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/IrdaManagerService$IrdaWorkerHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IrdaManagerService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/server/IrdaManagerService$IrdaWorkerHandler;

.field private mNativePointer:I

.field private mServiceLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/hardware/IIrdaManager$Stub;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/server/IrdaManagerService;->mContext:Landroid/content/Context;

    .line 39
    invoke-static {}, Lcom/android/server/IrdaManagerService;->init_native()I

    move-result v1

    iput v1, p0, Lcom/android/server/IrdaManagerService;->mNativePointer:I

    .line 40
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "IrdaServiceWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 41
    .local v0, mWorker:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 42
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/IrdaManagerService;->mServiceLooper:Landroid/os/Looper;

    .line 43
    new-instance v1, Lcom/android/server/IrdaManagerService$IrdaWorkerHandler;

    iget-object v2, p0, Lcom/android/server/IrdaManagerService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/server/IrdaManagerService$IrdaWorkerHandler;-><init>(Lcom/android/server/IrdaManagerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/IrdaManagerService;->mHandler:Lcom/android/server/IrdaManagerService$IrdaWorkerHandler;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/IrdaManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/server/IrdaManagerService;->mNativePointer:I

    return v0
.end method

.method static synthetic access$100(I[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-static {p0, p1}, Lcom/android/server/IrdaManagerService;->send_ircode_native(I[B)V

    return-void
.end method

.method private static native finalize_native(I)V
.end method

.method private static native init_native()I
.end method

.method private static native send_ircode_native(I[B)V
.end method


# virtual methods
.method public write_irsend(Ljava/lang/String;)V
    .locals 3
    .parameter "irCode"

    .prologue
    .line 47
    if-eqz p1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/android/server/IrdaManagerService;->mHandler:Lcom/android/server/IrdaManagerService$IrdaWorkerHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/android/server/IrdaManagerService$IrdaWorkerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 49
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 51
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method
