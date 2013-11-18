.class Lcom/android/server/ConnectivityService$CheckMp;
.super Landroid/os/AsyncTask;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CheckMp"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ConnectivityService$CheckMp$CallBack;,
        Lcom/android/server/ConnectivityService$CheckMp$Params;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/server/ConnectivityService$CheckMp$Params;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final CHECKMP_TAG:Ljava/lang/String; = "CheckMp"

.field public static final MAX_TIMEOUT_MS:I = 0xea60

.field private static final SOCKET_TIMEOUT_MS:I = 0x1388


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCs:Lcom/android/server/ConnectivityService;

.field private mParams:Lcom/android/server/ConnectivityService$CheckMp$Params;

.field private mTm:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/ConnectivityService;)V
    .locals 2
    .parameter "context"
    .parameter "cs"

    .prologue
    .line 3874
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 3875
    iput-object p1, p0, Lcom/android/server/ConnectivityService$CheckMp;->mContext:Landroid/content/Context;

    .line 3876
    iput-object p2, p0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    .line 3879
    iget-object v0, p0, Lcom/android/server/ConnectivityService$CheckMp;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/ConnectivityService$CheckMp;->mTm:Landroid/telephony/TelephonyManager;

    .line 3881
    return-void
.end method

.method private inetAddressesToString([Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 7
    .parameter "addresses"

    .prologue
    .line 4119
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 4120
    .local v5, sb:Ljava/lang/StringBuffer;
    const/4 v2, 0x1

    .line 4121
    .local v2, firstTime:Z
    move-object v1, p1

    .local v1, arr$:[Ljava/net/InetAddress;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 4122
    .local v0, addr:Ljava/net/InetAddress;
    if-eqz v2, :cond_0

    .line 4123
    const/4 v2, 0x0

    .line 4127
    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 4121
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4125
    :cond_0
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 4129
    .end local v0           #addr:Ljava/net/InetAddress;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private declared-synchronized isMobileOk(Lcom/android/server/ConnectivityService$CheckMp$Params;)Ljava/lang/Integer;
    .locals 30
    .parameter "params"

    .prologue
    .line 3902
    monitor-enter p0

    const/16 v25, 0x0

    :try_start_0
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 3903
    .local v19, result:Ljava/lang/Integer;
    #getter for: Lcom/android/server/ConnectivityService$CheckMp$Params;->mUrl:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/server/ConnectivityService$CheckMp$Params;->access$4300(Lcom/android/server/ConnectivityService$CheckMp$Params;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 3904
    .local v16, orgUri:Landroid/net/Uri;
    new-instance v17, Ljava/util/Random;

    invoke-direct/range {v17 .. v17}, Ljava/util/Random;-><init>()V

    .line 3905
    .local v17, rand:Ljava/util/Random;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityService$CheckMp;->mParams:Lcom/android/server/ConnectivityService$CheckMp$Params;

    .line 3907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/server/ConnectivityService;->isNetworkSupported(I)Z

    move-result v25

    if-nez v25, :cond_0

    .line 3908
    const-string v25, "isMobileOk: not mobile capable"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 3909
    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v19

    move-object/from16 v20, v19

    .line 4102
    .end local v19           #result:Ljava/lang/Integer;
    .local v20, result:Ljava/lang/Integer;
    :goto_0
    monitor-exit p0

    return-object v20

    .line 3915
    .end local v20           #result:Ljava/lang/Integer;
    .restart local v19       #result:Ljava/lang/Integer;
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v25

    #getter for: Lcom/android/server/ConnectivityService$CheckMp$Params;->mTimeOutMs:J
    invoke-static/range {p1 .. p1}, Lcom/android/server/ConnectivityService$CheckMp$Params;->access$4400(Lcom/android/server/ConnectivityService$CheckMp$Params;)J

    move-result-wide v27

    add-long v7, v25, v27

    .line 3917
    .local v7, endTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v25, v0

    #calls: Lcom/android/server/ConnectivityService;->isMobileDataStateTrackerReady()Z
    invoke-static/range {v25 .. v25}, Lcom/android/server/ConnectivityService;->access$4500(Lcom/android/server/ConnectivityService;)Z

    move-result v25

    if-nez v25, :cond_1

    .line 3919
    const-string v25, "isMobileOk: mdst is not ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 3920
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v25

    cmp-long v25, v25, v7

    if-gez v25, :cond_1

    .line 3921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v25, v0

    #calls: Lcom/android/server/ConnectivityService;->isMobileDataStateTrackerReady()Z
    invoke-static/range {v25 .. v25}, Lcom/android/server/ConnectivityService;->access$4500(Lcom/android/server/ConnectivityService;)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 3924
    const-string v25, "isMobileOk: mdst ready, enable fail fast of mobile data"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 3925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    #calls: Lcom/android/server/ConnectivityService;->setEnableFailFastMobileData(I)V
    invoke-static/range {v25 .. v26}, Lcom/android/server/ConnectivityService;->access$4600(Lcom/android/server/ConnectivityService;I)V

    .line 3932
    :cond_1
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "isMobileOk: start hipri url="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    #getter for: Lcom/android/server/ConnectivityService$CheckMp$Params;->mUrl:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/server/ConnectivityService$CheckMp$Params;->access$4300(Lcom/android/server/ConnectivityService$CheckMp$Params;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 3935
    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    .line 3936
    .local v5, binder:Landroid/os/Binder;
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v25

    cmp-long v25, v25, v7

    if-gez v25, :cond_3

    .line 3937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-string v27, "enableHIPRI"

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/ConnectivityService;->startUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;)I

    move-result v21

    .line 3939
    .local v21, ret:I
    if-eqz v21, :cond_2

    const/16 v25, 0x1

    move/from16 v0, v21

    move/from16 v1, v25

    if-ne v0, v1, :cond_6

    .line 3941
    :cond_2
    const-string v25, "isMobileOk: hipri started"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 3950
    .end local v21           #ret:I
    :cond_3
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v25

    cmp-long v25, v25, v7

    if-gez v25, :cond_17

    .line 3955
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v25, v0

    const/16 v26, 0x5

    invoke-virtual/range {v25 .. v26}, Lcom/android/server/ConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v22

    .line 3957
    .local v22, state:Landroid/net/NetworkInfo$State;
    sget-object v25, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_7

    .line 3959
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "isMobileOk: not connected ni="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v26, v0

    const/16 v27, 0x5

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/ConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 3962
    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Lcom/android/server/ConnectivityService$CheckMp;->sleep(I)V

    .line 3963
    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v19

    goto :goto_3

    .line 3928
    .end local v5           #binder:Landroid/os/Binder;
    .end local v22           #state:Landroid/net/NetworkInfo$State;
    :cond_4
    const/16 v25, 0x1

    :try_start_3
    invoke-static/range {v25 .. v25}, Lcom/android/server/ConnectivityService$CheckMp;->sleep(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 4079
    .end local v7           #endTime:J
    :catchall_0
    move-exception v25

    :try_start_4
    const-string v26, "isMobileOk: F stop hipri"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 4080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    #calls: Lcom/android/server/ConnectivityService;->setEnableFailFastMobileData(I)V
    invoke-static/range {v26 .. v27}, Lcom/android/server/ConnectivityService;->access$4600(Lcom/android/server/ConnectivityService;I)V

    .line 4081
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-string v28, "enableHIPRI"

    invoke-virtual/range {v26 .. v28}, Lcom/android/server/ConnectivityService;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 4085
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v26

    const-wide/16 v28, 0x1388

    add-long v7, v26, v28

    .line 4087
    .restart local v7       #endTime:J
    :cond_5
    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v26

    cmp-long v26, v26, v7

    if-gez v26, :cond_19

    .line 4088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v26, v0

    const/16 v27, 0x5

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/ConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v22

    .line 4090
    .restart local v22       #state:Landroid/net/NetworkInfo$State;
    sget-object v26, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_5

    .line 4095
    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Lcom/android/server/ConnectivityService$CheckMp;->sleep(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    .line 3902
    .end local v7           #endTime:J
    .end local v16           #orgUri:Landroid/net/Uri;
    .end local v17           #rand:Ljava/util/Random;
    .end local v19           #result:Ljava/lang/Integer;
    .end local v22           #state:Landroid/net/NetworkInfo$State;
    :catchall_1
    move-exception v25

    monitor-exit p0

    throw v25

    .line 3945
    .restart local v5       #binder:Landroid/os/Binder;
    .restart local v7       #endTime:J
    .restart local v16       #orgUri:Landroid/net/Uri;
    .restart local v17       #rand:Ljava/util/Random;
    .restart local v19       #result:Ljava/lang/Integer;
    .restart local v21       #ret:I
    :cond_6
    const/16 v25, 0x0

    :try_start_5
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 3946
    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Lcom/android/server/ConnectivityService$CheckMp;->sleep(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 3968
    .end local v21           #ret:I
    .restart local v22       #state:Landroid/net/NetworkInfo$State;
    :cond_7
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v25, v0

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v25 .. v25}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v25

    const/16 v26, 0x5

    aget-object v14, v25, v26

    check-cast v14, Landroid/net/MobileDataStateTracker;

    .line 3970
    .local v14, mdst:Landroid/net/MobileDataStateTracker;
    invoke-virtual {v14}, Landroid/net/MobileDataStateTracker;->isProvisioningNetwork()Z

    move-result v25

    if-eqz v25, :cond_a

    .line 3971
    const-string v25, "isMobileOk: isProvisioningNetwork is true, no TCP conn"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 3972
    const/16 v25, 0x4

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-result-object v19

    .line 4079
    :try_start_7
    const-string v25, "isMobileOk: F stop hipri"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 4080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    #calls: Lcom/android/server/ConnectivityService;->setEnableFailFastMobileData(I)V
    invoke-static/range {v25 .. v26}, Lcom/android/server/ConnectivityService;->access$4600(Lcom/android/server/ConnectivityService;I)V

    .line 4081
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-string v27, "enableHIPRI"

    invoke-virtual/range {v25 .. v27}, Lcom/android/server/ConnectivityService;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 4085
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v25

    const-wide/16 v27, 0x1388

    add-long v7, v25, v27

    .line 4087
    :cond_8
    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v25

    cmp-long v25, v25, v7

    if-gez v25, :cond_9

    .line 4088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v25, v0

    const/16 v26, 0x5

    invoke-virtual/range {v25 .. v26}, Lcom/android/server/ConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v22

    .line 4090
    sget-object v25, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_8

    .line 4095
    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Lcom/android/server/ConnectivityService$CheckMp;->sleep(I)V

    goto :goto_5

    .line 4100
    :cond_9
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "isMobileOk: X result="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object/from16 v20, v19

    .line 3973
    .end local v19           #result:Ljava/lang/Integer;
    .restart local v20       #result:Ljava/lang/Integer;
    goto/16 :goto_0

    .line 3975
    .end local v20           #result:Ljava/lang/Integer;
    .restart local v19       #result:Ljava/lang/Integer;
    :cond_a
    :try_start_8
    const-string v25, "isMobileOk: isProvisioningNetwork is false, continue"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 3985
    :try_start_9
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/net/UnknownHostException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    move-result-object v4

    .line 3991
    .local v4, addresses:[Ljava/net/InetAddress;
    :try_start_a
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "isMobileOk: addresses="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/ConnectivityService$CheckMp;->inetAddressesToString([Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 3994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v25, v0

    const/16 v26, 0x5

    invoke-virtual/range {v25 .. v26}, Lcom/android/server/ConnectivityService;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v13

    .line 3996
    .local v13, lp:Landroid/net/LinkProperties;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/ConnectivityService$CheckMp;->hasIPv4Address(Landroid/net/LinkProperties;)Z

    move-result v10

    .line 3997
    .local v10, linkHasIpv4:Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/ConnectivityService$CheckMp;->hasIPv6Address(Landroid/net/LinkProperties;)Z

    move-result v11

    .line 3998
    .local v11, linkHasIpv6:Z
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "isMobileOk: linkHasIpv4="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " linkHasIpv6="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 4003
    const/16 v25, 0x3

    array-length v0, v4

    move/from16 v26, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 4004
    .local v12, loops:I
    const/16 v24, 0x0

    .local v24, validAddr:I
    const/4 v3, 0x0

    .line 4006
    .local v3, addrTried:I
    :goto_6
    move/from16 v0, v24

    if-ge v0, v12, :cond_14

    array-length v0, v4

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v3, v0, :cond_14

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v25

    cmp-long v25, v25, v7

    if-gez v25, :cond_14

    .line 4010
    array-length v0, v4

    move/from16 v25, v0

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v25

    aget-object v9, v4, v25

    .line 4011
    .local v9, hostAddr:Ljava/net/InetAddress;
    instance-of v0, v9, Ljava/net/Inet4Address;

    move/from16 v25, v0

    if-eqz v25, :cond_b

    if-nez v10, :cond_c

    :cond_b
    instance-of v0, v9, Ljava/net/Inet6Address;

    move/from16 v25, v0

    if-eqz v25, :cond_11

    if-eqz v11, :cond_11

    .line 4014
    :cond_c
    add-int/lit8 v24, v24, 0x1

    .line 4021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v25, v0

    const/16 v26, 0x5

    invoke-virtual {v9}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Lcom/android/server/ConnectivityService;->requestRouteToHostAddress(I[B)Z

    move-result v25

    if-eqz v25, :cond_10

    .line 4024
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "isMobileOk: wait to establish route to hostAddr="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 4026
    const/16 v25, 0x3

    invoke-static/range {v25 .. v25}, Lcom/android/server/ConnectivityService$CheckMp;->sleep(I)V

    .line 4036
    new-instance v15, Ljava/net/URL;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "://"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v15, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 4038
    .local v15, newUrl:Ljava/net/URL;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "isMobileOk: newUrl="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 4040
    const/16 v23, 0x0

    .line 4043
    .local v23, urlConn:Ljava/net/HttpURLConnection;
    :try_start_b
    sget-object v25, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v25

    move-object/from16 v0, v25

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object/from16 v23, v0

    .line 4045
    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 4046
    const/16 v25, 0x1388

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 4047
    const/16 v25, 0x1388

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 4048
    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 4049
    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 4050
    const-string v25, "Connection"

    const-string v26, "close"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 4051
    invoke-virtual/range {v23 .. v23}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v18

    .line 4052
    .local v18, responseCode:I
    const/16 v25, 0xcc

    move/from16 v0, v18

    move/from16 v1, v25

    if-ne v0, v1, :cond_12

    .line 4053
    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 4057
    :goto_7
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "isMobileOk: connected responseCode="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 4058
    invoke-virtual/range {v23 .. v23}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 4059
    const/16 v23, 0x0

    .line 4079
    :try_start_c
    const-string v25, "isMobileOk: F stop hipri"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 4080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    #calls: Lcom/android/server/ConnectivityService;->setEnableFailFastMobileData(I)V
    invoke-static/range {v25 .. v26}, Lcom/android/server/ConnectivityService;->access$4600(Lcom/android/server/ConnectivityService;I)V

    .line 4081
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-string v27, "enableHIPRI"

    invoke-virtual/range {v25 .. v27}, Lcom/android/server/ConnectivityService;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 4085
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v25

    const-wide/16 v27, 0x1388

    add-long v7, v25, v27

    .line 4087
    :cond_d
    :goto_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v25

    cmp-long v25, v25, v7

    if-gez v25, :cond_13

    .line 4088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v25, v0

    const/16 v26, 0x5

    invoke-virtual/range {v25 .. v26}, Lcom/android/server/ConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v22

    .line 4090
    sget-object v25, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_d

    .line 4095
    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Lcom/android/server/ConnectivityService$CheckMp;->sleep(I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_8

    .line 3986
    .end local v3           #addrTried:I
    .end local v4           #addresses:[Ljava/net/InetAddress;
    .end local v9           #hostAddr:Ljava/net/InetAddress;
    .end local v10           #linkHasIpv4:Z
    .end local v11           #linkHasIpv6:Z
    .end local v12           #loops:I
    .end local v13           #lp:Landroid/net/LinkProperties;
    .end local v15           #newUrl:Ljava/net/URL;
    .end local v18           #responseCode:I
    .end local v23           #urlConn:Ljava/net/HttpURLConnection;
    .end local v24           #validAddr:I
    :catch_0
    move-exception v6

    .line 3987
    .local v6, e:Ljava/net/UnknownHostException;
    :try_start_d
    const-string v25, "isMobileOk: UnknownHostException"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 3988
    const/16 v25, 0x3

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    move-result-object v19

    .line 4079
    :try_start_e
    const-string v25, "isMobileOk: F stop hipri"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 4080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    #calls: Lcom/android/server/ConnectivityService;->setEnableFailFastMobileData(I)V
    invoke-static/range {v25 .. v26}, Lcom/android/server/ConnectivityService;->access$4600(Lcom/android/server/ConnectivityService;I)V

    .line 4081
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-string v27, "enableHIPRI"

    invoke-virtual/range {v25 .. v27}, Lcom/android/server/ConnectivityService;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 4085
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v25

    const-wide/16 v27, 0x1388

    add-long v7, v25, v27

    .line 4087
    :cond_e
    :goto_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v25

    cmp-long v25, v25, v7

    if-gez v25, :cond_f

    .line 4088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v25, v0

    const/16 v26, 0x5

    invoke-virtual/range {v25 .. v26}, Lcom/android/server/ConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v22

    .line 4090
    sget-object v25, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_e

    .line 4095
    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Lcom/android/server/ConnectivityService$CheckMp;->sleep(I)V

    goto :goto_9

    .line 4100
    :cond_f
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "isMobileOk: X result="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    move-object/from16 v20, v19

    .line 3989
    .end local v19           #result:Ljava/lang/Integer;
    .restart local v20       #result:Ljava/lang/Integer;
    goto/16 :goto_0

    .line 4028
    .end local v6           #e:Ljava/net/UnknownHostException;
    .end local v20           #result:Ljava/lang/Integer;
    .restart local v3       #addrTried:I
    .restart local v4       #addresses:[Ljava/net/InetAddress;
    .restart local v9       #hostAddr:Ljava/net/InetAddress;
    .restart local v10       #linkHasIpv4:Z
    .restart local v11       #linkHasIpv6:Z
    .restart local v12       #loops:I
    .restart local v13       #lp:Landroid/net/LinkProperties;
    .restart local v19       #result:Ljava/lang/Integer;
    .restart local v24       #validAddr:I
    :cond_10
    :try_start_f
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "isMobileOk: could not establish route to hostAddr="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    .line 4007
    :cond_11
    :goto_a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    .line 4055
    .restart local v15       #newUrl:Ljava/net/URL;
    .restart local v18       #responseCode:I
    .restart local v23       #urlConn:Ljava/net/HttpURLConnection;
    :cond_12
    const/16 v25, 0x2

    :try_start_10
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1

    move-result-object v19

    goto/16 :goto_7

    .line 4100
    :cond_13
    :try_start_11
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "isMobileOk: X result="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    move-object/from16 v20, v19

    .line 4060
    .end local v19           #result:Ljava/lang/Integer;
    .restart local v20       #result:Ljava/lang/Integer;
    goto/16 :goto_0

    .line 4061
    .end local v18           #responseCode:I
    .end local v20           #result:Ljava/lang/Integer;
    .restart local v19       #result:Ljava/lang/Integer;
    :catch_1
    move-exception v6

    .line 4062
    .local v6, e:Ljava/lang/Exception;
    :try_start_12
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "isMobileOk: HttpURLConnection Exception e="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 4063
    if-eqz v23, :cond_11

    .line 4064
    invoke-virtual/range {v23 .. v23}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2

    goto :goto_a

    .line 4072
    .end local v3           #addrTried:I
    .end local v4           #addresses:[Ljava/net/InetAddress;
    .end local v6           #e:Ljava/lang/Exception;
    .end local v9           #hostAddr:Ljava/net/InetAddress;
    .end local v10           #linkHasIpv4:Z
    .end local v11           #linkHasIpv6:Z
    .end local v12           #loops:I
    .end local v13           #lp:Landroid/net/LinkProperties;
    .end local v14           #mdst:Landroid/net/MobileDataStateTracker;
    .end local v15           #newUrl:Ljava/net/URL;
    .end local v22           #state:Landroid/net/NetworkInfo$State;
    .end local v23           #urlConn:Ljava/net/HttpURLConnection;
    .end local v24           #validAddr:I
    :catch_2
    move-exception v6

    .line 4073
    .restart local v6       #e:Ljava/lang/Exception;
    :try_start_13
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "isMobileOk: Exception e="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_3

    .line 4069
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v3       #addrTried:I
    .restart local v4       #addresses:[Ljava/net/InetAddress;
    .restart local v10       #linkHasIpv4:Z
    .restart local v11       #linkHasIpv6:Z
    .restart local v12       #loops:I
    .restart local v13       #lp:Landroid/net/LinkProperties;
    .restart local v14       #mdst:Landroid/net/MobileDataStateTracker;
    .restart local v22       #state:Landroid/net/NetworkInfo$State;
    .restart local v24       #validAddr:I
    :cond_14
    const/16 v25, 0x4

    :try_start_14
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 4070
    const-string v25, "isMobileOk: loops|timed out"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_2

    .line 4079
    :try_start_15
    const-string v25, "isMobileOk: F stop hipri"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 4080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    #calls: Lcom/android/server/ConnectivityService;->setEnableFailFastMobileData(I)V
    invoke-static/range {v25 .. v26}, Lcom/android/server/ConnectivityService;->access$4600(Lcom/android/server/ConnectivityService;I)V

    .line 4081
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-string v27, "enableHIPRI"

    invoke-virtual/range {v25 .. v27}, Lcom/android/server/ConnectivityService;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 4085
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v25

    const-wide/16 v27, 0x1388

    add-long v7, v25, v27

    .line 4087
    :cond_15
    :goto_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v25

    cmp-long v25, v25, v7

    if-gez v25, :cond_16

    .line 4088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v25, v0

    const/16 v26, 0x5

    invoke-virtual/range {v25 .. v26}, Lcom/android/server/ConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v22

    .line 4090
    sget-object v25, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_15

    .line 4095
    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Lcom/android/server/ConnectivityService$CheckMp;->sleep(I)V

    goto :goto_b

    .line 4100
    :cond_16
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "isMobileOk: X result="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    move-object/from16 v20, v19

    .line 4071
    .end local v19           #result:Ljava/lang/Integer;
    .restart local v20       #result:Ljava/lang/Integer;
    goto/16 :goto_0

    .line 4077
    .end local v3           #addrTried:I
    .end local v4           #addresses:[Ljava/net/InetAddress;
    .end local v10           #linkHasIpv4:Z
    .end local v11           #linkHasIpv6:Z
    .end local v12           #loops:I
    .end local v13           #lp:Landroid/net/LinkProperties;
    .end local v14           #mdst:Landroid/net/MobileDataStateTracker;
    .end local v20           #result:Ljava/lang/Integer;
    .end local v22           #state:Landroid/net/NetworkInfo$State;
    .end local v24           #validAddr:I
    .restart local v19       #result:Ljava/lang/Integer;
    :cond_17
    :try_start_16
    const-string v25, "isMobileOk: timed out"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 4079
    :try_start_17
    const-string v25, "isMobileOk: F stop hipri"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 4080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    #calls: Lcom/android/server/ConnectivityService;->setEnableFailFastMobileData(I)V
    invoke-static/range {v25 .. v26}, Lcom/android/server/ConnectivityService;->access$4600(Lcom/android/server/ConnectivityService;I)V

    .line 4081
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-string v27, "enableHIPRI"

    invoke-virtual/range {v25 .. v27}, Lcom/android/server/ConnectivityService;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 4085
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v25

    const-wide/16 v27, 0x1388

    add-long v7, v25, v27

    .line 4087
    :cond_18
    :goto_c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v25

    cmp-long v25, v25, v7

    if-gez v25, :cond_1a

    .line 4088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v25, v0

    const/16 v26, 0x5

    invoke-virtual/range {v25 .. v26}, Lcom/android/server/ConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v22

    .line 4090
    .restart local v22       #state:Landroid/net/NetworkInfo$State;
    sget-object v25, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_18

    .line 4095
    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Lcom/android/server/ConnectivityService$CheckMp;->sleep(I)V

    goto :goto_c

    .line 4100
    .end local v5           #binder:Landroid/os/Binder;
    .end local v22           #state:Landroid/net/NetworkInfo$State;
    :cond_19
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "isMobileOk: X result="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 4079
    throw v25

    .line 4100
    .restart local v5       #binder:Landroid/os/Binder;
    :cond_1a
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "isMobileOk: X result="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    move-object/from16 v20, v19

    .line 4102
    .end local v19           #result:Ljava/lang/Integer;
    .restart local v20       #result:Ljava/lang/Integer;
    goto/16 :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 4175
    const-string v0, "ConnectivityService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CheckMp] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4176
    return-void
.end method

.method private printNetworkInfo()V
    .locals 9

    .prologue
    .line 4133
    iget-object v7, p0, Lcom/android/server/ConnectivityService$CheckMp;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v1

    .line 4134
    .local v1, hasIccCard:Z
    iget-object v7, p0, Lcom/android/server/ConnectivityService$CheckMp;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v6

    .line 4135
    .local v6, simState:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hasIccCard="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " simState="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 4137
    iget-object v7, p0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    invoke-virtual {v7}, Lcom/android/server/ConnectivityService;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v5

    .line 4138
    .local v5, ni:[Landroid/net/NetworkInfo;
    if-eqz v5, :cond_0

    .line 4139
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ni.length="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 4140
    move-object v0, v5

    .local v0, arr$:[Landroid/net/NetworkInfo;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 4141
    .local v4, netInfo:Landroid/net/NetworkInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "netInfo="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 4140
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4144
    .end local v0           #arr$:[Landroid/net/NetworkInfo;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #netInfo:Landroid/net/NetworkInfo;
    :cond_0
    const-string v7, "no network info ni=null"

    invoke-direct {p0, v7}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 4146
    :cond_1
    return-void
.end method

.method private static sleep(I)V
    .locals 3
    .parameter "seconds"

    .prologue
    .line 4154
    mul-int/lit16 v1, p0, 0x3e8

    int-to-long v1, v1

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4158
    :goto_0
    return-void

    .line 4155
    :catch_0
    move-exception v0

    .line 4156
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/server/ConnectivityService$CheckMp$Params;)Ljava/lang/Integer;
    .locals 1
    .parameter "params"

    .prologue
    .line 4107
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService$CheckMp;->isMobileOk(Lcom/android/server/ConnectivityService$CheckMp$Params;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3835
    check-cast p1, [Lcom/android/server/ConnectivityService$CheckMp$Params;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService$CheckMp;->doInBackground([Lcom/android/server/ConnectivityService$CheckMp$Params;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3888
    iget-object v1, p0, Lcom/android/server/ConnectivityService$CheckMp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "captive_portal_server"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3890
    .local v0, server:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 3891
    const-string v0, "clients3.google.com"

    .line 3893
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/generate_204"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public hasIPv4Address(Landroid/net/LinkProperties;)Z
    .locals 1
    .parameter "lp"

    .prologue
    .line 4161
    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v0

    return v0
.end method

.method public hasIPv6Address(Landroid/net/LinkProperties;)Z
    .locals 3
    .parameter "lp"

    .prologue
    .line 4166
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .line 4167
    .local v0, address:Landroid/net/LinkAddress;
    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet6Address;

    if-eqz v2, :cond_0

    .line 4168
    const/4 v2, 0x1

    .line 4171
    .end local v0           #address:Landroid/net/LinkAddress;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 4112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPostExecute: result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 4113
    iget-object v0, p0, Lcom/android/server/ConnectivityService$CheckMp;->mParams:Lcom/android/server/ConnectivityService$CheckMp$Params;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ConnectivityService$CheckMp;->mParams:Lcom/android/server/ConnectivityService$CheckMp$Params;

    #getter for: Lcom/android/server/ConnectivityService$CheckMp$Params;->mCb:Lcom/android/server/ConnectivityService$CheckMp$CallBack;
    invoke-static {v0}, Lcom/android/server/ConnectivityService$CheckMp$Params;->access$4700(Lcom/android/server/ConnectivityService$CheckMp$Params;)Lcom/android/server/ConnectivityService$CheckMp$CallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4114
    iget-object v0, p0, Lcom/android/server/ConnectivityService$CheckMp;->mParams:Lcom/android/server/ConnectivityService$CheckMp$Params;

    #getter for: Lcom/android/server/ConnectivityService$CheckMp$Params;->mCb:Lcom/android/server/ConnectivityService$CheckMp$CallBack;
    invoke-static {v0}, Lcom/android/server/ConnectivityService$CheckMp$Params;->access$4700(Lcom/android/server/ConnectivityService$CheckMp$Params;)Lcom/android/server/ConnectivityService$CheckMp$CallBack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/ConnectivityService$CheckMp$CallBack;->onComplete(Ljava/lang/Integer;)V

    .line 4116
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3835
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService$CheckMp;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
