.class public Lcom/android/server/DeviceStorageMonitorService;
.super Landroid/os/Binder;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DeviceStorageMonitorService$CacheFileDeletedObserver;,
        Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;
    }
.end annotation


# static fields
.field private static final CACHE_PATH:Ljava/io/File; = null

.field private static final DATA_PATH:Ljava/io/File; = null

.field private static final DEBUG:Z = false

.field private static final DEFAULT_CHECK_INTERVAL:J = 0xea60L

.field private static final DEFAULT_DISK_FREE_CHANGE_REPORTING_THRESHOLD:J = 0x200000L

.field private static final DEFAULT_FREE_STORAGE_LOG_INTERVAL_IN_MINUTES:I = 0x2d0

.field private static final DEVICE_MEMORY_WHAT:I = 0x1

.field private static final LOW_MEMORY_NOTIFICATION_ID:I = 0x1

.field private static final MONITOR_INTERVAL:I = 0x1

.field public static final SERVICE:Ljava/lang/String; = "devicestoragemonitor"

.field private static final SYSTEM_PATH:Ljava/io/File; = null

.field private static final TAG:Ljava/lang/String; = "DeviceStorageMonitorService"

.field private static final _FALSE:I = 0x0

.field private static final _TRUE:I = 0x1

.field private static final localLOGV:Z


# instance fields
.field private final mCacheFileDeletedObserver:Lcom/android/server/DeviceStorageMonitorService$CacheFileDeletedObserver;

.field private mCacheFileStats:Landroid/os/StatFs;

.field private mClearCacheObserver:Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;

.field private mClearSucceeded:Z

.field private mClearingCache:Z

.field private mContext:Landroid/content/Context;

.field private mDataFileStats:Landroid/os/StatFs;

.field private mFreeMem:J

.field private mFreeMemAfterLastCacheClear:J

.field mHandler:Landroid/os/Handler;

.field private mLastReportedFreeMem:J

.field private mLastReportedFreeMemTime:J

.field private mLowMemFlag:Z

.field private mMemCacheStartTrimThreshold:J

.field private mMemCacheTrimToThreshold:J

.field private mMemFullFlag:Z

.field private mMemFullThreshold:J

.field private mMemLowThreshold:J

.field private mResolver:Landroid/content/ContentResolver;

.field private mStorageFullIntent:Landroid/content/Intent;

.field private mStorageLowIntent:Landroid/content/Intent;

.field private mStorageNotFullIntent:Landroid/content/Intent;

.field private mStorageOkIntent:Landroid/content/Intent;

.field private mSystemFileStats:Landroid/os/StatFs;

.field private mThreadStartTime:J

.field private mTotalMemory:J

.field private mUiContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/android/server/DeviceStorageMonitorService;->DATA_PATH:Ljava/io/File;

    .line 98
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/android/server/DeviceStorageMonitorService;->SYSTEM_PATH:Ljava/io/File;

    .line 99
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/android/server/DeviceStorageMonitorService;->CACHE_PATH:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/high16 v5, 0x800

    .line 316
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 88
    iput-boolean v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    .line 89
    iput-boolean v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullFlag:Z

    .line 101
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mThreadStartTime:J

    .line 102
    iput-boolean v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearSucceeded:Z

    .line 136
    new-instance v1, Lcom/android/server/DeviceStorageMonitorService$1;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceStorageMonitorService$1;-><init>(Lcom/android/server/DeviceStorageMonitorService;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    .line 317
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    .line 318
    iput-object p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    .line 319
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mResolver:Landroid/content/ContentResolver;

    .line 321
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/DeviceStorageMonitorService$2;

    invoke-direct {v2, p0}, Lcom/android/server/DeviceStorageMonitorService$2;-><init>(Lcom/android/server/DeviceStorageMonitorService;)V

    invoke-static {v1, v2}, Lcom/android/internal/app/ThemeUtils;->registerThemeChangeReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 329
    new-instance v1, Landroid/os/StatFs;

    sget-object v2, Lcom/android/server/DeviceStorageMonitorService;->DATA_PATH:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    .line 330
    new-instance v1, Landroid/os/StatFs;

    sget-object v2, Lcom/android/server/DeviceStorageMonitorService;->SYSTEM_PATH:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    .line 331
    new-instance v1, Landroid/os/StatFs;

    sget-object v2, Lcom/android/server/DeviceStorageMonitorService;->CACHE_PATH:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    .line 333
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mTotalMemory:J

    .line 335
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    .line 336
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 337
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageOkIntent:Landroid/content/Intent;

    .line 338
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageOkIntent:Landroid/content/Intent;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 339
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DEVICE_STORAGE_FULL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageFullIntent:Landroid/content/Intent;

    .line 340
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageFullIntent:Landroid/content/Intent;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 341
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DEVICE_STORAGE_NOT_FULL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageNotFullIntent:Landroid/content/Intent;

    .line 342
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageNotFullIntent:Landroid/content/Intent;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 345
    invoke-static {p1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    .line 346
    .local v0, sm:Landroid/os/storage/StorageManager;
    sget-object v1, Lcom/android/server/DeviceStorageMonitorService;->DATA_PATH:Ljava/io/File;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemLowThreshold:J

    .line 347
    sget-object v1, Lcom/android/server/DeviceStorageMonitorService;->DATA_PATH:Ljava/io/File;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getStorageFullBytes(Ljava/io/File;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullThreshold:J

    .line 349
    iget-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemLowThreshold:J

    const-wide/16 v3, 0x3

    mul-long/2addr v1, v3

    iget-wide v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullThreshold:J

    add-long/2addr v1, v3

    const-wide/16 v3, 0x4

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemCacheStartTrimThreshold:J

    .line 350
    iget-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemLowThreshold:J

    iget-wide v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemLowThreshold:J

    iget-wide v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemCacheStartTrimThreshold:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x2

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemCacheTrimToThreshold:J

    .line 352
    iget-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mTotalMemory:J

    iput-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMemAfterLastCacheClear:J

    .line 353
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/DeviceStorageMonitorService;->checkMemory(Z)V

    .line 355
    new-instance v1, Lcom/android/server/DeviceStorageMonitorService$CacheFileDeletedObserver;

    invoke-direct {v1}, Lcom/android/server/DeviceStorageMonitorService$CacheFileDeletedObserver;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mCacheFileDeletedObserver:Lcom/android/server/DeviceStorageMonitorService$CacheFileDeletedObserver;

    .line 356
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mCacheFileDeletedObserver:Lcom/android/server/DeviceStorageMonitorService$CacheFileDeletedObserver;

    invoke-virtual {v1}, Lcom/android/server/DeviceStorageMonitorService$CacheFileDeletedObserver;->startWatching()V

    .line 357
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/DeviceStorageMonitorService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/server/DeviceStorageMonitorService;->checkMemory(Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/DeviceStorageMonitorService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearSucceeded:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/server/DeviceStorageMonitorService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearingCache:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/DeviceStorageMonitorService;ZJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/DeviceStorageMonitorService;->postCheckMemoryMsg(ZJ)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/server/DeviceStorageMonitorService;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mUiContext:Landroid/content/Context;

    return-object p1
.end method

.method private final cancelFullNotification()V
    .locals 3

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageFullIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 422
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageNotFullIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 423
    return-void
.end method

.method private final cancelNotification()V
    .locals 4

    .prologue
    .line 398
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 402
    .local v0, mNotificationMgr:Landroid/app/NotificationManager;
    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 404
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 405
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageOkIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 406
    return-void
.end method

.method private final checkMemory(Z)V
    .locals 10
    .parameter "checkCache"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 232
    iget-boolean v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearingCache:Z

    if-eqz v2, :cond_1

    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mThreadStartTime:J

    sub-long v0, v2, v4

    .line 236
    .local v0, diffTime:J
    const-wide/32 v2, 0x927c0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 237
    const-string v2, "DeviceStorageMonitorService"

    const-string v3, "Thread that clears cache file seems to run for ever"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    .end local v0           #diffTime:J
    :cond_0
    :goto_0
    const-wide/32 v2, 0xea60

    invoke-direct {p0, v9, v2, v3}, Lcom/android/server/DeviceStorageMonitorService;->postCheckMemoryMsg(ZJ)V

    .line 302
    return-void

    .line 240
    :cond_1
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->restatDataDir()V

    .line 244
    iget-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    iget-wide v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemLowThreshold:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    .line 245
    if-eqz p1, :cond_3

    .line 251
    iget-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    iget-wide v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemCacheStartTrimThreshold:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 254
    iget-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMemAfterLastCacheClear:J

    iget-wide v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemLowThreshold:J

    iget-wide v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemCacheStartTrimThreshold:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x4

    div-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mThreadStartTime:J

    .line 260
    iput-boolean v8, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearSucceeded:Z

    .line 261
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->clearCache()V

    .line 287
    :cond_2
    :goto_1
    iget-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    iget-wide v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullThreshold:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_5

    .line 288
    iget-boolean v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullFlag:Z

    if-nez v2, :cond_0

    .line 289
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->sendFullNotification()V

    .line 290
    iput-boolean v9, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullFlag:Z

    goto :goto_0

    .line 267
    :cond_3
    iget-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    iput-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMemAfterLastCacheClear:J

    .line 268
    iget-boolean v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    if-nez v2, :cond_2

    .line 271
    const-string v2, "DeviceStorageMonitorService"

    const-string v3, "Running low on memory. Sending notification"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->sendNotification()V

    .line 273
    iput-boolean v9, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    goto :goto_1

    .line 280
    :cond_4
    iget-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    iput-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMemAfterLastCacheClear:J

    .line 281
    iget-boolean v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    if-eqz v2, :cond_2

    .line 282
    const-string v2, "DeviceStorageMonitorService"

    const-string v3, "Memory available. Cancelling notification"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->cancelNotification()V

    .line 284
    iput-boolean v8, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    goto :goto_1

    .line 293
    :cond_5
    iget-boolean v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullFlag:Z

    if-eqz v2, :cond_0

    .line 294
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->cancelFullNotification()V

    .line 295
    iput-boolean v8, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullFlag:Z

    goto :goto_0
.end method

.method private final clearCache()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 211
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearCacheObserver:Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;

    if-nez v1, :cond_0

    .line 213
    new-instance v1, Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;-><init>(Lcom/android/server/DeviceStorageMonitorService;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearCacheObserver:Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;

    .line 215
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearingCache:Z

    .line 218
    :try_start_0
    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemCacheTrimToThreshold:J

    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearCacheObserver:Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;

    invoke-interface {v1, v2, v3, v4}, Landroid/content/pm/IPackageManager;->freeStorageAndNotify(JLandroid/content/pm/IPackageDataObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_0
    return-void

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "DeviceStorageMonitorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get handle for PackageManger Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iput-boolean v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearingCache:Z

    .line 223
    iput-boolean v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearSucceeded:Z

    goto :goto_0
.end method

.method private getUiContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mUiContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/app/ThemeUtils;->createUiContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mUiContext:Landroid/content/Context;

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mUiContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mUiContext:Landroid/content/Context;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method private postCheckMemoryMsg(ZJ)V
    .locals 5
    .parameter "clearCache"
    .parameter "delay"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 306
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 307
    iget-object v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v3, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 310
    return-void

    :cond_0
    move v0, v2

    .line 307
    goto :goto_0
.end method

.method private final restatDataDir()V
    .locals 20

    .prologue
    .line 160
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    sget-object v16, Lcom/android/server/DeviceStorageMonitorService;->DATA_PATH:Ljava/io/File;

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 161
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v15}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v15

    int-to-long v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/StatFs;->getBlockSize()I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    mul-long v15, v15, v17

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 167
    :goto_0
    const-string v15, "debug.freemem"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 168
    .local v4, debugFreeMem:Ljava/lang/String;
    const-string v15, ""

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 169
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    .line 172
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mResolver:Landroid/content/ContentResolver;

    const-string v16, "sys_free_storage_log_interval"

    const-wide/16 v17, 0x2d0

    invoke-static/range {v15 .. v18}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v15

    const-wide/16 v17, 0x3c

    mul-long v15, v15, v17

    const-wide/16 v17, 0x3e8

    mul-long v7, v15, v17

    .line 176
    .local v7, freeMemLogInterval:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 177
    .local v2, currTime:J
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    sub-long v15, v2, v15

    cmp-long v15, v15, v7

    if-ltz v15, :cond_2

    .line 179
    :cond_1
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    .line 180
    const-wide/16 v11, -0x1

    .local v11, mFreeSystem:J
    const-wide/16 v9, -0x1

    .line 182
    .local v9, mFreeCache:J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    sget-object v16, Lcom/android/server/DeviceStorageMonitorService;->SYSTEM_PATH:Ljava/io/File;

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    invoke-virtual {v15}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v15

    int-to-long v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    mul-long v11, v15, v17

    .line 189
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    sget-object v16, Lcom/android/server/DeviceStorageMonitorService;->CACHE_PATH:Ljava/io/File;

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    invoke-virtual {v15}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v15

    int-to-long v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    mul-long v9, v15, v17

    .line 195
    :goto_2
    const/16 v15, 0xaba

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 199
    .end local v9           #mFreeCache:J
    .end local v11           #mFreeSystem:J
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mResolver:Landroid/content/ContentResolver;

    const-string v16, "disk_free_change_reporting_threshold"

    const-wide/32 v17, 0x200000

    invoke-static/range {v15 .. v18}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v13

    .line 203
    .local v13, threshold:J
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMem:J

    move-wide/from16 v17, v0

    sub-long v5, v15, v17

    .line 204
    .local v5, delta:J
    cmp-long v15, v5, v13

    if-gtz v15, :cond_3

    neg-long v15, v13

    cmp-long v15, v5, v15

    if-gez v15, :cond_4

    .line 205
    :cond_3
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMem:J

    .line 206
    const/16 v15, 0xab8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    move-wide/from16 v16, v0

    invoke-static/range {v15 .. v17}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 208
    :cond_4
    return-void

    .line 192
    .end local v5           #delta:J
    .end local v13           #threshold:J
    .restart local v9       #mFreeCache:J
    .restart local v11       #mFreeSystem:J
    :catch_0
    move-exception v15

    goto :goto_2

    .line 185
    :catch_1
    move-exception v15

    goto/16 :goto_1

    .line 163
    .end local v2           #currTime:J
    .end local v4           #debugFreeMem:Ljava/lang/String;
    .end local v7           #freeMemLogInterval:J
    .end local v9           #mFreeCache:J
    .end local v11           #mFreeSystem:J
    :catch_2
    move-exception v15

    goto/16 :goto_0
.end method

.method private final sendFullNotification()V
    .locals 3

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageFullIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 414
    return-void
.end method

.method private final sendNotification()V
    .locals 13

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 367
    const/16 v0, 0xab9

    iget-wide v11, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    invoke-static {v0, v11, v12}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 369
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.settings.INTERNAL_STORAGE_SETTINGS"

    :goto_0
    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 372
    .local v2, lowMemIntent:Landroid/content/Intent;
    const-string v0, "memory"

    iget-wide v11, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    invoke-virtual {v2, v0, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 373
    const/high16 v0, 0x1000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 374
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 377
    .local v8, mNotificationMgr:Landroid/app/NotificationManager;
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const v3, 0x1040473

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 379
    .local v10, title:Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const v3, 0x1040474

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 381
    .local v6, details:Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 383
    .local v7, intent:Landroid/app/PendingIntent;
    new-instance v9, Landroid/app/Notification;

    invoke-direct {v9}, Landroid/app/Notification;-><init>()V

    .line 384
    .local v9, notification:Landroid/app/Notification;
    const v0, 0x108057b

    iput v0, v9, Landroid/app/Notification;->icon:I

    .line 385
    iput-object v10, v9, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 386
    iget v0, v9, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, v9, Landroid/app/Notification;->flags:I

    .line 387
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->getUiContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v9, v0, v10, v6, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 388
    const/4 v0, 0x1

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v4, v0, v9, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 390
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 391
    return-void

    .line 369
    .end local v2           #lowMemIntent:Landroid/content/Intent;
    .end local v6           #details:Ljava/lang/CharSequence;
    .end local v7           #intent:Landroid/app/PendingIntent;
    .end local v8           #mNotificationMgr:Landroid/app/NotificationManager;
    .end local v9           #notification:Landroid/app/Notification;
    .end local v10           #title:Ljava/lang/CharSequence;
    :cond_0
    const-string v0, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    goto :goto_0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump devicestoragemonitor from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 499
    :goto_0
    return-void

    .line 476
    :cond_0
    const-string v0, "Current DeviceStorageMonitor state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 477
    const-string v0, "  mFreeMem="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 478
    const-string v0, " mTotalMemory="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 479
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mTotalMemory:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 480
    const-string v0, "  mFreeMemAfterLastCacheClear="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMemAfterLastCacheClear:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 482
    const-string v0, "  mLastReportedFreeMem="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMem:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 484
    const-string v0, " mLastReportedFreeMemTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 485
    iget-wide v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 486
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 487
    const-string v0, "  mLowMemFlag="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 488
    const-string v0, " mMemFullFlag="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullFlag:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 489
    const-string v0, "  mClearSucceeded="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearSucceeded:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 490
    const-string v0, " mClearingCache="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearingCache:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 491
    const-string v0, "  mMemLowThreshold="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemLowThreshold:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 493
    const-string v0, " mMemFullThreshold="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullThreshold:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 495
    const-string v0, "  mMemCacheStartTrimThreshold="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemCacheStartTrimThreshold:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 497
    const-string v0, " mMemCacheTrimToThreshold="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemCacheTrimToThreshold:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getMemoryLowThreshold()J
    .locals 2

    .prologue
    .line 441
    iget-wide v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemLowThreshold:J

    return-wide v0
.end method

.method public isMemoryLow()Z
    .locals 1

    .prologue
    .line 451
    iget-boolean v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    return v0
.end method

.method public updateMemory()V
    .locals 4

    .prologue
    .line 426
    invoke-static {}, Lcom/android/server/DeviceStorageMonitorService;->getCallingUid()I

    move-result v0

    .line 427
    .local v0, callingUid:I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 432
    :goto_0
    return-void

    .line 431
    :cond_0
    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/DeviceStorageMonitorService;->postCheckMemoryMsg(ZJ)V

    goto :goto_0
.end method
