.class public interface abstract Landroid/hardware/IIrdaManager;
.super Ljava/lang/Object;
.source "IIrdaManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/IIrdaManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract write_irsend(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
