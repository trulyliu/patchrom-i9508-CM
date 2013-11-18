.class public Landroid/hardware/IrdaManager;
.super Ljava/lang/Object;
.source "IrdaManager.java"


# instance fields
.field private final mService:Landroid/hardware/IIrdaManager;


# direct methods
.method public constructor <init>(Landroid/hardware/IIrdaManager;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Landroid/hardware/IrdaManager;->mService:Landroid/hardware/IIrdaManager;

    .line 38
    return-void
.end method


# virtual methods
.method public write_irsend(Ljava/lang/String;)V
    .locals 1
    .parameter "code"

    .prologue
    .line 73
    :try_start_0
    iget-object v0, p0, Landroid/hardware/IrdaManager;->mService:Landroid/hardware/IIrdaManager;

    invoke-interface {v0, p1}, Landroid/hardware/IIrdaManager;->write_irsend(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    goto :goto_0
.end method
