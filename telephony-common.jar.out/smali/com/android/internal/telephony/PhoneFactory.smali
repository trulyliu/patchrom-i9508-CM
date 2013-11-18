.class public Lcom/android/internal/telephony/PhoneFactory;
.super Ljava/lang/Object;
.source "PhoneFactory.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "PhoneFactory"

.field protected static final SOCKET_OPEN_MAX_RETRY:I = 0x3

.field protected static final SOCKET_OPEN_RETRY_MILLIS:I = 0x7d0

.field protected static sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface; = null

.field protected static sContext:Landroid/content/Context; = null

.field protected static sLooper:Landroid/os/Looper; = null

.field protected static sMadeDefaults:Z = false

.field protected static sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier; = null

.field protected static final sPreferredCdmaSubscription:I = 0x1

.field protected static sProxyPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    .line 47
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCdmaPhone()Lcom/android/internal/telephony/Phone;
    .locals 5

    .prologue
    .line 192
    sget-object v2, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v2

    .line 193
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 201
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 205
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    :goto_0
    monitor-exit v2

    .line 206
    return-object v0

    .line 195
    .end local v0           #phone:Lcom/android/internal/telephony/Phone;
    :pswitch_0
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 196
    .restart local v0       #phone:Lcom/android/internal/telephony/Phone;
    goto :goto_0

    .line 205
    .end local v0           #phone:Lcom/android/internal/telephony/Phone;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 193
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 2

    .prologue
    .line 179
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 180
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PhoneFactory.getDefaultPhone must be called from Looper thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v0, :cond_1

    .line 185
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Default phones haven\'t been made yet!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public static getGsmPhone()Lcom/android/internal/telephony/Phone;
    .locals 5

    .prologue
    .line 210
    sget-object v2, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v2

    .line 211
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 212
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    monitor-exit v2

    return-object v0

    .line 213
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static makeDefaultPhone(Landroid/content/Context;)V
    .locals 20
    .parameter "context"

    .prologue
    .line 68
    const-class v16, Lcom/android/internal/telephony/Phone;

    monitor-enter v16

    .line 69
    :try_start_0
    sget-boolean v15, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v15, :cond_5

    .line 70
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v15

    sput-object v15, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    .line 71
    sput-object p0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    .line 73
    sget-object v15, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    if-nez v15, :cond_0

    .line 74
    new-instance v15, Ljava/lang/RuntimeException;

    const-string v17, "PhoneFactory.makeDefaultPhone must be called from Looper thread"

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 175
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    .line 78
    :cond_0
    const/4 v13, 0x0

    .line 80
    .local v13, retryCount:I
    :goto_0
    const/4 v9, 0x0

    .line 81
    .local v9, hasException:Z
    add-int/lit8 v13, v13, 0x1

    .line 86
    :try_start_1
    new-instance v15, Landroid/net/LocalServerSocket;

    const-string v17, "com.android.internal.telephony"

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 91
    :goto_1
    if-nez v9, :cond_6

    .line 103
    :try_start_2
    new-instance v15, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    invoke-direct {v15}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>()V

    sput-object v15, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 106
    const/4 v12, 0x0

    .line 107
    .local v12, preferredNetworkMode:I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v15

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_1

    .line 108
    const/4 v12, 0x7

    .line 110
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnGsmModeStatic()I

    move-result v15

    if-eqz v15, :cond_2

    .line 111
    const/16 v12, 0x9

    .line 113
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v17, "preferred_network_mode"

    move-object/from16 v0, v17

    invoke-static {v15, v0, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 115
    .local v10, networkMode:I
    const-string v15, "PhoneFactory"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Network Mode set to "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const-string v15, "persist.env.phone.global"

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v15, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 121
    const/16 v10, 0xa

    .line 122
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v17, "preferred_network_mode"

    move-object/from16 v0, v17

    invoke-static {v15, v0, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 128
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v17, "subscription_mode"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v15, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 131
    .local v4, cdmaSubscription:I
    const-string v15, "PhoneFactory"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Cdma Subscription set to "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v15, "ro.telephony.ril_class"

    const-string v17, "RIL"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 135
    .local v14, sRILClassname:Ljava/lang/String;
    const-string v15, "PhoneFactory"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "RILClassname is "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    :try_start_3
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "com.android.internal.telephony."

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 140
    .local v5, classDefinition:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v17, 0x0

    const-class v18, Landroid/content/Context;

    aput-object v18, v15, v17

    const/16 v17, 0x1

    sget-object v18, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v18, v15, v17

    const/16 v17, 0x2

    sget-object v18, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v18, v15, v17

    invoke-virtual {v5, v15}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    .line 141
    .local v6, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object p0, v15, v17

    const/16 v17, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v15, v17

    const/16 v17, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v15, v17

    invoke-virtual {v6, v15}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/RIL;

    sput-object v15, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 150
    :try_start_4
    sget-object v15, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/UiccController;

    .line 152
    invoke-static {v10}, Landroid/telephony/TelephonyManager;->getPhoneType(I)I

    move-result v11

    .line 153
    .local v11, phoneType:I
    const/4 v15, 0x1

    if-ne v11, v15, :cond_8

    .line 154
    const-string v15, "PhoneFactory"

    const-string v17, "Creating GSMPhone"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    new-instance v15, Lcom/android/internal/telephony/PhoneProxy;

    new-instance v17, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v18, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v19, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    sput-object v15, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    .line 173
    :cond_4
    :goto_2
    const/4 v15, 0x1

    sput-boolean v15, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    .line 175
    .end local v4           #cdmaSubscription:I
    .end local v5           #classDefinition:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v6           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v9           #hasException:Z
    .end local v10           #networkMode:I
    .end local v11           #phoneType:I
    .end local v12           #preferredNetworkMode:I
    .end local v13           #retryCount:I
    .end local v14           #sRILClassname:Ljava/lang/String;
    :cond_5
    monitor-exit v16

    .line 176
    return-void

    .line 87
    .restart local v9       #hasException:Z
    .restart local v13       #retryCount:I
    :catch_0
    move-exception v8

    .line 88
    .local v8, ex:Ljava/io/IOException;
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 93
    .end local v8           #ex:Ljava/io/IOException;
    :cond_6
    const/4 v15, 0x3

    if-le v13, v15, :cond_7

    .line 94
    new-instance v15, Ljava/lang/RuntimeException;

    const-string v17, "PhoneFactory probably already running"

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 97
    :cond_7
    const-wide/16 v17, 0x7d0

    :try_start_5
    invoke-static/range {v17 .. v18}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 98
    :catch_1
    move-exception v15

    goto/16 :goto_0

    .line 142
    .restart local v4       #cdmaSubscription:I
    .restart local v10       #networkMode:I
    .restart local v12       #preferredNetworkMode:I
    .restart local v14       #sRILClassname:Ljava/lang/String;
    :catch_2
    move-exception v7

    .line 145
    .local v7, e:Ljava/lang/Exception;
    :try_start_6
    const-string v15, "PhoneFactory"

    const-string v17, "Unable to construct command interface"

    move-object/from16 v0, v17

    invoke-static {v15, v0, v7}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    new-instance v15, Ljava/lang/RuntimeException;

    invoke-direct {v15, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v15

    .line 157
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v5       #classDefinition:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v6       #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .restart local v11       #phoneType:I
    :cond_8
    const/4 v15, 0x2

    if-ne v11, v15, :cond_4

    .line 158
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v15

    packed-switch v15, :pswitch_data_0

    .line 166
    const-string v15, "PhoneFactory"

    const-string v17, "Creating CDMAPhone"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v15, Lcom/android/internal/telephony/PhoneProxy;

    new-instance v17, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v18, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v19, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    sput-object v15, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_2

    .line 160
    :pswitch_0
    const-string v15, "PhoneFactory"

    const-string v17, "Creating CDMALTEPhone"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    new-instance v15, Lcom/android/internal/telephony/PhoneProxy;

    new-instance v17, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    sget-object v18, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v19, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    sput-object v15, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    .line 158
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static makeDefaultPhones(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 60
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->makeDefaultPhone(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method public static makeSipPhone(Ljava/lang/String;)Lcom/android/internal/telephony/sip/SipPhone;
    .locals 2
    .parameter "sipUri"

    .prologue
    .line 222
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/sip/SipPhoneFactory;->makePhone(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    return-object v0
.end method
