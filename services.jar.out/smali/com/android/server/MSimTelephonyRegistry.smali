.class Lcom/android/server/MSimTelephonyRegistry;
.super Lcom/android/internal/telephony/ITelephonyRegistryMSim$Stub;
.source "MSimTelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MSimTelephonyRegistry$Record;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DBG_LOC:Z = false

.field private static final MSG_USER_SWITCHED:I = 0x1

.field static final PHONE_STATE_PERMISSION_MASK:I = 0xec

.field private static final TAG:Ljava/lang/String; = "MSimTelephonyRegistry"


# instance fields
.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallForwarding:[Z

.field private mCallIncomingNumber:[Ljava/lang/String;

.field private mCallState:[I

.field private mCellInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCellLocation:[Landroid/os/Bundle;

.field private mConnectedApns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDataActivity:I

.field private mDataConnectionApn:Ljava/lang/String;

.field private mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;

.field private mDataConnectionLinkProperties:Landroid/net/LinkProperties;

.field private mDataConnectionNetworkType:I

.field private mDataConnectionPossible:Z

.field private mDataConnectionReason:Ljava/lang/String;

.field private mDataConnectionState:I

.field private mDefaultSubscription:I

.field private final mHandler:Landroid/os/Handler;

.field private mMessageWaiting:[Z

.field private mOtaspMode:I

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/MSimTelephonyRegistry$Record;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceState:[Landroid/telephony/ServiceState;

.field private mSignalStrength:[Landroid/telephony/SignalStrength;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 182
    invoke-direct {p0}, Lcom/android/internal/telephony/ITelephonyRegistryMSim$Stub;-><init>()V

    .line 96
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 97
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 113
    iput v5, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataActivity:I

    .line 115
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionState:I

    .line 117
    iput-boolean v5, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionPossible:Z

    .line 119
    const-string v3, ""

    iput-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    .line 121
    const-string v3, ""

    iput-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionApn:Ljava/lang/String;

    .line 133
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mOtaspMode:I

    .line 135
    iput-object v6, p0, Lcom/android/server/MSimTelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    .line 137
    iput v5, p0, Lcom/android/server/MSimTelephonyRegistry;->mDefaultSubscription:I

    .line 148
    new-instance v3, Lcom/android/server/MSimTelephonyRegistry$1;

    invoke-direct {v3, p0}, Lcom/android/server/MSimTelephonyRegistry$1;-><init>(Lcom/android/server/MSimTelephonyRegistry;)V

    iput-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mHandler:Landroid/os/Handler;

    .line 164
    new-instance v3, Lcom/android/server/MSimTelephonyRegistry$2;

    invoke-direct {v3, p0}, Lcom/android/server/MSimTelephonyRegistry$2;-><init>(Lcom/android/server/MSimTelephonyRegistry;)V

    iput-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 183
    invoke-static {}, Landroid/telephony/CellLocation;->getEmpty()Landroid/telephony/CellLocation;

    move-result-object v1

    .line 185
    .local v1, location:Landroid/telephony/CellLocation;
    iput-object p1, p0, Lcom/android/server/MSimTelephonyRegistry;->mContext:Landroid/content/Context;

    .line 186
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 187
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    .line 190
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v3

    iput v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mDefaultSubscription:I

    .line 192
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v2

    .line 193
    .local v2, numPhones:I
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mCallState:[I

    .line 194
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    .line 195
    new-array v3, v2, [Landroid/telephony/ServiceState;

    iput-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    .line 196
    new-array v3, v2, [Landroid/telephony/SignalStrength;

    iput-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    .line 197
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mMessageWaiting:[Z

    .line 198
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mCallForwarding:[Z

    .line 199
    new-array v3, v2, [Landroid/os/Bundle;

    iput-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    .line 200
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    .line 201
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 202
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mCallState:[I

    aput v5, v3, v0

    .line 203
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v0

    .line 204
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    new-instance v4, Landroid/telephony/ServiceState;

    invoke-direct {v4}, Landroid/telephony/ServiceState;-><init>()V

    aput-object v4, v3, v0

    .line 205
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    new-instance v4, Landroid/telephony/SignalStrength;

    invoke-direct {v4}, Landroid/telephony/SignalStrength;-><init>()V

    aput-object v4, v3, v0

    .line 206
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mMessageWaiting:[Z

    aput-boolean v5, v3, v0

    .line 207
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mCallForwarding:[Z

    aput-boolean v5, v3, v0

    .line 208
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    aput-object v4, v3, v0

    .line 209
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 214
    :cond_0
    if-eqz v1, :cond_1

    .line 215
    const/4 v0, 0x0

    :goto_1
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 216
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 219
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/MSimTelephonyRegistry;)[Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/MSimTelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/MSimTelephonyRegistry;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/MSimTelephonyRegistry;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private broadcastCallStateChanged(ILjava/lang/String;I)V
    .locals 6
    .parameter "state"
    .parameter "incomingNumber"
    .parameter "subscription"

    .prologue
    .line 742
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 744
    .local v0, ident:J
    if-nez p1, :cond_1

    .line 745
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneOff()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 752
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 755
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 756
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 758
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 759
    const-string v3, "incoming_number"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 761
    :cond_0
    const-string v3, "subscription"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 762
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 764
    return-void

    .line 747
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneOn()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 749
    :catch_0
    move-exception v3

    goto :goto_0

    .line 752
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private broadcastDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "reason"
    .parameter "apnType"

    .prologue
    .line 800
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 801
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "reason"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 802
    const-string v1, "apnType"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 803
    const-string v1, "subscription"

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getPreferredDataSubscription()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 805
    iget-object v1, p0, Lcom/android/server/MSimTelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 806
    return-void
.end method

.method private broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;Z)V
    .locals 5
    .parameter "state"
    .parameter "isDataConnectivityPossible"
    .parameter "reason"
    .parameter "apn"
    .parameter "apnType"
    .parameter "linkProperties"
    .parameter "linkCapabilities"
    .parameter "roaming"

    .prologue
    const/4 v4, 0x1

    .line 773
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 774
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(I)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneConstants$DataState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 776
    if-nez p2, :cond_0

    .line 777
    const-string v2, "networkUnvailable"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 779
    :cond_0
    if-eqz p3, :cond_1

    .line 780
    const-string v2, "reason"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 782
    :cond_1
    if-eqz p6, :cond_2

    .line 783
    const-string v2, "linkProperties"

    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 784
    invoke-virtual {p6}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 785
    .local v0, iface:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 786
    const-string v2, "iface"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 789
    .end local v0           #iface:Ljava/lang/String;
    :cond_2
    if-eqz p7, :cond_3

    .line 790
    const-string v2, "linkCapabilities"

    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 792
    :cond_3
    if-eqz p8, :cond_4

    const-string v2, "networkRoaming"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 794
    :cond_4
    const-string v2, "apn"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 795
    const-string v2, "apnType"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 796
    iget-object v2, p0, Lcom/android/server/MSimTelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 797
    return-void
.end method

.method private broadcastServiceStateChanged(Landroid/telephony/ServiceState;I)V
    .locals 6
    .parameter "state"
    .parameter "subscription"

    .prologue
    .line 704
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 706
    .local v1, ident:J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/internal/app/IBatteryStats;->notePhoneState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 710
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 713
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SERVICE_STATE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 714
    .local v3, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 715
    .local v0, data:Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 716
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 718
    const-string v4, "subscription"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 719
    iget-object v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 720
    return-void

    .line 710
    .end local v0           #data:Landroid/os/Bundle;
    .end local v3           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 707
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;I)V
    .locals 6
    .parameter "signalStrength"
    .parameter "subscription"

    .prologue
    .line 723
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 725
    .local v1, ident:J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4, p1}, Lcom/android/internal/app/IBatteryStats;->notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 729
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 732
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SIG_STR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 733
    .local v3, intent:Landroid/content/Intent;
    const/high16 v4, 0x2000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 734
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 735
    .local v0, data:Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/telephony/SignalStrength;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 736
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 737
    const-string v4, "subscription"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 738
    iget-object v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 739
    return-void

    .line 729
    .end local v0           #data:Landroid/os/Bundle;
    .end local v3           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 726
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private checkListenerPermission(I)V
    .locals 3
    .parameter "events"

    .prologue
    const/4 v2, 0x0

    .line 820
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Lcom/android/server/MSimTelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    :cond_0
    and-int/lit16 v0, p1, 0x400

    if-eqz v0, :cond_1

    .line 827
    iget-object v0, p0, Lcom/android/server/MSimTelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    :cond_1
    and-int/lit16 v0, p1, 0xec

    if-eqz v0, :cond_2

    .line 833
    iget-object v0, p0, Lcom/android/server/MSimTelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    :cond_2
    return-void
.end method

.method private checkNotifyPermission(Ljava/lang/String;)Z
    .locals 3
    .parameter "method"

    .prologue
    .line 809
    iget-object v1, p0, Lcom/android/server/MSimTelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 811
    const/4 v1, 0x1

    .line 816
    :goto_0
    return v1

    .line 813
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Modify Phone State Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 816
    .local v0, msg:Ljava/lang/String;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleRemoveListLocked()V
    .locals 3

    .prologue
    .line 839
    iget-object v2, p0, Lcom/android/server/MSimTelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 840
    iget-object v2, p0, Lcom/android/server/MSimTelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 841
    .local v0, b:Landroid/os/IBinder;
    invoke-direct {p0, v0}, Lcom/android/server/MSimTelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_0

    .line 843
    .end local v0           #b:Landroid/os/IBinder;
    :cond_0
    iget-object v2, p0, Lcom/android/server/MSimTelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 845
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private remove(Landroid/os/IBinder;)V
    .locals 4
    .parameter "binder"

    .prologue
    .line 365
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 366
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 367
    .local v1, recordCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 368
    iget-object v2, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/MSimTelephonyRegistry$Record;

    iget-object v2, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    .line 369
    iget-object v2, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 370
    monitor-exit v3

    .line 374
    :goto_1
    return-void

    .line 367
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 373
    :cond_1
    monitor-exit v3

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #recordCount:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private validateEventsAndUserLocked(Lcom/android/server/MSimTelephonyRegistry$Record;I)Z
    .locals 5
    .parameter "r"
    .parameter "events"

    .prologue
    .line 849
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 850
    .local v0, callingIdentity:J
    const/4 v3, 0x0

    .line 852
    .local v3, valid:Z
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 853
    .local v2, foregroundUser:I
    iget v4, p1, Lcom/android/server/MSimTelephonyRegistry$Record;->callerUid:I

    if-ne v4, v2, :cond_0

    iget v4, p1, Lcom/android/server/MSimTelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/2addr v4, p2

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 860
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 862
    return v3

    .line 853
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 860
    .end local v2           #foregroundUser:I
    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 665
    iget-object v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.DUMP"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 667
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission Denial: can\'t dump telephony.registry from from pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 697
    :goto_0
    return-void

    .line 671
    :cond_0
    iget-object v5, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v5

    .line 672
    :try_start_0
    iget-object v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 673
    .local v3, recordCount:I
    const-string v4, "last known state:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 674
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 675
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mCallState["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "]="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/MSimTelephonyRegistry;->mCallState:[I

    aget v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 676
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mCallIncomingNumber["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "]="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/MSimTelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 677
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mServiceState["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "]="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/MSimTelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 678
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mSignalStrength["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "]="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/MSimTelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 679
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mMessageWaiting["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "]="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/MSimTelephonyRegistry;->mMessageWaiting:[Z

    aget-boolean v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 680
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mCallForwarding["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "]="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/MSimTelephonyRegistry;->mCallForwarding:[Z

    aget-boolean v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 681
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mCellLocation["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "]="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/MSimTelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 682
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mCellInfo["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "]="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/MSimTelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 674
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 684
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mDataActivity="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataActivity:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 685
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mDataConnectionState="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionState:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 686
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mDataConnectionPossible="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v6, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionPossible:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 687
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mDataConnectionReason="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 688
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mDataConnectionApn="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionApn:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 689
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mDataConnectionLinkProperties="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 690
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mDataConnectionLinkCapabilities="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 691
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mDataConnectionNetworkType="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionNetworkType:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 692
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registrations: count="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 693
    iget-object v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/MSimTelephonyRegistry$Record;

    .line 694
    .local v2, r:Lcom/android/server/MSimTelephonyRegistry$Record;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->pkgForDebug:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " 0x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->events:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 696
    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Lcom/android/server/MSimTelephonyRegistry$Record;
    .end local v3           #recordCount:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0       #i:I
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #recordCount:I
    :cond_2
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZI)V
    .locals 15
    .parameter "pkgForDebug"
    .parameter "callback"
    .parameter "events"
    .parameter "notifyNow"
    .parameter "subscription"

    .prologue
    .line 232
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 233
    .local v3, callerUid:I
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    .line 239
    .local v7, myUid:I
    if-eqz p3, :cond_e

    .line 241
    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/server/MSimTelephonyRegistry;->checkListenerPermission(I)V

    .line 243
    iget-object v12, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v12

    .line 245
    const/4 v8, 0x0

    .line 247
    .local v8, r:Lcom/android/server/MSimTelephonyRegistry$Record;
    :try_start_0
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 248
    .local v2, b:Landroid/os/IBinder;
    iget-object v11, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 249
    .local v1, N:I
    const/4 v6, 0x0

    .local v6, i:I
    move-object v9, v8

    .end local v8           #r:Lcom/android/server/MSimTelephonyRegistry$Record;
    .local v9, r:Lcom/android/server/MSimTelephonyRegistry$Record;
    :goto_0
    if-ge v6, v1, :cond_d

    .line 250
    :try_start_1
    iget-object v11, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/MSimTelephonyRegistry$Record;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 251
    .end local v9           #r:Lcom/android/server/MSimTelephonyRegistry$Record;
    .restart local v8       #r:Lcom/android/server/MSimTelephonyRegistry$Record;
    :try_start_2
    iget-object v11, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v2, v11, :cond_c

    .line 264
    :goto_1
    iget v11, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->events:I

    xor-int v11, v11, p3

    and-int v10, p3, v11

    .line 265
    .local v10, send:I
    move/from16 v0, p3

    iput v0, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->events:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 266
    if-eqz p4, :cond_b

    .line 267
    and-int/lit8 v11, p3, 0x1

    if-eqz v11, :cond_0

    .line 269
    :try_start_3
    iget-object v11, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v13, Landroid/telephony/ServiceState;

    iget-object v14, p0, Lcom/android/server/MSimTelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v14, v14, p5

    invoke-direct {v13, v14}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 275
    :cond_0
    :goto_2
    and-int/lit8 v11, p3, 0x2

    if-eqz v11, :cond_2

    .line 277
    :try_start_4
    iget-object v11, p0, Lcom/android/server/MSimTelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v11, v11, p5

    invoke-virtual {v11}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v5

    .line 279
    .local v5, gsmSignalStrength:I
    iget-object v11, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v13, 0x63

    if-ne v5, v13, :cond_1

    const/4 v5, -0x1

    .end local v5           #gsmSignalStrength:I
    :cond_1
    invoke-interface {v11, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 285
    :cond_2
    :goto_3
    and-int/lit8 v11, p3, 0x4

    if-eqz v11, :cond_3

    .line 287
    :try_start_5
    iget-object v11, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v13, p0, Lcom/android/server/MSimTelephonyRegistry;->mMessageWaiting:[Z

    aget-boolean v13, v13, p5

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    .line 293
    :cond_3
    :goto_4
    and-int/lit8 v11, p3, 0x8

    if-eqz v11, :cond_4

    .line 295
    :try_start_6
    iget-object v11, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v13, p0, Lcom/android/server/MSimTelephonyRegistry;->mCallForwarding:[Z

    aget-boolean v13, v13, p5

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    .line 301
    :cond_4
    :goto_5
    const/16 v11, 0x10

    :try_start_7
    invoke-direct {p0, v8, v11}, Lcom/android/server/MSimTelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/MSimTelephonyRegistry$Record;I)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v11

    if-eqz v11, :cond_5

    .line 305
    :try_start_8
    iget-object v11, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v13, Landroid/os/Bundle;

    iget-object v14, p0, Lcom/android/server/MSimTelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    aget-object v14, v14, p5

    invoke-direct {v13, v14}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4

    .line 311
    :cond_5
    :goto_6
    and-int/lit8 v11, p3, 0x20

    if-eqz v11, :cond_6

    .line 313
    :try_start_9
    iget-object v11, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v13, p0, Lcom/android/server/MSimTelephonyRegistry;->mCallState:[I

    aget v13, v13, p5

    iget-object v14, p0, Lcom/android/server/MSimTelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    aget-object v14, v14, p5

    invoke-interface {v11, v13, v14}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_5

    .line 319
    :cond_6
    :goto_7
    and-int/lit8 v11, p3, 0x40

    if-eqz v11, :cond_7

    .line 321
    :try_start_a
    iget-object v11, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v13, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionState:I

    iget v14, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionNetworkType:I

    invoke-interface {v11, v13, v14}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_6

    .line 327
    :cond_7
    :goto_8
    move/from16 v0, p3

    and-int/lit16 v11, v0, 0x80

    if-eqz v11, :cond_8

    .line 329
    :try_start_b
    iget-object v11, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v13, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataActivity:I

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_7

    .line 334
    :cond_8
    :goto_9
    move/from16 v0, p3

    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_9

    .line 336
    :try_start_c
    iget-object v11, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v13, p0, Lcom/android/server/MSimTelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v13, v13, p5

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_8

    .line 341
    :cond_9
    :goto_a
    move/from16 v0, p3

    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_a

    .line 343
    :try_start_d
    iget-object v11, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v13, p0, Lcom/android/server/MSimTelephonyRegistry;->mOtaspMode:I

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onOtaspChanged(I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_9

    .line 348
    :cond_a
    :goto_b
    const/16 v11, 0x400

    :try_start_e
    invoke-direct {p0, v8, v11}, Lcom/android/server/MSimTelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/MSimTelephonyRegistry$Record;I)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-result v11

    if-eqz v11, :cond_b

    .line 352
    :try_start_f
    iget-object v13, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/MSimTelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    move/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-interface {v13, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_a

    .line 358
    :cond_b
    :goto_c
    :try_start_10
    monitor-exit v12
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 362
    .end local v1           #N:I
    .end local v2           #b:Landroid/os/IBinder;
    .end local v6           #i:I
    .end local v8           #r:Lcom/android/server/MSimTelephonyRegistry$Record;
    .end local v10           #send:I
    :goto_d
    return-void

    .line 249
    .restart local v1       #N:I
    .restart local v2       #b:Landroid/os/IBinder;
    .restart local v6       #i:I
    .restart local v8       #r:Lcom/android/server/MSimTelephonyRegistry$Record;
    :cond_c
    add-int/lit8 v6, v6, 0x1

    move-object v9, v8

    .end local v8           #r:Lcom/android/server/MSimTelephonyRegistry$Record;
    .restart local v9       #r:Lcom/android/server/MSimTelephonyRegistry$Record;
    goto/16 :goto_0

    .line 255
    :cond_d
    :try_start_11
    new-instance v8, Lcom/android/server/MSimTelephonyRegistry$Record;

    const/4 v11, 0x0

    invoke-direct {v8, v11}, Lcom/android/server/MSimTelephonyRegistry$Record;-><init>(Lcom/android/server/MSimTelephonyRegistry$1;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 256
    .end local v9           #r:Lcom/android/server/MSimTelephonyRegistry$Record;
    .restart local v8       #r:Lcom/android/server/MSimTelephonyRegistry$Record;
    :try_start_12
    iput-object v2, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 257
    move-object/from16 v0, p2

    iput-object v0, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 258
    move-object/from16 v0, p1

    iput-object v0, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->pkgForDebug:Ljava/lang/String;

    .line 259
    iput v3, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->callerUid:I

    .line 260
    move/from16 v0, p5

    iput v0, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->subscription:I

    .line 261
    iget-object v11, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 358
    .end local v1           #N:I
    .end local v2           #b:Landroid/os/IBinder;
    .end local v6           #i:I
    :catchall_0
    move-exception v11

    :goto_e
    monitor-exit v12
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    throw v11

    .line 271
    .restart local v1       #N:I
    .restart local v2       #b:Landroid/os/IBinder;
    .restart local v6       #i:I
    .restart local v10       #send:I
    :catch_0
    move-exception v4

    .line 272
    .local v4, ex:Landroid/os/RemoteException;
    :try_start_13
    iget-object v11, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/MSimTelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_2

    .line 281
    .end local v4           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 282
    .restart local v4       #ex:Landroid/os/RemoteException;
    iget-object v11, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/MSimTelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_3

    .line 289
    .end local v4           #ex:Landroid/os/RemoteException;
    :catch_2
    move-exception v4

    .line 290
    .restart local v4       #ex:Landroid/os/RemoteException;
    iget-object v11, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/MSimTelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_4

    .line 297
    .end local v4           #ex:Landroid/os/RemoteException;
    :catch_3
    move-exception v4

    .line 298
    .restart local v4       #ex:Landroid/os/RemoteException;
    iget-object v11, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/MSimTelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_5

    .line 307
    .end local v4           #ex:Landroid/os/RemoteException;
    :catch_4
    move-exception v4

    .line 308
    .restart local v4       #ex:Landroid/os/RemoteException;
    iget-object v11, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/MSimTelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_6

    .line 315
    .end local v4           #ex:Landroid/os/RemoteException;
    :catch_5
    move-exception v4

    .line 316
    .restart local v4       #ex:Landroid/os/RemoteException;
    iget-object v11, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/MSimTelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_7

    .line 323
    .end local v4           #ex:Landroid/os/RemoteException;
    :catch_6
    move-exception v4

    .line 324
    .restart local v4       #ex:Landroid/os/RemoteException;
    iget-object v11, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/MSimTelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_8

    .line 330
    .end local v4           #ex:Landroid/os/RemoteException;
    :catch_7
    move-exception v4

    .line 331
    .restart local v4       #ex:Landroid/os/RemoteException;
    iget-object v11, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/MSimTelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_9

    .line 337
    .end local v4           #ex:Landroid/os/RemoteException;
    :catch_8
    move-exception v4

    .line 338
    .restart local v4       #ex:Landroid/os/RemoteException;
    iget-object v11, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/MSimTelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_a

    .line 344
    .end local v4           #ex:Landroid/os/RemoteException;
    :catch_9
    move-exception v4

    .line 345
    .restart local v4       #ex:Landroid/os/RemoteException;
    iget-object v11, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/MSimTelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_b

    .line 353
    .end local v4           #ex:Landroid/os/RemoteException;
    :catch_a
    move-exception v4

    .line 354
    .restart local v4       #ex:Landroid/os/RemoteException;
    iget-object v11, v8, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/MSimTelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_c

    .line 360
    .end local v1           #N:I
    .end local v2           #b:Landroid/os/IBinder;
    .end local v4           #ex:Landroid/os/RemoteException;
    .end local v6           #i:I
    .end local v8           #r:Lcom/android/server/MSimTelephonyRegistry$Record;
    .end local v10           #send:I
    :cond_e
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/MSimTelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_d

    .line 358
    .restart local v1       #N:I
    .restart local v2       #b:Landroid/os/IBinder;
    .restart local v6       #i:I
    .restart local v9       #r:Lcom/android/server/MSimTelephonyRegistry$Record;
    :catchall_1
    move-exception v11

    move-object v8, v9

    .end local v9           #r:Lcom/android/server/MSimTelephonyRegistry$Record;
    .restart local v8       #r:Lcom/android/server/MSimTelephonyRegistry$Record;
    goto :goto_e
.end method

.method public notifyCallForwardingChanged(ZI)V
    .locals 6
    .parameter "cfi"
    .parameter "subscription"

    .prologue
    .line 496
    const-string v3, "notifyCallForwardingChanged()"

    invoke-direct {p0, v3}, Lcom/android/server/MSimTelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 513
    :goto_0
    return-void

    .line 499
    :cond_0
    iget-object v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 500
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mCallForwarding:[Z

    aput-boolean p1, v3, p2

    .line 501
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/MSimTelephonyRegistry$Record;

    .line 502
    .local v2, r:Lcom/android/server/MSimTelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->events:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->subscription:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p2, :cond_1

    .line 505
    :try_start_1
    iget-object v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 506
    :catch_0
    move-exception v0

    .line 507
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 512
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Lcom/android/server/MSimTelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 511
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/MSimTelephonyRegistry;->handleRemoveListLocked()V

    .line 512
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyCallState(ILjava/lang/String;I)V
    .locals 6
    .parameter "state"
    .parameter "incomingNumber"
    .parameter "subscription"

    .prologue
    .line 377
    const-string v3, "notifyCallState()"

    invoke-direct {p0, v3}, Lcom/android/server/MSimTelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 396
    :goto_0
    return-void

    .line 380
    :cond_0
    iget-object v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 381
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mCallState:[I

    aput p1, v3, p3

    .line 382
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    aput-object p2, v3, p3

    .line 383
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/MSimTelephonyRegistry$Record;

    .line 384
    .local v2, r:Lcom/android/server/MSimTelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->events:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->subscription:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p3, :cond_1

    .line 387
    :try_start_1
    iget-object v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 394
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Lcom/android/server/MSimTelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 393
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/MSimTelephonyRegistry;->handleRemoveListLocked()V

    .line 394
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 395
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/MSimTelephonyRegistry;->broadcastCallStateChanged(ILjava/lang/String;I)V

    goto :goto_0
.end method

.method public notifyCellInfo(Ljava/util/List;I)V
    .locals 6
    .parameter
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 452
    .local p1, cellInfo:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/CellInfo;>;"
    const-string v3, "notifyCellInfo()"

    invoke-direct {p0, v3}, Lcom/android/server/MSimTelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 473
    :goto_0
    return-void

    .line 456
    :cond_0
    iget-object v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 457
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, p2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 458
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/MSimTelephonyRegistry$Record;

    .line 459
    .local v2, r:Lcom/android/server/MSimTelephonyRegistry$Record;
    const/16 v3, 0x400

    invoke-direct {p0, v2, v3}, Lcom/android/server/MSimTelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/MSimTelephonyRegistry$Record;I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->subscription:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p2, :cond_1

    .line 465
    :try_start_1
    iget-object v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 472
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Lcom/android/server/MSimTelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 471
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/MSimTelephonyRegistry;->handleRemoveListLocked()V

    .line 472
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyCellLocation(Landroid/os/Bundle;I)V
    .locals 6
    .parameter "cellLocation"
    .parameter "subscription"

    .prologue
    .line 620
    const-string v3, "notifyCellLocation()"

    invoke-direct {p0, v3}, Lcom/android/server/MSimTelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 642
    :goto_0
    return-void

    .line 623
    :cond_0
    iget-object v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 624
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    aput-object p1, v3, p2

    .line 625
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/MSimTelephonyRegistry$Record;

    .line 626
    .local v2, r:Lcom/android/server/MSimTelephonyRegistry$Record;
    const/16 v3, 0x10

    invoke-direct {p0, v2, v3}, Lcom/android/server/MSimTelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/MSimTelephonyRegistry$Record;I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->subscription:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p2, :cond_1

    .line 633
    :try_start_1
    iget-object v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 634
    :catch_0
    move-exception v0

    .line 635
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 641
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Lcom/android/server/MSimTelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 640
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/MSimTelephonyRegistry;->handleRemoveListLocked()V

    .line 641
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyDataActivity(I)V
    .locals 6
    .parameter "state"

    .prologue
    .line 516
    const-string v3, "notifyDataActivity()"

    invoke-direct {p0, v3}, Lcom/android/server/MSimTelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 532
    :goto_0
    return-void

    .line 519
    :cond_0
    iget-object v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 520
    :try_start_0
    iput p1, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataActivity:I

    .line 521
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/MSimTelephonyRegistry$Record;

    .line 522
    .local v2, r:Lcom/android/server/MSimTelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_1

    .line 524
    :try_start_1
    iget-object v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 525
    :catch_0
    move-exception v0

    .line 526
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 531
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Lcom/android/server/MSimTelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 530
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/MSimTelephonyRegistry;->handleRemoveListLocked()V

    .line 531
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyDataConnection(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZ)V
    .locals 14
    .parameter "state"
    .parameter "isDataConnectivityPossible"
    .parameter "reason"
    .parameter "apn"
    .parameter "apnType"
    .parameter "linkProperties"
    .parameter "linkCapabilities"
    .parameter "networkType"
    .parameter "roaming"

    .prologue
    .line 537
    const-string v1, "notifyDataConnection()"

    invoke-direct {p0, v1}, Lcom/android/server/MSimTelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 596
    :goto_0
    return-void

    .line 546
    :cond_0
    iget-object v2, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v2

    .line 547
    const/4 v12, 0x0

    .line 548
    .local v12, modified:Z
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 549
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MSimTelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 550
    iget-object v1, p0, Lcom/android/server/MSimTelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    iget v1, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionState:I

    if-eq v1, p1, :cond_1

    .line 552
    iput p1, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionState:I

    .line 553
    const/4 v12, 0x1

    .line 567
    :cond_1
    :goto_1
    move/from16 v0, p2

    iput-boolean v0, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionPossible:Z

    .line 568
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    .line 569
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionLinkProperties:Landroid/net/LinkProperties;

    .line 570
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;

    .line 571
    iget v1, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionNetworkType:I

    move/from16 v0, p8

    if-eq v1, v0, :cond_2

    .line 572
    move/from16 v0, p8

    iput v0, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionNetworkType:I

    .line 574
    const/4 v12, 0x1

    .line 576
    :cond_2
    if-eqz v12, :cond_6

    .line 581
    iget-object v1, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/MSimTelephonyRegistry$Record;

    .line 582
    .local v13, r:Lcom/android/server/MSimTelephonyRegistry$Record;
    iget v1, v13, Lcom/android/server/MSimTelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_3

    .line 584
    :try_start_1
    iget-object v1, v13, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionState:I

    iget v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionNetworkType:I

    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 586
    :catch_0
    move-exception v10

    .line 587
    .local v10, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v1, p0, Lcom/android/server/MSimTelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, v13, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 593
    .end local v10           #ex:Landroid/os/RemoteException;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v13           #r:Lcom/android/server/MSimTelephonyRegistry$Record;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 557
    :cond_4
    :try_start_3
    iget-object v1, p0, Lcom/android/server/MSimTelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 558
    iget-object v1, p0, Lcom/android/server/MSimTelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 559
    iput p1, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionState:I

    .line 560
    const/4 v12, 0x1

    goto :goto_1

    .line 591
    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_5
    invoke-direct {p0}, Lcom/android/server/MSimTelephonyRegistry;->handleRemoveListLocked()V

    .line 593
    .end local v11           #i$:Ljava/util/Iterator;
    :cond_6
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, p0

    move v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p9

    .line 594
    invoke-direct/range {v1 .. v9}, Lcom/android/server/MSimTelephonyRegistry;->broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;Z)V

    goto/16 :goto_0
.end method

.method public notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "reason"
    .parameter "apnType"

    .prologue
    .line 599
    const-string v0, "notifyDataConnectionFailed()"

    invoke-direct {p0, v0}, Lcom/android/server/MSimTelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 617
    :goto_0
    return-void

    .line 616
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/MSimTelephonyRegistry;->broadcastDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyMessageWaitingChanged(ZI)V
    .locals 6
    .parameter "mwi"
    .parameter "subscription"

    .prologue
    .line 476
    const-string v3, "notifyMessageWaitingChanged()"

    invoke-direct {p0, v3}, Lcom/android/server/MSimTelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 493
    :goto_0
    return-void

    .line 479
    :cond_0
    iget-object v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 480
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mMessageWaiting:[Z

    aput-boolean p1, v3, p2

    .line 481
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/MSimTelephonyRegistry$Record;

    .line 482
    .local v2, r:Lcom/android/server/MSimTelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->events:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->subscription:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p2, :cond_1

    .line 485
    :try_start_1
    iget-object v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 492
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Lcom/android/server/MSimTelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 491
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/MSimTelephonyRegistry;->handleRemoveListLocked()V

    .line 492
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyOtaspChanged(I)V
    .locals 6
    .parameter "otaspMode"

    .prologue
    .line 645
    const-string v3, "notifyOtaspChanged()"

    invoke-direct {p0, v3}, Lcom/android/server/MSimTelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 661
    :goto_0
    return-void

    .line 648
    :cond_0
    iget-object v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 649
    :try_start_0
    iput p1, p0, Lcom/android/server/MSimTelephonyRegistry;->mOtaspMode:I

    .line 650
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/MSimTelephonyRegistry$Record;

    .line 651
    .local v2, r:Lcom/android/server/MSimTelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_1

    .line 653
    :try_start_1
    iget-object v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onOtaspChanged(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 654
    :catch_0
    move-exception v0

    .line 655
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 660
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Lcom/android/server/MSimTelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 659
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/MSimTelephonyRegistry;->handleRemoveListLocked()V

    .line 660
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyServiceState(Landroid/telephony/ServiceState;I)V
    .locals 6
    .parameter "state"
    .parameter "subscription"

    .prologue
    .line 399
    const-string v3, "notifyServiceState()"

    invoke-direct {p0, v3}, Lcom/android/server/MSimTelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 418
    :goto_0
    return-void

    .line 402
    :cond_0
    const-string v3, "MSimTelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyServiceState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 404
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aput-object p1, v3, p2

    .line 405
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/MSimTelephonyRegistry$Record;

    .line 406
    .local v2, r:Lcom/android/server/MSimTelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->events:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->subscription:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p2, :cond_1

    .line 409
    :try_start_1
    iget-object v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v5, Landroid/telephony/ServiceState;

    invoke-direct {v5, p1}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 410
    :catch_0
    move-exception v0

    .line 411
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 416
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Lcom/android/server/MSimTelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 415
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/MSimTelephonyRegistry;->handleRemoveListLocked()V

    .line 416
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 417
    invoke-direct {p0, p1, p2}, Lcom/android/server/MSimTelephonyRegistry;->broadcastServiceStateChanged(Landroid/telephony/ServiceState;I)V

    goto :goto_0
.end method

.method public notifySignalStrength(Landroid/telephony/SignalStrength;I)V
    .locals 7
    .parameter "signalStrength"
    .parameter "subscription"

    .prologue
    .line 421
    const-string v4, "notifySignalStrength()"

    invoke-direct {p0, v4}, Lcom/android/server/MSimTelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 449
    :goto_0
    return-void

    .line 424
    :cond_0
    iget-object v5, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v5

    .line 425
    :try_start_0
    iget-object v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aput-object p1, v4, p2

    .line 426
    iget-object v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/MSimTelephonyRegistry$Record;

    .line 427
    .local v3, r:Lcom/android/server/MSimTelephonyRegistry$Record;
    iget v4, v3, Lcom/android/server/MSimTelephonyRegistry$Record;->events:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_2

    iget v4, v3, Lcom/android/server/MSimTelephonyRegistry$Record;->subscription:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v4, p2, :cond_2

    .line 430
    :try_start_1
    iget-object v4, v3, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v6, Landroid/telephony/SignalStrength;

    invoke-direct {v6, p1}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-interface {v4, v6}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 435
    :cond_2
    :goto_2
    :try_start_2
    iget v4, v3, Lcom/android/server/MSimTelephonyRegistry$Record;->events:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    iget v4, v3, Lcom/android/server/MSimTelephonyRegistry$Record;->subscription:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v4, p2, :cond_1

    .line 438
    :try_start_3
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    .line 439
    .local v1, gsmSignalStrength:I
    iget-object v4, v3, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v6, 0x63

    if-ne v1, v6, :cond_3

    const/4 v1, -0x1

    .end local v1           #gsmSignalStrength:I
    :cond_3
    invoke-interface {v4, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 441
    :catch_0
    move-exception v0

    .line 442
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_4
    iget-object v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 447
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #r:Lcom/android/server/MSimTelephonyRegistry$Record;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 431
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #r:Lcom/android/server/MSimTelephonyRegistry$Record;
    :catch_1
    move-exception v0

    .line 432
    .restart local v0       #ex:Landroid/os/RemoteException;
    :try_start_5
    iget-object v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 446
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v3           #r:Lcom/android/server/MSimTelephonyRegistry$Record;
    :cond_4
    invoke-direct {p0}, Lcom/android/server/MSimTelephonyRegistry;->handleRemoveListLocked()V

    .line 447
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 448
    invoke-direct {p0, p1, p2}, Lcom/android/server/MSimTelephonyRegistry;->broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;I)V

    goto :goto_0
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 223
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 224
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 226
    iget-object v1, p0, Lcom/android/server/MSimTelephonyRegistry;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/MSimTelephonyRegistry;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 227
    return-void
.end method
