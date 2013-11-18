.class public abstract Landroid/app/ActivityManagerNative;
.super Landroid/os/Binder;
.source "ActivityManagerNative.java"

# interfaces
.implements Landroid/app/IActivityManager;


# static fields
.field private static final gDefault:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton",
            "<",
            "Landroid/app/IActivityManager;",
            ">;"
        }
    .end annotation
.end field

.field static sSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    .line 1900
    new-instance v0, Landroid/app/ActivityManagerNative$1;

    invoke-direct {v0}, Landroid/app/ActivityManagerNative$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManagerNative;->gDefault:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 108
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/ActivityManagerNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;
    .locals 2
    .parameter "obj"

    .prologue
    .line 57
    if-nez p0, :cond_1

    .line 58
    const/4 v0, 0x0

    .line 66
    :cond_0
    :goto_0
    return-object v0

    .line 60
    :cond_1
    const-string v1, "android.app.IActivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    .line 62
    .local v0, in:Landroid/app/IActivityManager;
    if-nez v0, :cond_0

    .line 66
    new-instance v0, Landroid/app/ActivityManagerProxy;

    .end local v0           #in:Landroid/app/IActivityManager;
    invoke-direct {v0, p0}, Landroid/app/ActivityManagerProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public static broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 13
    .parameter "intent"
    .parameter "permission"
    .parameter "userId"

    .prologue
    .line 93
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v2, p0

    move v12, p2

    invoke-interface/range {v0 .. v12}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getDefault()Landroid/app/IActivityManager;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Landroid/app/ActivityManagerNative;->gDefault:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    return-object v0
.end method

.method public static isSystemReady()Z
    .locals 1

    .prologue
    .line 80
    sget-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    if-nez v0, :cond_0

    .line 81
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->testIsSystemReady()Z

    move-result v0

    sput-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    .line 83
    :cond_0
    sget-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    return v0
.end method

.method public static noteWakeupAlarm(Landroid/app/PendingIntent;)V
    .locals 2
    .parameter "ps"

    .prologue
    .line 102
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->noteWakeupAlarm(Landroid/content/IIntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 1897
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 206
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
    .line 113
    packed-switch p1, :pswitch_data_0

    .line 1893
    :pswitch_0
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 116
    :pswitch_1
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 118
    .local v120, b:Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 119
    .local v6, app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 120
    .local v7, callingPackage:Ljava/lang/String;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 121
    .local v8, intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 122
    .local v9, resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 123
    .local v10, resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 124
    .local v11, resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 125
    .local v12, requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 126
    .local v13, startFlags:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 127
    .local v14, profileFile:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v15

    .line 129
    .local v15, profileFd:Landroid/os/ParcelFileDescriptor;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object/from16 v16, v5

    .local v16, options:Landroid/os/Bundle;
    :goto_2
    move-object/from16 v5, p0

    .line 131
    invoke-virtual/range {v5 .. v16}, Landroid/app/ActivityManagerNative;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;)I

    move-result v184

    .line 134
    .local v184, result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    move-object/from16 v0, p3

    move/from16 v1, v184

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    const/4 v5, 0x1

    goto :goto_0

    .line 127
    .end local v15           #profileFd:Landroid/os/ParcelFileDescriptor;
    .end local v16           #options:Landroid/os/Bundle;
    .end local v184           #result:I
    :cond_0
    const/4 v15, 0x0

    goto :goto_1

    .line 129
    .restart local v15       #profileFd:Landroid/os/ParcelFileDescriptor;
    :cond_1
    const/16 v16, 0x0

    goto :goto_2

    .line 141
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #callingPackage:Ljava/lang/String;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v9           #resolvedType:Ljava/lang/String;
    .end local v10           #resultTo:Landroid/os/IBinder;
    .end local v11           #resultWho:Ljava/lang/String;
    .end local v12           #requestCode:I
    .end local v13           #startFlags:I
    .end local v14           #profileFile:Ljava/lang/String;
    .end local v15           #profileFd:Landroid/os/ParcelFileDescriptor;
    .end local v120           #b:Landroid/os/IBinder;
    :pswitch_2
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 143
    .restart local v120       #b:Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 144
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 145
    .restart local v7       #callingPackage:Ljava/lang/String;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 146
    .restart local v8       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 147
    .restart local v9       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 148
    .restart local v10       #resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 149
    .restart local v11       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 150
    .restart local v12       #requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 151
    .restart local v13       #startFlags:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 152
    .restart local v14       #profileFile:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v15

    .line 154
    .restart local v15       #profileFd:Landroid/os/ParcelFileDescriptor;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object/from16 v16, v5

    .line 156
    .restart local v16       #options:Landroid/os/Bundle;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .local v17, userId:I
    move-object/from16 v5, p0

    .line 157
    invoke-virtual/range {v5 .. v17}, Landroid/app/ActivityManagerNative;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;I)I

    move-result v184

    .line 160
    .restart local v184       #result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    move-object/from16 v0, p3

    move/from16 v1, v184

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 152
    .end local v15           #profileFd:Landroid/os/ParcelFileDescriptor;
    .end local v16           #options:Landroid/os/Bundle;
    .end local v17           #userId:I
    .end local v184           #result:I
    :cond_2
    const/4 v15, 0x0

    goto :goto_3

    .line 154
    .restart local v15       #profileFd:Landroid/os/ParcelFileDescriptor;
    :cond_3
    const/16 v16, 0x0

    goto :goto_4

    .line 167
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #callingPackage:Ljava/lang/String;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v9           #resolvedType:Ljava/lang/String;
    .end local v10           #resultTo:Landroid/os/IBinder;
    .end local v11           #resultWho:Ljava/lang/String;
    .end local v12           #requestCode:I
    .end local v13           #startFlags:I
    .end local v14           #profileFile:Ljava/lang/String;
    .end local v15           #profileFd:Landroid/os/ParcelFileDescriptor;
    .end local v120           #b:Landroid/os/IBinder;
    :pswitch_3
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 169
    .restart local v120       #b:Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 170
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 171
    .restart local v7       #callingPackage:Ljava/lang/String;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 172
    .restart local v8       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 173
    .restart local v9       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 174
    .restart local v10       #resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 175
    .restart local v11       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 176
    .restart local v12       #requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 177
    .restart local v13       #startFlags:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 178
    .restart local v14       #profileFile:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v15

    .line 180
    .restart local v15       #profileFd:Landroid/os/ParcelFileDescriptor;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object/from16 v16, v5

    .line 182
    .restart local v16       #options:Landroid/os/Bundle;
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17       #userId:I
    move-object/from16 v5, p0

    .line 183
    invoke-virtual/range {v5 .. v17}, Landroid/app/ActivityManagerNative;->startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;I)Landroid/app/IActivityManager$WaitResult;

    move-result-object v184

    .line 186
    .local v184, result:Landroid/app/IActivityManager$WaitResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    const/4 v5, 0x0

    move-object/from16 v0, v184

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/IActivityManager$WaitResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 188
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 178
    .end local v15           #profileFd:Landroid/os/ParcelFileDescriptor;
    .end local v16           #options:Landroid/os/Bundle;
    .end local v17           #userId:I
    .end local v184           #result:Landroid/app/IActivityManager$WaitResult;
    :cond_4
    const/4 v15, 0x0

    goto :goto_5

    .line 180
    .restart local v15       #profileFd:Landroid/os/ParcelFileDescriptor;
    :cond_5
    const/16 v16, 0x0

    goto :goto_6

    .line 193
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #callingPackage:Ljava/lang/String;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v9           #resolvedType:Ljava/lang/String;
    .end local v10           #resultTo:Landroid/os/IBinder;
    .end local v11           #resultWho:Ljava/lang/String;
    .end local v12           #requestCode:I
    .end local v13           #startFlags:I
    .end local v14           #profileFile:Ljava/lang/String;
    .end local v15           #profileFd:Landroid/os/ParcelFileDescriptor;
    .end local v120           #b:Landroid/os/IBinder;
    :pswitch_4
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 195
    .restart local v120       #b:Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 196
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 197
    .restart local v7       #callingPackage:Ljava/lang/String;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 198
    .restart local v8       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 199
    .restart local v9       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 200
    .restart local v10       #resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 201
    .restart local v11       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 202
    .restart local v12       #requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 203
    .restart local v13       #startFlags:I
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/res/Configuration;

    .line 204
    .local v27, config:Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object/from16 v16, v5

    .line 206
    .restart local v16       #options:Landroid/os/Bundle;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17       #userId:I
    move-object/from16 v18, p0

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    move/from16 v25, v12

    move/from16 v26, v13

    move-object/from16 v28, v16

    move/from16 v29, v17

    .line 207
    invoke-virtual/range {v18 .. v29}, Landroid/app/ActivityManagerNative;->startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I

    move-result v184

    .line 209
    .local v184, result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    move-object/from16 v0, p3

    move/from16 v1, v184

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 204
    .end local v16           #options:Landroid/os/Bundle;
    .end local v17           #userId:I
    .end local v184           #result:I
    :cond_6
    const/16 v16, 0x0

    goto :goto_7

    .line 216
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #callingPackage:Ljava/lang/String;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v9           #resolvedType:Ljava/lang/String;
    .end local v10           #resultTo:Landroid/os/IBinder;
    .end local v11           #resultWho:Ljava/lang/String;
    .end local v12           #requestCode:I
    .end local v13           #startFlags:I
    .end local v27           #config:Landroid/content/res/Configuration;
    .end local v120           #b:Landroid/os/IBinder;
    :pswitch_5
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 218
    .restart local v120       #b:Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 219
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/IntentSender;

    .line 220
    .local v8, intent:Landroid/content/IntentSender;
    const/16 v31, 0x0

    .line 221
    .local v31, fillInIntent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    .line 222
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .end local v31           #fillInIntent:Landroid/content/Intent;
    check-cast v31, Landroid/content/Intent;

    .line 224
    .restart local v31       #fillInIntent:Landroid/content/Intent;
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 225
    .restart local v9       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 226
    .restart local v10       #resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 227
    .restart local v11       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 228
    .restart local v12       #requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 229
    .local v36, flagsMask:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 230
    .local v37, flagsValues:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object/from16 v16, v5

    .restart local v16       #options:Landroid/os/Bundle;
    :goto_8
    move-object/from16 v28, p0

    move-object/from16 v29, v6

    move-object/from16 v30, v8

    move-object/from16 v32, v9

    move-object/from16 v33, v10

    move-object/from16 v34, v11

    move/from16 v35, v12

    move-object/from16 v38, v16

    .line 232
    invoke-virtual/range {v28 .. v38}, Landroid/app/ActivityManagerNative;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IntentSender;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v184

    .line 235
    .restart local v184       #result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    move-object/from16 v0, p3

    move/from16 v1, v184

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 230
    .end local v16           #options:Landroid/os/Bundle;
    .end local v184           #result:I
    :cond_8
    const/16 v16, 0x0

    goto :goto_8

    .line 242
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v8           #intent:Landroid/content/IntentSender;
    .end local v9           #resolvedType:Ljava/lang/String;
    .end local v10           #resultTo:Landroid/os/IBinder;
    .end local v11           #resultWho:Ljava/lang/String;
    .end local v12           #requestCode:I
    .end local v31           #fillInIntent:Landroid/content/Intent;
    .end local v36           #flagsMask:I
    .end local v37           #flagsValues:I
    .end local v120           #b:Landroid/os/IBinder;
    :pswitch_6
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v125

    .line 244
    .local v125, callingActivity:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 245
    .local v8, intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object/from16 v16, v5

    .line 247
    .restart local v16       #options:Landroid/os/Bundle;
    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v125

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v8, v2}, Landroid/app/ActivityManagerNative;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v184

    .line 248
    .local v184, result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    if-eqz v184, :cond_a

    const/4 v5, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 245
    .end local v16           #options:Landroid/os/Bundle;
    .end local v184           #result:Z
    :cond_9
    const/16 v16, 0x0

    goto :goto_9

    .line 249
    .restart local v16       #options:Landroid/os/Bundle;
    .restart local v184       #result:Z
    :cond_a
    const/4 v5, 0x0

    goto :goto_a

    .line 254
    .end local v8           #intent:Landroid/content/Intent;
    .end local v16           #options:Landroid/os/Bundle;
    .end local v125           #callingActivity:Landroid/os/IBinder;
    .end local v184           #result:Z
    :pswitch_7
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 256
    .local v52, token:Landroid/os/IBinder;
    const/16 v44, 0x0

    .line 257
    .local v44, resultData:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 258
    .local v43, resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b

    .line 259
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v44

    .end local v44           #resultData:Landroid/content/Intent;
    check-cast v44, Landroid/content/Intent;

    .line 261
    .restart local v44       #resultData:Landroid/content/Intent;
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v43

    move-object/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;)Z

    move-result v182

    .line 262
    .local v182, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    if-eqz v182, :cond_c

    const/4 v5, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 263
    :cond_c
    const/4 v5, 0x0

    goto :goto_b

    .line 268
    .end local v43           #resultCode:I
    .end local v44           #resultData:Landroid/content/Intent;
    .end local v52           #token:Landroid/os/IBinder;
    .end local v182           #res:Z
    :pswitch_8
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 270
    .restart local v52       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 271
    .restart local v11       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 272
    .restart local v12       #requestCode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1, v11, v12}, Landroid/app/ActivityManagerNative;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 273
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 278
    .end local v11           #resultWho:Ljava/lang/String;
    .end local v12           #requestCode:I
    .end local v52           #token:Landroid/os/IBinder;
    :pswitch_9
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 280
    .restart local v52       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->finishActivityAffinity(Landroid/os/IBinder;)Z

    move-result v182

    .line 281
    .restart local v182       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    if-eqz v182, :cond_d

    const/4 v5, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 282
    :cond_d
    const/4 v5, 0x0

    goto :goto_c

    .line 287
    .end local v52           #token:Landroid/os/IBinder;
    .end local v182           #res:Z
    :pswitch_a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 289
    .restart local v52       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->willActivityBeVisible(Landroid/os/IBinder;)Z

    move-result v182

    .line 290
    .restart local v182       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    if-eqz v182, :cond_e

    const/4 v5, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 291
    :cond_e
    const/4 v5, 0x0

    goto :goto_d

    .line 297
    .end local v52           #token:Landroid/os/IBinder;
    .end local v182           #res:Z
    :pswitch_b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 299
    .restart local v120       #b:Landroid/os/IBinder;
    if-eqz v120, :cond_f

    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 301
    .restart local v6       #app:Landroid/app/IApplicationThread;
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 302
    .local v20, packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 303
    if-eqz v120, :cond_10

    invoke-static/range {v120 .. v120}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v21

    .line 305
    .local v21, rec:Landroid/content/IIntentReceiver;
    :goto_f
    sget-object v5, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/IntentFilter;

    .line 306
    .local v22, filter:Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 307
    .local v23, perm:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17       #userId:I
    move-object/from16 v18, p0

    move-object/from16 v19, v6

    move/from16 v24, v17

    .line 308
    invoke-virtual/range {v18 .. v24}, Landroid/app/ActivityManagerNative;->registerReceiver(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    .line 309
    .restart local v8       #intent:Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    if-eqz v8, :cond_11

    .line 311
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v5}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 316
    :goto_10
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 299
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v17           #userId:I
    .end local v20           #packageName:Ljava/lang/String;
    .end local v21           #rec:Landroid/content/IIntentReceiver;
    .end local v22           #filter:Landroid/content/IntentFilter;
    .end local v23           #perm:Ljava/lang/String;
    :cond_f
    const/4 v6, 0x0

    goto :goto_e

    .line 303
    .restart local v6       #app:Landroid/app/IApplicationThread;
    .restart local v20       #packageName:Ljava/lang/String;
    :cond_10
    const/16 v21, 0x0

    goto :goto_f

    .line 314
    .restart local v8       #intent:Landroid/content/Intent;
    .restart local v17       #userId:I
    .restart local v21       #rec:Landroid/content/IIntentReceiver;
    .restart local v22       #filter:Landroid/content/IntentFilter;
    .restart local v23       #perm:Ljava/lang/String;
    :cond_11
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_10

    .line 321
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v17           #userId:I
    .end local v20           #packageName:Ljava/lang/String;
    .end local v21           #rec:Landroid/content/IIntentReceiver;
    .end local v22           #filter:Landroid/content/IntentFilter;
    .end local v23           #perm:Ljava/lang/String;
    .end local v120           #b:Landroid/os/IBinder;
    :pswitch_c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 323
    .restart local v120       #b:Landroid/os/IBinder;
    if-nez v120, :cond_12

    .line 324
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 326
    :cond_12
    invoke-static/range {v120 .. v120}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v21

    .line 327
    .restart local v21       #rec:Landroid/content/IIntentReceiver;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterReceiver(Landroid/content/IIntentReceiver;)V

    .line 328
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 334
    .end local v21           #rec:Landroid/content/IIntentReceiver;
    .end local v120           #b:Landroid/os/IBinder;
    :pswitch_d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 336
    .restart local v120       #b:Landroid/os/IBinder;
    if-eqz v120, :cond_13

    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 338
    .restart local v6       #app:Landroid/app/IApplicationThread;
    :goto_11
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 339
    .restart local v8       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 340
    .restart local v9       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 341
    if-eqz v120, :cond_14

    invoke-static/range {v120 .. v120}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v10

    .line 343
    .local v10, resultTo:Landroid/content/IIntentReceiver;
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 344
    .restart local v43       #resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v44

    .line 345
    .local v44, resultData:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v45

    .line 346
    .local v45, resultExtras:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 347
    .restart local v23       #perm:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v47

    .line 348
    .local v47, appOp:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_15

    const/16 v48, 0x1

    .line 349
    .local v48, serialized:Z
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_16

    const/16 v49, 0x1

    .line 350
    .local v49, sticky:Z
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17       #userId:I
    move-object/from16 v38, p0

    move-object/from16 v39, v6

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move-object/from16 v42, v10

    move-object/from16 v46, v23

    move/from16 v50, v17

    .line 351
    invoke-virtual/range {v38 .. v50}, Landroid/app/ActivityManagerNative;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I

    move-result v182

    .line 354
    .local v182, res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    move-object/from16 v0, p3

    move/from16 v1, v182

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 336
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v9           #resolvedType:Ljava/lang/String;
    .end local v10           #resultTo:Landroid/content/IIntentReceiver;
    .end local v17           #userId:I
    .end local v23           #perm:Ljava/lang/String;
    .end local v43           #resultCode:I
    .end local v44           #resultData:Ljava/lang/String;
    .end local v45           #resultExtras:Landroid/os/Bundle;
    .end local v47           #appOp:I
    .end local v48           #serialized:Z
    .end local v49           #sticky:Z
    .end local v182           #res:I
    :cond_13
    const/4 v6, 0x0

    goto :goto_11

    .line 341
    .restart local v6       #app:Landroid/app/IApplicationThread;
    .restart local v8       #intent:Landroid/content/Intent;
    .restart local v9       #resolvedType:Ljava/lang/String;
    :cond_14
    const/4 v10, 0x0

    goto :goto_12

    .line 348
    .restart local v10       #resultTo:Landroid/content/IIntentReceiver;
    .restart local v23       #perm:Ljava/lang/String;
    .restart local v43       #resultCode:I
    .restart local v44       #resultData:Ljava/lang/String;
    .restart local v45       #resultExtras:Landroid/os/Bundle;
    .restart local v47       #appOp:I
    :cond_15
    const/16 v48, 0x0

    goto :goto_13

    .line 349
    .restart local v48       #serialized:Z
    :cond_16
    const/16 v49, 0x0

    goto :goto_14

    .line 361
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v9           #resolvedType:Ljava/lang/String;
    .end local v10           #resultTo:Landroid/content/IIntentReceiver;
    .end local v23           #perm:Ljava/lang/String;
    .end local v43           #resultCode:I
    .end local v44           #resultData:Ljava/lang/String;
    .end local v45           #resultExtras:Landroid/os/Bundle;
    .end local v47           #appOp:I
    .end local v48           #serialized:Z
    .end local v120           #b:Landroid/os/IBinder;
    :pswitch_e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 363
    .restart local v120       #b:Landroid/os/IBinder;
    if-eqz v120, :cond_17

    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 364
    .restart local v6       #app:Landroid/app/IApplicationThread;
    :goto_15
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 365
    .restart local v8       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 366
    .restart local v17       #userId:I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v6, v8, v1}, Landroid/app/ActivityManagerNative;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V

    .line 367
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 363
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v17           #userId:I
    :cond_17
    const/4 v6, 0x0

    goto :goto_15

    .line 372
    .end local v120           #b:Landroid/os/IBinder;
    :pswitch_f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v42

    .line 374
    .local v42, who:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 375
    .restart local v43       #resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v44

    .line 376
    .restart local v44       #resultData:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v45

    .line 377
    .restart local v45       #resultExtras:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_19

    const/16 v46, 0x1

    .line 378
    .local v46, resultAbort:Z
    :goto_16
    if-eqz v42, :cond_18

    move-object/from16 v41, p0

    .line 379
    invoke-virtual/range {v41 .. v46}, Landroid/app/ActivityManagerNative;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Z)V

    .line 381
    :cond_18
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 377
    .end local v46           #resultAbort:Z
    :cond_19
    const/16 v46, 0x0

    goto :goto_16

    .line 386
    .end local v42           #who:Landroid/os/IBinder;
    .end local v43           #resultCode:I
    .end local v44           #resultData:Ljava/lang/String;
    .end local v45           #resultExtras:Landroid/os/Bundle;
    :pswitch_10
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 389
    .restart local v6       #app:Landroid/app/IApplicationThread;
    if-eqz v6, :cond_1a

    .line 390
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ActivityManagerNative;->attachApplication(Landroid/app/IApplicationThread;)V

    .line 392
    :cond_1a
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 397
    .end local v6           #app:Landroid/app/IApplicationThread;
    :pswitch_11
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 399
    .restart local v52       #token:Landroid/os/IBinder;
    const/16 v27, 0x0

    .line 400
    .restart local v27       #config:Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1b

    .line 401
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    .end local v27           #config:Landroid/content/res/Configuration;
    check-cast v27, Landroid/content/res/Configuration;

    .line 403
    .restart local v27       #config:Landroid/content/res/Configuration;
    :cond_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1d

    const/16 v190, 0x1

    .line 404
    .local v190, stopProfiling:Z
    :goto_17
    if-eqz v52, :cond_1c

    .line 405
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v27

    move/from16 v3, v190

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V

    .line 407
    :cond_1c
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 403
    .end local v190           #stopProfiling:Z
    :cond_1d
    const/16 v190, 0x0

    goto :goto_17

    .line 412
    .end local v27           #config:Landroid/content/res/Configuration;
    .end local v52           #token:Landroid/os/IBinder;
    :pswitch_12
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 414
    .restart local v52       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityResumed(Landroid/os/IBinder;)V

    .line 415
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 420
    .end local v52           #token:Landroid/os/IBinder;
    :pswitch_13
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 422
    .restart local v52       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityPaused(Landroid/os/IBinder;)V

    .line 423
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 428
    .end local v52           #token:Landroid/os/IBinder;
    :pswitch_14
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 430
    .restart local v52       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v153

    .line 431
    .local v153, map:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1e

    sget-object v5, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    move-object/from16 v197, v5

    .line 433
    .local v197, thumbnail:Landroid/graphics/Bitmap;
    :goto_18
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v131

    check-cast v131, Ljava/lang/CharSequence;

    .line 434
    .local v131, description:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v153

    move-object/from16 v3, v197

    move-object/from16 v4, v131

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 435
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 431
    .end local v131           #description:Ljava/lang/CharSequence;
    .end local v197           #thumbnail:Landroid/graphics/Bitmap;
    :cond_1e
    const/16 v197, 0x0

    goto :goto_18

    .line 440
    .end local v52           #token:Landroid/os/IBinder;
    .end local v153           #map:Landroid/os/Bundle;
    :pswitch_15
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 441
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 442
    .restart local v52       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activitySlept(Landroid/os/IBinder;)V

    .line 443
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 448
    .end local v52           #token:Landroid/os/IBinder;
    :pswitch_16
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 450
    .restart local v52       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityDestroyed(Landroid/os/IBinder;)V

    .line 451
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 456
    .end local v52           #token:Landroid/os/IBinder;
    :pswitch_17
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 457
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 458
    .restart local v52       #token:Landroid/os/IBinder;
    if-eqz v52, :cond_1f

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v182

    .line 459
    .local v182, res:Ljava/lang/String;
    :goto_19
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    move-object/from16 v0, p3

    move-object/from16 v1, v182

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 461
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 458
    .end local v182           #res:Ljava/lang/String;
    :cond_1f
    const/16 v182, 0x0

    goto :goto_19

    .line 465
    .end local v52           #token:Landroid/os/IBinder;
    :pswitch_18
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 466
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_20

    const/16 v138, 0x1

    .line 467
    .local v138, foreground:Z
    :goto_1a
    move-object/from16 v0, p0

    move/from16 v1, v138

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingPackageForBroadcast(Z)Ljava/lang/String;

    move-result-object v182

    .line 468
    .restart local v182       #res:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    move-object/from16 v0, p3

    move-object/from16 v1, v182

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 470
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 466
    .end local v138           #foreground:Z
    .end local v182           #res:Ljava/lang/String;
    :cond_20
    const/16 v138, 0x0

    goto :goto_1a

    .line 474
    :pswitch_19
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 475
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 476
    .restart local v52       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v128

    .line 477
    .local v128, cn:Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    move-object/from16 v0, v128

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 479
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 483
    .end local v52           #token:Landroid/os/IBinder;
    .end local v128           #cn:Landroid/content/ComponentName;
    :pswitch_1a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v155

    .line 485
    .local v155, maxNum:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v62

    .line 486
    .local v62, fl:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v178

    .line 487
    .local v178, receiverBinder:Landroid/os/IBinder;
    if-eqz v178, :cond_21

    invoke-static/range {v178 .. v178}, Landroid/app/IThumbnailReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IThumbnailReceiver;

    move-result-object v177

    .line 490
    .local v177, receiver:Landroid/app/IThumbnailReceiver;
    :goto_1b
    move-object/from16 v0, p0

    move/from16 v1, v155

    move/from16 v2, v62

    move-object/from16 v3, v177

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;

    move-result-object v148

    .line 491
    .local v148, list:Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    if-eqz v148, :cond_22

    invoke-interface/range {v148 .. v148}, Ljava/util/List;->size()I

    move-result v111

    .line 493
    .local v111, N:I
    :goto_1c
    move-object/from16 v0, p3

    move/from16 v1, v111

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 495
    const/16 v139, 0x0

    .local v139, i:I
    :goto_1d
    move/from16 v0, v139

    move/from16 v1, v111

    if-ge v0, v1, :cond_23

    .line 496
    move-object/from16 v0, v148

    move/from16 v1, v139

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v142

    check-cast v142, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 498
    .local v142, info:Landroid/app/ActivityManager$RunningTaskInfo;
    const/4 v5, 0x0

    move-object/from16 v0, v142

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/ActivityManager$RunningTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 495
    add-int/lit8 v139, v139, 0x1

    goto :goto_1d

    .line 487
    .end local v111           #N:I
    .end local v139           #i:I
    .end local v142           #info:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v148           #list:Ljava/util/List;
    .end local v177           #receiver:Landroid/app/IThumbnailReceiver;
    :cond_21
    const/16 v177, 0x0

    goto :goto_1b

    .line 492
    .restart local v148       #list:Ljava/util/List;
    .restart local v177       #receiver:Landroid/app/IThumbnailReceiver;
    :cond_22
    const/16 v111, -0x1

    goto :goto_1c

    .line 500
    .restart local v111       #N:I
    .restart local v139       #i:I
    :cond_23
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 504
    .end local v62           #fl:I
    .end local v111           #N:I
    .end local v139           #i:I
    .end local v148           #list:Ljava/util/List;
    .end local v155           #maxNum:I
    .end local v177           #receiver:Landroid/app/IThumbnailReceiver;
    .end local v178           #receiverBinder:Landroid/os/IBinder;
    :pswitch_1b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 505
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v155

    .line 506
    .restart local v155       #maxNum:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v62

    .line 507
    .restart local v62       #fl:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 508
    .restart local v17       #userId:I
    move-object/from16 v0, p0

    move/from16 v1, v155

    move/from16 v2, v62

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getRecentTasks(III)Ljava/util/List;

    move-result-object v150

    .line 510
    .local v150, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    move-object/from16 v0, p3

    move-object/from16 v1, v150

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 512
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 516
    .end local v17           #userId:I
    .end local v62           #fl:I
    .end local v150           #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v155           #maxNum:I
    :pswitch_1c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 517
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 518
    .local v53, id:I
    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getTaskThumbnails(I)Landroid/app/ActivityManager$TaskThumbnails;

    move-result-object v123

    .line 519
    .local v123, bm:Landroid/app/ActivityManager$TaskThumbnails;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 520
    if-eqz v123, :cond_24

    .line 521
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 522
    const/4 v5, 0x0

    move-object/from16 v0, v123

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/ActivityManager$TaskThumbnails;->writeToParcel(Landroid/os/Parcel;I)V

    .line 526
    :goto_1e
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 524
    :cond_24
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1e

    .line 530
    .end local v53           #id:I
    .end local v123           #bm:Landroid/app/ActivityManager$TaskThumbnails;
    :pswitch_1d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 531
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 532
    .restart local v53       #id:I
    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getTaskTopThumbnail(I)Landroid/graphics/Bitmap;

    move-result-object v123

    .line 533
    .local v123, bm:Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    if-eqz v123, :cond_25

    .line 535
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 536
    const/4 v5, 0x0

    move-object/from16 v0, v123

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 540
    :goto_1f
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 538
    :cond_25
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1f

    .line 544
    .end local v53           #id:I
    .end local v123           #bm:Landroid/graphics/Bitmap;
    :pswitch_1e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 545
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v155

    .line 546
    .restart local v155       #maxNum:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v62

    .line 547
    .restart local v62       #fl:I
    move-object/from16 v0, p0

    move/from16 v1, v155

    move/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getServices(II)Ljava/util/List;

    move-result-object v148

    .line 548
    .restart local v148       #list:Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    if-eqz v148, :cond_26

    invoke-interface/range {v148 .. v148}, Ljava/util/List;->size()I

    move-result v111

    .line 550
    .restart local v111       #N:I
    :goto_20
    move-object/from16 v0, p3

    move/from16 v1, v111

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 552
    const/16 v139, 0x0

    .restart local v139       #i:I
    :goto_21
    move/from16 v0, v139

    move/from16 v1, v111

    if-ge v0, v1, :cond_27

    .line 553
    move-object/from16 v0, v148

    move/from16 v1, v139

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v142

    check-cast v142, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 555
    .local v142, info:Landroid/app/ActivityManager$RunningServiceInfo;
    const/4 v5, 0x0

    move-object/from16 v0, v142

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/ActivityManager$RunningServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 552
    add-int/lit8 v139, v139, 0x1

    goto :goto_21

    .line 549
    .end local v111           #N:I
    .end local v139           #i:I
    .end local v142           #info:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_26
    const/16 v111, -0x1

    goto :goto_20

    .line 557
    .restart local v111       #N:I
    .restart local v139       #i:I
    :cond_27
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 561
    .end local v62           #fl:I
    .end local v111           #N:I
    .end local v139           #i:I
    .end local v148           #list:Ljava/util/List;
    .end local v155           #maxNum:I
    :pswitch_1f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 562
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v149

    .line 563
    .local v149, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    move-object/from16 v0, p3

    move-object/from16 v1, v149

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 565
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 569
    .end local v149           #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    :pswitch_20
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 570
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v151

    .line 571
    .local v151, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 572
    move-object/from16 v0, p3

    move-object/from16 v1, v151

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 573
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 577
    .end local v151           #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :pswitch_21
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 578
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v152

    .line 579
    .local v152, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 580
    move-object/from16 v0, p3

    move-object/from16 v1, v152

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 581
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 585
    .end local v152           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :pswitch_22
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 586
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v195

    .line 587
    .local v195, task:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v62

    .line 588
    .restart local v62       #fl:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_28

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object/from16 v16, v5

    .line 590
    .restart local v16       #options:Landroid/os/Bundle;
    :goto_22
    move-object/from16 v0, p0

    move/from16 v1, v195

    move/from16 v2, v62

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 591
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 592
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 588
    .end local v16           #options:Landroid/os/Bundle;
    :cond_28
    const/16 v16, 0x0

    goto :goto_22

    .line 596
    .end local v62           #fl:I
    .end local v195           #task:I
    :pswitch_23
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 597
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v195

    .line 598
    .restart local v195       #task:I
    move-object/from16 v0, p0

    move/from16 v1, v195

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->moveTaskToBack(I)V

    .line 599
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 604
    .end local v195           #task:I
    :pswitch_24
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 605
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 606
    .restart local v52       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_29

    const/16 v161, 0x1

    .line 607
    .local v161, nonRoot:Z
    :goto_23
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v161

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    move-result v182

    .line 608
    .local v182, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    if-eqz v182, :cond_2a

    const/4 v5, 0x1

    :goto_24
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 610
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 606
    .end local v161           #nonRoot:Z
    .end local v182           #res:Z
    :cond_29
    const/16 v161, 0x0

    goto :goto_23

    .line 609
    .restart local v161       #nonRoot:Z
    .restart local v182       #res:Z
    :cond_2a
    const/4 v5, 0x0

    goto :goto_24

    .line 614
    .end local v52           #token:Landroid/os/IBinder;
    .end local v161           #nonRoot:Z
    .end local v182           #res:Z
    :pswitch_25
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 615
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v195

    .line 616
    .restart local v195       #task:I
    move-object/from16 v0, p0

    move/from16 v1, v195

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->moveTaskBackwards(I)V

    .line 617
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 622
    .end local v195           #task:I
    :pswitch_26
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 623
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 624
    .restart local v52       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2b

    const/16 v163, 0x1

    .line 625
    .local v163, onlyRoot:Z
    :goto_25
    if-eqz v52, :cond_2c

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v163

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v182

    .line 627
    .local v182, res:I
    :goto_26
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 628
    move-object/from16 v0, p3

    move/from16 v1, v182

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 629
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 624
    .end local v163           #onlyRoot:Z
    .end local v182           #res:I
    :cond_2b
    const/16 v163, 0x0

    goto :goto_25

    .line 625
    .restart local v163       #onlyRoot:Z
    :cond_2c
    const/16 v182, -0x1

    goto :goto_26

    .line 633
    .end local v52           #token:Landroid/os/IBinder;
    .end local v163           #onlyRoot:Z
    :pswitch_27
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 634
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 635
    .restart local v52       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2d

    sget-object v5, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    move-object/from16 v197, v5

    .line 637
    .restart local v197       #thumbnail:Landroid/graphics/Bitmap;
    :goto_27
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v131

    check-cast v131, Ljava/lang/CharSequence;

    .line 638
    .restart local v131       #description:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v197

    move-object/from16 v3, v131

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->reportThumbnail(Landroid/os/IBinder;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 639
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 640
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 635
    .end local v131           #description:Ljava/lang/CharSequence;
    .end local v197           #thumbnail:Landroid/graphics/Bitmap;
    :cond_2d
    const/16 v197, 0x0

    goto :goto_27

    .line 644
    .end local v52           #token:Landroid/os/IBinder;
    :pswitch_28
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 645
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 646
    .restart local v120       #b:Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 647
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v84

    .line 648
    .local v84, name:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 649
    .restart local v17       #userId:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2e

    const/16 v188, 0x1

    .line 650
    .local v188, stable:Z
    :goto_28
    move-object/from16 v0, p0

    move-object/from16 v1, v84

    move/from16 v2, v17

    move/from16 v3, v188

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;IZ)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v130

    .line 651
    .local v130, cph:Landroid/app/IActivityManager$ContentProviderHolder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 652
    if-eqz v130, :cond_2f

    .line 653
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 654
    const/4 v5, 0x0

    move-object/from16 v0, v130

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/IActivityManager$ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    .line 658
    :goto_29
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 649
    .end local v130           #cph:Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v188           #stable:Z
    :cond_2e
    const/16 v188, 0x0

    goto :goto_28

    .line 656
    .restart local v130       #cph:Landroid/app/IActivityManager$ContentProviderHolder;
    .restart local v188       #stable:Z
    :cond_2f
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_29

    .line 662
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v17           #userId:I
    .end local v84           #name:Ljava/lang/String;
    .end local v120           #b:Landroid/os/IBinder;
    .end local v130           #cph:Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v188           #stable:Z
    :pswitch_29
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 663
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v84

    .line 664
    .restart local v84       #name:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 665
    .restart local v17       #userId:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 666
    .restart local v52       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v84

    move/from16 v2, v17

    move-object/from16 v3, v52

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v130

    .line 667
    .restart local v130       #cph:Landroid/app/IActivityManager$ContentProviderHolder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 668
    if-eqz v130, :cond_30

    .line 669
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 670
    const/4 v5, 0x0

    move-object/from16 v0, v130

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/IActivityManager$ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    .line 674
    :goto_2a
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 672
    :cond_30
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2a

    .line 678
    .end local v17           #userId:I
    .end local v52           #token:Landroid/os/IBinder;
    .end local v84           #name:Ljava/lang/String;
    .end local v130           #cph:Landroid/app/IActivityManager$ContentProviderHolder;
    :pswitch_2a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 679
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 680
    .restart local v120       #b:Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 681
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/app/IActivityManager$ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v173

    .line 683
    .local v173, providers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v173

    invoke-virtual {v0, v6, v1}, Landroid/app/ActivityManagerNative;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V

    .line 684
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 685
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 689
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v120           #b:Landroid/os/IBinder;
    .end local v173           #providers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    :pswitch_2b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 690
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 691
    .restart local v120       #b:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v188

    .line 692
    .local v188, stable:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v199

    .line 693
    .local v199, unstable:I
    move-object/from16 v0, p0

    move-object/from16 v1, v120

    move/from16 v2, v188

    move/from16 v3, v199

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->refContentProvider(Landroid/os/IBinder;II)Z

    move-result v182

    .line 694
    .local v182, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 695
    if-eqz v182, :cond_31

    const/4 v5, 0x1

    :goto_2b
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 696
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 695
    :cond_31
    const/4 v5, 0x0

    goto :goto_2b

    .line 700
    .end local v120           #b:Landroid/os/IBinder;
    .end local v182           #res:Z
    .end local v188           #stable:I
    .end local v199           #unstable:I
    :pswitch_2c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 701
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 702
    .restart local v120       #b:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v120

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unstableProviderDied(Landroid/os/IBinder;)V

    .line 703
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 704
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 708
    .end local v120           #b:Landroid/os/IBinder;
    :pswitch_2d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 709
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 710
    .restart local v120       #b:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_32

    const/16 v188, 0x1

    .line 711
    .local v188, stable:Z
    :goto_2c
    move-object/from16 v0, p0

    move-object/from16 v1, v120

    move/from16 v2, v188

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeContentProvider(Landroid/os/IBinder;Z)V

    .line 712
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 710
    .end local v188           #stable:Z
    :cond_32
    const/16 v188, 0x0

    goto :goto_2c

    .line 717
    .end local v120           #b:Landroid/os/IBinder;
    :pswitch_2e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 718
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v84

    .line 719
    .restart local v84       #name:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 720
    .restart local v52       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v84

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 721
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 722
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 726
    .end local v52           #token:Landroid/os/IBinder;
    .end local v84           #name:Ljava/lang/String;
    :pswitch_2f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 727
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v129

    check-cast v129, Landroid/content/ComponentName;

    .line 728
    .local v129, comp:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    move-object/from16 v1, v129

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v167

    .line 729
    .local v167, pi:Landroid/app/PendingIntent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 730
    move-object/from16 v0, v167

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/app/PendingIntent;->writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V

    .line 731
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 735
    .end local v129           #comp:Landroid/content/ComponentName;
    .end local v167           #pi:Landroid/app/PendingIntent;
    :pswitch_30
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 736
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 737
    .restart local v120       #b:Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 738
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Landroid/content/Intent;

    .line 739
    .local v59, service:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 740
    .restart local v9       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 741
    .restart local v17       #userId:I
    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move/from16 v2, v17

    invoke-virtual {v0, v6, v1, v9, v2}, Landroid/app/ActivityManagerNative;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v128

    .line 742
    .restart local v128       #cn:Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 743
    move-object/from16 v0, v128

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 744
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 748
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v9           #resolvedType:Ljava/lang/String;
    .end local v17           #userId:I
    .end local v59           #service:Landroid/content/Intent;
    .end local v120           #b:Landroid/os/IBinder;
    .end local v128           #cn:Landroid/content/ComponentName;
    :pswitch_31
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 749
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 750
    .restart local v120       #b:Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 751
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Landroid/content/Intent;

    .line 752
    .restart local v59       #service:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 753
    .restart local v9       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 754
    .restart local v17       #userId:I
    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move/from16 v2, v17

    invoke-virtual {v0, v6, v1, v9, v2}, Landroid/app/ActivityManagerNative;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v182

    .line 755
    .local v182, res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 756
    move-object/from16 v0, p3

    move/from16 v1, v182

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 757
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 761
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v9           #resolvedType:Ljava/lang/String;
    .end local v17           #userId:I
    .end local v59           #service:Landroid/content/Intent;
    .end local v120           #b:Landroid/os/IBinder;
    .end local v182           #res:I
    :pswitch_32
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 762
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v51

    .line 763
    .local v51, className:Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 764
    .restart local v52       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v189

    .line 765
    .local v189, startId:I
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    move/from16 v3, v189

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z

    move-result v182

    .line 766
    .local v182, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 767
    if-eqz v182, :cond_33

    const/4 v5, 0x1

    :goto_2d
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 768
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 767
    :cond_33
    const/4 v5, 0x0

    goto :goto_2d

    .line 772
    .end local v51           #className:Landroid/content/ComponentName;
    .end local v52           #token:Landroid/os/IBinder;
    .end local v182           #res:Z
    .end local v189           #startId:I
    :pswitch_33
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 773
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v51

    .line 774
    .restart local v51       #className:Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 775
    .restart local v52       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 776
    .restart local v53       #id:I
    const/16 v54, 0x0

    .line 777
    .local v54, notification:Landroid/app/Notification;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_34

    .line 778
    sget-object v5, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v54

    .end local v54           #notification:Landroid/app/Notification;
    check-cast v54, Landroid/app/Notification;

    .line 780
    .restart local v54       #notification:Landroid/app/Notification;
    :cond_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_35

    const/16 v55, 0x1

    .local v55, removeNotification:Z
    :goto_2e
    move-object/from16 v50, p0

    .line 781
    invoke-virtual/range {v50 .. v55}, Landroid/app/ActivityManagerNative;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;Z)V

    .line 782
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 783
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 780
    .end local v55           #removeNotification:Z
    :cond_35
    const/16 v55, 0x0

    goto :goto_2e

    .line 787
    .end local v51           #className:Landroid/content/ComponentName;
    .end local v52           #token:Landroid/os/IBinder;
    .end local v53           #id:I
    .end local v54           #notification:Landroid/app/Notification;
    :pswitch_34
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 788
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 789
    .restart local v120       #b:Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 790
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 791
    .restart local v52       #token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Landroid/content/Intent;

    .line 792
    .restart local v59       #service:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 793
    .restart local v9       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 794
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v62

    .line 795
    .restart local v62       #fl:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 796
    .restart local v17       #userId:I
    invoke-static/range {v120 .. v120}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v61

    .local v61, conn:Landroid/app/IServiceConnection;
    move-object/from16 v56, p0

    move-object/from16 v57, v6

    move-object/from16 v58, v52

    move-object/from16 v60, v9

    move/from16 v63, v17

    .line 797
    invoke-virtual/range {v56 .. v63}, Landroid/app/ActivityManagerNative;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;II)I

    move-result v182

    .line 798
    .local v182, res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 799
    move-object/from16 v0, p3

    move/from16 v1, v182

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 800
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 804
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v9           #resolvedType:Ljava/lang/String;
    .end local v17           #userId:I
    .end local v52           #token:Landroid/os/IBinder;
    .end local v59           #service:Landroid/content/Intent;
    .end local v61           #conn:Landroid/app/IServiceConnection;
    .end local v62           #fl:I
    .end local v120           #b:Landroid/os/IBinder;
    .end local v182           #res:I
    :pswitch_35
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 805
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 806
    .restart local v120       #b:Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v61

    .line 807
    .restart local v61       #conn:Landroid/app/IServiceConnection;
    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindService(Landroid/app/IServiceConnection;)Z

    move-result v182

    .line 808
    .local v182, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 809
    if-eqz v182, :cond_36

    const/4 v5, 0x1

    :goto_2f
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 810
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 809
    :cond_36
    const/4 v5, 0x0

    goto :goto_2f

    .line 814
    .end local v61           #conn:Landroid/app/IServiceConnection;
    .end local v120           #b:Landroid/os/IBinder;
    .end local v182           #res:Z
    :pswitch_36
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 815
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 816
    .restart local v52       #token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 817
    .restart local v8       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v59

    .line 818
    .local v59, service:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v59

    invoke-virtual {v0, v1, v8, v2}, Landroid/app/ActivityManagerNative;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 819
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 820
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 824
    .end local v8           #intent:Landroid/content/Intent;
    .end local v52           #token:Landroid/os/IBinder;
    .end local v59           #service:Landroid/os/IBinder;
    :pswitch_37
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 825
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 826
    .restart local v52       #token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 827
    .restart local v8       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_37

    const/16 v133, 0x1

    .line 828
    .local v133, doRebind:Z
    :goto_30
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v133

    invoke-virtual {v0, v1, v8, v2}, Landroid/app/ActivityManagerNative;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    .line 829
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 830
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 827
    .end local v133           #doRebind:Z
    :cond_37
    const/16 v133, 0x0

    goto :goto_30

    .line 834
    .end local v8           #intent:Landroid/content/Intent;
    .end local v52           #token:Landroid/os/IBinder;
    :pswitch_38
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 835
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 836
    .restart local v52       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v71

    .line 837
    .local v71, type:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v189

    .line 838
    .restart local v189       #startId:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v182

    .line 839
    .local v182, res:I
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v71

    move/from16 v3, v189

    move/from16 v4, v182

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->serviceDoneExecuting(Landroid/os/IBinder;III)V

    .line 840
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 841
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 845
    .end local v52           #token:Landroid/os/IBinder;
    .end local v71           #type:I
    .end local v182           #res:I
    .end local v189           #startId:I
    :pswitch_39
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 846
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v51

    .line 847
    .restart local v51       #className:Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 848
    .restart local v14       #profileFile:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v62

    .line 849
    .restart local v62       #fl:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v67

    .line 850
    .local v67, arguments:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 851
    .restart local v120       #b:Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v68

    .line 852
    .local v68, w:Landroid/app/IInstrumentationWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 853
    invoke-static/range {v120 .. v120}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v69

    .line 854
    .local v69, c:Landroid/app/IUiAutomationConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17       #userId:I
    move-object/from16 v63, p0

    move-object/from16 v64, v51

    move-object/from16 v65, v14

    move/from16 v66, v62

    move/from16 v70, v17

    .line 855
    invoke-virtual/range {v63 .. v70}, Landroid/app/ActivityManagerNative;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;I)Z

    move-result v182

    .line 856
    .local v182, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 857
    if-eqz v182, :cond_38

    const/4 v5, 0x1

    :goto_31
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 858
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 857
    :cond_38
    const/4 v5, 0x0

    goto :goto_31

    .line 863
    .end local v14           #profileFile:Ljava/lang/String;
    .end local v17           #userId:I
    .end local v51           #className:Landroid/content/ComponentName;
    .end local v62           #fl:I
    .end local v67           #arguments:Landroid/os/Bundle;
    .end local v68           #w:Landroid/app/IInstrumentationWatcher;
    .end local v69           #c:Landroid/app/IUiAutomationConnection;
    .end local v120           #b:Landroid/os/IBinder;
    .end local v182           #res:Z
    :pswitch_3a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 864
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 865
    .restart local v120       #b:Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 866
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 867
    .restart local v43       #resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v185

    .line 868
    .local v185, results:Landroid/os/Bundle;
    move-object/from16 v0, p0

    move/from16 v1, v43

    move-object/from16 v2, v185

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/ActivityManagerNative;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V

    .line 869
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 870
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 874
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v43           #resultCode:I
    .end local v120           #b:Landroid/os/IBinder;
    .end local v185           #results:Landroid/os/Bundle;
    :pswitch_3b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 875
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v27

    .line 876
    .restart local v27       #config:Landroid/content/res/Configuration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 877
    const/4 v5, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 878
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 882
    .end local v27           #config:Landroid/content/res/Configuration;
    :pswitch_3c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 883
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/res/Configuration;

    .line 884
    .restart local v27       #config:Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 885
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 886
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 890
    .end local v27           #config:Landroid/content/res/Configuration;
    :pswitch_3d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 891
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 892
    .restart local v52       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v181

    .line 893
    .local v181, requestedOrientation:I
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v181

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setRequestedOrientation(Landroid/os/IBinder;I)V

    .line 894
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 895
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 899
    .end local v52           #token:Landroid/os/IBinder;
    .end local v181           #requestedOrientation:I
    :pswitch_3e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 900
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 901
    .restart local v52       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getRequestedOrientation(Landroid/os/IBinder;)I

    move-result v179

    .line 902
    .local v179, req:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 903
    move-object/from16 v0, p3

    move/from16 v1, v179

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 904
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 908
    .end local v52           #token:Landroid/os/IBinder;
    .end local v179           #req:I
    :pswitch_3f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 909
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 910
    .restart local v52       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityClassForToken(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v128

    .line 911
    .restart local v128       #cn:Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 912
    move-object/from16 v0, v128

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 913
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 917
    .end local v52           #token:Landroid/os/IBinder;
    .end local v128           #cn:Landroid/content/ComponentName;
    :pswitch_40
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 918
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 919
    .restart local v52       #token:Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 920
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForToken(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 921
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 925
    .end local v52           #token:Landroid/os/IBinder;
    :pswitch_41
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 926
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v71

    .line 927
    .restart local v71       #type:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 928
    .restart local v20       #packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 929
    .restart local v52       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 930
    .restart local v11       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 933
    .restart local v12       #requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_39

    .line 934
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v76

    check-cast v76, [Landroid/content/Intent;

    .line 935
    .local v76, requestIntents:[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v77

    .line 940
    .local v77, requestResolvedTypes:[Ljava/lang/String;
    :goto_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v62

    .line 941
    .restart local v62       #fl:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3a

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object/from16 v16, v5

    .line 943
    .restart local v16       #options:Landroid/os/Bundle;
    :goto_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17       #userId:I
    move-object/from16 v70, p0

    move-object/from16 v72, v20

    move-object/from16 v73, v52

    move-object/from16 v74, v11

    move/from16 v75, v12

    move/from16 v78, v62

    move-object/from16 v79, v16

    move/from16 v80, v17

    .line 944
    invoke-virtual/range {v70 .. v80}, Landroid/app/ActivityManagerNative;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v182

    .line 947
    .local v182, res:Landroid/content/IIntentSender;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 948
    if-eqz v182, :cond_3b

    invoke-interface/range {v182 .. v182}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :goto_34
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 949
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 937
    .end local v16           #options:Landroid/os/Bundle;
    .end local v17           #userId:I
    .end local v62           #fl:I
    .end local v76           #requestIntents:[Landroid/content/Intent;
    .end local v77           #requestResolvedTypes:[Ljava/lang/String;
    .end local v182           #res:Landroid/content/IIntentSender;
    :cond_39
    const/16 v76, 0x0

    .line 938
    .restart local v76       #requestIntents:[Landroid/content/Intent;
    const/16 v77, 0x0

    .restart local v77       #requestResolvedTypes:[Ljava/lang/String;
    goto :goto_32

    .line 941
    .restart local v62       #fl:I
    :cond_3a
    const/16 v16, 0x0

    goto :goto_33

    .line 948
    .restart local v16       #options:Landroid/os/Bundle;
    .restart local v17       #userId:I
    .restart local v182       #res:Landroid/content/IIntentSender;
    :cond_3b
    const/4 v5, 0x0

    goto :goto_34

    .line 953
    .end local v11           #resultWho:Ljava/lang/String;
    .end local v12           #requestCode:I
    .end local v16           #options:Landroid/os/Bundle;
    .end local v17           #userId:I
    .end local v20           #packageName:Ljava/lang/String;
    .end local v52           #token:Landroid/os/IBinder;
    .end local v62           #fl:I
    .end local v71           #type:I
    .end local v76           #requestIntents:[Landroid/content/Intent;
    .end local v77           #requestResolvedTypes:[Ljava/lang/String;
    .end local v182           #res:Landroid/content/IIntentSender;
    :pswitch_42
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 954
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v175

    .line 956
    .local v175, r:Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v175

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->cancelIntentSender(Landroid/content/IIntentSender;)V

    .line 957
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 958
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 962
    .end local v175           #r:Landroid/content/IIntentSender;
    :pswitch_43
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 963
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v175

    .line 965
    .restart local v175       #r:Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v175

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;

    move-result-object v182

    .line 966
    .local v182, res:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 967
    move-object/from16 v0, p3

    move-object/from16 v1, v182

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 968
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 972
    .end local v175           #r:Landroid/content/IIntentSender;
    .end local v182           #res:Ljava/lang/String;
    :pswitch_44
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 973
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v175

    .line 975
    .restart local v175       #r:Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v175

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getUidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v182

    .line 976
    .local v182, res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 977
    move-object/from16 v0, p3

    move/from16 v1, v182

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 978
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 982
    .end local v175           #r:Landroid/content/IIntentSender;
    .end local v182           #res:I
    :pswitch_45
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 983
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v79

    .line 984
    .local v79, callingPid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v80

    .line 985
    .local v80, callingUid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 986
    .restart local v17       #userId:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3c

    const/16 v82, 0x1

    .line 987
    .local v82, allowAll:Z
    :goto_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3d

    const/16 v83, 0x1

    .line 988
    .local v83, requireFull:Z
    :goto_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v84

    .line 989
    .restart local v84       #name:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v85

    .local v85, callerPackage:Ljava/lang/String;
    move-object/from16 v78, p0

    move/from16 v81, v17

    .line 990
    invoke-virtual/range {v78 .. v85}, Landroid/app/ActivityManagerNative;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v182

    .line 992
    .restart local v182       #res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 993
    move-object/from16 v0, p3

    move/from16 v1, v182

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 994
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 986
    .end local v82           #allowAll:Z
    .end local v83           #requireFull:Z
    .end local v84           #name:Ljava/lang/String;
    .end local v85           #callerPackage:Ljava/lang/String;
    .end local v182           #res:I
    :cond_3c
    const/16 v82, 0x0

    goto :goto_35

    .line 987
    .restart local v82       #allowAll:Z
    :cond_3d
    const/16 v83, 0x0

    goto :goto_36

    .line 998
    .end local v17           #userId:I
    .end local v79           #callingPid:I
    .end local v80           #callingUid:I
    .end local v82           #allowAll:Z
    :pswitch_46
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 999
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v154

    .line 1000
    .local v154, max:I
    move-object/from16 v0, p0

    move/from16 v1, v154

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setProcessLimit(I)V

    .line 1001
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1002
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1006
    .end local v154           #max:I
    :pswitch_47
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1007
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessLimit()I

    move-result v147

    .line 1008
    .local v147, limit:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1009
    move-object/from16 v0, p3

    move/from16 v1, v147

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1010
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1014
    .end local v147           #limit:I
    :pswitch_48
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1015
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 1016
    .restart local v52       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v168

    .line 1017
    .local v168, pid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3e

    const/16 v145, 0x1

    .line 1018
    .local v145, isForeground:Z
    :goto_37
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v168

    move/from16 v3, v145

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setProcessForeground(Landroid/os/IBinder;IZ)V

    .line 1019
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1020
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1017
    .end local v145           #isForeground:Z
    :cond_3e
    const/16 v145, 0x0

    goto :goto_37

    .line 1024
    .end local v52           #token:Landroid/os/IBinder;
    .end local v168           #pid:I
    :pswitch_49
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1025
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 1026
    .restart local v23       #perm:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v168

    .line 1027
    .restart local v168       #pid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v198

    .line 1028
    .local v198, uid:I
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v168

    move/from16 v3, v198

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->checkPermission(Ljava/lang/String;II)I

    move-result v182

    .line 1029
    .restart local v182       #res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1030
    move-object/from16 v0, p3

    move/from16 v1, v182

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1031
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1035
    .end local v23           #perm:Ljava/lang/String;
    .end local v168           #pid:I
    .end local v182           #res:I
    .end local v198           #uid:I
    :pswitch_4a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1036
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1037
    .local v97, uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v168

    .line 1038
    .restart local v168       #pid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v198

    .line 1039
    .restart local v198       #uid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 1040
    .local v98, mode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v97

    move/from16 v2, v168

    move/from16 v3, v198

    move/from16 v4, v98

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v182

    .line 1041
    .restart local v182       #res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1042
    move-object/from16 v0, p3

    move/from16 v1, v182

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1043
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1047
    .end local v97           #uri:Landroid/net/Uri;
    .end local v98           #mode:I
    .end local v168           #pid:I
    .end local v182           #res:I
    .end local v198           #uid:I
    :pswitch_4b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1048
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1049
    .restart local v20       #packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v162

    .line 1051
    .local v162, observer:Landroid/content/pm/IPackageDataObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1052
    .restart local v17       #userId:I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v162

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z

    move-result v182

    .line 1053
    .local v182, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1054
    if-eqz v182, :cond_3f

    const/4 v5, 0x1

    :goto_38
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1055
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1054
    :cond_3f
    const/4 v5, 0x0

    goto :goto_38

    .line 1059
    .end local v17           #userId:I
    .end local v20           #packageName:Ljava/lang/String;
    .end local v162           #observer:Landroid/content/pm/IPackageDataObserver;
    .end local v182           #res:Z
    :pswitch_4c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1060
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 1061
    .restart local v120       #b:Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 1062
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v96

    .line 1063
    .local v96, targetPkg:Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1064
    .restart local v97       #uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 1065
    .restart local v98       #mode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    move-object/from16 v2, v97

    move/from16 v3, v98

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/app/ActivityManagerNative;->grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;I)V

    .line 1066
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1067
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1071
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v96           #targetPkg:Ljava/lang/String;
    .end local v97           #uri:Landroid/net/Uri;
    .end local v98           #mode:I
    .end local v120           #b:Landroid/os/IBinder;
    :pswitch_4d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1072
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 1073
    .restart local v120       #b:Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 1074
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1075
    .restart local v97       #uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 1076
    .restart local v98       #mode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v97

    move/from16 v2, v98

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/ActivityManagerNative;->revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;I)V

    .line 1077
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1078
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1082
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v97           #uri:Landroid/net/Uri;
    .end local v98           #mode:I
    .end local v120           #b:Landroid/os/IBinder;
    :pswitch_4e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1083
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 1084
    .restart local v120       #b:Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 1085
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_40

    const/16 v203, 0x1

    .line 1086
    .local v203, waiting:Z
    :goto_39
    move-object/from16 v0, p0

    move/from16 v1, v203

    invoke-virtual {v0, v6, v1}, Landroid/app/ActivityManagerNative;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V

    .line 1087
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1088
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1085
    .end local v203           #waiting:Z
    :cond_40
    const/16 v203, 0x0

    goto :goto_39

    .line 1092
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v120           #b:Landroid/os/IBinder;
    :pswitch_4f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1093
    new-instance v157, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct/range {v157 .. v157}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 1094
    .local v157, mi:Landroid/app/ActivityManager$MemoryInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v157

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 1095
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1096
    const/4 v5, 0x0

    move-object/from16 v0, v157

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/ActivityManager$MemoryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1097
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1101
    .end local v157           #mi:Landroid/app/ActivityManager$MemoryInfo;
    :pswitch_50
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1102
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->unhandledBack()V

    .line 1103
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1104
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1108
    :pswitch_51
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v97

    .line 1110
    .restart local v97       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->openContentUri(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v166

    .line 1111
    .local v166, pfd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1112
    if-eqz v166, :cond_41

    .line 1113
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1114
    const/4 v5, 0x1

    move-object/from16 v0, v166

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1118
    :goto_3a
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1116
    :cond_41
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3a

    .line 1122
    .end local v97           #uri:Landroid/net/Uri;
    .end local v166           #pfd:Landroid/os/ParcelFileDescriptor;
    :pswitch_52
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1123
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->goingToSleep()V

    .line 1124
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1125
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1129
    :pswitch_53
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1130
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->wakingUp()V

    .line 1131
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1132
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1136
    :pswitch_54
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_42

    const/4 v5, 0x1

    :goto_3b
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/ActivityManagerNative;->setLockScreenShown(Z)V

    .line 1138
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1139
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1137
    :cond_42
    const/4 v5, 0x0

    goto :goto_3b

    .line 1143
    :pswitch_55
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v171

    .line 1145
    .local v171, pn:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_43

    const/16 v205, 0x1

    .line 1146
    .local v205, wfd:Z
    :goto_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_44

    const/16 v165, 0x1

    .line 1147
    .local v165, per:Z
    :goto_3d
    move-object/from16 v0, p0

    move-object/from16 v1, v171

    move/from16 v2, v205

    move/from16 v3, v165

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 1148
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1149
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1145
    .end local v165           #per:Z
    .end local v205           #wfd:Z
    :cond_43
    const/16 v205, 0x0

    goto :goto_3c

    .line 1146
    .restart local v205       #wfd:Z
    :cond_44
    const/16 v165, 0x0

    goto :goto_3d

    .line 1153
    .end local v171           #pn:Ljava/lang/String;
    .end local v205           #wfd:Z
    :pswitch_56
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_45

    const/16 v134, 0x1

    .line 1155
    .local v134, enabled:Z
    :goto_3e
    move-object/from16 v0, p0

    move/from16 v1, v134

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setAlwaysFinish(Z)V

    .line 1156
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1157
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1154
    .end local v134           #enabled:Z
    :cond_45
    const/16 v134, 0x0

    goto :goto_3e

    .line 1161
    :pswitch_57
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IActivityController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;

    move-result-object v204

    .line 1164
    .local v204, watcher:Landroid/app/IActivityController;
    move-object/from16 v0, p0

    move-object/from16 v1, v204

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setActivityController(Landroid/app/IActivityController;)V

    .line 1165
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1166
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1170
    .end local v204           #watcher:Landroid/app/IActivityController;
    :pswitch_58
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1171
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->enterSafeMode()V

    .line 1172
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1173
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1177
    :pswitch_59
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v144

    .line 1180
    .local v144, is:Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v144

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/content/IIntentSender;)V

    .line 1181
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1182
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1186
    .end local v144           #is:Landroid/content/IIntentSender;
    :pswitch_5a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v169

    .line 1188
    .local v169, pids:[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v176

    .line 1189
    .local v176, reason:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_46

    const/16 v186, 0x1

    .line 1190
    .local v186, secure:Z
    :goto_3f
    move-object/from16 v0, p0

    move-object/from16 v1, v169

    move-object/from16 v2, v176

    move/from16 v3, v186

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->killPids([ILjava/lang/String;Z)Z

    move-result v182

    .line 1191
    .restart local v182       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1192
    if-eqz v182, :cond_47

    const/4 v5, 0x1

    :goto_40
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1193
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1189
    .end local v182           #res:Z
    .end local v186           #secure:Z
    :cond_46
    const/16 v186, 0x0

    goto :goto_3f

    .line 1192
    .restart local v182       #res:Z
    .restart local v186       #secure:Z
    :cond_47
    const/4 v5, 0x0

    goto :goto_40

    .line 1197
    .end local v169           #pids:[I
    .end local v176           #reason:Ljava/lang/String;
    .end local v182           #res:Z
    .end local v186           #secure:Z
    :pswitch_5b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v176

    .line 1199
    .restart local v176       #reason:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v176

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->killProcessesBelowForeground(Ljava/lang/String;)Z

    move-result v182

    .line 1200
    .restart local v182       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1201
    if-eqz v182, :cond_48

    const/4 v5, 0x1

    :goto_41
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1202
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1201
    :cond_48
    const/4 v5, 0x0

    goto :goto_41

    .line 1206
    .end local v176           #reason:Ljava/lang/String;
    .end local v182           #res:Z
    :pswitch_5c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v170

    .line 1208
    .local v170, pkg:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v127

    .line 1209
    .local v127, cls:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v113

    .line 1210
    .local v113, action:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v141

    .line 1211
    .local v141, indata:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v170

    move-object/from16 v2, v127

    move-object/from16 v3, v113

    move-object/from16 v4, v141

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->startRunning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1213
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1217
    .end local v113           #action:Ljava/lang/String;
    .end local v127           #cls:Ljava/lang/String;
    .end local v141           #indata:Ljava/lang/String;
    .end local v170           #pkg:Ljava/lang/String;
    :pswitch_5d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1218
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1219
    .local v6, app:Landroid/os/IBinder;
    new-instance v126, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v126

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    .line 1220
    .local v126, ci:Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v126

    invoke-virtual {v0, v6, v1}, Landroid/app/ActivityManagerNative;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 1221
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1222
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1226
    .end local v6           #app:Landroid/os/IBinder;
    .end local v126           #ci:Landroid/app/ApplicationErrorReport$CrashInfo;
    :pswitch_5e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1228
    .restart local v6       #app:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v193

    .line 1229
    .local v193, tag:Ljava/lang/String;
    new-instance v126, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v126

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    .line 1230
    .restart local v126       #ci:Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v193

    move-object/from16 v2, v126

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/ActivityManagerNative;->handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)Z

    move-result v182

    .line 1231
    .restart local v182       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1232
    if-eqz v182, :cond_49

    const/4 v5, 0x1

    :goto_42
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1233
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1232
    :cond_49
    const/4 v5, 0x0

    goto :goto_42

    .line 1237
    .end local v6           #app:Landroid/os/IBinder;
    .end local v126           #ci:Landroid/app/ApplicationErrorReport$CrashInfo;
    .end local v182           #res:Z
    .end local v193           #tag:Ljava/lang/String;
    :pswitch_5f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1238
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1239
    .restart local v6       #app:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v202

    .line 1240
    .local v202, violationMask:I
    new-instance v142, Landroid/os/StrictMode$ViolationInfo;

    move-object/from16 v0, v142

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/Parcel;)V

    .line 1241
    .local v142, info:Landroid/os/StrictMode$ViolationInfo;
    move-object/from16 v0, p0

    move/from16 v1, v202

    move-object/from16 v2, v142

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/ActivityManagerNative;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V

    .line 1242
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1243
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1247
    .end local v6           #app:Landroid/os/IBinder;
    .end local v142           #info:Landroid/os/StrictMode$ViolationInfo;
    .end local v202           #violationMask:I
    :pswitch_60
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v187

    .line 1249
    .local v187, sig:I
    move-object/from16 v0, p0

    move/from16 v1, v187

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->signalPersistentProcesses(I)V

    .line 1250
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1251
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1255
    .end local v187           #sig:I
    :pswitch_61
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1257
    .restart local v20       #packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1258
    .restart local v17       #userId:I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killBackgroundProcesses(Ljava/lang/String;I)V

    .line 1259
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1260
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1264
    .end local v17           #userId:I
    .end local v20           #packageName:Ljava/lang/String;
    :pswitch_62
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1265
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->killAllBackgroundProcesses()V

    .line 1266
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1267
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1271
    :pswitch_63
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1272
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1273
    .restart local v20       #packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1274
    .restart local v17       #userId:I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->forceStopPackage(Ljava/lang/String;I)V

    .line 1275
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1276
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1280
    .end local v17           #userId:I
    .end local v20           #packageName:Ljava/lang/String;
    :pswitch_64
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1281
    new-instance v142, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct/range {v142 .. v142}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 1283
    .local v142, info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v142

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 1284
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1285
    const/4 v5, 0x0

    move-object/from16 v0, v142

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/ActivityManager$RunningAppProcessInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1286
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1290
    .end local v142           #info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :pswitch_65
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1291
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v27

    .line 1292
    .local v27, config:Landroid/content/pm/ConfigurationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1293
    const/4 v5, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/ConfigurationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1294
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1298
    .end local v27           #config:Landroid/content/pm/ConfigurationInfo;
    :pswitch_66
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v87

    .line 1300
    .local v87, process:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1301
    .restart local v17       #userId:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4a

    const/16 v89, 0x1

    .line 1302
    .local v89, start:Z
    :goto_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v92

    .line 1303
    .local v92, profileType:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v90

    .line 1304
    .local v90, path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4b

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v91

    .local v91, fd:Landroid/os/ParcelFileDescriptor;
    :goto_44
    move-object/from16 v86, p0

    move/from16 v88, v17

    .line 1306
    invoke-virtual/range {v86 .. v92}, Landroid/app/ActivityManagerNative;->profileControl(Ljava/lang/String;IZLjava/lang/String;Landroid/os/ParcelFileDescriptor;I)Z

    move-result v182

    .line 1307
    .restart local v182       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1308
    if-eqz v182, :cond_4c

    const/4 v5, 0x1

    :goto_45
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1309
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1301
    .end local v89           #start:Z
    .end local v90           #path:Ljava/lang/String;
    .end local v91           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v92           #profileType:I
    .end local v182           #res:Z
    :cond_4a
    const/16 v89, 0x0

    goto :goto_43

    .line 1304
    .restart local v89       #start:Z
    .restart local v90       #path:Ljava/lang/String;
    .restart local v92       #profileType:I
    :cond_4b
    const/16 v91, 0x0

    goto :goto_44

    .line 1308
    .restart local v91       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v182       #res:Z
    :cond_4c
    const/4 v5, 0x0

    goto :goto_45

    .line 1313
    .end local v17           #userId:I
    .end local v87           #process:Ljava/lang/String;
    .end local v89           #start:Z
    .end local v90           #path:Ljava/lang/String;
    .end local v91           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v92           #profileType:I
    .end local v182           #res:Z
    :pswitch_67
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1314
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/ActivityManagerNative;->shutdown(I)Z

    move-result v182

    .line 1315
    .restart local v182       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1316
    if-eqz v182, :cond_4d

    const/4 v5, 0x1

    :goto_46
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1317
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1316
    :cond_4d
    const/4 v5, 0x0

    goto :goto_46

    .line 1321
    .end local v182           #res:Z
    :pswitch_68
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1322
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopAppSwitches()V

    .line 1323
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1324
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1328
    :pswitch_69
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1329
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->resumeAppSwitches()V

    .line 1330
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1331
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1335
    :pswitch_6a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1336
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Landroid/content/Intent;

    .line 1337
    .local v59, service:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1338
    .restart local v9       #resolvedType:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v1, v9}, Landroid/app/ActivityManagerNative;->peekService(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v122

    .line 1339
    .local v122, binder:Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1340
    move-object/from16 v0, p3

    move-object/from16 v1, v122

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1341
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1345
    .end local v9           #resolvedType:Ljava/lang/String;
    .end local v59           #service:Landroid/content/Intent;
    .end local v122           #binder:Landroid/os/IBinder;
    :pswitch_6b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1346
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v142

    check-cast v142, Landroid/content/pm/ApplicationInfo;

    .line 1347
    .local v142, info:Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v121

    .line 1348
    .local v121, backupRestoreMode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v142

    move/from16 v2, v121

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->bindBackupAgent(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v192

    .line 1349
    .local v192, success:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1350
    if-eqz v192, :cond_4e

    const/4 v5, 0x1

    :goto_47
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1351
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1350
    :cond_4e
    const/4 v5, 0x0

    goto :goto_47

    .line 1355
    .end local v121           #backupRestoreMode:I
    .end local v142           #info:Landroid/content/pm/ApplicationInfo;
    .end local v192           #success:Z
    :pswitch_6c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1356
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1357
    .restart local v20       #packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v114

    .line 1358
    .local v114, agent:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v114

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1359
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1360
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1364
    .end local v20           #packageName:Ljava/lang/String;
    .end local v114           #agent:Landroid/os/IBinder;
    :pswitch_6d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1365
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v142

    check-cast v142, Landroid/content/pm/ApplicationInfo;

    .line 1366
    .restart local v142       #info:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v142

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 1367
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1368
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1372
    .end local v142           #info:Landroid/content/pm/ApplicationInfo;
    :pswitch_6e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1373
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v170

    .line 1374
    .restart local v170       #pkg:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v117

    .line 1375
    .local v117, appid:I
    move-object/from16 v0, p0

    move-object/from16 v1, v170

    move/from16 v2, v117

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killApplicationWithAppId(Ljava/lang/String;I)V

    .line 1376
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1377
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1381
    .end local v117           #appid:I
    .end local v170           #pkg:Ljava/lang/String;
    :pswitch_6f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1382
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v176

    .line 1383
    .restart local v176       #reason:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v176

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->closeSystemDialogs(Ljava/lang/String;)V

    .line 1384
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1385
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1389
    .end local v176           #reason:Ljava/lang/String;
    :pswitch_70
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1390
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v169

    .line 1391
    .restart local v169       #pids:[I
    move-object/from16 v0, p0

    move-object/from16 v1, v169

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v182

    .line 1392
    .local v182, res:[Landroid/os/Debug$MemoryInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1393
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v182

    invoke-virtual {v0, v1, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1394
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1398
    .end local v169           #pids:[I
    .end local v182           #res:[Landroid/os/Debug$MemoryInfo;
    :pswitch_71
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1399
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v172

    .line 1400
    .local v172, processName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v198

    .line 1401
    .restart local v198       #uid:I
    move-object/from16 v0, p0

    move-object/from16 v1, v172

    move/from16 v2, v198

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killApplicationProcess(Ljava/lang/String;I)V

    .line 1402
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1403
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1407
    .end local v172           #processName:Ljava/lang/String;
    .end local v198           #uid:I
    :pswitch_72
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1408
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 1409
    .restart local v52       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1410
    .restart local v20       #packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v135

    .line 1411
    .local v135, enterAnim:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v136

    .line 1412
    .local v136, exitAnim:I
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v20

    move/from16 v3, v135

    move/from16 v4, v136

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V

    .line 1413
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1414
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1418
    .end local v20           #packageName:Ljava/lang/String;
    .end local v52           #token:Landroid/os/IBinder;
    .end local v135           #enterAnim:I
    .end local v136           #exitAnim:I
    :pswitch_73
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1419
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isUserAMonkey()Z

    move-result v118

    .line 1420
    .local v118, areThey:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1421
    if-eqz v118, :cond_4f

    const/4 v5, 0x1

    :goto_48
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1422
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1421
    :cond_4f
    const/4 v5, 0x0

    goto :goto_48

    .line 1426
    .end local v118           #areThey:Z
    :pswitch_74
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1427
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_50

    const/16 v159, 0x1

    .line 1428
    .local v159, monkey:Z
    :goto_49
    move-object/from16 v0, p0

    move/from16 v1, v159

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setUserIsMonkey(Z)V

    .line 1429
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1430
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1427
    .end local v159           #monkey:Z
    :cond_50
    const/16 v159, 0x0

    goto :goto_49

    .line 1434
    :pswitch_75
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1435
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->finishHeavyWeightApp()V

    .line 1436
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1437
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1441
    :pswitch_76
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1442
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 1443
    .restart local v52       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isImmersive(Landroid/os/IBinder;)Z

    move-result v146

    .line 1444
    .local v146, isit:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1445
    if-eqz v146, :cond_51

    const/4 v5, 0x1

    :goto_4a
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1446
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1445
    :cond_51
    const/4 v5, 0x0

    goto :goto_4a

    .line 1450
    .end local v52           #token:Landroid/os/IBinder;
    .end local v146           #isit:Z
    :pswitch_77
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1451
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 1452
    .restart local v52       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_52

    const/16 v140, 0x1

    .line 1453
    .local v140, imm:Z
    :goto_4b
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v140

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setImmersive(Landroid/os/IBinder;Z)V

    .line 1454
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1455
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1452
    .end local v140           #imm:Z
    :cond_52
    const/16 v140, 0x0

    goto :goto_4b

    .line 1459
    .end local v52           #token:Landroid/os/IBinder;
    :pswitch_78
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1460
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isTopActivityImmersive()Z

    move-result v146

    .line 1461
    .restart local v146       #isit:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1462
    if-eqz v146, :cond_53

    const/4 v5, 0x1

    :goto_4c
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1463
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1462
    :cond_53
    const/4 v5, 0x0

    goto :goto_4c

    .line 1467
    .end local v146           #isit:Z
    :pswitch_79
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1468
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v198

    .line 1469
    .restart local v198       #uid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v143

    .line 1470
    .local v143, initialPid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1471
    .restart local v20       #packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v156

    .line 1472
    .local v156, message:Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v198

    move/from16 v2, v143

    move-object/from16 v3, v20

    move-object/from16 v4, v156

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->crashApplication(IILjava/lang/String;Ljava/lang/String;)V

    .line 1473
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1474
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1478
    .end local v20           #packageName:Ljava/lang/String;
    .end local v143           #initialPid:I
    .end local v156           #message:Ljava/lang/String;
    .end local v198           #uid:I
    :pswitch_7a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1479
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1480
    .restart local v97       #uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1481
    .restart local v17       #userId:I
    move-object/from16 v0, p0

    move-object/from16 v1, v97

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v71

    .line 1482
    .local v71, type:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1483
    move-object/from16 v0, p3

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1484
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1488
    .end local v17           #userId:I
    .end local v71           #type:Ljava/lang/String;
    .end local v97           #uri:Landroid/net/Uri;
    :pswitch_7b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1489
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v84

    .line 1490
    .restart local v84       #name:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v23

    .line 1491
    .local v23, perm:Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1492
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1493
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1497
    .end local v23           #perm:Landroid/os/IBinder;
    .end local v84           #name:Ljava/lang/String;
    :pswitch_7c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1498
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v94

    .line 1499
    .local v94, owner:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v95

    .line 1500
    .local v95, fromUid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v96

    .line 1501
    .restart local v96       #targetPkg:Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1502
    .restart local v97       #uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .restart local v98       #mode:I
    move-object/from16 v93, p0

    .line 1503
    invoke-virtual/range {v93 .. v98}, Landroid/app/ActivityManagerNative;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;I)V

    .line 1504
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1505
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1509
    .end local v94           #owner:Landroid/os/IBinder;
    .end local v95           #fromUid:I
    .end local v96           #targetPkg:Ljava/lang/String;
    .end local v97           #uri:Landroid/net/Uri;
    .end local v98           #mode:I
    :pswitch_7d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1510
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v94

    .line 1511
    .restart local v94       #owner:Landroid/os/IBinder;
    const/16 v97, 0x0

    .line 1512
    .restart local v97       #uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_54

    .line 1513
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1515
    :cond_54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 1516
    .restart local v98       #mode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move-object/from16 v2, v97

    move/from16 v3, v98

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;I)V

    .line 1517
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1518
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1522
    .end local v94           #owner:Landroid/os/IBinder;
    .end local v97           #uri:Landroid/net/Uri;
    .end local v98           #mode:I
    :pswitch_7e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1523
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v80

    .line 1524
    .restart local v80       #callingUid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v96

    .line 1525
    .restart local v96       #targetPkg:Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1526
    .restart local v97       #uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v158

    .line 1527
    .local v158, modeFlags:I
    move-object/from16 v0, p0

    move/from16 v1, v80

    move-object/from16 v2, v96

    move-object/from16 v3, v97

    move/from16 v4, v158

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;I)I

    move-result v182

    .line 1528
    .local v182, res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1529
    move-object/from16 v0, p3

    move/from16 v1, v182

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1530
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1534
    .end local v80           #callingUid:I
    .end local v96           #targetPkg:Ljava/lang/String;
    .end local v97           #uri:Landroid/net/Uri;
    .end local v158           #modeFlags:I
    .end local v182           #res:I
    :pswitch_7f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1535
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v87

    .line 1536
    .restart local v87       #process:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1537
    .restart local v17       #userId:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_55

    const/16 v102, 0x1

    .line 1538
    .local v102, managed:Z
    :goto_4d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v90

    .line 1539
    .restart local v90       #path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_56

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v91

    .restart local v91       #fd:Landroid/os/ParcelFileDescriptor;
    :goto_4e
    move-object/from16 v99, p0

    move-object/from16 v100, v87

    move/from16 v101, v17

    move-object/from16 v103, v90

    move-object/from16 v104, v91

    .line 1541
    invoke-virtual/range {v99 .. v104}, Landroid/app/ActivityManagerNative;->dumpHeap(Ljava/lang/String;IZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    move-result v182

    .line 1542
    .local v182, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1543
    if-eqz v182, :cond_57

    const/4 v5, 0x1

    :goto_4f
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1544
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1537
    .end local v90           #path:Ljava/lang/String;
    .end local v91           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v102           #managed:Z
    .end local v182           #res:Z
    :cond_55
    const/16 v102, 0x0

    goto :goto_4d

    .line 1539
    .restart local v90       #path:Ljava/lang/String;
    .restart local v102       #managed:Z
    :cond_56
    const/16 v91, 0x0

    goto :goto_4e

    .line 1543
    .restart local v91       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v182       #res:Z
    :cond_57
    const/4 v5, 0x0

    goto :goto_4f

    .line 1549
    .end local v17           #userId:I
    .end local v87           #process:Ljava/lang/String;
    .end local v90           #path:Ljava/lang/String;
    .end local v91           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v102           #managed:Z
    .end local v182           #res:Z
    :pswitch_80
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1550
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 1551
    .restart local v120       #b:Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 1552
    .local v6, app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1553
    .restart local v7       #callingPackage:Ljava/lang/String;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v106

    check-cast v106, [Landroid/content/Intent;

    .line 1554
    .local v106, intents:[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v107

    .line 1555
    .local v107, resolvedTypes:[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 1556
    .local v10, resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_58

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object/from16 v16, v5

    .line 1558
    .restart local v16       #options:Landroid/os/Bundle;
    :goto_50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17       #userId:I
    move-object/from16 v103, p0

    move-object/from16 v104, v6

    move-object/from16 v105, v7

    move-object/from16 v108, v10

    move-object/from16 v109, v16

    move/from16 v110, v17

    .line 1559
    invoke-virtual/range {v103 .. v110}, Landroid/app/ActivityManagerNative;->startActivities(Landroid/app/IApplicationThread;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I

    move-result v184

    .line 1561
    .local v184, result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1562
    move-object/from16 v0, p3

    move/from16 v1, v184

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1563
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1556
    .end local v16           #options:Landroid/os/Bundle;
    .end local v17           #userId:I
    .end local v184           #result:I
    :cond_58
    const/16 v16, 0x0

    goto :goto_50

    .line 1568
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #callingPackage:Ljava/lang/String;
    .end local v10           #resultTo:Landroid/os/IBinder;
    .end local v106           #intents:[Landroid/content/Intent;
    .end local v107           #resolvedTypes:[Ljava/lang/String;
    .end local v120           #b:Landroid/os/IBinder;
    :pswitch_81
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1569
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getFrontActivityScreenCompatMode()I

    move-result v98

    .line 1570
    .restart local v98       #mode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1571
    move-object/from16 v0, p3

    move/from16 v1, v98

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1572
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1577
    .end local v98           #mode:I
    :pswitch_82
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1578
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 1579
    .restart local v98       #mode:I
    move-object/from16 v0, p0

    move/from16 v1, v98

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setFrontActivityScreenCompatMode(I)V

    .line 1580
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1581
    move-object/from16 v0, p3

    move/from16 v1, v98

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1582
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1587
    .end local v98           #mode:I
    :pswitch_83
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1588
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v170

    .line 1589
    .restart local v170       #pkg:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v170

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v98

    .line 1590
    .restart local v98       #mode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1591
    move-object/from16 v0, p3

    move/from16 v1, v98

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1592
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1597
    .end local v98           #mode:I
    .end local v170           #pkg:Ljava/lang/String;
    :pswitch_84
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1598
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v170

    .line 1599
    .restart local v170       #pkg:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 1600
    .restart local v98       #mode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v170

    move/from16 v2, v98

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    .line 1601
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1602
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1606
    .end local v98           #mode:I
    .end local v170           #pkg:Ljava/lang/String;
    :pswitch_85
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1607
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v201

    .line 1608
    .local v201, userid:I
    move-object/from16 v0, p0

    move/from16 v1, v201

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->switchUser(I)Z

    move-result v184

    .line 1609
    .local v184, result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1610
    if-eqz v184, :cond_59

    const/4 v5, 0x1

    :goto_51
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1611
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1610
    :cond_59
    const/4 v5, 0x0

    goto :goto_51

    .line 1615
    .end local v184           #result:Z
    .end local v201           #userid:I
    :pswitch_86
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1616
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v201

    .line 1617
    .restart local v201       #userid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IStopUserCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IStopUserCallback;

    move-result-object v124

    .line 1619
    .local v124, callback:Landroid/app/IStopUserCallback;
    move-object/from16 v0, p0

    move/from16 v1, v201

    move-object/from16 v2, v124

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->stopUser(ILandroid/app/IStopUserCallback;)I

    move-result v184

    .line 1620
    .local v184, result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1621
    move-object/from16 v0, p3

    move/from16 v1, v184

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1622
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1626
    .end local v124           #callback:Landroid/app/IStopUserCallback;
    .end local v184           #result:I
    .end local v201           #userid:I
    :pswitch_87
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1627
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v200

    .line 1628
    .local v200, userInfo:Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1629
    const/4 v5, 0x0

    move-object/from16 v0, v200

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1630
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1634
    .end local v200           #userInfo:Landroid/content/pm/UserInfo;
    :pswitch_88
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1635
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v201

    .line 1636
    .restart local v201       #userid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5a

    const/16 v164, 0x1

    .line 1637
    .local v164, orStopping:Z
    :goto_52
    move-object/from16 v0, p0

    move/from16 v1, v201

    move/from16 v2, v164

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->isUserRunning(IZ)Z

    move-result v184

    .line 1638
    .local v184, result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1639
    if-eqz v184, :cond_5b

    const/4 v5, 0x1

    :goto_53
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1640
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1636
    .end local v164           #orStopping:Z
    .end local v184           #result:Z
    :cond_5a
    const/16 v164, 0x0

    goto :goto_52

    .line 1639
    .restart local v164       #orStopping:Z
    .restart local v184       #result:Z
    :cond_5b
    const/4 v5, 0x0

    goto :goto_53

    .line 1644
    .end local v164           #orStopping:Z
    .end local v184           #result:Z
    .end local v201           #userid:I
    :pswitch_89
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1645
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningUserIds()[I

    move-result-object v184

    .line 1646
    .local v184, result:[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1647
    move-object/from16 v0, p3

    move-object/from16 v1, v184

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1648
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1653
    .end local v184           #result:[I
    :pswitch_8a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1654
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v196

    .line 1655
    .local v196, taskId:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v191

    .line 1656
    .local v191, subTaskIndex:I
    move-object/from16 v0, p0

    move/from16 v1, v196

    move/from16 v2, v191

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeSubTask(II)Z

    move-result v184

    .line 1657
    .local v184, result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1658
    if-eqz v184, :cond_5c

    const/4 v5, 0x1

    :goto_54
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1659
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1658
    :cond_5c
    const/4 v5, 0x0

    goto :goto_54

    .line 1664
    .end local v184           #result:Z
    .end local v191           #subTaskIndex:I
    .end local v196           #taskId:I
    :pswitch_8b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1665
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v196

    .line 1666
    .restart local v196       #taskId:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v62

    .line 1667
    .restart local v62       #fl:I
    move-object/from16 v0, p0

    move/from16 v1, v196

    move/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeTask(II)Z

    move-result v184

    .line 1668
    .restart local v184       #result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1669
    if-eqz v184, :cond_5d

    const/4 v5, 0x1

    :goto_55
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1670
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1669
    :cond_5d
    const/4 v5, 0x0

    goto :goto_55

    .line 1674
    .end local v62           #fl:I
    .end local v184           #result:Z
    .end local v196           #taskId:I
    :pswitch_8c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1675
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v162

    .line 1677
    .local v162, observer:Landroid/app/IProcessObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v162

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 1678
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1682
    .end local v162           #observer:Landroid/app/IProcessObserver;
    :pswitch_8d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1683
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v162

    .line 1685
    .restart local v162       #observer:Landroid/app/IProcessObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v162

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 1686
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1691
    .end local v162           #observer:Landroid/app/IProcessObserver;
    :pswitch_8e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1692
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v170

    .line 1693
    .restart local v170       #pkg:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v170

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageAskScreenCompat(Ljava/lang/String;)Z

    move-result v119

    .line 1694
    .local v119, ask:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1695
    if-eqz v119, :cond_5e

    const/4 v5, 0x1

    :goto_56
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1696
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1695
    :cond_5e
    const/4 v5, 0x0

    goto :goto_56

    .line 1701
    .end local v119           #ask:Z
    .end local v170           #pkg:Ljava/lang/String;
    :pswitch_8f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1702
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v170

    .line 1703
    .restart local v170       #pkg:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5f

    const/16 v119, 0x1

    .line 1704
    .restart local v119       #ask:Z
    :goto_57
    move-object/from16 v0, p0

    move-object/from16 v1, v170

    move/from16 v2, v119

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    .line 1705
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1706
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1703
    .end local v119           #ask:Z
    :cond_5f
    const/16 v119, 0x0

    goto :goto_57

    .line 1710
    .end local v170           #pkg:Ljava/lang/String;
    :pswitch_90
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1711
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v175

    .line 1713
    .restart local v175       #r:Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v175

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isIntentSenderTargetedToPackage(Landroid/content/IIntentSender;)Z

    move-result v182

    .line 1714
    .restart local v182       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1715
    if-eqz v182, :cond_60

    const/4 v5, 0x1

    :goto_58
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1716
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1715
    :cond_60
    const/4 v5, 0x0

    goto :goto_58

    .line 1720
    .end local v175           #r:Landroid/content/IIntentSender;
    .end local v182           #res:Z
    :pswitch_91
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1721
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v175

    .line 1723
    .restart local v175       #r:Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v175

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isIntentSenderAnActivity(Landroid/content/IIntentSender;)Z

    move-result v182

    .line 1724
    .restart local v182       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1725
    if-eqz v182, :cond_61

    const/4 v5, 0x1

    :goto_59
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1726
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1725
    :cond_61
    const/4 v5, 0x0

    goto :goto_59

    .line 1730
    .end local v175           #r:Landroid/content/IIntentSender;
    .end local v182           #res:Z
    :pswitch_92
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1731
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v175

    .line 1733
    .restart local v175       #r:Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v175

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;

    move-result-object v8

    .line 1734
    .restart local v8       #intent:Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1735
    if-eqz v8, :cond_62

    .line 1736
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1737
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v5}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1741
    :goto_5a
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1739
    :cond_62
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5a

    .line 1745
    .end local v8           #intent:Landroid/content/Intent;
    .end local v175           #r:Landroid/content/IIntentSender;
    :pswitch_93
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1746
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/res/Configuration;

    .line 1747
    .local v27, config:Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    .line 1748
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1749
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1753
    .end local v27           #config:Landroid/content/res/Configuration;
    :pswitch_94
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1754
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v169

    .line 1755
    .restart local v169       #pids:[I
    move-object/from16 v0, p0

    move-object/from16 v1, v169

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessPss([I)[J

    move-result-object v174

    .line 1756
    .local v174, pss:[J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1757
    move-object/from16 v0, p3

    move-object/from16 v1, v174

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 1758
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1762
    .end local v169           #pids:[I
    .end local v174           #pss:[J
    :pswitch_95
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1763
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v160

    check-cast v160, Ljava/lang/CharSequence;

    .line 1764
    .local v160, msg:Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_63

    const/16 v116, 0x1

    .line 1765
    .local v116, always:Z
    :goto_5b
    move-object/from16 v0, p0

    move-object/from16 v1, v160

    move/from16 v2, v116

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->showBootMessage(Ljava/lang/CharSequence;Z)V

    .line 1766
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1767
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1764
    .end local v116           #always:Z
    :cond_63
    const/16 v116, 0x0

    goto :goto_5b

    .line 1771
    .end local v160           #msg:Ljava/lang/CharSequence;
    :pswitch_96
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1772
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->dismissKeyguardOnNextActivity()V

    .line 1773
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1774
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1778
    :pswitch_97
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1779
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 1780
    .restart local v52       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v132

    .line 1781
    .local v132, destAffinity:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v132

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->targetTaskAffinityMatchesActivity(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v182

    .line 1782
    .restart local v182       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1783
    if-eqz v182, :cond_64

    const/4 v5, 0x1

    :goto_5c
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1784
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1783
    :cond_64
    const/4 v5, 0x0

    goto :goto_5c

    .line 1788
    .end local v52           #token:Landroid/os/IBinder;
    .end local v132           #destAffinity:Ljava/lang/String;
    .end local v182           #res:Z
    :pswitch_98
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1789
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 1790
    .restart local v52       #token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v194

    check-cast v194, Landroid/content/Intent;

    .line 1791
    .local v194, target:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 1792
    .restart local v43       #resultCode:I
    const/16 v44, 0x0

    .line 1793
    .local v44, resultData:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_65

    .line 1794
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v44

    .end local v44           #resultData:Landroid/content/Intent;
    check-cast v44, Landroid/content/Intent;

    .line 1796
    .restart local v44       #resultData:Landroid/content/Intent;
    :cond_65
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v194

    move/from16 v3, v43

    move-object/from16 v4, v44

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z

    move-result v182

    .line 1797
    .restart local v182       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1798
    if-eqz v182, :cond_66

    const/4 v5, 0x1

    :goto_5d
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1799
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1798
    :cond_66
    const/4 v5, 0x0

    goto :goto_5d

    .line 1803
    .end local v43           #resultCode:I
    .end local v44           #resultData:Landroid/content/Intent;
    .end local v52           #token:Landroid/os/IBinder;
    .end local v182           #res:Z
    .end local v194           #target:Landroid/content/Intent;
    :pswitch_99
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1804
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 1805
    .restart local v52       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v182

    .line 1806
    .local v182, res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1807
    move-object/from16 v0, p3

    move/from16 v1, v182

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1808
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1812
    .end local v52           #token:Landroid/os/IBinder;
    .end local v182           #res:I
    :pswitch_9a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1813
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 1814
    .restart local v52       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v182

    .line 1815
    .local v182, res:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1816
    move-object/from16 v0, p3

    move-object/from16 v1, v182

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1817
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1821
    .end local v52           #token:Landroid/os/IBinder;
    .end local v182           #res:Ljava/lang/String;
    :pswitch_9b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1822
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    move-result-object v162

    .line 1824
    .local v162, observer:Landroid/app/IUserSwitchObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v162

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 1825
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1826
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1830
    .end local v162           #observer:Landroid/app/IUserSwitchObserver;
    :pswitch_9c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1831
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    move-result-object v162

    .line 1833
    .restart local v162       #observer:Landroid/app/IUserSwitchObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v162

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 1834
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1835
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1839
    .end local v162           #observer:Landroid/app/IUserSwitchObserver;
    :pswitch_9d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1840
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->requestBugReport()V

    .line 1841
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1842
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1846
    :pswitch_9e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1847
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v168

    .line 1848
    .restart local v168       #pid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_67

    const/16 v112, 0x1

    .line 1849
    .local v112, aboveSystem:Z
    :goto_5e
    move-object/from16 v0, p0

    move/from16 v1, v168

    move/from16 v2, v112

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->inputDispatchingTimedOut(IZ)J

    move-result-wide v182

    .line 1850
    .local v182, res:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1851
    move-object/from16 v0, p3

    move-wide/from16 v1, v182

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1852
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1848
    .end local v112           #aboveSystem:Z
    .end local v182           #res:J
    :cond_67
    const/16 v112, 0x0

    goto :goto_5e

    .line 1856
    .end local v168           #pid:I
    :pswitch_9f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1857
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v180

    .line 1858
    .local v180, requestType:I
    move-object/from16 v0, p0

    move/from16 v1, v180

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getTopActivityExtras(I)Landroid/os/Bundle;

    move-result-object v182

    .line 1859
    .local v182, res:Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1860
    move-object/from16 v0, p3

    move-object/from16 v1, v182

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 1861
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1865
    .end local v180           #requestType:I
    .end local v182           #res:Landroid/os/Bundle;
    :pswitch_a0
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1866
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 1867
    .restart local v52       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v137

    .line 1868
    .local v137, extras:Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->reportTopActivityExtras(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 1869
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1870
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1874
    .end local v52           #token:Landroid/os/IBinder;
    .end local v137           #extras:Landroid/os/Bundle;
    :pswitch_a1
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1875
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v198

    .line 1876
    .restart local v198       #uid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v176

    .line 1877
    .restart local v176       #reason:Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v198

    move-object/from16 v2, v176

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killUid(ILjava/lang/String;)V

    .line 1878
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1879
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1883
    .end local v176           #reason:Ljava/lang/String;
    .end local v198           #uid:I
    :pswitch_a2
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1884
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v42

    .line 1885
    .restart local v42       #who:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_68

    const/16 v115, 0x1

    .line 1886
    .local v115, allowRestart:Z
    :goto_5f
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move/from16 v2, v115

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->hang(Landroid/os/IBinder;Z)V

    .line 1887
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1888
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1885
    .end local v115           #allowRestart:Z
    :cond_68
    const/16 v115, 0x0

    goto :goto_5f

    .line 113
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_5d
        :pswitch_1
        :pswitch_50
        :pswitch_51
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_13
        :pswitch_14
        :pswitch_17
        :pswitch_19
        :pswitch_1a
        :pswitch_22
        :pswitch_23
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_2a
        :pswitch_2b
        :pswitch_8
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_12
        :pswitch_52
        :pswitch_53
        :pswitch_55
        :pswitch_56
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_32
        :pswitch_3f
        :pswitch_40
        :pswitch_46
        :pswitch_47
        :pswitch_49
        :pswitch_4a
        :pswitch_4c
        :pswitch_4d
        :pswitch_57
        :pswitch_4e
        :pswitch_60
        :pswitch_1b
        :pswitch_38
        :pswitch_16
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_58
        :pswitch_6
        :pswitch_59
        :pswitch_2d
        :pswitch_3d
        :pswitch_3e
        :pswitch_37
        :pswitch_48
        :pswitch_33
        :pswitch_24
        :pswitch_4f
        :pswitch_1f
        :pswitch_4b
        :pswitch_63
        :pswitch_5a
        :pswitch_1e
        :pswitch_1c
        :pswitch_20
        :pswitch_65
        :pswitch_6a
        :pswitch_66
        :pswitch_67
        :pswitch_68
        :pswitch_69
        :pswitch_6b
        :pswitch_6c
        :pswitch_6d
        :pswitch_44
        :pswitch_45
        :pswitch_1d
        :pswitch_6e
        :pswitch_6f
        :pswitch_70
        :pswitch_71
        :pswitch_5
        :pswitch_72
        :pswitch_5e
        :pswitch_61
        :pswitch_73
        :pswitch_3
        :pswitch_a
        :pswitch_4
        :pswitch_21
        :pswitch_75
        :pswitch_5f
        :pswitch_76
        :pswitch_77
        :pswitch_78
        :pswitch_79
        :pswitch_7a
        :pswitch_7b
        :pswitch_7c
        :pswitch_7d
        :pswitch_7e
        :pswitch_7f
        :pswitch_80
        :pswitch_88
        :pswitch_15
        :pswitch_81
        :pswitch_82
        :pswitch_83
        :pswitch_84
        :pswitch_8e
        :pswitch_8f
        :pswitch_85
        :pswitch_8a
        :pswitch_8b
        :pswitch_8c
        :pswitch_8d
        :pswitch_90
        :pswitch_93
        :pswitch_94
        :pswitch_95
        :pswitch_96
        :pswitch_62
        :pswitch_29
        :pswitch_2e
        :pswitch_64
        :pswitch_5b
        :pswitch_87
        :pswitch_97
        :pswitch_98
        :pswitch_54
        :pswitch_9
        :pswitch_99
        :pswitch_2c
        :pswitch_91
        :pswitch_2
        :pswitch_86
        :pswitch_9b
        :pswitch_9c
        :pswitch_89
        :pswitch_9d
        :pswitch_9e
        :pswitch_0
        :pswitch_92
        :pswitch_9f
        :pswitch_a0
        :pswitch_9a
        :pswitch_a1
        :pswitch_74
        :pswitch_a2
        :pswitch_0
        :pswitch_18
    .end packed-switch
.end method
