.class Lcom/android/server/content/SyncManager$5;
.super Landroid/content/BroadcastReceiver;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager;)V
    .locals 0
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/server/content/SyncManager$5;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 241
    iget-object v0, p0, Lcom/android/server/content/SyncManager$5;->this$0:Lcom/android/server/content/SyncManager;

    invoke-virtual {v0}, Lcom/android/server/content/SyncManager;->updateRunningAccounts()V

    .line 244
    iget-object v0, p0, Lcom/android/server/content/SyncManager$5;->this$0:Lcom/android/server/content/SyncManager;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v4, v1

    move-object v5, v1

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;JZ)V

    .line 246
    return-void
.end method