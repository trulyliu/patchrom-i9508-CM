.class Lcom/android/server/IrdaManagerService$IrdaWorkerHandler;
.super Landroid/os/Handler;
.source "IrdaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IrdaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IrdaWorkerHandler"
.end annotation


# static fields
.field private static final MESSAGE_SET:I


# instance fields
.field final synthetic this$0:Lcom/android/server/IrdaManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/IrdaManagerService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    iput-object p1, p0, Lcom/android/server/IrdaManagerService$IrdaWorkerHandler;->this$0:Lcom/android/server/IrdaManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    iget v2, p1, Landroid/os/Message;->what:I

    if-nez v2, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .local v1, irCode:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .local v0, buffer:[B
    iget-object v2, p0, Lcom/android/server/IrdaManagerService$IrdaWorkerHandler;->this$0:Lcom/android/server/IrdaManagerService;

    #getter for: Lcom/android/server/IrdaManagerService;->mNativePointer:I
    invoke-static {v2}, Lcom/android/server/IrdaManagerService;->access$000(Lcom/android/server/IrdaManagerService;)I

    move-result v2

    #calls: Lcom/android/server/IrdaManagerService;->send_ircode_native(I[B)V
    invoke-static {v2, v0}, Lcom/android/server/IrdaManagerService;->access$100(I[B)V

    .end local v0           #buffer:[B
    .end local v1           #irCode:Ljava/lang/String;
    :cond_0
    return-void
.end method
