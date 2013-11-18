.class Lcom/android/server/display/RemoteDisplayAdapter$1;
.super Ljava/lang/Object;
.source "RemoteDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/RemoteDisplayAdapter;->handleSendStatusChangeBroadcast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/RemoteDisplayAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/display/RemoteDisplayAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/server/display/RemoteDisplayAdapter$1;->this$0:Lcom/android/server/display/RemoteDisplayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 267
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.display.action.REMOTE_DISPLAY_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 269
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 270
    const-string v1, "android.hardware.display.extra.REMOTE_DISPLAY_STATUS"

    iget-object v2, p0, Lcom/android/server/display/RemoteDisplayAdapter$1;->this$0:Lcom/android/server/display/RemoteDisplayAdapter;

    iget-object v2, v2, Lcom/android/server/display/RemoteDisplayAdapter;->mStub:Lcom/android/server/display/RemoteDisplayAdapter$Stub;

    invoke-virtual {v2}, Lcom/android/server/display/RemoteDisplayAdapter$Stub;->getRemoteDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 275
    iget-object v1, p0, Lcom/android/server/display/RemoteDisplayAdapter$1;->this$0:Lcom/android/server/display/RemoteDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/RemoteDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 276
    return-void
.end method
