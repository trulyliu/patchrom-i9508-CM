.class Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;
.super Ljava/lang/Object;
.source "RemoteDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/RemoteDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteDisplay"
.end annotation


# instance fields
.field displayDevice:Landroid/hardware/display/IDisplayDevice;

.field hidden:Z

.field info:Lcom/android/server/display/DisplayDeviceInfo;

.field remoteDisplayDevice:Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplayDevice;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/RemoteDisplayAdapter$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/display/RemoteDisplayAdapter$RemoteDisplay;-><init>()V

    return-void
.end method
