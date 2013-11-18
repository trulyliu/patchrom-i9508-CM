.class final Lcom/android/server/power/DisplayPowerController;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;,
        Lcom/android/server/power/DisplayPowerController$Callbacks;
    }
.end annotation


# static fields
.field private static final BRIGHTENING_FAST_THRESHOLD:F = 300.0f

.field private static final BRIGHTENING_LIGHT_DEBOUNCE:J = 0xfa0L

.field private static final BRIGHTENING_LIGHT_FAST_DEBOUNCE:J = 0x3e8L

.field private static final BRIGHTENING_LIGHT_HYSTERESIS:F = 0.1f

.field private static final BRIGHTNESS_RAMP_RATE_FAST:I = 0xc8

.field private static final BRIGHTNESS_RAMP_RATE_SLOW:I = 0x28

.field private static final DARKENING_LIGHT_DEBOUNCE:J = 0x1f40L

.field private static final DARKENING_LIGHT_HYSTERESIS:F = 0.2f

.field private static DEBUG:Z = false

.field private static final DEBUG_PRETEND_LIGHT_SENSOR_ABSENT:Z = false

.field private static final DEBUG_PRETEND_PROXIMITY_SENSOR_ABSENT:Z = false

.field private static final ELECTRON_BEAM_OFF_ANIMATION_DURATION_MILLIS:I = 0x190

.field private static final ELECTRON_BEAM_ON_ANIMATION_DURATION_MILLIS:I = 0xfa

.field private static final LIGHT_SENSOR_RATE_MILLIS:I = 0x3e8

.field private static final LONG_TERM_AVERAGE_LIGHT_TIME_CONSTANT:J = 0x1388L

.field private static final MSG_LIGHT_SENSOR_DEBOUNCED:I = 0x3

.field private static final MSG_PROXIMITY_SENSOR_DEBOUNCED:I = 0x2

.field private static final MSG_UPDATE_BACKLIGHT_SETTINGS:I = 0x4

.field private static final MSG_UPDATE_POWER_STATE:I = 0x1

.field private static final PROXIMITY_NEGATIVE:I = 0x0

.field private static final PROXIMITY_POSITIVE:I = 0x1

.field private static final PROXIMITY_SENSOR_NEGATIVE_DEBOUNCE_DELAY:I = 0x1f4

.field private static final PROXIMITY_SENSOR_POSITIVE_DEBOUNCE_DELAY:I = 0x0

.field private static final PROXIMITY_UNKNOWN:I = -0x1

.field private static final SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT_MAX_GAMMA:F = 3.0f

.field private static final SCREEN_DIM_MINIMUM_REDUCTION:I = 0xa

.field private static final SHORT_TERM_AVERAGE_LIGHT_TIME_CONSTANT:J = 0x3e8L

.field private static final SYNTHETIC_LIGHT_SENSOR_RATE_MILLIS:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "DisplayPowerController"

.field private static final TWILIGHT_ADJUSTMENT_MAX_GAMMA:F = 1.5f

.field private static final TWILIGHT_ADJUSTMENT_TIME:J = 0x6ddd00L

.field private static final TYPICAL_PROXIMITY_THRESHOLD:F = 5.0f

.field private static final USE_ELECTRON_BEAM_ON_ANIMATION:Z

.field private static final USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

.field private static final USE_TWILIGHT_ADJUSTMENT:Z


# instance fields
.field private mAmbientLux:F

.field private mAmbientLuxValid:Z

.field private final mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mAutoBrightnessSettingsChanged:Z

.field private mCallbackHandler:Landroid/os/Handler;

.field private final mCallbacks:Lcom/android/server/power/DisplayPowerController$Callbacks;

.field private final mCleanListener:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private mDebounceLuxDirection:I

.field private mDebounceLuxTime:J

.field private final mDisplayBlanker:Lcom/android/server/power/DisplayBlanker;

.field private final mDisplayManager:Lcom/android/server/display/DisplayManagerService;

.field private mDisplayReadyLocked:Z

.field private mElectronBeamFadesConfig:Z

.field private mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

.field private mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

.field private final mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

.field private mLastObservedLux:F

.field private mLastObservedLuxTime:J

.field private mLastScreenAutoBrightnessGamma:F

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorEnableTime:J

.field private mLightSensorEnabled:Z

.field private final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private mLightSensorWarmUpTimeConfig:I

.field private final mLights:Lcom/android/server/LightsService;

.field private final mLock:Ljava/lang/Object;

.field private final mNotifier:Lcom/android/server/power/Notifier;

.field private final mOnProximityNegativeRunnable:Ljava/lang/Runnable;

.field private final mOnProximityPositiveRunnable:Ljava/lang/Runnable;

.field private final mOnStateChangedRunnable:Ljava/lang/Runnable;

.field private mPendingProximity:I

.field private mPendingProximityDebounceTime:J

.field private mPendingRequestChangedLocked:Z

.field private mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

.field private mPendingUpdatePowerStateLocked:Z

.field private mPendingWaitForNegativeProximityLocked:Z

.field private mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

.field private mPowerState:Lcom/android/server/power/DisplayPowerState;

.field private mProximity:I

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorEnabled:Z

.field private final mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field private mProximityThreshold:F

.field private mRecentLightSamples:I

.field private mRecentLongTermAverageLux:F

.field private mRecentShortTermAverageLux:F

.field private mScreenAutoBrightness:I

.field private mScreenAutoBrightnessSpline:Landroid/util/Spline;

.field private final mScreenBrightnessDimConfig:I

.field private mScreenBrightnessRampAnimator:Lcom/android/server/power/RampAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/power/RampAnimator",
            "<",
            "Lcom/android/server/power/DisplayPowerState;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreenBrightnessRangeMaximum:I

.field private final mScreenBrightnessRangeMinimum:I

.field private mScreenOffBecauseOfProximity:Z

.field private mScreenOnBlockStartRealTime:J

.field private mScreenOnWasBlocked:Z

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private final mTwilight:Lcom/android/server/TwilightService;

.field private mTwilightAdjustmentEnabled:Z

.field private mTwilightChanged:Z

.field private final mTwilightListener:Lcom/android/server/TwilightService$TwilightListener;

.field private mUseSoftwareAutoBrightnessConfig:Z

.field private mUsingScreenAutoBrightness:Z

.field private mWaitingForNegativeProximity:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    .line 88
    invoke-static {}, Landroid/os/PowerManager;->useScreenAutoBrightnessAdjustmentFeature()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/DisplayPowerController;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    .line 103
    invoke-static {}, Landroid/os/PowerManager;->useTwilightAdjustmentFeature()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/DisplayPowerController;->USE_TWILIGHT_ADJUSTMENT:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/power/Notifier;Lcom/android/server/LightsService;Lcom/android/server/TwilightService;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/power/DisplayBlanker;Lcom/android/server/power/DisplayPowerController$Callbacks;Landroid/os/Handler;)V
    .locals 8
    .parameter "looper"
    .parameter "context"
    .parameter "notifier"
    .parameter "lights"
    .parameter "twilight"
    .parameter "sensorManager"
    .parameter "displayManager"
    .parameter "displayBlanker"
    .parameter "callbacks"
    .parameter "callbackHandler"

    .prologue
    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    .line 289
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    .line 292
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    .line 345
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    .line 348
    const/high16 v5, 0x3f80

    iput v5, p0, Lcom/android/server/power/DisplayPowerController;->mLastScreenAutoBrightnessGamma:F

    .line 634
    new-instance v5, Lcom/android/server/power/DisplayPowerController$2;

    invoke-direct {v5, p0}, Lcom/android/server/power/DisplayPowerController$2;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 903
    new-instance v5, Lcom/android/server/power/DisplayPowerController$3;

    invoke-direct {v5, p0}, Lcom/android/server/power/DisplayPowerController$3;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    .line 1260
    new-instance v5, Lcom/android/server/power/DisplayPowerController$4;

    invoke-direct {v5, p0}, Lcom/android/server/power/DisplayPowerController$4;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mOnStateChangedRunnable:Ljava/lang/Runnable;

    .line 1271
    new-instance v5, Lcom/android/server/power/DisplayPowerController$5;

    invoke-direct {v5, p0}, Lcom/android/server/power/DisplayPowerController$5;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    .line 1282
    new-instance v5, Lcom/android/server/power/DisplayPowerController$6;

    invoke-direct {v5, p0}, Lcom/android/server/power/DisplayPowerController$6;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    .line 1427
    new-instance v5, Lcom/android/server/power/DisplayPowerController$8;

    invoke-direct {v5, p0}, Lcom/android/server/power/DisplayPowerController$8;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 1444
    new-instance v5, Lcom/android/server/power/DisplayPowerController$9;

    invoke-direct {v5, p0}, Lcom/android/server/power/DisplayPowerController$9;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 1460
    new-instance v5, Lcom/android/server/power/DisplayPowerController$10;

    invoke-direct {v5, p0}, Lcom/android/server/power/DisplayPowerController$10;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mTwilightListener:Lcom/android/server/TwilightService$TwilightListener;

    .line 371
    iput-object p2, p0, Lcom/android/server/power/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 372
    new-instance v5, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-direct {v5, p0, p1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;-><init>(Lcom/android/server/power/DisplayPowerController;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    .line 373
    iput-object p3, p0, Lcom/android/server/power/DisplayPowerController;->mNotifier:Lcom/android/server/power/Notifier;

    .line 374
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayBlanker:Lcom/android/server/power/DisplayBlanker;

    .line 375
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbacks:Lcom/android/server/power/DisplayPowerController$Callbacks;

    .line 376
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbackHandler:Landroid/os/Handler;

    .line 378
    iput-object p4, p0, Lcom/android/server/power/DisplayPowerController;->mLights:Lcom/android/server/LightsService;

    .line 379
    iput-object p5, p0, Lcom/android/server/power/DisplayPowerController;->mTwilight:Lcom/android/server/TwilightService;

    .line 380
    iput-object p6, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 381
    iput-object p7, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayManager:Lcom/android/server/display/DisplayManagerService;

    .line 383
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 385
    .local v3, resources:Landroid/content/res/Resources;
    const v5, 0x10e0029

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-static {v5}, Lcom/android/server/power/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v5

    iput v5, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessDimConfig:I

    .line 388
    const v5, 0x10e0026

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 392
    .local v4, screenBrightnessMinimum:I
    invoke-static {v4}, Lcom/android/server/power/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v5

    iput v5, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    .line 393
    const/16 v5, 0xff

    iput v5, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    .line 395
    const v5, 0x1110017

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    .line 398
    iget-boolean v5, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v5, :cond_0

    .line 399
    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 400
    .local v1, cr:Landroid/content/ContentResolver;
    new-instance v2, Lcom/android/server/power/DisplayPowerController$1;

    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-direct {v2, p0, v5}, Lcom/android/server/power/DisplayPowerController$1;-><init>(Lcom/android/server/power/DisplayPowerController;Landroid/os/Handler;)V

    .line 411
    .local v2, observer:Landroid/database/ContentObserver;
    const-string v5, "auto_brightness_lux"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-virtual {v1, v5, v6, v2, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 414
    const-string v5, "auto_brightness_backlight"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-virtual {v1, v5, v6, v2, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 417
    const-string v5, "auto_brightness_twilight_adjustment"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-virtual {v1, v5, v6, v2, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 421
    const v5, 0x10e002a

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorWarmUpTimeConfig:I

    .line 423
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->updateAutomaticBrightnessSettings()V

    .line 426
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v2           #observer:Landroid/database/ContentObserver;
    :cond_0
    const v5, 0x111001a

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamFadesConfig:Z

    .line 430
    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 431
    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v5, :cond_1

    .line 432
    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v5

    const/high16 v6, 0x40a0

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iput v5, p0, Lcom/android/server/power/DisplayPowerController;->mProximityThreshold:F

    .line 437
    :cond_1
    iget-boolean v5, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v5, :cond_2

    .line 439
    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    .line 442
    :cond_2
    iget-boolean v5, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v5, :cond_3

    sget-boolean v5, Lcom/android/server/power/DisplayPowerController;->USE_TWILIGHT_ADJUSTMENT:Z

    if-eqz v5, :cond_3

    .line 443
    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mTwilight:Lcom/android/server/TwilightService;

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mTwilightListener:Lcom/android/server/TwilightService$TwilightListener;

    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v5, v6, v7}, Lcom/android/server/TwilightService;->registerListener(Lcom/android/server/TwilightService$TwilightListener;Landroid/os/Handler;)V

    .line 445
    :cond_3
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/power/DisplayPowerController;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximityThreshold:F

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/power/DisplayPowerController;JZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/DisplayPowerController;->handleProximitySensorEvent(JZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/power/DisplayPowerController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/power/DisplayPowerController;JF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/DisplayPowerController;->handleLightSensorEvent(JF)V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/server/power/DisplayPowerController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/server/power/DisplayPowerController;->mTwilightChanged:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerController$Callbacks;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbacks:Lcom/android/server/power/DisplayPowerController$Callbacks;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/power/DisplayPowerController;Ljava/io/PrintWriter;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/server/power/DisplayPowerController;->dumpLocal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->updatePowerState()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->debounceProximitySensor()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->debounceLightSensor()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/server/power/DisplayPowerController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/server/power/DisplayPowerController;->mAutoBrightnessSettingsChanged:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->updateAutomaticBrightnessSettings()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/power/DisplayPowerController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    return v0
.end method

.method private animateScreenBrightness(II)V
    .locals 1
    .parameter "target"
    .parameter "rate"

    .prologue
    .line 898
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/power/RampAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/RampAnimator;->animateTo(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0, p1}, Lcom/android/server/power/Notifier;->onScreenBrightness(I)V

    .line 901
    :cond_0
    return-void
.end method

.method private applyLightSensorMeasurement(JF)V
    .locals 10
    .parameter "time"
    .parameter "lux"

    .prologue
    .line 998
    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    .line 999
    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 1000
    iput p3, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    .line 1001
    iput p3, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    .line 1014
    :goto_0
    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 1015
    const-string v6, "DisplayPowerController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "applyLightSensorMeasurement: lux="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mRecentShortTermAverageLux="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mRecentLongTermAverageLux="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    :cond_0
    iput p3, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    .line 1022
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLuxTime:J

    .line 1023
    return-void

    .line 1003
    :cond_1
    iget-wide v6, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLuxTime:J

    sub-long v4, p1, v6

    .line 1004
    .local v4, timeDelta:J
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v6, v6, Lcom/android/server/power/DisplayPowerRequest;->responsitivityFactor:F

    const/high16 v7, 0x447a

    mul-float/2addr v6, v7

    float-to-long v2, v6

    .line 1006
    .local v2, shortTermConstant:J
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v6, v6, Lcom/android/server/power/DisplayPowerRequest;->responsitivityFactor:F

    const v7, 0x459c4000

    mul-float/2addr v6, v7

    float-to-long v0, v6

    .line 1008
    .local v0, longTermConstant:J
    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    iget v7, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    sub-float v7, p3, v7

    long-to-float v8, v4

    mul-float/2addr v7, v8

    add-long v8, v2, v4

    long-to-float v8, v8

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    .line 1010
    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    iget v7, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    sub-float v7, p3, v7

    long-to-float v8, v4

    mul-float/2addr v7, v8

    add-long v8, v0, v4

    long-to-float v8, v8

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    goto :goto_0
.end method

.method private blockScreenOn()V
    .locals 2

    .prologue
    .line 843
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnWasBlocked:Z

    if-nez v0, :cond_0

    .line 844
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnWasBlocked:Z

    .line 845
    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 846
    const-string v0, "DisplayPowerController"

    const-string v1, "Blocked screen on."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    .line 850
    :cond_0
    return-void
.end method

.method private static clamp(III)I
    .locals 0
    .parameter "value"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 884
    if-gt p0, p1, :cond_0

    .line 890
    .end local p1
    :goto_0
    return p1

    .line 887
    .restart local p1
    :cond_0
    if-lt p0, p2, :cond_1

    move p1, p2

    .line 888
    goto :goto_0

    :cond_1
    move p1, p0

    .line 890
    goto :goto_0
.end method

.method private static clampAbsoluteBrightness(I)I
    .locals 2
    .parameter "value"

    .prologue
    .line 880
    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {p0, v0, v1}, Lcom/android/server/power/DisplayPowerController;->clamp(III)I

    move-result v0

    return v0
.end method

.method private clampScreenBrightness(I)I
    .locals 2
    .parameter "value"

    .prologue
    .line 876
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    invoke-static {p1, v0, v1}, Lcom/android/server/power/DisplayPowerController;->clamp(III)I

    move-result v0

    return v0
.end method

.method private static createAutoBrightnessSpline([I[I)Landroid/util/Spline;
    .locals 14
    .parameter "lux"
    .parameter "brightness"

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x2

    const/high16 v13, 0x3fa0

    .line 508
    array-length v8, p0

    if-lt v8, v9, :cond_0

    array-length v8, p0

    array-length v9, p1

    add-int/lit8 v9, v9, -0x1

    if-eq v8, v9, :cond_2

    :cond_0
    move-object v3, v7

    .line 538
    :cond_1
    :goto_0
    return-object v3

    .line 513
    :cond_2
    :try_start_0
    array-length v2, p1

    .line 514
    .local v2, n:I
    new-array v5, v2, [F

    .line 515
    .local v5, x:[F
    new-array v6, v2, [F

    .line 516
    .local v6, y:[F
    const/4 v8, 0x0

    const/4 v9, 0x0

    aget v9, p1, v9

    invoke-static {v9}, Lcom/android/server/power/DisplayPowerController;->normalizeAbsoluteBrightness(I)F

    move-result v9

    aput v9, v6, v8

    .line 517
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 518
    add-int/lit8 v8, v1, -0x1

    aget v8, p0, v8

    int-to-float v8, v8

    aput v8, v5, v1

    .line 519
    aget v8, p1, v1

    invoke-static {v8}, Lcom/android/server/power/DisplayPowerController;->normalizeAbsoluteBrightness(I)F

    move-result v8

    aput v8, v6, v1

    .line 517
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 522
    :cond_3
    sget-boolean v8, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v8, :cond_4

    .line 523
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_4

    .line 524
    const-string v8, "DisplayPowerController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Spline data["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]: x = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v5, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " y = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v6, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 528
    :cond_4
    invoke-static {v5, v6}, Landroid/util/Spline;->createMonotoneCubicSpline([F[F)Landroid/util/Spline;

    move-result-object v3

    .line 529
    .local v3, spline:Landroid/util/Spline;
    sget-boolean v8, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v8, :cond_1

    .line 530
    const-string v8, "DisplayPowerController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Auto-brightness spline: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    const/high16 v4, 0x3f80

    .local v4, v:F
    :goto_3
    array-length v8, p0

    add-int/lit8 v8, v8, -0x1

    aget v8, p0, v8

    int-to-float v8, v8

    mul-float/2addr v8, v13

    cmpg-float v8, v4, v8

    if-gez v8, :cond_1

    .line 532
    const-string v8, "DisplayPowerController"

    const-string v9, "  %7.1f: %7.1f"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v3, v4}, Landroid/util/Spline;->interpolate(F)F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    mul-float/2addr v4, v13

    goto :goto_3

    .line 536
    .end local v1           #i:I
    .end local v2           #n:I
    .end local v3           #spline:Landroid/util/Spline;
    .end local v4           #v:F
    .end local v5           #x:[F
    .end local v6           #y:[F
    :catch_0
    move-exception v0

    .line 537
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v8, "DisplayPowerController"

    const-string v9, "Could not create auto-brightness spline."

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v7

    .line 538
    goto/16 :goto_0
.end method

.method private debounceLightSensor()V
    .locals 8

    .prologue
    .line 1153
    iget-boolean v4, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    if-eqz v4, :cond_2

    .line 1154
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1155
    .local v2, time:J
    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v4, v4, Lcom/android/server/power/DisplayPowerRequest;->responsitivityFactor:F

    const/high16 v5, 0x44fa

    mul-float/2addr v4, v5

    float-to-long v0, v4

    .line 1157
    .local v0, synthesizedDelay:J
    iget-wide v4, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLuxTime:J

    add-long/2addr v4, v0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1

    .line 1158
    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 1159
    const-string v4, "DisplayPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "debounceLightSensor: Synthesizing light sensor measurement after "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLuxTime:J

    sub-long v6, v2, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    :cond_0
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/power/DisplayPowerController;->applyLightSensorMeasurement(JF)V

    .line 1164
    :cond_1
    invoke-direct {p0, v2, v3}, Lcom/android/server/power/DisplayPowerController;->updateAmbientLux(J)V

    .line 1166
    .end local v0           #synthesizedDelay:J
    .end local v2           #time:J
    :cond_2
    return-void
.end method

.method private debounceProximitySensor()V
    .locals 6

    .prologue
    .line 950
    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 951
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 952
    .local v1, now:J
    iget-wide v3, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    cmp-long v3, v3, v1

    if-gtz v3, :cond_1

    .line 953
    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    iput v3, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    .line 954
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerState()V

    .line 961
    .end local v1           #now:J
    :cond_0
    :goto_0
    return-void

    .line 956
    .restart local v1       #now:J
    :cond_1
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 957
    .local v0, msg:Landroid/os/Message;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 958
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    iget-wide v4, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private dumpLocal(Ljava/io/PrintWriter;)V
    .locals 3
    .parameter "pw"

    .prologue
    .line 1320
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1321
    const-string v0, "Display Controller Thread State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPowerRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWaitingForNegativeProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximitySensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximitySensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximityThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximityThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    invoke-static {v1}, Lcom/android/server/power/DisplayPowerController;->proximityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    invoke-static {v1}, Lcom/android/server/power/DisplayPowerController;->proximityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingProximityDebounceTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOffBecauseOfProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorEnableTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnableTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLuxValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastObservedLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastObservedLuxTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLuxTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRecentLightSamples="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRecentShortTermAverageLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRecentLongTermAverageLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDebounceLuxDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDebounceLuxTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUsingScreenAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mUsingScreenAutoBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastScreenAutoBrightnessGamma="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mLastScreenAutoBrightnessGamma:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTwilight.getCurrentState()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mTwilight:Lcom/android/server/TwilightService;

    invoke-virtual {v1}, Lcom/android/server/TwilightService;->getCurrentState()Lcom/android/server/TwilightService$TwilightState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1353
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 1354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mElectronBeamOnAnimator.isStarted()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1357
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 1358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mElectronBeamOffAnimator.isStarted()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1362
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    if-eqz v0, :cond_2

    .line 1363
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v0, p1}, Lcom/android/server/power/DisplayPowerState;->dump(Ljava/io/PrintWriter;)V

    .line 1365
    :cond_2
    return-void
.end method

.method private getIntArrayForSetting(Ljava/lang/String;)[I
    .locals 8
    .parameter "setting"

    .prologue
    const/4 v5, 0x0

    .line 485
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, -0x2

    invoke-static {v6, p1, v7}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 487
    .local v3, value:Ljava/lang/String;
    if-nez v3, :cond_1

    move-object v4, v5

    .line 504
    :cond_0
    :goto_0
    return-object v4

    .line 490
    :cond_1
    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 491
    .local v2, items:[Ljava/lang/String;
    if-eqz v2, :cond_2

    array-length v6, v2

    if-nez v6, :cond_3

    :cond_2
    move-object v4, v5

    .line 492
    goto :goto_0

    .line 495
    :cond_3
    array-length v6, v2

    new-array v4, v6, [I

    .line 496
    .local v4, values:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v6, v2

    if-ge v1, v6, :cond_0

    .line 498
    :try_start_0
    aget-object v6, v2, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v4, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 499
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    move-object v4, v5

    .line 500
    goto :goto_0
.end method

.method private static getTwilightGamma(JJJ)F
    .locals 9
    .parameter "now"
    .parameter "lastSunset"
    .parameter "nextSunrise"

    .prologue
    const-wide/32 v7, 0x6ddd00

    const-wide/16 v5, 0x0

    const v4, 0x4adbba00

    const/high16 v0, 0x3fc0

    const/high16 v1, 0x3f80

    .line 1234
    cmp-long v2, p2, v5

    if-ltz v2, :cond_0

    cmp-long v2, p4, v5

    if-ltz v2, :cond_0

    cmp-long v2, p0, p2

    if-ltz v2, :cond_0

    cmp-long v2, p0, p4

    if-lez v2, :cond_2

    :cond_0
    move v0, v1

    .line 1249
    :cond_1
    :goto_0
    return v0

    .line 1239
    :cond_2
    add-long v2, p2, v7

    cmp-long v2, p0, v2

    if-gez v2, :cond_3

    .line 1240
    sub-long v2, p0, p2

    long-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {v1, v0, v2}, Lcom/android/server/power/DisplayPowerController;->lerp(FFF)F

    move-result v0

    goto :goto_0

    .line 1244
    :cond_3
    sub-long v2, p4, v7

    cmp-long v2, p0, v2

    if-lez v2, :cond_1

    .line 1245
    sub-long v2, p4, p0

    long-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {v1, v0, v2}, Lcom/android/server/power/DisplayPowerController;->lerp(FFF)F

    move-result v0

    goto :goto_0
.end method

.method private handleLightSensorEvent(JF)V
    .locals 2
    .parameter "time"
    .parameter "lux"

    .prologue
    .line 990
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 992
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/DisplayPowerController;->applyLightSensorMeasurement(JF)V

    .line 993
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/DisplayPowerController;->updateAmbientLux(J)V

    .line 994
    return-void
.end method

.method private handleProximitySensorEvent(JZ)V
    .locals 3
    .parameter "time"
    .parameter "positive"

    .prologue
    const/4 v2, 0x1

    .line 929
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    .line 947
    :cond_0
    :goto_0
    return-void

    .line 932
    :cond_1
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    if-ne v0, v2, :cond_2

    if-nez p3, :cond_0

    .line 938
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 939
    if-eqz p3, :cond_3

    .line 940
    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    .line 941
    const-wide/16 v0, 0x0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 946
    :goto_1
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->debounceProximitySensor()V

    goto :goto_0

    .line 943
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    .line 944
    const-wide/16 v0, 0x1f4

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    goto :goto_1
.end method

.method private initialize()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 616
    new-instance v0, Lcom/android/server/power/DisplayPowerState;

    new-instance v1, Lcom/android/server/power/ElectronBeam;

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayManager:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {v1, v2}, Lcom/android/server/power/ElectronBeam;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayBlanker:Lcom/android/server/power/DisplayBlanker;

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mLights:Lcom/android/server/LightsService;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/power/DisplayPowerState;-><init>(Lcom/android/server/power/ElectronBeam;Lcom/android/server/power/DisplayBlanker;Lcom/android/server/LightsService$Light;)V

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    .line 620
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    sget-object v1, Lcom/android/server/power/DisplayPowerState;->ELECTRON_BEAM_LEVEL:Landroid/util/FloatProperty;

    new-array v2, v5, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    .line 622
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 623
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 625
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    sget-object v1, Lcom/android/server/power/DisplayPowerState;->ELECTRON_BEAM_LEVEL:Landroid/util/FloatProperty;

    new-array v2, v5, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    .line 627
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 628
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 630
    new-instance v0, Lcom/android/server/power/RampAnimator;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    sget-object v2, Lcom/android/server/power/DisplayPowerState;->SCREEN_BRIGHTNESS:Landroid/util/IntProperty;

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/RampAnimator;-><init>(Ljava/lang/Object;Landroid/util/IntProperty;)V

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/power/RampAnimator;

    .line 632
    return-void

    .line 620
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 625
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private static lerp(FFF)F
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "alpha"

    .prologue
    .line 1253
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method private static normalizeAbsoluteBrightness(I)F
    .locals 2
    .parameter "value"

    .prologue
    .line 894
    invoke-static {p0}, Lcom/android/server/power/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f

    div-float/2addr v0, v1

    return v0
.end method

.method private static proximityToString(I)Ljava/lang/String;
    .locals 1
    .parameter "state"

    .prologue
    .line 1368
    packed-switch p0, :pswitch_data_0

    .line 1376
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1370
    :pswitch_0
    const-string v0, "Unknown"

    goto :goto_0

    .line 1372
    :pswitch_1
    const-string v0, "Negative"

    goto :goto_0

    .line 1374
    :pswitch_2
    const-string v0, "Positive"

    goto :goto_0

    .line 1368
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private sendOnProximityNegative()V
    .locals 2

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1280
    return-void
.end method

.method private sendOnProximityPositive()V
    .locals 2

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1269
    return-void
.end method

.method private sendOnStateChanged()V
    .locals 2

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mOnStateChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1258
    return-void
.end method

.method private sendUpdatePowerState()V
    .locals 2

    .prologue
    .line 601
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 602
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 603
    monitor-exit v1

    .line 604
    return-void

    .line 603
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private sendUpdatePowerStateLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 607
    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    if-nez v1, :cond_0

    .line 608
    iput-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 609
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 610
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 611
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 613
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private setLightSensorEnabled(ZZ)V
    .locals 7
    .parameter "enable"
    .parameter "updateAutoBrightness"

    .prologue
    const/4 v6, 0x0

    .line 964
    if-eqz p1, :cond_2

    .line 965
    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    if-nez v1, :cond_0

    .line 966
    const/4 p2, 0x1

    .line 967
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    .line 968
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnableTime:J

    .line 970
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v1, v1, Lcom/android/server/power/DisplayPowerRequest;->responsitivityFactor:F

    const/high16 v2, 0x447a

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 972
    .local v0, updateRateMillis:I
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    mul-int/lit16 v4, v0, 0x3e8

    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 984
    .end local v0           #updateRateMillis:I
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 985
    invoke-direct {p0, v6}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(Z)V

    .line 987
    :cond_1
    return-void

    .line 976
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    if-eqz v1, :cond_0

    .line 977
    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    .line 978
    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    .line 979
    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    .line 980
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 981
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method

.method private setProximitySensorEnabled(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    const/4 v1, -0x1

    .line 911
    if-eqz p1, :cond_1

    .line 912
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    if-nez v0, :cond_0

    .line 913
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    .line 914
    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    .line 915
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 926
    :cond_0
    :goto_0
    return-void

    .line 919
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_0

    .line 920
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    .line 921
    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    .line 922
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 923
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method

.method private setScreenOn(Z)V
    .locals 4
    .parameter "on"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 863
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/power/DisplayPowerState;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    if-ne v0, p1, :cond_0

    .line 864
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v0, p1}, Lcom/android/server/power/DisplayPowerState;->setScreenOn(Z)V

    .line 865
    if-eqz p1, :cond_2

    .line 866
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0}, Lcom/android/server/power/Notifier;->onScreenOn()V

    .line 873
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 863
    goto :goto_0

    .line 868
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mLights:Lcom/android/server/LightsService;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 869
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mLights:Lcom/android/server/LightsService;

    invoke-virtual {v0, v1}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 870
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0}, Lcom/android/server/power/Notifier;->onScreenOff()V

    goto :goto_1
.end method

.method private unblockScreenOn()V
    .locals 6

    .prologue
    .line 853
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnWasBlocked:Z

    if-eqz v0, :cond_0

    .line 854
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnWasBlocked:Z

    .line 855
    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 856
    const-string v0, "DisplayPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unblocked screen on after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    :cond_0
    return-void
.end method

.method private updateAmbientLux(J)V
    .locals 12
    .parameter "time"

    .prologue
    .line 1028
    iget-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    if-eqz v8, :cond_0

    iget-wide v8, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnableTime:J

    sub-long v8, p1, v8

    iget v10, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorWarmUpTimeConfig:I

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_3

    .line 1030
    :cond_0
    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    iput v8, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    .line 1031
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    .line 1032
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    .line 1033
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    .line 1034
    sget-boolean v8, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v8, :cond_1

    .line 1035
    const-string v8, "DisplayPowerController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateAmbientLux: Initializing: mRecentShortTermAverageLux="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mRecentLongTermAverageLux="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mAmbientLux="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    :cond_1
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(Z)V

    .line 1150
    :cond_2
    :goto_0
    return-void

    .line 1045
    :cond_3
    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    const v9, 0x3f8ccccd

    mul-float v0, v8, v9

    .line 1046
    .local v0, brighteningLuxThreshold:F
    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    cmpl-float v8, v8, v0

    if-lez v8, :cond_8

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    cmpl-float v8, v8, v0

    if-lez v8, :cond_8

    .line 1050
    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    iget v9, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    sub-float/2addr v8, v9

    const/high16 v9, 0x4396

    cmpl-float v8, v8, v9

    if-lez v8, :cond_6

    .line 1051
    const-wide/16 v2, 0x3e8

    .line 1055
    .local v2, debounceDelay:J
    :goto_1
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v8, v8, Lcom/android/server/power/DisplayPowerRequest;->responsitivityFactor:F

    long-to-float v9, v2

    mul-float/2addr v8, v9

    float-to-long v2, v8

    .line 1057
    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    if-gtz v8, :cond_4

    .line 1058
    const/4 v8, 0x1

    iput v8, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    .line 1059
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    .line 1060
    sget-boolean v8, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v8, :cond_4

    .line 1061
    const-string v8, "DisplayPowerController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateAmbientLux: Possibly brightened, waiting for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ms: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "brighteningLuxThreshold="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mRecentShortTermAverageLux="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mRecentLongTermAverageLux="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mAmbientLux="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    :cond_4
    iget-wide v8, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    add-long v4, v8, v2

    .line 1072
    .local v4, debounceTime:J
    cmp-long v8, p1, v4

    if-ltz v8, :cond_7

    .line 1073
    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    iput v8, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    .line 1074
    sget-boolean v8, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v8, :cond_5

    .line 1075
    const-string v8, "DisplayPowerController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateAmbientLux: Brightened: brighteningLuxThreshold="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mRecentShortTermAverageLux="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mRecentLongTermAverageLux="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mAmbientLux="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    :cond_5
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(Z)V

    goto/16 :goto_0

    .line 1053
    .end local v2           #debounceDelay:J
    .end local v4           #debounceTime:J
    :cond_6
    const-wide/16 v2, 0xfa0

    .restart local v2       #debounceDelay:J
    goto/16 :goto_1

    .line 1083
    .restart local v4       #debounceTime:J
    :cond_7
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v9, 0x3

    invoke-virtual {v8, v9, v4, v5}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0

    .line 1089
    .end local v2           #debounceDelay:J
    .end local v4           #debounceTime:J
    :cond_8
    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    const v9, 0x3f4ccccd

    mul-float v1, v8, v9

    .line 1090
    .local v1, darkeningLuxThreshold:F
    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    cmpg-float v8, v8, v1

    if-gez v8, :cond_c

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    cmpg-float v8, v8, v1

    if-gez v8, :cond_c

    .line 1092
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v8, v8, Lcom/android/server/power/DisplayPowerRequest;->responsitivityFactor:F

    const/high16 v9, 0x45fa

    mul-float/2addr v8, v9

    float-to-long v2, v8

    .line 1094
    .restart local v2       #debounceDelay:J
    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    if-ltz v8, :cond_9

    .line 1095
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    .line 1096
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    .line 1097
    sget-boolean v8, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v8, :cond_9

    .line 1098
    const-string v8, "DisplayPowerController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateAmbientLux: Possibly darkened, waiting for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ms: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "darkeningLuxThreshold="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mRecentShortTermAverageLux="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mRecentLongTermAverageLux="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mAmbientLux="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    :cond_9
    iget-wide v8, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    add-long v4, v8, v2

    .line 1107
    .restart local v4       #debounceTime:J
    cmp-long v8, p1, v4

    if-ltz v8, :cond_b

    .line 1110
    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    iget v9, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iput v8, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    .line 1111
    sget-boolean v8, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v8, :cond_a

    .line 1112
    const-string v8, "DisplayPowerController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateAmbientLux: Darkened: darkeningLuxThreshold="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mRecentShortTermAverageLux="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mRecentLongTermAverageLux="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mAmbientLux="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    :cond_a
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(Z)V

    goto/16 :goto_0

    .line 1120
    :cond_b
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v9, 0x3

    invoke-virtual {v8, v9, v4, v5}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0

    .line 1126
    .end local v2           #debounceDelay:J
    .end local v4           #debounceTime:J
    :cond_c
    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    if-eqz v8, :cond_d

    .line 1127
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    .line 1128
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    .line 1129
    sget-boolean v8, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v8, :cond_d

    .line 1130
    const-string v8, "DisplayPowerController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateAmbientLux: Canceled debounce: brighteningLuxThreshold="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", darkeningLuxThreshold="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mRecentShortTermAverageLux="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mRecentLongTermAverageLux="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mAmbientLux="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    :cond_d
    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    cmpl-float v8, v8, v0

    if-gtz v8, :cond_e

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    cmpg-float v8, v8, v1

    if-gez v8, :cond_2

    .line 1146
    :cond_e
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v8, v8, Lcom/android/server/power/DisplayPowerRequest;->responsitivityFactor:F

    const/high16 v9, 0x44fa

    mul-float/2addr v8, v9

    float-to-long v6, v8

    .line 1148
    .local v6, synthesizedDelay:J
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v9, 0x3

    add-long v10, p1, v6

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0
.end method

.method private updateAutoBrightness(Z)V
    .locals 14
    .parameter "sendUpdate"

    .prologue
    .line 1169
    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    if-nez v2, :cond_1

    .line 1231
    :cond_0
    :goto_0
    return-void

    .line 1173
    :cond_1
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v2, v3}, Landroid/util/Spline;->interpolate(F)F

    move-result v13

    .line 1174
    .local v13, value:F
    const/high16 v8, 0x3f80

    .line 1176
    .local v8, gamma:F
    sget-boolean v2, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 1177
    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAutoBrightness: mAmbientLux="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    :cond_2
    sget-boolean v2, Lcom/android/server/power/DisplayPowerController;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v2, v2, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_3

    .line 1182
    const/high16 v2, 0x4040

    const/high16 v3, 0x3f80

    const/high16 v4, -0x4080

    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v5, v5, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    neg-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Landroid/util/FloatMath;->pow(FF)F

    move-result v6

    .line 1185
    .local v6, adjGamma:F
    mul-float/2addr v8, v6

    .line 1186
    sget-boolean v2, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 1187
    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAutoBrightness: adjGamma="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    .end local v6           #adjGamma:F
    :cond_3
    sget-boolean v2, Lcom/android/server/power/DisplayPowerController;->USE_TWILIGHT_ADJUSTMENT:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mTwilightAdjustmentEnabled:Z

    if-eqz v2, :cond_4

    .line 1192
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mTwilight:Lcom/android/server/TwilightService;

    invoke-virtual {v2}, Lcom/android/server/TwilightService;->getCurrentState()Lcom/android/server/TwilightService$TwilightState;

    move-result-object v12

    .line 1193
    .local v12, state:Lcom/android/server/TwilightService$TwilightState;
    if-eqz v12, :cond_4

    invoke-virtual {v12}, Lcom/android/server/TwilightService$TwilightState;->isNight()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1195
    .local v0, now:J
    invoke-virtual {v12}, Lcom/android/server/TwilightService$TwilightState;->getYesterdaySunset()J

    move-result-wide v2

    invoke-virtual {v12}, Lcom/android/server/TwilightService$TwilightState;->getTodaySunrise()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/android/server/power/DisplayPowerController;->getTwilightGamma(JJJ)F

    move-result v7

    .line 1197
    .local v7, earlyGamma:F
    invoke-virtual {v12}, Lcom/android/server/TwilightService$TwilightState;->getTodaySunset()J

    move-result-wide v2

    invoke-virtual {v12}, Lcom/android/server/TwilightService$TwilightState;->getTomorrowSunrise()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/android/server/power/DisplayPowerController;->getTwilightGamma(JJJ)F

    move-result v10

    .line 1199
    .local v10, lateGamma:F
    mul-float v2, v7, v10

    mul-float/2addr v8, v2

    .line 1200
    sget-boolean v2, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 1201
    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAutoBrightness: earlyGamma="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", lateGamma="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    .end local v0           #now:J
    .end local v7           #earlyGamma:F
    .end local v10           #lateGamma:F
    .end local v12           #state:Lcom/android/server/TwilightService$TwilightState;
    :cond_4
    const/high16 v2, 0x3f80

    cmpl-float v2, v8, v2

    if-eqz v2, :cond_5

    .line 1208
    move v9, v13

    .line 1209
    .local v9, in:F
    invoke-static {v13, v8}, Landroid/util/FloatMath;->pow(FF)F

    move-result v13

    .line 1210
    sget-boolean v2, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 1211
    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAutoBrightness: gamma="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", in="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", out="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    .end local v9           #in:F
    :cond_5
    const/high16 v2, 0x437f

    mul-float/2addr v2, v13

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/power/DisplayPowerController;->clampScreenBrightness(I)I

    move-result v11

    .line 1218
    .local v11, newScreenAutoBrightness:I
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    if-eq v2, v11, :cond_0

    .line 1219
    sget-boolean v2, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v2, :cond_6

    .line 1220
    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAutoBrightness: mScreenAutoBrightness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newScreenAutoBrightness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    :cond_6
    iput v11, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    .line 1226
    iput v8, p0, Lcom/android/server/power/DisplayPowerController;->mLastScreenAutoBrightnessGamma:F

    .line 1227
    if-eqz p1, :cond_0

    .line 1228
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerState()V

    goto/16 :goto_0
.end method

.method private updateAutomaticBrightnessSettings()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 448
    const-string v5, "auto_brightness_lux"

    invoke-direct {p0, v5}, Lcom/android/server/power/DisplayPowerController;->getIntArrayForSetting(Ljava/lang/String;)[I

    move-result-object v0

    .line 449
    .local v0, lux:[I
    const-string v5, "auto_brightness_backlight"

    invoke-direct {p0, v5}, Lcom/android/server/power/DisplayPowerController;->getIntArrayForSetting(Ljava/lang/String;)[I

    move-result-object v2

    .line 450
    .local v2, values:[I
    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 452
    .local v1, res:Landroid/content/res/Resources;
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    .line 453
    iput-boolean v3, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    .line 455
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 456
    invoke-static {v0, v2}, Lcom/android/server/power/DisplayPowerController;->createAutoBrightnessSpline([I[I)Landroid/util/Spline;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    .line 457
    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    if-nez v5, :cond_0

    .line 458
    const-string v5, "DisplayPowerController"

    const-string v6, "Found invalid auto-brightness configuration, falling back to default"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_0
    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    if-nez v5, :cond_1

    .line 463
    const v5, 0x107002c

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 464
    const v5, 0x107002d

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    .line 465
    invoke-static {v0, v2}, Lcom/android/server/power/DisplayPowerController;->createAutoBrightnessSpline([I[I)Landroid/util/Spline;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    .line 468
    :cond_1
    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    if-nez v5, :cond_2

    .line 469
    const-string v3, "DisplayPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in config.xml.  config_autoBrightnessLcdBacklightValues (size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "must be monotic and have exactly one more entry than "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "config_autoBrightnessLevels (size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "which must be strictly increasing.  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Auto-brightness will be disabled."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iput-boolean v4, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    .line 482
    :goto_0
    return-void

    .line 479
    :cond_2
    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "auto_brightness_twilight_adjustment"

    const/4 v7, -0x2

    invoke-static {v5, v6, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_3

    :goto_1
    iput-boolean v3, p0, Lcom/android/server/power/DisplayPowerController;->mTwilightAdjustmentEnabled:Z

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1
.end method

.method private updatePowerState()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 653
    const/4 v0, 0x0

    .line 654
    .local v0, mustInitialize:Z
    iget-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mTwilightChanged:Z

    if-nez v8, :cond_0

    iget-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mAutoBrightnessSettingsChanged:Z

    if-eqz v8, :cond_2

    :cond_0
    move v4, v7

    .line 655
    .local v4, updateAutoBrightness:Z
    :goto_0
    const/4 v5, 0x0

    .line 657
    .local v5, wasDim:Z
    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mTwilightChanged:Z

    .line 658
    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mAutoBrightnessSettingsChanged:Z

    .line 660
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 661
    const/4 v9, 0x0

    :try_start_0
    iput-boolean v9, p0, Lcom/android/server/power/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 662
    iget-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    if-nez v9, :cond_3

    .line 663
    monitor-exit v8

    .line 840
    :cond_1
    :goto_1
    return-void

    .end local v4           #updateAutoBrightness:Z
    .end local v5           #wasDim:Z
    :cond_2
    move v4, v6

    .line 654
    goto :goto_0

    .line 666
    .restart local v4       #updateAutoBrightness:Z
    .restart local v5       #wasDim:Z
    :cond_3
    iget-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    if-nez v9, :cond_c

    .line 667
    new-instance v9, Lcom/android/server/power/DisplayPowerRequest;

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    invoke-direct {v9, v10}, Lcom/android/server/power/DisplayPowerRequest;-><init>(Lcom/android/server/power/DisplayPowerRequest;)V

    iput-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    .line 668
    iget-boolean v9, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    iput-boolean v9, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 669
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 670
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 671
    const/4 v0, 0x1

    .line 685
    :cond_4
    :goto_2
    iget-boolean v9, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    if-nez v9, :cond_f

    move v1, v7

    .line 686
    .local v1, mustNotify:Z
    :goto_3
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 689
    if-eqz v0, :cond_5

    .line 690
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->initialize()V

    .line 694
    :cond_5
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v8, :cond_12

    .line 695
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v8, v8, Lcom/android/server/power/DisplayPowerRequest;->useProximitySensor:Z

    if-eqz v8, :cond_10

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v8, v8, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-eqz v8, :cond_10

    .line 697
    invoke-direct {p0, v7}, Lcom/android/server/power/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 698
    iget-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v8, :cond_6

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    if-ne v8, v7, :cond_6

    .line 700
    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 701
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnProximityPositive()V

    .line 702
    invoke-direct {p0, v6}, Lcom/android/server/power/DisplayPowerController;->setScreenOn(Z)V

    .line 713
    :cond_6
    :goto_4
    iget-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v8, :cond_7

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    if-eq v8, v7, :cond_7

    .line 715
    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 716
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnProximityNegative()V

    .line 723
    :cond_7
    :goto_5
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    if-eqz v8, :cond_8

    .line 724
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v8, v8, Lcom/android/server/power/DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v8, :cond_13

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v8, v8, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    invoke-static {v8}, Lcom/android/server/power/DisplayPowerController;->wantScreenOn(I)Z

    move-result v8

    if-eqz v8, :cond_13

    move v8, v7

    :goto_6
    invoke-direct {p0, v8, v4}, Lcom/android/server/power/DisplayPowerController;->setLightSensorEnabled(ZZ)V

    .line 729
    :cond_8
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v8, v8, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    invoke-static {v8}, Lcom/android/server/power/DisplayPowerController;->wantScreenOn(I)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 732
    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    if-ltz v8, :cond_14

    iget-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    if-eqz v8, :cond_14

    .line 734
    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    .line 735
    .local v3, target:I
    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mUsingScreenAutoBrightness:Z

    .line 736
    .local v2, slow:Z
    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mUsingScreenAutoBrightness:Z

    .line 746
    :goto_7
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v8, v8, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-ne v8, v7, :cond_15

    .line 748
    add-int/lit8 v8, v3, -0xa

    iget v9, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 750
    const/4 v2, 0x0

    .line 755
    :cond_9
    :goto_8
    invoke-direct {p0, v3}, Lcom/android/server/power/DisplayPowerController;->clampScreenBrightness(I)I

    move-result v9

    if-eqz v2, :cond_16

    const/16 v8, 0x28

    :goto_9
    invoke-direct {p0, v9, v8}, Lcom/android/server/power/DisplayPowerController;->animateScreenBrightness(II)V

    .line 763
    .end local v2           #slow:Z
    .end local v3           #target:I
    :goto_a
    iget-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v8, :cond_a

    .line 764
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v8, v8, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    invoke-static {v8}, Lcom/android/server/power/DisplayPowerController;->wantScreenOn(I)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 769
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v6

    if-nez v6, :cond_a

    .line 773
    invoke-direct {p0, v7}, Lcom/android/server/power/DisplayPowerController;->setScreenOn(Z)V

    .line 775
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v6, v6, Lcom/android/server/power/DisplayPowerRequest;->blockScreenOn:Z

    if-eqz v6, :cond_18

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v6}, Lcom/android/server/power/DisplayPowerState;->getElectronBeamLevel()F

    move-result v6

    cmpl-float v6, v6, v11

    if-nez v6, :cond_18

    .line 777
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->blockScreenOn()V

    .line 824
    :cond_a
    :goto_b
    if-eqz v1, :cond_1

    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnWasBlocked:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Lcom/android/server/power/DisplayPowerState;->waitUntilClean(Ljava/lang/Runnable;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 829
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 830
    :try_start_1
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-nez v6, :cond_b

    .line 831
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 833
    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v6, :cond_b

    .line 834
    const-string v6, "DisplayPowerController"

    const-string v8, "Display ready!"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    :cond_b
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 838
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnStateChanged()V

    goto/16 :goto_1

    .line 672
    .end local v1           #mustNotify:Z
    :cond_c
    :try_start_2
    iget-boolean v9, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-eqz v9, :cond_4

    .line 673
    iget-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v9, v9, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    iget v10, v10, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_d

    .line 675
    const/4 v4, 0x1

    .line 677
    :cond_d
    iget-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v9, v9, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-ne v9, v7, :cond_e

    move v5, v7

    .line 678
    :goto_c
    iget-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    invoke-virtual {v9, v10}, Lcom/android/server/power/DisplayPowerRequest;->copyFrom(Lcom/android/server/power/DisplayPowerRequest;)V

    .line 679
    iget-boolean v9, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    iget-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    or-int/2addr v9, v10

    iput-boolean v9, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 680
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 681
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 682
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    goto/16 :goto_2

    .line 686
    :catchall_0
    move-exception v6

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    :cond_e
    move v5, v6

    .line 677
    goto :goto_c

    :cond_f
    move v1, v6

    .line 685
    goto/16 :goto_3

    .line 704
    .restart local v1       #mustNotify:Z
    :cond_10
    iget-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    if-eqz v8, :cond_11

    iget-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v8, :cond_11

    iget v8, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    if-ne v8, v7, :cond_11

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v8, v8, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-eqz v8, :cond_11

    .line 708
    invoke-direct {p0, v7}, Lcom/android/server/power/DisplayPowerController;->setProximitySensorEnabled(Z)V

    goto/16 :goto_4

    .line 710
    :cond_11
    invoke-direct {p0, v6}, Lcom/android/server/power/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 711
    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    goto/16 :goto_4

    .line 719
    :cond_12
    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    goto/16 :goto_5

    :cond_13
    move v8, v6

    .line 724
    goto/16 :goto_6

    .line 742
    :cond_14
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v3, v8, Lcom/android/server/power/DisplayPowerRequest;->screenBrightness:I

    .line 743
    .restart local v3       #target:I
    const/4 v2, 0x0

    .line 744
    .restart local v2       #slow:Z
    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mUsingScreenAutoBrightness:Z

    goto/16 :goto_7

    .line 751
    :cond_15
    if-eqz v5, :cond_9

    .line 753
    const/4 v2, 0x0

    goto/16 :goto_8

    .line 755
    :cond_16
    const/16 v8, 0xc8

    goto/16 :goto_9

    .line 759
    .end local v2           #slow:Z
    .end local v3           #target:I
    :cond_17
    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mUsingScreenAutoBrightness:Z

    goto/16 :goto_a

    .line 779
    :cond_18
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->unblockScreenOn()V

    .line 794
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    const/high16 v7, 0x3f80

    invoke-virtual {v6, v7}, Lcom/android/server/power/DisplayPowerState;->setElectronBeamLevel(F)V

    .line 795
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v6}, Lcom/android/server/power/DisplayPowerState;->dismissElectronBeam()V

    goto/16 :goto_b

    .line 802
    :cond_19
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v8}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v8

    if-nez v8, :cond_a

    .line 803
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v8}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v8

    if-nez v8, :cond_a

    .line 804
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v8}, Lcom/android/server/power/DisplayPowerState;->getElectronBeamLevel()F

    move-result v8

    cmpl-float v8, v8, v11

    if-nez v8, :cond_1a

    .line 805
    invoke-direct {p0, v6}, Lcom/android/server/power/DisplayPowerController;->setScreenOn(Z)V

    goto/16 :goto_b

    .line 806
    :cond_1a
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    iget-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamFadesConfig:Z

    if-eqz v8, :cond_1b

    const/4 v7, 0x2

    :cond_1b
    invoke-virtual {v6, v7}, Lcom/android/server/power/DisplayPowerState;->prepareElectronBeam(I)Z

    move-result v6

    if-eqz v6, :cond_1c

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v6}, Lcom/android/server/power/DisplayPowerState;->isScreenOn()Z

    move-result v6

    if-eqz v6, :cond_1c

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->useScreenOffAnimation()Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 812
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_b

    .line 814
    :cond_1c
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->end()V

    goto/16 :goto_b

    .line 837
    :catchall_1
    move-exception v6

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6
.end method

.method private useScreenOffAnimation()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1470
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_animation"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static wantScreenOn(I)Z
    .locals 1
    .parameter "state"

    .prologue
    .line 1381
    packed-switch p0, :pswitch_data_0

    .line 1386
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1384
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1381
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .parameter "pw"

    .prologue
    .line 1290
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1291
    :try_start_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1292
    const-string v0, "Display Controller Locked State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayReadyLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingRequestLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingRequestChangedLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingWaitForNegativeProximityLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingUpdatePowerStateLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1299
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1301
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1302
    const-string v0, "Display Controller Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDimConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseSoftwareAutoBrightnessConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenAutoBrightnessSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorWarmUpTimeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorWarmUpTimeConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1311
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    new-instance v1, Lcom/android/server/power/DisplayPowerController$7;

    invoke-direct {v1, p0, p1}, Lcom/android/server/power/DisplayPowerController$7;-><init>(Lcom/android/server/power/DisplayPowerController;Ljava/io/PrintWriter;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 1317
    return-void

    .line 1299
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isProximitySensorAvailable()Z
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestPowerState(Lcom/android/server/power/DisplayPowerRequest;Z)Z
    .locals 4
    .parameter "request"
    .parameter "waitForNegativeProximity"

    .prologue
    .line 565
    sget-boolean v1, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 566
    const-string v1, "DisplayPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestPowerState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", waitForNegativeProximity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 571
    const/4 v0, 0x0

    .line 573
    .local v0, changed:Z
    if-eqz p2, :cond_1

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    if-nez v1, :cond_1

    .line 575
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 576
    const/4 v0, 0x1

    .line 579
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    if-nez v1, :cond_5

    .line 580
    new-instance v1, Lcom/android/server/power/DisplayPowerRequest;

    invoke-direct {v1, p1}, Lcom/android/server/power/DisplayPowerRequest;-><init>(Lcom/android/server/power/DisplayPowerRequest;)V

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    .line 581
    const/4 v0, 0x1

    .line 587
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 588
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 591
    :cond_3
    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-nez v1, :cond_4

    .line 592
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 593
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 596
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    monitor-exit v2

    return v1

    .line 582
    :cond_5
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    invoke-virtual {v1, p1}, Lcom/android/server/power/DisplayPowerRequest;->equals(Lcom/android/server/power/DisplayPowerRequest;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 583
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    invoke-virtual {v1, p1}, Lcom/android/server/power/DisplayPowerRequest;->copyFrom(Lcom/android/server/power/DisplayPowerRequest;)V

    .line 584
    const/4 v0, 0x1

    goto :goto_0

    .line 597
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
