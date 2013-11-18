.class public abstract Landroid/hardware/display/IRemoteDisplayAdapter$Stub;
.super Landroid/os/Binder;
.source "IRemoteDisplayAdapter.java"

# interfaces
.implements Landroid/hardware/display/IRemoteDisplayAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/IRemoteDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/IRemoteDisplayAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.display.IRemoteDisplayAdapter"

.field static final TRANSACTION_connectRemoteDisplay:I = 0x2

.field static final TRANSACTION_disconnectRemoteDisplay:I = 0x3

.field static final TRANSACTION_forgetRemoteDisplay:I = 0x4

.field static final TRANSACTION_getRemoteDisplayStatus:I = 0x6

.field static final TRANSACTION_registerDisplayDevice:I = 0x7

.field static final TRANSACTION_renameRemoteDisplay:I = 0x5

.field static final TRANSACTION_scanRemoteDisplays:I = 0x1

.field static final TRANSACTION_unregisterDisplayDevice:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.hardware.display.IRemoteDisplayAdapter"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/display/IRemoteDisplayAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IRemoteDisplayAdapter;
    .locals 2
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "android.hardware.display.IRemoteDisplayAdapter"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/display/IRemoteDisplayAdapter;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/hardware/display/IRemoteDisplayAdapter;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Landroid/hardware/display/IRemoteDisplayAdapter$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/hardware/display/IRemoteDisplayAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 131
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v10

    :goto_0
    return v10

    .line 45
    :sswitch_0
    const-string v0, "android.hardware.display.IRemoteDisplayAdapter"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v0, "android.hardware.display.IRemoteDisplayAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Landroid/hardware/display/IRemoteDisplayAdapter$Stub;->scanRemoteDisplays()V

    goto :goto_0

    .line 56
    :sswitch_2
    const-string v0, "android.hardware.display.IRemoteDisplayAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/hardware/display/IRemoteDisplayAdapter$Stub;->connectRemoteDisplay(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_3
    const-string v0, "android.hardware.display.IRemoteDisplayAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Landroid/hardware/display/IRemoteDisplayAdapter$Stub;->disconnectRemoteDisplay()V

    goto :goto_0

    .line 70
    :sswitch_4
    const-string v0, "android.hardware.display.IRemoteDisplayAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 73
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/hardware/display/IRemoteDisplayAdapter$Stub;->forgetRemoteDisplay(Ljava/lang/String;)V

    goto :goto_0

    .line 78
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_5
    const-string v0, "android.hardware.display.IRemoteDisplayAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 82
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/display/IRemoteDisplayAdapter$Stub;->renameRemoteDisplay(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_6
    const-string v0, "android.hardware.display.IRemoteDisplayAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Landroid/hardware/display/IRemoteDisplayAdapter$Stub;->getRemoteDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v9

    .line 90
    .local v9, _result:Landroid/hardware/display/WifiDisplayStatus;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    if-eqz v9, :cond_0

    .line 92
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    invoke-virtual {v9, p3, v10}, Landroid/hardware/display/WifiDisplayStatus;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 102
    .end local v9           #_result:Landroid/hardware/display/WifiDisplayStatus;
    :sswitch_7
    const-string v0, "android.hardware.display.IRemoteDisplayAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/IDisplayDevice$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayDevice;

    move-result-object v1

    .line 106
    .local v1, _arg0:Landroid/hardware/display/IDisplayDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 108
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 110
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 112
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    .line 114
    .local v5, _arg4:F
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 116
    .local v6, _arg5:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 118
    .local v7, _arg6:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v8, v10

    .local v8, _arg7:Z
    :cond_1
    move-object v0, p0

    .line 119
    invoke-virtual/range {v0 .. v8}, Landroid/hardware/display/IRemoteDisplayAdapter$Stub;->registerDisplayDevice(Landroid/hardware/display/IDisplayDevice;Ljava/lang/String;IIFILjava/lang/String;Z)V

    goto/16 :goto_0

    .line 124
    .end local v1           #_arg0:Landroid/hardware/display/IDisplayDevice;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:F
    .end local v6           #_arg5:I
    .end local v7           #_arg6:Ljava/lang/String;
    .end local v8           #_arg7:Z
    :sswitch_8
    const-string v0, "android.hardware.display.IRemoteDisplayAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/IDisplayDevice$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayDevice;

    move-result-object v1

    .line 127
    .restart local v1       #_arg0:Landroid/hardware/display/IDisplayDevice;
    invoke-virtual {p0, v1}, Landroid/hardware/display/IRemoteDisplayAdapter$Stub;->unregisterDisplayDevice(Landroid/hardware/display/IDisplayDevice;)V

    goto/16 :goto_0

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
