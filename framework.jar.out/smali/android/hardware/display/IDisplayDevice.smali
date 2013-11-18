.class public interface abstract Landroid/hardware/display/IDisplayDevice;
.super Ljava/lang/Object;
.source "IDisplayDevice.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/IDisplayDevice$Stub;
    }
.end annotation


# virtual methods
.method public abstract createDisplaySurface()Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
