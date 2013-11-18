.class Lcom/android/server/display/RemoteDisplayAdapter$Stub$1;
.super Ljava/lang/Object;
.source "RemoteDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/RemoteDisplayAdapter$Stub;->scanRemoteDisplays()V
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
    .line 116
    iput-object p1, p0, Lcom/android/server/display/RemoteDisplayAdapter$Stub$1;->this$1:Lcom/android/server/display/RemoteDisplayAdapter$Stub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/display/RemoteDisplayAdapter$Stub$1;->this$1:Lcom/android/server/display/RemoteDisplayAdapter$Stub;

    iget-object v0, v0, Lcom/android/server/display/RemoteDisplayAdapter$Stub;->this$0:Lcom/android/server/display/RemoteDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/RemoteDisplayAdapter;->stopScan()V

    .line 120
    return-void
.end method
