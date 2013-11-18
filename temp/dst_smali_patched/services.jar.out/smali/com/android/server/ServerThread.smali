.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ServerThread$AdbPortObserver;
    }
.end annotation


# static fields
.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "msg"
    .parameter "e"

    .prologue
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public run()V
    .locals 158

    .prologue
    const/16 v7, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Landroid/util/EventLog;->writeEvent(IJ)I

    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    const/4 v7, -0x2

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v7, 0x1

    invoke-static {v7}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    const/4 v7, 0x0

    invoke-static {v7}, Landroid/os/Process;->setCanSelfBackground(Z)V

    const-string v7, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v133

    .local v133, shutdownAction:Ljava/lang/String;
    if-eqz v133, :cond_0

    invoke-virtual/range {v133 .. v133}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    const/4 v7, 0x0

    move-object/from16 v0, v133

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x31

    if-ne v7, v9, :cond_16

    const/16 v123, 0x1

    .local v123, reboot:Z
    :goto_0
    invoke-virtual/range {v133 .. v133}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x1

    if-le v7, v9, :cond_17

    const/4 v7, 0x1

    invoke-virtual/range {v133 .. v133}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v133

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v122

    .local v122, reason:Ljava/lang/String;
    :goto_1
    move/from16 v0, v123

    move-object/from16 v1, v122

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .end local v122           #reason:Ljava/lang/String;
    .end local v123           #reboot:Z
    :cond_0
    const-string v7, "ro.factorytest"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v89

    .local v89, factoryTestStr:Ljava/lang/String;
    const-string v7, ""

    move-object/from16 v0, v89

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    const/16 v88, 0x0

    .local v88, factoryTest:I
    :goto_2
    const-string v7, "1"

    const-string v9, "ro.config.headless"

    const-string v11, "0"

    invoke-static {v9, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    .local v34, headless:Z
    const/16 v98, 0x0

    .local v98, installer:Lcom/android/server/pm/Installer;
    const/16 v62, 0x0

    .local v62, accountManager:Lcom/android/server/accounts/AccountManagerService;
    const/16 v75, 0x0

    .local v75, contentService:Lcom/android/server/content/ContentService;
    const/16 v100, 0x0

    .local v100, lights:Lcom/android/server/LightsService;
    const/16 v119, 0x0

    .local v119, power:Lcom/android/server/power/PowerManagerService;
    const/16 v82, 0x0

    .local v82, display:Lcom/android/server/display/DisplayManagerService;
    const/16 v79, 0x0

    .local v79, device:Lcom/android/server/DeviceHandlerService;
    const/16 v67, 0x0

    .local v67, battery:Lcom/android/server/BatteryService;
    const/16 v147, 0x0

    .local v147, vibrator:Lcom/android/server/VibratorService;
    const/16 v64, 0x0

    .local v64, alarm:Lcom/android/server/AlarmManagerService;
    const/16 v106, 0x0

    .local v106, mountService:Lcom/android/server/MountService;
    const/16 v31, 0x0

    .local v31, networkManagement:Lcom/android/server/NetworkManagementService;
    const/16 v30, 0x0

    .local v30, networkStats:Lcom/android/server/net/NetworkStatsService;
    const/16 v110, 0x0

    .local v110, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v73, 0x0

    .local v73, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v154, 0x0

    .local v154, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v152, 0x0

    .local v152, wifi:Lcom/android/server/wifi/WifiService;
    const/16 v132, 0x0

    .local v132, serviceDiscovery:Lcom/android/server/NsdService;
    const/16 v118, 0x0

    .local v118, pm:Landroid/content/pm/IPackageManager;
    const/4 v5, 0x0

    .local v5, context:Landroid/content/Context;
    const/16 v156, 0x0

    .local v156, wm:Lcom/android/server/wm/WindowManagerService;
    const/16 v68, 0x0

    .local v68, bluetooth:Lcom/android/server/BluetoothManagerService;
    const/16 v83, 0x0

    .local v83, dock:Lcom/android/server/DockObserver;
    const/16 v128, 0x0

    .local v128, rotateSwitch:Lcom/android/server/RotationSwitchObserver;
    const/16 v126, 0x0

    .local v126, regulatory:Lcom/android/server/RegulatoryObserver;
    const/16 v145, 0x0

    .local v145, usb:Lcom/android/server/usb/UsbService;
    const/16 v130, 0x0

    .local v130, serial:Lcom/android/server/SerialService;
    const/16 v140, 0x0

    .local v140, twilight:Lcom/android/server/TwilightService;
    const/16 v143, 0x0

    .local v143, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v124, 0x0

    .local v124, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v112, 0x0

    .local v112, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    const/16 v70, 0x0

    .local v70, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    const/16 v97, 0x0

    .local v97, inputManager:Lcom/android/server/input/InputManagerService;
    const/16 v136, 0x0

    .local v136, telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    const/16 v108, 0x0

    .local v108, msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    new-instance v142, Landroid/os/HandlerThread;

    const-string v7, "UI"

    move-object/from16 v0, v142

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .local v142, uiHandlerThread:Landroid/os/HandlerThread;
    invoke-virtual/range {v142 .. v142}, Landroid/os/HandlerThread;->start()V

    new-instance v21, Landroid/os/Handler;

    invoke-virtual/range {v142 .. v142}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .local v21, uiHandler:Landroid/os/Handler;
    new-instance v7, Lcom/android/server/ServerThread$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v157, Landroid/os/HandlerThread;

    const-string v7, "WindowManager"

    move-object/from16 v0, v157

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .local v157, wmHandlerThread:Landroid/os/HandlerThread;
    invoke-virtual/range {v157 .. v157}, Landroid/os/HandlerThread;->start()V

    new-instance v22, Landroid/os/Handler;

    invoke-virtual/range {v157 .. v157}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .local v22, wmHandler:Landroid/os/Handler;
    new-instance v7, Lcom/android/server/ServerThread$2;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$2;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/16 v25, 0x0

    .local v25, onlyCore:Z
    :try_start_0
    const-string v7, "SystemServer"

    const-string v9, "Waiting for installd to be ready."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v99, Lcom/android/server/pm/Installer;

    invoke-direct/range {v99 .. v99}, Lcom/android/server/pm/Installer;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_5b

    .end local v98           #installer:Lcom/android/server/pm/Installer;
    .local v99, installer:Lcom/android/server/pm/Installer;
    :try_start_1
    invoke-virtual/range {v99 .. v99}, Lcom/android/server/pm/Installer;->ping()Z

    const-string v7, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/android/server/power/PowerManagerService;

    invoke-direct {v4}, Lcom/android/server/power/PowerManagerService;-><init>()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_5c

    .end local v119           #power:Lcom/android/server/power/PowerManagerService;
    .local v4, power:Lcom/android/server/power/PowerManagerService;
    :try_start_2
    const-string v7, "power"

    invoke-static {v7, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v88 .. v88}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v5

    const-string v7, "SystemServer"

    const-string v9, "Display Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-direct {v10, v5, v0, v1}, Lcom/android/server/display/DisplayManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_5d

    .end local v82           #display:Lcom/android/server/display/DisplayManagerService;
    .local v10, display:Lcom/android/server/display/DisplayManagerService;
    :try_start_3
    const-string v7, "display"

    const/4 v9, 0x1

    invoke-static {v7, v10, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    const-string v7, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v137, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v137

    invoke-direct {v0, v5}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_5e

    .end local v136           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .local v137, telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :try_start_4
    const-string v7, "telephony.registry"

    move-object/from16 v0, v137

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "SystemServer"

    const-string v9, "MSimTelephony Registry"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v109, Lcom/android/server/MSimTelephonyRegistry;

    move-object/from16 v0, v109

    invoke-direct {v0, v5}, Lcom/android/server/MSimTelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .end local v108           #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    .local v109, msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    :try_start_5
    const-string v7, "telephony.msim.registry"

    move-object/from16 v0, v109

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5f

    move-object/from16 v108, v109

    .end local v109           #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    .restart local v108       #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    :cond_1
    :try_start_6
    const-string v7, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "scheduling_policy"

    new-instance v9, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v9}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {v5}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    invoke-virtual {v10}, Lcom/android/server/display/DisplayManagerService;->waitForDefaultDisplay()Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "Timeout waiting for default display to be initialized."

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    const-string v7, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "vold.decrypt"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v78

    .local v78, cryptState:Ljava/lang/String;
    const-string v7, "trigger_restart_min_framework"

    move-object/from16 v0, v78

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    const-string v7, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v25, 0x1

    :cond_3
    :goto_3
    if-eqz v88, :cond_1a

    const/4 v7, 0x1

    :goto_4
    move-object/from16 v0, v99

    move/from16 v1, v25

    invoke-static {v5, v0, v7, v1}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Landroid/content/pm/IPackageManager;
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v118

    const/16 v91, 0x0

    .local v91, firstBoot:Z
    :try_start_7
    invoke-interface/range {v118 .. v118}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_42
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    move-result v91

    :goto_5
    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    const-string v7, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9, v5}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "User Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1

    :try_start_9
    const-string v7, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v63, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v63

    invoke-direct {v0, v5}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1

    .end local v62           #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .local v63, accountManager:Lcom/android/server/accounts/AccountManagerService;
    :try_start_a
    const-string v7, "account"

    move-object/from16 v0, v63

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_67
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_60

    move-object/from16 v62, v63

    .end local v63           #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .restart local v62       #accountManager:Lcom/android/server/accounts/AccountManagerService;
    :goto_6
    :try_start_b
    const-string v7, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    move/from16 v0, v88

    if-ne v0, v7, :cond_1b

    const/4 v7, 0x1

    :goto_7
    invoke-static {v5, v7}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v75

    const-string v7, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    const-string v7, "SystemServer"

    const-string v9, "Device Handler Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v20, Lcom/android/server/DeviceHandlerService;

    move-object/from16 v0, v20

    invoke-direct {v0, v5}, Lcom/android/server/DeviceHandlerService;-><init>(Landroid/content/Context;)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_1

    .end local v79           #device:Lcom/android/server/DeviceHandlerService;
    .local v20, device:Lcom/android/server/DeviceHandlerService;
    :try_start_c
    const-string v7, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/android/server/LightsService;

    invoke-direct {v6, v5}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_61

    .end local v100           #lights:Lcom/android/server/LightsService;
    .local v6, lights:Lcom/android/server/LightsService;
    :try_start_d
    const-string v7, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Lcom/android/server/BatteryService;

    move-object/from16 v0, v20

    invoke-direct {v8, v5, v6, v0}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;Lcom/android/internal/os/IDeviceHandler;)V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_62

    .end local v67           #battery:Lcom/android/server/BatteryService;
    .local v8, battery:Lcom/android/server/BatteryService;
    :try_start_e
    const-string v7, "battery"

    invoke-static {v7, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v148, Lcom/android/server/VibratorService;

    move-object/from16 v0, v148

    invoke-direct {v0, v5}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_63

    .end local v147           #vibrator:Lcom/android/server/VibratorService;
    .local v148, vibrator:Lcom/android/server/VibratorService;
    :try_start_f
    const-string v7, "vibrator"

    move-object/from16 v0, v148

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v9

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/power/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/BatteryService;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/display/DisplayManagerService;)V

    const-string v7, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v15, Lcom/android/server/AlarmManagerService;

    invoke-direct {v15, v5}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_64

    .end local v64           #alarm:Lcom/android/server/AlarmManagerService;
    .local v15, alarm:Lcom/android/server/AlarmManagerService;
    :try_start_10
    const-string v7, "alarm"

    invoke-static {v7, v15}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v16

    move-object v12, v5

    move-object v13, v8

    move-object v14, v4

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/power/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    const-string v7, "SystemServer"

    const-string v9, "Input Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v19, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v5, v1}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_65

    .end local v97           #inputManager:Lcom/android/server/input/InputManagerService;
    .local v19, inputManager:Lcom/android/server/input/InputManagerService;
    :try_start_11
    const-string v7, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    move/from16 v0, v88

    if-eq v0, v7, :cond_1c

    const/16 v23, 0x1

    :goto_8
    if-nez v91, :cond_1d

    const/16 v24, 0x1

    :goto_9
    move-object/from16 v16, v5

    move-object/from16 v17, v4

    move-object/from16 v18, v10

    invoke-static/range {v16 .. v25}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;Lcom/android/internal/os/IDeviceHandler;Landroid/os/Handler;Landroid/os/Handler;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v156

    const-string v7, "window"

    move-object/from16 v0, v156

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "input"

    move-object/from16 v0, v19

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    move-object/from16 v0, v156

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    invoke-virtual/range {v156 .. v156}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/input/InputManagerService;->start()V

    move-object/from16 v0, v156

    invoke-virtual {v10, v0}, Lcom/android/server/display/DisplayManagerService;->setWindowManager(Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/android/server/display/DisplayManagerService;->setInputManager(Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;)V

    const-string v7, "ro.kernel.qemu"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "1"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    const-string v7, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_2

    :goto_a
    move-object/from16 v136, v137

    .end local v137           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v136       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v147, v148

    .end local v148           #vibrator:Lcom/android/server/VibratorService;
    .restart local v147       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v98, v99

    .end local v78           #cryptState:Ljava/lang/String;
    .end local v91           #firstBoot:Z
    .end local v99           #installer:Lcom/android/server/pm/Installer;
    .restart local v98       #installer:Lcom/android/server/pm/Installer;
    :goto_b
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x111005b

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v94

    .local v94, hasRotationLock:Z
    const/16 v80, 0x0

    .local v80, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v134, 0x0

    .local v134, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v95, 0x0

    .local v95, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v65, 0x0

    .local v65, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v120, 0x0

    .local v120, profile:Lcom/android/server/ProfileManagerService;
    const/16 v114, 0x0

    .local v114, notification:Lcom/android/server/NotificationManagerService;
    const/16 v150, 0x0

    .local v150, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v101, 0x0

    .local v101, location:Lcom/android/server/LocationManagerService;
    const/16 v76, 0x0

    .local v76, countryDetector:Lcom/android/server/CountryDetectorService;
    const/16 v138, 0x0

    .local v138, tsms:Lcom/android/server/TextServicesManagerService;
    const/16 v103, 0x0

    .local v103, lockSettings:Lcom/android/server/LockSettingsService;
    const/16 v85, 0x0

    .local v85, dreamy:Lcom/android/server/dreams/DreamManagerService;
    const/16 v116, 0x0

    .local v116, pieService:Lcom/android/server/pie/PieService;
    const/16 v92, 0x0

    .local v92, gestureService:Lcom/android/server/gesture/GestureService;
    const/4 v7, 0x1

    move/from16 v0, v88

    if-eq v0, v7, :cond_4

    :try_start_12
    const-string v7, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v96, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v96

    move-object/from16 v1, v156

    invoke-direct {v0, v5, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_3

    .end local v95           #imm:Lcom/android/server/InputMethodManagerService;
    .local v96, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_13
    const-string v7, "input_method"

    move-object/from16 v0, v96

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_5a

    move-object/from16 v95, v96

    .end local v96           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v95       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_c
    :try_start_14
    const-string v7, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_4

    :cond_4
    :goto_d
    :try_start_15
    invoke-virtual/range {v156 .. v156}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_5

    :goto_e
    :try_start_16
    invoke-interface/range {v118 .. v118}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_6

    :goto_f
    :try_start_17
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x1040496

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v11, 0x0

    invoke-interface {v7, v9, v11}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_59

    :goto_10
    const/4 v7, 0x1

    move/from16 v0, v88

    if-eq v0, v7, :cond_22

    const-string v7, "0"

    const-string v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    :try_start_18
    const-string v7, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v107, Lcom/android/server/MountService;

    move-object/from16 v0, v107

    invoke-direct {v0, v5}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_7

    .end local v106           #mountService:Lcom/android/server/MountService;
    .local v107, mountService:Lcom/android/server/MountService;
    :try_start_19
    const-string v7, "mount"

    move-object/from16 v0, v107

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_58

    move-object/from16 v106, v107

    .end local v107           #mountService:Lcom/android/server/MountService;
    .restart local v106       #mountService:Lcom/android/server/MountService;
    :cond_5
    :goto_11
    :try_start_1a
    const-string v7, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v104, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v104

    invoke-direct {v0, v5}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_8

    .end local v103           #lockSettings:Lcom/android/server/LockSettingsService;
    .local v104, lockSettings:Lcom/android/server/LockSettingsService;
    :try_start_1b
    const-string v7, "lock_settings"

    move-object/from16 v0, v104

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_57

    move-object/from16 v103, v104

    .end local v104           #lockSettings:Lcom/android/server/LockSettingsService;
    .restart local v103       #lockSettings:Lcom/android/server/LockSettingsService;
    :goto_12
    :try_start_1c
    const-string v7, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v81, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v81

    invoke-direct {v0, v5}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_9

    .end local v80           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v81, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_1d
    const-string v7, "device_policy"

    move-object/from16 v0, v81

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_56

    move-object/from16 v80, v81

    .end local v81           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v80       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_13
    :try_start_1e
    const-string v7, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v135, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v135

    move-object/from16 v1, v156

    invoke-direct {v0, v5, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_a

    .end local v134           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v135, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_1f
    const-string v7, "statusbar"

    move-object/from16 v0, v135

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_55

    move-object/from16 v134, v135

    .end local v135           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v134       #statusBar:Lcom/android/server/StatusBarManagerService;
    :goto_14
    :try_start_20
    const-string v7, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v5}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_b

    :goto_15
    :try_start_21
    const-string v7, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v31

    const-string v7, "network_management"

    move-object/from16 v0, v31

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_c

    :goto_16
    :try_start_22
    const-string v7, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v139, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v139

    invoke-direct {v0, v5}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_d

    .end local v138           #tsms:Lcom/android/server/TextServicesManagerService;
    .local v139, tsms:Lcom/android/server/TextServicesManagerService;
    :try_start_23
    const-string v7, "textservices"

    move-object/from16 v0, v139

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_54

    move-object/from16 v138, v139

    .end local v139           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v138       #tsms:Lcom/android/server/TextServicesManagerService;
    :goto_17
    :try_start_24
    const-string v7, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v111, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v111

    move-object/from16 v1, v31

    invoke-direct {v0, v5, v1, v15}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_e

    .end local v30           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .local v111, networkStats:Lcom/android/server/net/NetworkStatsService;
    :try_start_25
    const-string v7, "netstats"

    move-object/from16 v0, v111

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_53

    move-object/from16 v30, v111

    .end local v111           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v30       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :goto_18
    :try_start_26
    const-string v7, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v26, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v28

    move-object/from16 v27, v5

    move-object/from16 v29, v4

    invoke-direct/range {v26 .. v31}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_f

    .end local v110           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .local v26, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_27
    const-string v7, "netpolicy"

    move-object/from16 v0, v26

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_52

    :goto_19
    :try_start_28
    const-string v7, "SystemServer"

    const-string v9, "Regulatory Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v127, Lcom/android/server/RegulatoryObserver;

    move-object/from16 v0, v127

    invoke-direct {v0, v5}, Lcom/android/server/RegulatoryObserver;-><init>(Landroid/content/Context;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_10

    .end local v126           #regulatory:Lcom/android/server/RegulatoryObserver;
    .local v127, regulatory:Lcom/android/server/RegulatoryObserver;
    move-object/from16 v126, v127

    .end local v127           #regulatory:Lcom/android/server/RegulatoryObserver;
    .restart local v126       #regulatory:Lcom/android/server/RegulatoryObserver;
    :goto_1a
    :try_start_29
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v155, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v155

    invoke-direct {v0, v5}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_11

    .end local v154           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .local v155, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_2a
    const-string v7, "wifip2p"

    move-object/from16 v0, v155

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_51

    move-object/from16 v154, v155

    .end local v155           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v154       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :goto_1b
    :try_start_2b
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v153, Lcom/android/server/wifi/WifiService;

    move-object/from16 v0, v153

    invoke-direct {v0, v5}, Lcom/android/server/wifi/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_12

    .end local v152           #wifi:Lcom/android/server/wifi/WifiService;
    .local v153, wifi:Lcom/android/server/wifi/WifiService;
    :try_start_2c
    const-string v7, "wifi"

    move-object/from16 v0, v153

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_50

    move-object/from16 v152, v153

    .end local v153           #wifi:Lcom/android/server/wifi/WifiService;
    .restart local v152       #wifi:Lcom/android/server/wifi/WifiService;
    :goto_1c
    :try_start_2d
    const-string v7, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v74, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v74

    move-object/from16 v1, v31

    move-object/from16 v2, v30

    move-object/from16 v3, v26

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_13

    .end local v73           #connectivity:Lcom/android/server/ConnectivityService;
    .local v74, connectivity:Lcom/android/server/ConnectivityService;
    :try_start_2e
    const-string v7, "connectivity"

    move-object/from16 v0, v74

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    invoke-virtual/range {v152 .. v152}, Lcom/android/server/wifi/WifiService;->checkAndStartWifi()V

    invoke-virtual/range {v154 .. v154}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_4f

    move-object/from16 v73, v74

    .end local v74           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v73       #connectivity:Lcom/android/server/ConnectivityService;
    :goto_1d
    :try_start_2f
    const-string v7, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v132

    const-string v7, "servicediscovery"

    move-object/from16 v0, v132

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_14

    :goto_1e
    :try_start_30
    const-string v7, "SystemServer"

    const-string v9, "FM receiver Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "fm_receiver"

    new-instance v9, Lcom/stericsson/hardware/fm/FmReceiverService;

    invoke-direct {v9, v5}, Lcom/stericsson/hardware/fm/FmReceiverService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_15

    :goto_1f
    :try_start_31
    const-string v7, "SystemServer"

    const-string v9, "FM transmitter Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "fm_transmitter"

    new-instance v9, Lcom/stericsson/hardware/fm/FmTransmitterService;

    invoke-direct {v9, v5}, Lcom/stericsson/hardware/fm/FmTransmitterService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_16

    :goto_20
    :try_start_32
    const-string v7, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v5}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_17

    :goto_21
    if-eqz v106, :cond_6

    invoke-virtual/range {v106 .. v106}, Lcom/android/server/MountService;->waitForAsecScan()V

    :cond_6
    if-eqz v62, :cond_7

    :try_start_33
    invoke-virtual/range {v62 .. v62}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_18

    :cond_7
    :goto_22
    if-eqz v75, :cond_8

    :try_start_34
    invoke-virtual/range {v75 .. v75}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_19

    :cond_8
    :goto_23
    :try_start_35
    const-string v7, "SystemServer"

    const-string v9, "Profile Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v121, Lcom/android/server/ProfileManagerService;

    move-object/from16 v0, v121

    invoke-direct {v0, v5}, Lcom/android/server/ProfileManagerService;-><init>(Landroid/content/Context;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_1a

    .end local v120           #profile:Lcom/android/server/ProfileManagerService;
    .local v121, profile:Lcom/android/server/ProfileManagerService;
    :try_start_36
    const-string v7, "profile"

    move-object/from16 v0, v121

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_4e

    move-object/from16 v120, v121

    .end local v121           #profile:Lcom/android/server/ProfileManagerService;
    .restart local v120       #profile:Lcom/android/server/ProfileManagerService;
    :goto_24
    :try_start_37
    const-string v7, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v115, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v115

    move-object/from16 v1, v134

    invoke-direct {v0, v5, v1, v6}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_1b

    .end local v114           #notification:Lcom/android/server/NotificationManagerService;
    .local v115, notification:Lcom/android/server/NotificationManagerService;
    :try_start_38
    const-string v7, "notification"

    move-object/from16 v0, v115

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v115

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_4d

    move-object/from16 v114, v115

    .end local v115           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v114       #notification:Lcom/android/server/NotificationManagerService;
    :goto_25
    :try_start_39
    const-string v7, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v5}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_1c

    :goto_26
    :try_start_3a
    const-string v7, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v102, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v102

    invoke-direct {v0, v5}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_1d

    .end local v101           #location:Lcom/android/server/LocationManagerService;
    .local v102, location:Lcom/android/server/LocationManagerService;
    :try_start_3b
    const-string v7, "location"

    move-object/from16 v0, v102

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_4c

    move-object/from16 v101, v102

    .end local v102           #location:Lcom/android/server/LocationManagerService;
    .restart local v101       #location:Lcom/android/server/LocationManagerService;
    :goto_27
    :try_start_3c
    const-string v7, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v77, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v77

    invoke-direct {v0, v5}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_1e

    .end local v76           #countryDetector:Lcom/android/server/CountryDetectorService;
    .local v77, countryDetector:Lcom/android/server/CountryDetectorService;
    :try_start_3d
    const-string v7, "country_detector"

    move-object/from16 v0, v77

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_4b

    move-object/from16 v76, v77

    .end local v77           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v76       #countryDetector:Lcom/android/server/CountryDetectorService;
    :goto_28
    :try_start_3e
    const-string v7, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "search"

    new-instance v9, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_1f

    :goto_29
    :try_start_3f
    const-string v7, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v11, Ljava/io/File;

    const-string v12, "/data/system/dropbox"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v5, v11}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_20

    :goto_2a
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x111002a

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_9

    :try_start_40
    const-string v7, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v34, :cond_9

    new-instance v151, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v151

    invoke-direct {v0, v5}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_21

    .end local v150           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v151, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_41
    const-string v7, "wallpaper"

    move-object/from16 v0, v151

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_4a

    move-object/from16 v150, v151

    .end local v151           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v150       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_9
    :goto_2b
    const-string v7, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    :try_start_42
    const-string v7, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v5}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_22

    :cond_a
    :goto_2c
    :try_start_43
    const-string v7, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v84, Lcom/android/server/DockObserver;

    move-object/from16 v0, v84

    invoke-direct {v0, v5}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_23

    .end local v83           #dock:Lcom/android/server/DockObserver;
    .local v84, dock:Lcom/android/server/DockObserver;
    move-object/from16 v83, v84

    .end local v84           #dock:Lcom/android/server/DockObserver;
    .restart local v83       #dock:Lcom/android/server/DockObserver;
    :goto_2d
    if-eqz v94, :cond_b

    :try_start_44
    const-string v7, "SystemServer"

    const-string v9, "Rotation Switch Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v129, Lcom/android/server/RotationSwitchObserver;

    move-object/from16 v0, v129

    invoke-direct {v0, v5}, Lcom/android/server/RotationSwitchObserver;-><init>(Landroid/content/Context;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_24

    .end local v128           #rotateSwitch:Lcom/android/server/RotationSwitchObserver;
    .local v129, rotateSwitch:Lcom/android/server/RotationSwitchObserver;
    move-object/from16 v128, v129

    .end local v129           #rotateSwitch:Lcom/android/server/RotationSwitchObserver;
    .restart local v128       #rotateSwitch:Lcom/android/server/RotationSwitchObserver;
    :cond_b
    :goto_2e
    :try_start_45
    const-string v7, "SystemServer"

    const-string v9, "Wired Accessory Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v19

    invoke-direct {v7, v5, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_25

    :goto_2f
    :try_start_46
    const-string v7, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v146, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v146

    invoke-direct {v0, v5}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_26

    .end local v145           #usb:Lcom/android/server/usb/UsbService;
    .local v146, usb:Lcom/android/server/usb/UsbService;
    :try_start_47
    const-string v7, "usb"

    move-object/from16 v0, v146

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_49

    move-object/from16 v145, v146

    .end local v146           #usb:Lcom/android/server/usb/UsbService;
    .restart local v145       #usb:Lcom/android/server/usb/UsbService;
    :goto_30
    :try_start_48
    const-string v7, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v131, Lcom/android/server/SerialService;

    move-object/from16 v0, v131

    invoke-direct {v0, v5}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_27

    .end local v130           #serial:Lcom/android/server/SerialService;
    .local v131, serial:Lcom/android/server/SerialService;
    :try_start_49
    const-string v7, "serial"

    move-object/from16 v0, v131

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_48

    move-object/from16 v130, v131

    .end local v131           #serial:Lcom/android/server/SerialService;
    .restart local v130       #serial:Lcom/android/server/SerialService;
    :goto_31
    :try_start_4a
    const-string v7, "SystemServer"

    const-string v9, "Twilight Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v141, Lcom/android/server/TwilightService;

    move-object/from16 v0, v141

    invoke-direct {v0, v5}, Lcom/android/server/TwilightService;-><init>(Landroid/content/Context;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_28

    .end local v140           #twilight:Lcom/android/server/TwilightService;
    .local v141, twilight:Lcom/android/server/TwilightService;
    move-object/from16 v140, v141

    .end local v141           #twilight:Lcom/android/server/TwilightService;
    .restart local v140       #twilight:Lcom/android/server/TwilightService;
    :goto_32
    :try_start_4b
    const-string v7, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v144, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v144

    move-object/from16 v1, v140

    invoke-direct {v0, v5, v1}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;Lcom/android/server/TwilightService;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_29

    .end local v143           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v144, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v143, v144

    .end local v144           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v143       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_33
    :try_start_4c
    const-string v7, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_2a

    :goto_34
    :try_start_4d
    const-string v7, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v66, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v66

    invoke-direct {v0, v5}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_2b

    .end local v65           #appWidget:Lcom/android/server/AppWidgetService;
    .local v66, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_4e
    const-string v7, "appwidget"

    move-object/from16 v0, v66

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_47

    move-object/from16 v65, v66

    .end local v66           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v65       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_35
    :try_start_4f
    const-string v7, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v125, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v125

    invoke-direct {v0, v5}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_2c

    .end local v124           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v125, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v124, v125

    .end local v125           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v124       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_36
    :try_start_50
    const-string v7, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v5}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_2d

    :goto_37
    :try_start_51
    const-string v7, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v5}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_2e

    :goto_38
    :try_start_52
    const-string v7, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v113, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v113

    invoke-direct {v0, v5}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_2f

    .end local v112           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .local v113, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v112, v113

    .end local v113           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v112       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    :goto_39
    :try_start_53
    const-string v7, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v71, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v71

    invoke-direct {v0, v5}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_30

    .end local v70           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .local v71, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :try_start_54
    const-string v7, "commontime_management"

    move-object/from16 v0, v71

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_46

    move-object/from16 v70, v71

    .end local v71           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v70       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :goto_3a
    :try_start_55
    const-string v7, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Lcom/android/server/CertBlacklister;

    invoke-direct {v7, v5}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_31

    :goto_3b
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1110042

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_c

    :try_start_56
    const-string v7, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v86, Lcom/android/server/dreams/DreamManagerService;

    move-object/from16 v0, v86

    move-object/from16 v1, v22

    invoke-direct {v0, v5, v1}, Lcom/android/server/dreams/DreamManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_32

    .end local v85           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .local v86, dreamy:Lcom/android/server/dreams/DreamManagerService;
    :try_start_57
    const-string v7, "dreams"

    move-object/from16 v0, v86

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_45

    move-object/from16 v85, v86

    .end local v86           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v85       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    :cond_c
    :goto_3c
    :try_start_58
    const-string v7, "SystemServer"

    const-string v9, "AssetRedirectionManager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "assetredirection"

    new-instance v9, Lcom/android/server/AssetRedirectionManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/AssetRedirectionManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_58} :catch_33

    :goto_3d
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1110066

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_d

    :try_start_59
    const-string v7, "SystemServer"

    const-string v9, "IrdaManager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "irda"

    new-instance v9, Lcom/android/server/IrdaManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/IrdaManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_59} :catch_34

    :cond_d
    :goto_3e
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1110065

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_e

    :try_start_5a
    const-string v7, "SystemServer"

    const-string v9, "Pie Delivery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v117, Lcom/android/server/pie/PieService;

    move-object/from16 v0, v117

    move-object/from16 v1, v156

    move-object/from16 v2, v19

    invoke-direct {v0, v5, v1, v2}, Lcom/android/server/pie/PieService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/input/InputManagerService;)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5a} :catch_35

    .end local v116           #pieService:Lcom/android/server/pie/PieService;
    .local v117, pieService:Lcom/android/server/pie/PieService;
    :try_start_5b
    const-string v7, "pieservice"

    move-object/from16 v0, v117

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5b} :catch_44

    move-object/from16 v116, v117

    .end local v117           #pieService:Lcom/android/server/pie/PieService;
    .restart local v116       #pieService:Lcom/android/server/pie/PieService;
    :cond_e
    :goto_3f
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1110067

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_f

    :try_start_5c
    const-string v7, "SystemServer"

    const-string v9, "Gesture Sensor Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v93, Lcom/android/server/gesture/GestureService;

    move-object/from16 v0, v93

    move-object/from16 v1, v19

    invoke-direct {v0, v5, v1}, Lcom/android/server/gesture/GestureService;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5c} :catch_36

    .end local v92           #gestureService:Lcom/android/server/gesture/GestureService;
    .local v93, gestureService:Lcom/android/server/gesture/GestureService;
    :try_start_5d
    const-string v7, "gesture"

    move-object/from16 v0, v93

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_5d} :catch_43

    move-object/from16 v92, v93

    .end local v93           #gestureService:Lcom/android/server/gesture/GestureService;
    .restart local v92       #gestureService:Lcom/android/server/gesture/GestureService;
    :cond_f
    :goto_40
    :try_start_5e
    const-string v7, "SystemServer"

    const-string v9, "IdleMaintenanceService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Lcom/android/server/IdleMaintenanceService;

    invoke-direct {v7, v5, v8}, Lcom/android/server/IdleMaintenanceService;-><init>(Landroid/content/Context;Lcom/android/server/BatteryService;)V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_5e} :catch_37

    :goto_41
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "adb_port"

    const-string v11, "service.adb.tcp.port"

    const-string v12, "-1"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v7, v9, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "adb_port"

    invoke-static {v9}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const/4 v11, 0x0

    new-instance v12, Lcom/android/server/ServerThread$AdbPortObserver;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/server/ServerThread$AdbPortObserver;-><init>(Lcom/android/server/ServerThread;)V

    invoke-virtual {v7, v9, v11, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual/range {v156 .. v156}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v49

    .local v49, safeMode:Z
    if-eqz v49, :cond_21

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    const/4 v7, 0x1

    sput-boolean v7, Ldalvik/system/Zygote;->systemInSafeMode:Z

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    :goto_42
    :try_start_5f
    invoke-virtual/range {v147 .. v147}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_5f} :catch_38

    :goto_43
    :try_start_60
    invoke-virtual/range {v103 .. v103}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_60} :catch_39

    :goto_44
    if-eqz v80, :cond_10

    :try_start_61
    invoke-virtual/range {v80 .. v80}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_61} :catch_3a

    :cond_10
    :goto_45
    if-eqz v114, :cond_11

    :try_start_62
    invoke-virtual/range {v114 .. v114}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_62} :catch_3b

    :cond_11
    :goto_46
    :try_start_63
    invoke-virtual/range {v156 .. v156}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_63} :catch_3c

    :goto_47
    if-eqz v49, :cond_12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    :cond_12
    invoke-virtual/range {v156 .. v156}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v72

    .local v72, config:Landroid/content/res/Configuration;
    new-instance v105, Landroid/util/DisplayMetrics;

    invoke-direct/range {v105 .. v105}, Landroid/util/DisplayMetrics;-><init>()V

    .local v105, metrics:Landroid/util/DisplayMetrics;
    const-string v7, "window"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v149

    check-cast v149, Landroid/view/WindowManager;

    .local v149, w:Landroid/view/WindowManager;
    invoke-interface/range {v149 .. v149}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    move-object/from16 v0, v105

    invoke-virtual {v7, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v0, v72

    move-object/from16 v1, v105

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :try_start_64
    move-object/from16 v0, v140

    move-object/from16 v1, v85

    invoke-virtual {v4, v0, v1}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/server/TwilightService;Lcom/android/server/dreams/DreamManagerService;)V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_64} :catch_3d

    :goto_48
    :try_start_65
    invoke-interface/range {v118 .. v118}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_65} :catch_3e

    :goto_49
    :try_start_66
    move/from16 v0, v49

    move/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_66} :catch_3f

    :goto_4a
    if-eqz v116, :cond_13

    :try_start_67
    invoke-virtual/range {v116 .. v116}, Lcom/android/server/pie/PieService;->systemReady()V
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_67} :catch_40

    :cond_13
    :goto_4b
    if-eqz v92, :cond_14

    :try_start_68
    invoke-virtual/range {v92 .. v92}, Lcom/android/server/gesture/GestureService;->systemReady()V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_68} :catch_41

    :cond_14
    :goto_4c
    new-instance v90, Landroid/content/IntentFilter;

    invoke-direct/range {v90 .. v90}, Landroid/content/IntentFilter;-><init>()V

    .local v90, filter:Landroid/content/IntentFilter;
    const-string v7, "com.tmobile.intent.action.APP_LAUNCH_FAILURE"

    move-object/from16 v0, v90

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "com.tmobile.intent.action.APP_LAUNCH_FAILURE_RESET"

    move-object/from16 v0, v90

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v90

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v90

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "com.tmobile.intent.category.THEME_PACKAGE_INSTALL_STATE_CHANGE"

    move-object/from16 v0, v90

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v7, "package"

    move-object/from16 v0, v90

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v7, Lcom/android/server/AppsLaunchFailureReceiver;

    invoke-direct {v7}, Lcom/android/server/AppsLaunchFailureReceiver;-><init>()V

    move-object/from16 v0, v90

    invoke-virtual {v5, v7, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-object/from16 v35, v5

    .local v35, contextF:Landroid/content/Context;
    move-object/from16 v36, v106

    .local v36, mountServiceF:Lcom/android/server/MountService;
    move-object/from16 v37, v8

    .local v37, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v38, v31

    .local v38, networkManagementF:Lcom/android/server/NetworkManagementService;
    move-object/from16 v39, v30

    .local v39, networkStatsF:Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v40, v26

    .local v40, networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v41, v73

    .local v41, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v42, v83

    .local v42, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v43, v128

    .local v43, rotateSwitchF:Lcom/android/server/RotationSwitchObserver;
    move-object/from16 v44, v145

    .local v44, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v45, v140

    .local v45, twilightF:Lcom/android/server/TwilightService;
    move-object/from16 v46, v143

    .local v46, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v48, v65

    .local v48, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v50, v150

    .local v50, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v51, v95

    .local v51, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v47, v124

    .local v47, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v53, v101

    .local v53, locationF:Lcom/android/server/LocationManagerService;
    move-object/from16 v54, v76

    .local v54, countryDetectorF:Lcom/android/server/CountryDetectorService;
    move-object/from16 v55, v112

    .local v55, networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v56, v70

    .local v56, commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v57, v138

    .local v57, textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    move-object/from16 v52, v134

    .local v52, statusBarF:Lcom/android/server/StatusBarManagerService;
    move-object/from16 v58, v85

    .local v58, dreamyF:Lcom/android/server/dreams/DreamManagerService;
    move-object/from16 v59, v19

    .local v59, inputManagerF:Lcom/android/server/input/InputManagerService;
    move-object/from16 v60, v136

    .local v60, telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v61, v108

    .local v61, msimTelephonyRegistryF:Lcom/android/server/MSimTelephonyRegistry;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    new-instance v32, Lcom/android/server/ServerThread$3;

    move-object/from16 v33, p0

    invoke-direct/range {v32 .. v61}, Lcom/android/server/ServerThread$3;-><init>(Lcom/android/server/ServerThread;ZLandroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/RotationSwitchObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/TwilightService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/MSimTelephonyRegistry;)V

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v7

    if-eqz v7, :cond_15

    const-string v7, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    invoke-static {}, Landroid/os/Looper;->loop()V

    const-string v7, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .end local v4           #power:Lcom/android/server/power/PowerManagerService;
    .end local v5           #context:Landroid/content/Context;
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v20           #device:Lcom/android/server/DeviceHandlerService;
    .end local v21           #uiHandler:Landroid/os/Handler;
    .end local v22           #wmHandler:Landroid/os/Handler;
    .end local v25           #onlyCore:Z
    .end local v26           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v30           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .end local v31           #networkManagement:Lcom/android/server/NetworkManagementService;
    .end local v34           #headless:Z
    .end local v35           #contextF:Landroid/content/Context;
    .end local v36           #mountServiceF:Lcom/android/server/MountService;
    .end local v37           #batteryF:Lcom/android/server/BatteryService;
    .end local v38           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v39           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v40           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v41           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v42           #dockF:Lcom/android/server/DockObserver;
    .end local v43           #rotateSwitchF:Lcom/android/server/RotationSwitchObserver;
    .end local v44           #usbF:Lcom/android/server/usb/UsbService;
    .end local v45           #twilightF:Lcom/android/server/TwilightService;
    .end local v46           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v47           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v48           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v49           #safeMode:Z
    .end local v50           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v51           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v52           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v53           #locationF:Lcom/android/server/LocationManagerService;
    .end local v54           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v55           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v56           #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .end local v57           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v58           #dreamyF:Lcom/android/server/dreams/DreamManagerService;
    .end local v59           #inputManagerF:Lcom/android/server/input/InputManagerService;
    .end local v60           #telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    .end local v61           #msimTelephonyRegistryF:Lcom/android/server/MSimTelephonyRegistry;
    .end local v62           #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .end local v65           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v68           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .end local v70           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .end local v72           #config:Landroid/content/res/Configuration;
    .end local v73           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v75           #contentService:Lcom/android/server/content/ContentService;
    .end local v76           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v80           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v83           #dock:Lcom/android/server/DockObserver;
    .end local v85           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v88           #factoryTest:I
    .end local v89           #factoryTestStr:Ljava/lang/String;
    .end local v90           #filter:Landroid/content/IntentFilter;
    .end local v92           #gestureService:Lcom/android/server/gesture/GestureService;
    .end local v94           #hasRotationLock:Z
    .end local v95           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v98           #installer:Lcom/android/server/pm/Installer;
    .end local v101           #location:Lcom/android/server/LocationManagerService;
    .end local v103           #lockSettings:Lcom/android/server/LockSettingsService;
    .end local v105           #metrics:Landroid/util/DisplayMetrics;
    .end local v106           #mountService:Lcom/android/server/MountService;
    .end local v108           #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    .end local v112           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .end local v114           #notification:Lcom/android/server/NotificationManagerService;
    .end local v116           #pieService:Lcom/android/server/pie/PieService;
    .end local v118           #pm:Landroid/content/pm/IPackageManager;
    .end local v120           #profile:Lcom/android/server/ProfileManagerService;
    .end local v124           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v126           #regulatory:Lcom/android/server/RegulatoryObserver;
    .end local v128           #rotateSwitch:Lcom/android/server/RotationSwitchObserver;
    .end local v130           #serial:Lcom/android/server/SerialService;
    .end local v132           #serviceDiscovery:Lcom/android/server/NsdService;
    .end local v134           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v136           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v138           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v140           #twilight:Lcom/android/server/TwilightService;
    .end local v142           #uiHandlerThread:Landroid/os/HandlerThread;
    .end local v143           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v145           #usb:Lcom/android/server/usb/UsbService;
    .end local v147           #vibrator:Lcom/android/server/VibratorService;
    .end local v149           #w:Landroid/view/WindowManager;
    .end local v150           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v152           #wifi:Lcom/android/server/wifi/WifiService;
    .end local v154           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .end local v156           #wm:Lcom/android/server/wm/WindowManagerService;
    .end local v157           #wmHandlerThread:Landroid/os/HandlerThread;
    :cond_16
    const/16 v123, 0x0

    goto/16 :goto_0

    .restart local v123       #reboot:Z
    :cond_17
    const/16 v122, 0x0

    .restart local v122       #reason:Ljava/lang/String;
    goto/16 :goto_1

    .end local v122           #reason:Ljava/lang/String;
    .end local v123           #reboot:Z
    .restart local v89       #factoryTestStr:Ljava/lang/String;
    :cond_18
    invoke-static/range {v89 .. v89}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v88

    goto/16 :goto_2

    .restart local v4       #power:Lcom/android/server/power/PowerManagerService;
    .restart local v5       #context:Landroid/content/Context;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v21       #uiHandler:Landroid/os/Handler;
    .restart local v22       #wmHandler:Landroid/os/Handler;
    .restart local v25       #onlyCore:Z
    .restart local v30       #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v31       #networkManagement:Lcom/android/server/NetworkManagementService;
    .restart local v34       #headless:Z
    .restart local v62       #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .restart local v64       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v67       #battery:Lcom/android/server/BatteryService;
    .restart local v68       #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v70       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v73       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v75       #contentService:Lcom/android/server/content/ContentService;
    .restart local v78       #cryptState:Ljava/lang/String;
    .restart local v79       #device:Lcom/android/server/DeviceHandlerService;
    .restart local v83       #dock:Lcom/android/server/DockObserver;
    .restart local v88       #factoryTest:I
    .restart local v97       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v99       #installer:Lcom/android/server/pm/Installer;
    .restart local v100       #lights:Lcom/android/server/LightsService;
    .restart local v106       #mountService:Lcom/android/server/MountService;
    .restart local v108       #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    .restart local v110       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v112       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v118       #pm:Landroid/content/pm/IPackageManager;
    .restart local v124       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v126       #regulatory:Lcom/android/server/RegulatoryObserver;
    .restart local v128       #rotateSwitch:Lcom/android/server/RotationSwitchObserver;
    .restart local v130       #serial:Lcom/android/server/SerialService;
    .restart local v132       #serviceDiscovery:Lcom/android/server/NsdService;
    .restart local v137       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v140       #twilight:Lcom/android/server/TwilightService;
    .restart local v142       #uiHandlerThread:Landroid/os/HandlerThread;
    .restart local v143       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v145       #usb:Lcom/android/server/usb/UsbService;
    .restart local v147       #vibrator:Lcom/android/server/VibratorService;
    .restart local v152       #wifi:Lcom/android/server/wifi/WifiService;
    .restart local v154       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v156       #wm:Lcom/android/server/wm/WindowManagerService;
    .restart local v157       #wmHandlerThread:Landroid/os/HandlerThread;
    :cond_19
    :try_start_69
    const-string v7, "1"

    move-object/from16 v0, v78

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v25, 0x1

    goto/16 :goto_3

    :cond_1a
    const/4 v7, 0x0

    goto/16 :goto_4

    .restart local v91       #firstBoot:Z
    :catch_0
    move-exception v87

    .local v87, e:Ljava/lang/Throwable;
    :goto_4d
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v87

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_69
    .catch Ljava/lang/RuntimeException; {:try_start_69 .. :try_end_69} :catch_1

    goto/16 :goto_6

    .end local v78           #cryptState:Ljava/lang/String;
    .end local v87           #e:Ljava/lang/Throwable;
    .end local v91           #firstBoot:Z
    :catch_1
    move-exception v87

    move-object/from16 v136, v137

    .end local v137           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v136       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v97

    .end local v97           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v64

    .end local v64           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v67

    .end local v67           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v20, v79

    .end local v79           #device:Lcom/android/server/DeviceHandlerService;
    .restart local v20       #device:Lcom/android/server/DeviceHandlerService;
    move-object/from16 v6, v100

    .end local v100           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v98, v99

    .end local v99           #installer:Lcom/android/server/pm/Installer;
    .local v87, e:Ljava/lang/RuntimeException;
    .restart local v98       #installer:Lcom/android/server/pm/Installer;
    :goto_4e
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v87

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v20           #device:Lcom/android/server/DeviceHandlerService;
    .end local v87           #e:Ljava/lang/RuntimeException;
    .end local v98           #installer:Lcom/android/server/pm/Installer;
    .end local v136           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v64       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v67       #battery:Lcom/android/server/BatteryService;
    .restart local v78       #cryptState:Ljava/lang/String;
    .restart local v79       #device:Lcom/android/server/DeviceHandlerService;
    .restart local v91       #firstBoot:Z
    .restart local v97       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v99       #installer:Lcom/android/server/pm/Installer;
    .restart local v100       #lights:Lcom/android/server/LightsService;
    .restart local v137       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :cond_1b
    const/4 v7, 0x0

    goto/16 :goto_7

    .end local v64           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v67           #battery:Lcom/android/server/BatteryService;
    .end local v79           #device:Lcom/android/server/DeviceHandlerService;
    .end local v97           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v100           #lights:Lcom/android/server/LightsService;
    .end local v147           #vibrator:Lcom/android/server/VibratorService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v20       #device:Lcom/android/server/DeviceHandlerService;
    .restart local v148       #vibrator:Lcom/android/server/VibratorService;
    :cond_1c
    const/16 v23, 0x0

    goto/16 :goto_8

    :cond_1d
    const/16 v24, 0x0

    goto/16 :goto_9

    :cond_1e
    const/4 v7, 0x1

    move/from16 v0, v88

    if-ne v0, v7, :cond_1f

    :try_start_6a
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :catch_2
    move-exception v87

    move-object/from16 v136, v137

    .end local v137           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v136       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v147, v148

    .end local v148           #vibrator:Lcom/android/server/VibratorService;
    .restart local v147       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v98, v99

    .end local v99           #installer:Lcom/android/server/pm/Installer;
    .restart local v98       #installer:Lcom/android/server/pm/Installer;
    goto :goto_4e

    .end local v98           #installer:Lcom/android/server/pm/Installer;
    .end local v136           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v147           #vibrator:Lcom/android/server/VibratorService;
    .restart local v99       #installer:Lcom/android/server/pm/Installer;
    .restart local v137       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v148       #vibrator:Lcom/android/server/VibratorService;
    :cond_1f
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v9, "android.hardware.bluetooth"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_20

    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_20
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v69, Lcom/android/server/BluetoothManagerService;

    move-object/from16 v0, v69

    invoke-direct {v0, v5}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V
    :try_end_6a
    .catch Ljava/lang/RuntimeException; {:try_start_6a .. :try_end_6a} :catch_2

    .end local v68           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .local v69, bluetooth:Lcom/android/server/BluetoothManagerService;
    :try_start_6b
    const-string v7, "bluetooth_manager"

    move-object/from16 v0, v69

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6b
    .catch Ljava/lang/RuntimeException; {:try_start_6b .. :try_end_6b} :catch_66

    move-object/from16 v68, v69

    .end local v69           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v68       #bluetooth:Lcom/android/server/BluetoothManagerService;
    goto/16 :goto_a

    .end local v78           #cryptState:Ljava/lang/String;
    .end local v91           #firstBoot:Z
    .end local v99           #installer:Lcom/android/server/pm/Installer;
    .end local v137           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v148           #vibrator:Lcom/android/server/VibratorService;
    .restart local v65       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v76       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v80       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v85       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v92       #gestureService:Lcom/android/server/gesture/GestureService;
    .restart local v94       #hasRotationLock:Z
    .restart local v95       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v98       #installer:Lcom/android/server/pm/Installer;
    .restart local v101       #location:Lcom/android/server/LocationManagerService;
    .restart local v103       #lockSettings:Lcom/android/server/LockSettingsService;
    .restart local v114       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v116       #pieService:Lcom/android/server/pie/PieService;
    .restart local v120       #profile:Lcom/android/server/ProfileManagerService;
    .restart local v134       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v136       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v138       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v147       #vibrator:Lcom/android/server/VibratorService;
    .restart local v150       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_3
    move-exception v87

    .local v87, e:Ljava/lang/Throwable;
    :goto_4f
    const-string v7, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_4
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    const-string v7, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_5
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    const-string v7, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_6
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    const-string v7, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_7
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    :goto_50
    const-string v7, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_8
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    :goto_51
    const-string v7, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_9
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    :goto_52
    const-string v7, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_a
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    :goto_53
    const-string v7, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_b
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    const-string v7, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_c
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    const-string v7, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_d
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    :goto_54
    const-string v7, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_e
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    :goto_55
    const-string v7, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_f
    move-exception v87

    move-object/from16 v26, v110

    .end local v110           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v26       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v87       #e:Ljava/lang/Throwable;
    :goto_56
    const-string v7, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_10
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    const-string v7, "starting RegulatoryObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_11
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    :goto_57
    const-string v7, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_12
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    :goto_58
    const-string v7, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_13
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    :goto_59
    const-string v7, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_14
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    const-string v7, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_15
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting FM receiver Service"

    move-object/from16 v0, v87

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1f

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_16
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting FM transmitter Service"

    move-object/from16 v0, v87

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_20

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_17
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    const-string v7, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_18
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    const-string v7, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_19
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    const-string v7, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_1a
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    :goto_5a
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Profile Manager"

    move-object/from16 v0, v87

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_24

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_1b
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    :goto_5b
    const-string v7, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_1c
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    const-string v7, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_1d
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    :goto_5c
    const-string v7, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_1e
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    :goto_5d
    const-string v7, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_1f
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    const-string v7, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_20
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    const-string v7, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_21
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    :goto_5e
    const-string v7, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_22
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    const-string v7, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_23
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    const-string v7, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_24
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    const-string v7, "starting RotationSwitchObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_25
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    const-string v7, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_26
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    :goto_5f
    const-string v7, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_27
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    :goto_60
    const-string v7, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v87

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_31

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_28
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    const-string v7, "starting TwilightService"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_29
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    const-string v7, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_2a
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v87

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_34

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_2b
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    :goto_61
    const-string v7, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_2c
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    const-string v7, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_2d
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    const-string v7, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_2e
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    const-string v7, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_2f
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    const-string v7, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_30
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    :goto_62
    const-string v7, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_31
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    const-string v7, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3b

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_32
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    :goto_63
    const-string v7, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3c

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_33
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting AssetRedirectionManager Service"

    move-object/from16 v0, v87

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3d

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_34
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Irda Service"

    move-object/from16 v0, v87

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3e

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_35
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    :goto_64
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Pie Delivery Service Service"

    move-object/from16 v0, v87

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3f

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_36
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    :goto_65
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Gesture Sensor Service"

    move-object/from16 v0, v87

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_40

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_37
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    const-string v7, "starting IdleMaintenanceService"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_41

    .end local v87           #e:Ljava/lang/Throwable;
    .restart local v49       #safeMode:Z
    :cond_21
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_42

    :catch_38
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    const-string v7, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_43

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_39
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    const-string v7, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_44

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_3a
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    const-string v7, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_45

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_3b
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    const-string v7, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_46

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_3c
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    const-string v7, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_47

    .end local v87           #e:Ljava/lang/Throwable;
    .restart local v72       #config:Landroid/content/res/Configuration;
    .restart local v105       #metrics:Landroid/util/DisplayMetrics;
    .restart local v149       #w:Landroid/view/WindowManager;
    :catch_3d
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    const-string v7, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_48

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_3e
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    const-string v7, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_49

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_3f
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    const-string v7, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4a

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_40
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    const-string v7, "making Pie Delivery Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4b

    .end local v87           #e:Ljava/lang/Throwable;
    :catch_41
    move-exception v87

    .restart local v87       #e:Ljava/lang/Throwable;
    const-string v7, "making Gesture Sensor Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4c

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v20           #device:Lcom/android/server/DeviceHandlerService;
    .end local v26           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v49           #safeMode:Z
    .end local v65           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v72           #config:Landroid/content/res/Configuration;
    .end local v76           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v80           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v85           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v87           #e:Ljava/lang/Throwable;
    .end local v92           #gestureService:Lcom/android/server/gesture/GestureService;
    .end local v94           #hasRotationLock:Z
    .end local v95           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v98           #installer:Lcom/android/server/pm/Installer;
    .end local v101           #location:Lcom/android/server/LocationManagerService;
    .end local v103           #lockSettings:Lcom/android/server/LockSettingsService;
    .end local v105           #metrics:Landroid/util/DisplayMetrics;
    .end local v114           #notification:Lcom/android/server/NotificationManagerService;
    .end local v116           #pieService:Lcom/android/server/pie/PieService;
    .end local v120           #profile:Lcom/android/server/ProfileManagerService;
    .end local v134           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v136           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v138           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v149           #w:Landroid/view/WindowManager;
    .end local v150           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v64       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v67       #battery:Lcom/android/server/BatteryService;
    .restart local v78       #cryptState:Ljava/lang/String;
    .restart local v79       #device:Lcom/android/server/DeviceHandlerService;
    .restart local v91       #firstBoot:Z
    .restart local v97       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v99       #installer:Lcom/android/server/pm/Installer;
    .restart local v100       #lights:Lcom/android/server/LightsService;
    .restart local v110       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v137       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_42
    move-exception v7

    goto/16 :goto_5

    .end local v64           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v67           #battery:Lcom/android/server/BatteryService;
    .end local v78           #cryptState:Ljava/lang/String;
    .end local v79           #device:Lcom/android/server/DeviceHandlerService;
    .end local v91           #firstBoot:Z
    .end local v97           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v99           #installer:Lcom/android/server/pm/Installer;
    .end local v100           #lights:Lcom/android/server/LightsService;
    .end local v110           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v137           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v20       #device:Lcom/android/server/DeviceHandlerService;
    .restart local v26       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v65       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v76       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v80       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v85       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v93       #gestureService:Lcom/android/server/gesture/GestureService;
    .restart local v94       #hasRotationLock:Z
    .restart local v95       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v98       #installer:Lcom/android/server/pm/Installer;
    .restart local v101       #location:Lcom/android/server/LocationManagerService;
    .restart local v103       #lockSettings:Lcom/android/server/LockSettingsService;
    .restart local v114       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v116       #pieService:Lcom/android/server/pie/PieService;
    .restart local v120       #profile:Lcom/android/server/ProfileManagerService;
    .restart local v134       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v136       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v138       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v150       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_43
    move-exception v87

    move-object/from16 v92, v93

    .end local v93           #gestureService:Lcom/android/server/gesture/GestureService;
    .restart local v92       #gestureService:Lcom/android/server/gesture/GestureService;
    goto/16 :goto_65

    .end local v116           #pieService:Lcom/android/server/pie/PieService;
    .restart local v117       #pieService:Lcom/android/server/pie/PieService;
    :catch_44
    move-exception v87

    move-object/from16 v116, v117

    .end local v117           #pieService:Lcom/android/server/pie/PieService;
    .restart local v116       #pieService:Lcom/android/server/pie/PieService;
    goto/16 :goto_64

    .end local v85           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v86       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    :catch_45
    move-exception v87

    move-object/from16 v85, v86

    .end local v86           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v85       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    goto/16 :goto_63

    .end local v70           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v71       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :catch_46
    move-exception v87

    move-object/from16 v70, v71

    .end local v71           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v70       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_62

    .end local v65           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v66       #appWidget:Lcom/android/server/AppWidgetService;
    :catch_47
    move-exception v87

    move-object/from16 v65, v66

    .end local v66           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v65       #appWidget:Lcom/android/server/AppWidgetService;
    goto/16 :goto_61

    .end local v130           #serial:Lcom/android/server/SerialService;
    .restart local v131       #serial:Lcom/android/server/SerialService;
    :catch_48
    move-exception v87

    move-object/from16 v130, v131

    .end local v131           #serial:Lcom/android/server/SerialService;
    .restart local v130       #serial:Lcom/android/server/SerialService;
    goto/16 :goto_60

    .end local v145           #usb:Lcom/android/server/usb/UsbService;
    .restart local v146       #usb:Lcom/android/server/usb/UsbService;
    :catch_49
    move-exception v87

    move-object/from16 v145, v146

    .end local v146           #usb:Lcom/android/server/usb/UsbService;
    .restart local v145       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_5f

    .end local v150           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v151       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_4a
    move-exception v87

    move-object/from16 v150, v151

    .end local v151           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v150       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_5e

    .end local v76           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v77       #countryDetector:Lcom/android/server/CountryDetectorService;
    :catch_4b
    move-exception v87

    move-object/from16 v76, v77

    .end local v77           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v76       #countryDetector:Lcom/android/server/CountryDetectorService;
    goto/16 :goto_5d

    .end local v101           #location:Lcom/android/server/LocationManagerService;
    .restart local v102       #location:Lcom/android/server/LocationManagerService;
    :catch_4c
    move-exception v87

    move-object/from16 v101, v102

    .end local v102           #location:Lcom/android/server/LocationManagerService;
    .restart local v101       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_5c

    .end local v114           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v115       #notification:Lcom/android/server/NotificationManagerService;
    :catch_4d
    move-exception v87

    move-object/from16 v114, v115

    .end local v115           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v114       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_5b

    .end local v120           #profile:Lcom/android/server/ProfileManagerService;
    .restart local v121       #profile:Lcom/android/server/ProfileManagerService;
    :catch_4e
    move-exception v87

    move-object/from16 v120, v121

    .end local v121           #profile:Lcom/android/server/ProfileManagerService;
    .restart local v120       #profile:Lcom/android/server/ProfileManagerService;
    goto/16 :goto_5a

    .end local v73           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v74       #connectivity:Lcom/android/server/ConnectivityService;
    :catch_4f
    move-exception v87

    move-object/from16 v73, v74

    .end local v74           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v73       #connectivity:Lcom/android/server/ConnectivityService;
    goto/16 :goto_59

    .end local v152           #wifi:Lcom/android/server/wifi/WifiService;
    .restart local v153       #wifi:Lcom/android/server/wifi/WifiService;
    :catch_50
    move-exception v87

    move-object/from16 v152, v153

    .end local v153           #wifi:Lcom/android/server/wifi/WifiService;
    .restart local v152       #wifi:Lcom/android/server/wifi/WifiService;
    goto/16 :goto_58

    .end local v154           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v155       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :catch_51
    move-exception v87

    move-object/from16 v154, v155

    .end local v155           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v154       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_57

    :catch_52
    move-exception v87

    goto/16 :goto_56

    .end local v26           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v30           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v110       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v111       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :catch_53
    move-exception v87

    move-object/from16 v30, v111

    .end local v111           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v30       #networkStats:Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_55

    .end local v138           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v139       #tsms:Lcom/android/server/TextServicesManagerService;
    :catch_54
    move-exception v87

    move-object/from16 v138, v139

    .end local v139           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v138       #tsms:Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_54

    .end local v134           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v135       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_55
    move-exception v87

    move-object/from16 v134, v135

    .end local v135           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v134       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_53

    .end local v80           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v81       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_56
    move-exception v87

    move-object/from16 v80, v81

    .end local v81           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v80       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_52

    .end local v103           #lockSettings:Lcom/android/server/LockSettingsService;
    .restart local v104       #lockSettings:Lcom/android/server/LockSettingsService;
    :catch_57
    move-exception v87

    move-object/from16 v103, v104

    .end local v104           #lockSettings:Lcom/android/server/LockSettingsService;
    .restart local v103       #lockSettings:Lcom/android/server/LockSettingsService;
    goto/16 :goto_51

    .end local v106           #mountService:Lcom/android/server/MountService;
    .restart local v107       #mountService:Lcom/android/server/MountService;
    :catch_58
    move-exception v87

    move-object/from16 v106, v107

    .end local v107           #mountService:Lcom/android/server/MountService;
    .restart local v106       #mountService:Lcom/android/server/MountService;
    goto/16 :goto_50

    :catch_59
    move-exception v7

    goto/16 :goto_10

    .end local v95           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v96       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_5a
    move-exception v87

    move-object/from16 v95, v96

    .end local v96           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v95       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_4f

    .end local v4           #power:Lcom/android/server/power/PowerManagerService;
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v20           #device:Lcom/android/server/DeviceHandlerService;
    .end local v65           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v76           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v80           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v85           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v92           #gestureService:Lcom/android/server/gesture/GestureService;
    .end local v94           #hasRotationLock:Z
    .end local v95           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v101           #location:Lcom/android/server/LocationManagerService;
    .end local v103           #lockSettings:Lcom/android/server/LockSettingsService;
    .end local v114           #notification:Lcom/android/server/NotificationManagerService;
    .end local v116           #pieService:Lcom/android/server/pie/PieService;
    .end local v120           #profile:Lcom/android/server/ProfileManagerService;
    .end local v134           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v138           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v150           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v64       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v67       #battery:Lcom/android/server/BatteryService;
    .restart local v79       #device:Lcom/android/server/DeviceHandlerService;
    .restart local v82       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v97       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v100       #lights:Lcom/android/server/LightsService;
    .restart local v119       #power:Lcom/android/server/power/PowerManagerService;
    :catch_5b
    move-exception v87

    move-object/from16 v19, v97

    .end local v97           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v64

    .end local v64           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v67

    .end local v67           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v20, v79

    .end local v79           #device:Lcom/android/server/DeviceHandlerService;
    .restart local v20       #device:Lcom/android/server/DeviceHandlerService;
    move-object/from16 v10, v82

    .end local v82           #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v4, v119

    .end local v119           #power:Lcom/android/server/power/PowerManagerService;
    .restart local v4       #power:Lcom/android/server/power/PowerManagerService;
    move-object/from16 v6, v100

    .end local v100           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_4e

    .end local v4           #power:Lcom/android/server/power/PowerManagerService;
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v20           #device:Lcom/android/server/DeviceHandlerService;
    .end local v98           #installer:Lcom/android/server/pm/Installer;
    .restart local v64       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v67       #battery:Lcom/android/server/BatteryService;
    .restart local v79       #device:Lcom/android/server/DeviceHandlerService;
    .restart local v82       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v97       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v99       #installer:Lcom/android/server/pm/Installer;
    .restart local v100       #lights:Lcom/android/server/LightsService;
    .restart local v119       #power:Lcom/android/server/power/PowerManagerService;
    :catch_5c
    move-exception v87

    move-object/from16 v19, v97

    .end local v97           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v64

    .end local v64           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v67

    .end local v67           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v20, v79

    .end local v79           #device:Lcom/android/server/DeviceHandlerService;
    .restart local v20       #device:Lcom/android/server/DeviceHandlerService;
    move-object/from16 v10, v82

    .end local v82           #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v4, v119

    .end local v119           #power:Lcom/android/server/power/PowerManagerService;
    .restart local v4       #power:Lcom/android/server/power/PowerManagerService;
    move-object/from16 v6, v100

    .end local v100           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v98, v99

    .end local v99           #installer:Lcom/android/server/pm/Installer;
    .restart local v98       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_4e

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v20           #device:Lcom/android/server/DeviceHandlerService;
    .end local v98           #installer:Lcom/android/server/pm/Installer;
    .restart local v64       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v67       #battery:Lcom/android/server/BatteryService;
    .restart local v79       #device:Lcom/android/server/DeviceHandlerService;
    .restart local v82       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v97       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v99       #installer:Lcom/android/server/pm/Installer;
    .restart local v100       #lights:Lcom/android/server/LightsService;
    :catch_5d
    move-exception v87

    move-object/from16 v19, v97

    .end local v97           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v64

    .end local v64           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v67

    .end local v67           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v20, v79

    .end local v79           #device:Lcom/android/server/DeviceHandlerService;
    .restart local v20       #device:Lcom/android/server/DeviceHandlerService;
    move-object/from16 v10, v82

    .end local v82           #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v6, v100

    .end local v100           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v98, v99

    .end local v99           #installer:Lcom/android/server/pm/Installer;
    .restart local v98       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_4e

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v20           #device:Lcom/android/server/DeviceHandlerService;
    .end local v98           #installer:Lcom/android/server/pm/Installer;
    .restart local v64       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v67       #battery:Lcom/android/server/BatteryService;
    .restart local v79       #device:Lcom/android/server/DeviceHandlerService;
    .restart local v97       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v99       #installer:Lcom/android/server/pm/Installer;
    .restart local v100       #lights:Lcom/android/server/LightsService;
    :catch_5e
    move-exception v87

    move-object/from16 v19, v97

    .end local v97           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v64

    .end local v64           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v67

    .end local v67           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v20, v79

    .end local v79           #device:Lcom/android/server/DeviceHandlerService;
    .restart local v20       #device:Lcom/android/server/DeviceHandlerService;
    move-object/from16 v6, v100

    .end local v100           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v98, v99

    .end local v99           #installer:Lcom/android/server/pm/Installer;
    .restart local v98       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_4e

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v20           #device:Lcom/android/server/DeviceHandlerService;
    .end local v98           #installer:Lcom/android/server/pm/Installer;
    .end local v108           #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    .end local v136           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v64       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v67       #battery:Lcom/android/server/BatteryService;
    .restart local v79       #device:Lcom/android/server/DeviceHandlerService;
    .restart local v97       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v99       #installer:Lcom/android/server/pm/Installer;
    .restart local v100       #lights:Lcom/android/server/LightsService;
    .restart local v109       #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    .restart local v137       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_5f
    move-exception v87

    move-object/from16 v108, v109

    .end local v109           #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    .restart local v108       #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    move-object/from16 v136, v137

    .end local v137           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v136       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v97

    .end local v97           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v64

    .end local v64           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v67

    .end local v67           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v20, v79

    .end local v79           #device:Lcom/android/server/DeviceHandlerService;
    .restart local v20       #device:Lcom/android/server/DeviceHandlerService;
    move-object/from16 v6, v100

    .end local v100           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v98, v99

    .end local v99           #installer:Lcom/android/server/pm/Installer;
    .restart local v98       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_4e

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v20           #device:Lcom/android/server/DeviceHandlerService;
    .end local v62           #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .end local v98           #installer:Lcom/android/server/pm/Installer;
    .end local v136           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v63       #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .restart local v64       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v67       #battery:Lcom/android/server/BatteryService;
    .restart local v78       #cryptState:Ljava/lang/String;
    .restart local v79       #device:Lcom/android/server/DeviceHandlerService;
    .restart local v91       #firstBoot:Z
    .restart local v97       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v99       #installer:Lcom/android/server/pm/Installer;
    .restart local v100       #lights:Lcom/android/server/LightsService;
    .restart local v137       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_60
    move-exception v87

    move-object/from16 v136, v137

    .end local v137           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v136       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v97

    .end local v97           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v64

    .end local v64           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v67

    .end local v67           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v20, v79

    .end local v79           #device:Lcom/android/server/DeviceHandlerService;
    .restart local v20       #device:Lcom/android/server/DeviceHandlerService;
    move-object/from16 v6, v100

    .end local v100           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v62, v63

    .end local v63           #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .restart local v62       #accountManager:Lcom/android/server/accounts/AccountManagerService;
    move-object/from16 v98, v99

    .end local v99           #installer:Lcom/android/server/pm/Installer;
    .restart local v98       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_4e

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v98           #installer:Lcom/android/server/pm/Installer;
    .end local v136           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v64       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v67       #battery:Lcom/android/server/BatteryService;
    .restart local v97       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v99       #installer:Lcom/android/server/pm/Installer;
    .restart local v100       #lights:Lcom/android/server/LightsService;
    .restart local v137       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_61
    move-exception v87

    move-object/from16 v136, v137

    .end local v137           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v136       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v97

    .end local v97           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v64

    .end local v64           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v67

    .end local v67           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v100

    .end local v100           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v98, v99

    .end local v99           #installer:Lcom/android/server/pm/Installer;
    .restart local v98       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_4e

    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v98           #installer:Lcom/android/server/pm/Installer;
    .end local v136           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v64       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v67       #battery:Lcom/android/server/BatteryService;
    .restart local v97       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v99       #installer:Lcom/android/server/pm/Installer;
    .restart local v137       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_62
    move-exception v87

    move-object/from16 v136, v137

    .end local v137           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v136       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v97

    .end local v97           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v64

    .end local v64           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v67

    .end local v67           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v98, v99

    .end local v99           #installer:Lcom/android/server/pm/Installer;
    .restart local v98       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_4e

    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v98           #installer:Lcom/android/server/pm/Installer;
    .end local v136           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v64       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v97       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v99       #installer:Lcom/android/server/pm/Installer;
    .restart local v137       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_63
    move-exception v87

    move-object/from16 v136, v137

    .end local v137           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v136       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v97

    .end local v97           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v64

    .end local v64           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v98, v99

    .end local v99           #installer:Lcom/android/server/pm/Installer;
    .restart local v98       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_4e

    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v98           #installer:Lcom/android/server/pm/Installer;
    .end local v136           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v147           #vibrator:Lcom/android/server/VibratorService;
    .restart local v64       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v97       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v99       #installer:Lcom/android/server/pm/Installer;
    .restart local v137       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v148       #vibrator:Lcom/android/server/VibratorService;
    :catch_64
    move-exception v87

    move-object/from16 v136, v137

    .end local v137           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v136       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v97

    .end local v97           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v64

    .end local v64           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v147, v148

    .end local v148           #vibrator:Lcom/android/server/VibratorService;
    .restart local v147       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v98, v99

    .end local v99           #installer:Lcom/android/server/pm/Installer;
    .restart local v98       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_4e

    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v98           #installer:Lcom/android/server/pm/Installer;
    .end local v136           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v147           #vibrator:Lcom/android/server/VibratorService;
    .restart local v97       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v99       #installer:Lcom/android/server/pm/Installer;
    .restart local v137       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v148       #vibrator:Lcom/android/server/VibratorService;
    :catch_65
    move-exception v87

    move-object/from16 v136, v137

    .end local v137           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v136       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v97

    .end local v97           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v147, v148

    .end local v148           #vibrator:Lcom/android/server/VibratorService;
    .restart local v147       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v98, v99

    .end local v99           #installer:Lcom/android/server/pm/Installer;
    .restart local v98       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_4e

    .end local v68           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .end local v98           #installer:Lcom/android/server/pm/Installer;
    .end local v136           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v147           #vibrator:Lcom/android/server/VibratorService;
    .restart local v69       #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v99       #installer:Lcom/android/server/pm/Installer;
    .restart local v137       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v148       #vibrator:Lcom/android/server/VibratorService;
    :catch_66
    move-exception v87

    move-object/from16 v136, v137

    .end local v137           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v136       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v68, v69

    .end local v69           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v68       #bluetooth:Lcom/android/server/BluetoothManagerService;
    move-object/from16 v147, v148

    .end local v148           #vibrator:Lcom/android/server/VibratorService;
    .restart local v147       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v98, v99

    .end local v99           #installer:Lcom/android/server/pm/Installer;
    .restart local v98       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_4e

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v20           #device:Lcom/android/server/DeviceHandlerService;
    .end local v62           #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .end local v98           #installer:Lcom/android/server/pm/Installer;
    .end local v136           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v63       #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .restart local v64       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v67       #battery:Lcom/android/server/BatteryService;
    .restart local v79       #device:Lcom/android/server/DeviceHandlerService;
    .restart local v97       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v99       #installer:Lcom/android/server/pm/Installer;
    .restart local v100       #lights:Lcom/android/server/LightsService;
    .restart local v137       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_67
    move-exception v87

    move-object/from16 v62, v63

    .end local v63           #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .restart local v62       #accountManager:Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_4d

    .end local v64           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v67           #battery:Lcom/android/server/BatteryService;
    .end local v78           #cryptState:Ljava/lang/String;
    .end local v79           #device:Lcom/android/server/DeviceHandlerService;
    .end local v91           #firstBoot:Z
    .end local v97           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v99           #installer:Lcom/android/server/pm/Installer;
    .end local v100           #lights:Lcom/android/server/LightsService;
    .end local v137           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v20       #device:Lcom/android/server/DeviceHandlerService;
    .restart local v65       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v76       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v80       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v85       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v92       #gestureService:Lcom/android/server/gesture/GestureService;
    .restart local v94       #hasRotationLock:Z
    .restart local v95       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v98       #installer:Lcom/android/server/pm/Installer;
    .restart local v101       #location:Lcom/android/server/LocationManagerService;
    .restart local v103       #lockSettings:Lcom/android/server/LockSettingsService;
    .restart local v114       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v116       #pieService:Lcom/android/server/pie/PieService;
    .restart local v120       #profile:Lcom/android/server/ProfileManagerService;
    .restart local v134       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v136       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v138       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v150       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_22
    move-object/from16 v26, v110

    .end local v110           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v26       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_41
.end method
