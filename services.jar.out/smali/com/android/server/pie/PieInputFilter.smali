.class public Lcom/android/server/pie/PieInputFilter;
.super Ljava/lang/Object;
.source "PieInputFilter.java"

# interfaces
.implements Landroid/view/IInputFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pie/PieInputFilter$2;,
        Lcom/android/server/pie/PieInputFilter$State;,
        Lcom/android/server/pie/PieInputFilter$MotionEventInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_INPUT:Z = false

.field private static final SYSTRACE:Z = false

.field private static final TAG:Ljava/lang/String; = "PieInputFilter"


# instance fields
.field private mDeviceId:I

.field private final mHandler:Landroid/os/Handler;

.field private mHost:Landroid/view/IInputFilterHost;

.field private final mLock:Ljava/lang/Object;

.field private mMotionEventQueue:Lcom/android/server/pie/PieInputFilter$MotionEventInfo;

.field private mMotionEventQueueCountDebug:I

.field private mMotionEventQueueTail:Lcom/android/server/pie/PieInputFilter$MotionEventInfo;

.field private volatile mPositions:I

.field private volatile mSensitivity:I

.field private mState:Lcom/android/server/pie/PieInputFilter$State;

.field private mSyntheticDownTime:J

.field private mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

.field private mTracker:Lcom/android/server/pie/PieGestureTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 6
    .parameter "context"
    .parameter "handler"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/pie/PieInputFilter;->mHost:Landroid/view/IInputFilterHost;

    .line 148
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/pie/PieInputFilter;->mLock:Ljava/lang/Object;

    .line 158
    sget-object v1, Lcom/android/server/pie/PieInputFilter$State;->LISTEN:Lcom/android/server/pie/PieInputFilter$State;

    iput-object v1, p0, Lcom/android/server/pie/PieInputFilter;->mState:Lcom/android/server/pie/PieInputFilter$State;

    .line 164
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/pie/PieInputFilter;->mSyntheticDownTime:J

    .line 165
    new-array v1, v3, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v1, p0, Lcom/android/server/pie/PieInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 166
    new-array v1, v3, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v1, p0, Lcom/android/server/pie/PieInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 169
    iput-object p2, p0, Lcom/android/server/pie/PieInputFilter;->mHandler:Landroid/os/Handler;

    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 172
    .local v0, res:Landroid/content/res/Resources;
    new-instance v1, Lcom/android/server/pie/PieGestureTracker;

    const v2, 0x105007d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x105007b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x105007c

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/pie/PieGestureTracker;-><init>(III)V

    iput-object v1, p0, Lcom/android/server/pie/PieInputFilter;->mTracker:Lcom/android/server/pie/PieGestureTracker;

    .line 175
    iget-object v1, p0, Lcom/android/server/pie/PieInputFilter;->mTracker:Lcom/android/server/pie/PieGestureTracker;

    new-instance v2, Lcom/android/server/pie/PieInputFilter$1;

    invoke-direct {v2, p0}, Lcom/android/server/pie/PieInputFilter$1;-><init>(Lcom/android/server/pie/PieInputFilter;)V

    invoke-virtual {v1, v2}, Lcom/android/server/pie/PieGestureTracker;->setOnActivationListener(Lcom/android/server/pie/PieGestureTracker$OnActivationListener;)V

    .line 183
    iget-object v1, p0, Lcom/android/server/pie/PieInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v1, v5

    .line 184
    iget-object v1, p0, Lcom/android/server/pie/PieInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v2, v1, v5

    .line 185
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pie/PieInputFilter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/pie/PieInputFilter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/pie/PieInputFilter;Lcom/android/server/pie/PieInputFilter$State;)Lcom/android/server/pie/PieInputFilter$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/server/pie/PieInputFilter;->mState:Lcom/android/server/pie/PieInputFilter$State;

    return-object p1
.end method

.method private cacheDelayedMotionEventLocked(Landroid/view/MotionEvent;I)V
    .locals 2
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    .line 371
    invoke-static {p1, p2}, Lcom/android/server/pie/PieInputFilter$MotionEventInfo;->obtain(Landroid/view/MotionEvent;I)Lcom/android/server/pie/PieInputFilter$MotionEventInfo;

    move-result-object v0

    .line 372
    .local v0, info:Lcom/android/server/pie/PieInputFilter$MotionEventInfo;
    iget-object v1, p0, Lcom/android/server/pie/PieInputFilter;->mMotionEventQueue:Lcom/android/server/pie/PieInputFilter$MotionEventInfo;

    if-nez v1, :cond_0

    .line 373
    iput-object v0, p0, Lcom/android/server/pie/PieInputFilter;->mMotionEventQueue:Lcom/android/server/pie/PieInputFilter$MotionEventInfo;

    .line 377
    :goto_0
    iput-object v0, p0, Lcom/android/server/pie/PieInputFilter;->mMotionEventQueueTail:Lcom/android/server/pie/PieInputFilter$MotionEventInfo;

    .line 378
    iget v1, p0, Lcom/android/server/pie/PieInputFilter;->mMotionEventQueueCountDebug:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/pie/PieInputFilter;->mMotionEventQueueCountDebug:I

    .line 382
    return-void

    .line 375
    :cond_0
    iget-object v1, p0, Lcom/android/server/pie/PieInputFilter;->mMotionEventQueueTail:Lcom/android/server/pie/PieInputFilter$MotionEventInfo;

    iput-object v0, v1, Lcom/android/server/pie/PieInputFilter$MotionEventInfo;->next:Lcom/android/server/pie/PieInputFilter$MotionEventInfo;

    goto :goto_0
.end method

.method private clearAndResetStateLocked(ZZ)V
    .locals 6
    .parameter "force"
    .parameter "shift"

    .prologue
    const-wide/16 v4, -0x1

    .line 337
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/pie/PieInputFilter;->mState:Lcom/android/server/pie/PieInputFilter$State;

    sget-object v1, Lcom/android/server/pie/PieInputFilter$State;->POSTSYNTHESIZE:Lcom/android/server/pie/PieInputFilter$State;

    if-ne v0, v1, :cond_0

    .line 360
    :goto_0
    return-void

    .line 340
    :cond_0
    sget-object v0, Lcom/android/server/pie/PieInputFilter$2;->$SwitchMap$com$android$server$pie$PieInputFilter$State:[I

    iget-object v1, p0, Lcom/android/server/pie/PieInputFilter;->mState:Lcom/android/server/pie/PieInputFilter$State;

    invoke-virtual {v1}, Lcom/android/server/pie/PieInputFilter$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 359
    :goto_1
    :pswitch_0
    iget-wide v0, p0, Lcom/android/server/pie/PieInputFilter;->mSyntheticDownTime:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/pie/PieInputFilter$State;->LISTEN:Lcom/android/server/pie/PieInputFilter$State;

    :goto_2
    iput-object v0, p0, Lcom/android/server/pie/PieInputFilter;->mState:Lcom/android/server/pie/PieInputFilter$State;

    goto :goto_0

    .line 345
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/pie/PieInputFilter;->mTracker:Lcom/android/server/pie/PieGestureTracker;

    invoke-virtual {v0}, Lcom/android/server/pie/PieGestureTracker;->reset()V

    .line 349
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/android/server/pie/PieInputFilter;->sendDelayedMotionEventsLocked(Z)V

    goto :goto_1

    .line 353
    :pswitch_3
    const-string v0, "PieInputFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Quit POSTSYNTHESIZE without ACTION_UP from ACTION_DOWN at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/pie/PieInputFilter;->mSyntheticDownTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iput-wide v4, p0, Lcom/android/server/pie/PieInputFilter;->mSyntheticDownTime:J

    goto :goto_1

    .line 359
    :cond_1
    sget-object v0, Lcom/android/server/pie/PieInputFilter$State;->POSTSYNTHESIZE:Lcom/android/server/pie/PieInputFilter$State;

    goto :goto_2

    .line 340
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private clearDelayedMotionEventsLocked()V
    .locals 2

    .prologue
    .line 414
    :goto_0
    iget-object v1, p0, Lcom/android/server/pie/PieInputFilter;->mMotionEventQueue:Lcom/android/server/pie/PieInputFilter$MotionEventInfo;

    if-eqz v1, :cond_0

    .line 415
    iget-object v1, p0, Lcom/android/server/pie/PieInputFilter;->mMotionEventQueue:Lcom/android/server/pie/PieInputFilter$MotionEventInfo;

    iget-object v0, v1, Lcom/android/server/pie/PieInputFilter$MotionEventInfo;->next:Lcom/android/server/pie/PieInputFilter$MotionEventInfo;

    .line 416
    .local v0, next:Lcom/android/server/pie/PieInputFilter$MotionEventInfo;
    iget-object v1, p0, Lcom/android/server/pie/PieInputFilter;->mMotionEventQueue:Lcom/android/server/pie/PieInputFilter$MotionEventInfo;

    invoke-virtual {v1}, Lcom/android/server/pie/PieInputFilter$MotionEventInfo;->recycle()V

    .line 417
    iput-object v0, p0, Lcom/android/server/pie/PieInputFilter;->mMotionEventQueue:Lcom/android/server/pie/PieInputFilter$MotionEventInfo;

    goto :goto_0

    .line 419
    .end local v0           #next:Lcom/android/server/pie/PieInputFilter$MotionEventInfo;
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/pie/PieInputFilter;->mMotionEventQueueTail:Lcom/android/server/pie/PieInputFilter$MotionEventInfo;

    .line 420
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/pie/PieInputFilter;->mMotionEventQueueCountDebug:I

    .line 424
    return-void
.end method

.method private getTempPointerCoordsWithMinSizeLocked(I)[Landroid/view/MotionEvent$PointerCoords;
    .locals 5
    .parameter "size"

    .prologue
    const/4 v4, 0x0

    .line 443
    iget-object v3, p0, Lcom/android/server/pie/PieInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    array-length v1, v3

    .line 444
    .local v1, oldSize:I
    if-ge v1, p1, :cond_0

    .line 445
    iget-object v2, p0, Lcom/android/server/pie/PieInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 446
    .local v2, oldTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;
    new-array v3, p1, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v3, p0, Lcom/android/server/pie/PieInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 447
    iget-object v3, p0, Lcom/android/server/pie/PieInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    invoke-static {v2, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 449
    .end local v2           #oldTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;
    :cond_0
    move v0, v1

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 450
    iget-object v3, p0, Lcom/android/server/pie/PieInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v4, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v4, v3, v0

    .line 449
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 452
    :cond_1
    iget-object v3, p0, Lcom/android/server/pie/PieInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    return-object v3
.end method

.method private getTempPointerPropertiesWithMinSizeLocked(I)[Landroid/view/MotionEvent$PointerProperties;
    .locals 5
    .parameter "size"

    .prologue
    const/4 v4, 0x0

    .line 456
    iget-object v3, p0, Lcom/android/server/pie/PieInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    array-length v1, v3

    .line 457
    .local v1, oldSize:I
    if-ge v1, p1, :cond_0

    .line 458
    iget-object v2, p0, Lcom/android/server/pie/PieInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 459
    .local v2, oldTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;
    new-array v3, p1, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v3, p0, Lcom/android/server/pie/PieInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 460
    iget-object v3, p0, Lcom/android/server/pie/PieInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    invoke-static {v2, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 462
    .end local v2           #oldTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;
    :cond_0
    move v0, v1

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 463
    iget-object v3, p0, Lcom/android/server/pie/PieInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v4, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v4, v3, v0

    .line 462
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 465
    :cond_1
    iget-object v3, p0, Lcom/android/server/pie/PieInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    return-object v3
.end method

.method private processDeviceSwitch(ILandroid/view/MotionEvent;I)V
    .locals 3
    .parameter "deviceId"
    .parameter "motionEvent"
    .parameter "policyFlags"

    .prologue
    .line 260
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 261
    iput p1, p0, Lcom/android/server/pie/PieInputFilter;->mDeviceId:I

    .line 262
    iget-object v1, p0, Lcom/android/server/pie/PieInputFilter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 263
    const/4 v0, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, v2}, Lcom/android/server/pie/PieInputFilter;->clearAndResetStateLocked(ZZ)V

    .line 264
    invoke-direct {p0, p2, p3}, Lcom/android/server/pie/PieInputFilter;->processMotionEvent(Landroid/view/MotionEvent;I)V

    .line 265
    monitor-exit v1

    .line 269
    :goto_0
    return-void

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 267
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/pie/PieInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_0
.end method

.method private processMotionEvent(Landroid/view/MotionEvent;I)V
    .locals 7
    .parameter "motionEvent"
    .parameter "policyFlags"

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 272
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 274
    .local v0, action:I
    iget-object v3, p0, Lcom/android/server/pie/PieInputFilter;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 275
    :try_start_0
    sget-object v4, Lcom/android/server/pie/PieInputFilter$2;->$SwitchMap$com$android$server$pie$PieInputFilter$State:[I

    iget-object v5, p0, Lcom/android/server/pie/PieInputFilter;->mState:Lcom/android/server/pie/PieInputFilter$State;

    invoke-virtual {v5}, Lcom/android/server/pie/PieInputFilter$State;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 331
    :cond_0
    :goto_0
    monitor-exit v3

    .line 332
    :goto_1
    return-void

    .line 277
    :pswitch_0
    if-nez v0, :cond_2

    .line 278
    iget v4, p0, Lcom/android/server/pie/PieInputFilter;->mPositions:I

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/pie/PieInputFilter;->mTracker:Lcom/android/server/pie/PieGestureTracker;

    iget v5, p0, Lcom/android/server/pie/PieInputFilter;->mPositions:I

    iget v6, p0, Lcom/android/server/pie/PieInputFilter;->mSensitivity:I

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/pie/PieGestureTracker;->start(Landroid/view/MotionEvent;II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 281
    .local v1, hit:Z
    :goto_2
    if-eqz v1, :cond_2

    .line 283
    invoke-direct {p0, p1, p2}, Lcom/android/server/pie/PieInputFilter;->cacheDelayedMotionEventLocked(Landroid/view/MotionEvent;I)V

    .line 284
    sget-object v2, Lcom/android/server/pie/PieInputFilter$State;->DETECTING:Lcom/android/server/pie/PieInputFilter$State;

    iput-object v2, p0, Lcom/android/server/pie/PieInputFilter;->mState:Lcom/android/server/pie/PieInputFilter$State;

    .line 285
    monitor-exit v3

    goto :goto_1

    .line 331
    .end local v1           #hit:Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    move v1, v2

    .line 278
    goto :goto_2

    .line 288
    :cond_2
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/pie/PieInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_0

    .line 291
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/pie/PieInputFilter;->cacheDelayedMotionEventLocked(Landroid/view/MotionEvent;I)V

    .line 292
    if-ne v0, v6, :cond_3

    .line 293
    iget-object v2, p0, Lcom/android/server/pie/PieInputFilter;->mTracker:Lcom/android/server/pie/PieGestureTracker;

    invoke-virtual {v2, p1}, Lcom/android/server/pie/PieGestureTracker;->move(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 295
    monitor-exit v3

    goto :goto_1

    .line 301
    :cond_3
    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v2, v4}, Lcom/android/server/pie/PieInputFilter;->clearAndResetStateLocked(ZZ)V

    goto :goto_0

    .line 304
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/pie/PieInputFilter;->cacheDelayedMotionEventLocked(Landroid/view/MotionEvent;I)V

    .line 305
    if-eq v0, v6, :cond_0

    .line 306
    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v2, v4}, Lcom/android/server/pie/PieInputFilter;->clearAndResetStateLocked(ZZ)V

    goto :goto_0

    .line 310
    :pswitch_3
    if-ne v0, v6, :cond_4

    .line 311
    invoke-direct {p0}, Lcom/android/server/pie/PieInputFilter;->clearDelayedMotionEventsLocked()V

    .line 312
    invoke-direct {p0, p1, p2}, Lcom/android/server/pie/PieInputFilter;->sendSynthesizedMotionEventLocked(Landroid/view/MotionEvent;I)V

    .line 313
    sget-object v2, Lcom/android/server/pie/PieInputFilter$State;->POSTSYNTHESIZE:Lcom/android/server/pie/PieInputFilter$State;

    iput-object v2, p0, Lcom/android/server/pie/PieInputFilter;->mState:Lcom/android/server/pie/PieInputFilter$State;

    goto :goto_0

    .line 319
    :cond_4
    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v2, v4}, Lcom/android/server/pie/PieInputFilter;->clearAndResetStateLocked(ZZ)V

    goto :goto_0

    .line 323
    :pswitch_4
    iget-wide v4, p0, Lcom/android/server/pie/PieInputFilter;->mSyntheticDownTime:J

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->setDownTime(J)V

    .line 324
    if-eq v0, v1, :cond_5

    const/4 v2, 0x3

    if-ne v0, v2, :cond_6

    .line 325
    :cond_5
    sget-object v2, Lcom/android/server/pie/PieInputFilter$State;->LISTEN:Lcom/android/server/pie/PieInputFilter$State;

    iput-object v2, p0, Lcom/android/server/pie/PieInputFilter;->mState:Lcom/android/server/pie/PieInputFilter$State;

    .line 326
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/server/pie/PieInputFilter;->mSyntheticDownTime:J

    .line 328
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/android/server/pie/PieInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 275
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private sendDelayedMotionEventsLocked(Z)V
    .locals 8
    .parameter "shift"

    .prologue
    .line 385
    :goto_0
    iget-object v0, p0, Lcom/android/server/pie/PieInputFilter;->mMotionEventQueue:Lcom/android/server/pie/PieInputFilter$MotionEventInfo;

    if-eqz v0, :cond_3

    .line 386
    iget-object v7, p0, Lcom/android/server/pie/PieInputFilter;->mMotionEventQueue:Lcom/android/server/pie/PieInputFilter$MotionEventInfo;

    .line 387
    .local v7, info:Lcom/android/server/pie/PieInputFilter$MotionEventInfo;
    iget-object v0, v7, Lcom/android/server/pie/PieInputFilter$MotionEventInfo;->next:Lcom/android/server/pie/PieInputFilter$MotionEventInfo;

    iput-object v0, p0, Lcom/android/server/pie/PieInputFilter;->mMotionEventQueue:Lcom/android/server/pie/PieInputFilter$MotionEventInfo;

    .line 392
    iget v0, p0, Lcom/android/server/pie/PieInputFilter;->mMotionEventQueueCountDebug:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/pie/PieInputFilter;->mMotionEventQueueCountDebug:I

    .line 396
    if-eqz p1, :cond_2

    .line 397
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, v7, Lcom/android/server/pie/PieInputFilter$MotionEventInfo;->cachedTimeMillis:J

    sub-long v5, v0, v2

    .line 398
    .local v5, offset:J
    iget-object v0, v7, Lcom/android/server/pie/PieInputFilter$MotionEventInfo;->event:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 399
    iget-object v0, v7, Lcom/android/server/pie/PieInputFilter$MotionEventInfo;->event:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    add-long/2addr v0, v5

    iput-wide v0, p0, Lcom/android/server/pie/PieInputFilter;->mSyntheticDownTime:J

    .line 401
    :cond_0
    iget-object v1, v7, Lcom/android/server/pie/PieInputFilter$MotionEventInfo;->event:Landroid/view/MotionEvent;

    iget v2, v7, Lcom/android/server/pie/PieInputFilter$MotionEventInfo;->policyFlags:I

    iget-wide v3, p0, Lcom/android/server/pie/PieInputFilter;->mSyntheticDownTime:J

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pie/PieInputFilter;->sendMotionEventWithOffsetLocked(Landroid/view/MotionEvent;IJJ)V

    .line 402
    iget-object v0, v7, Lcom/android/server/pie/PieInputFilter$MotionEventInfo;->event:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 403
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/pie/PieInputFilter;->mSyntheticDownTime:J

    .line 408
    .end local v5           #offset:J
    :cond_1
    :goto_1
    invoke-virtual {v7}, Lcom/android/server/pie/PieInputFilter$MotionEventInfo;->recycle()V

    goto :goto_0

    .line 406
    :cond_2
    iget-object v0, v7, Lcom/android/server/pie/PieInputFilter$MotionEventInfo;->event:Landroid/view/MotionEvent;

    iget v1, v7, Lcom/android/server/pie/PieInputFilter$MotionEventInfo;->policyFlags:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/pie/PieInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_1

    .line 410
    .end local v7           #info:Lcom/android/server/pie/PieInputFilter$MotionEventInfo;
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pie/PieInputFilter;->mMotionEventQueueTail:Lcom/android/server/pie/PieInputFilter$MotionEventInfo;

    .line 411
    return-void
.end method

.method private sendInputEvent(Landroid/view/InputEvent;I)V
    .locals 1
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    .line 364
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pie/PieInputFilter;->mHost:Landroid/view/IInputFilterHost;

    invoke-interface {v0, p1, p2}, Landroid/view/IInputFilterHost;->sendInputEvent(Landroid/view/InputEvent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :goto_0
    return-void

    .line 365
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private sendMotionEventWithOffsetLocked(Landroid/view/MotionEvent;IJJ)V
    .locals 19
    .parameter "event"
    .parameter "policyFlags"
    .parameter "downTime"
    .parameter "offset"

    .prologue
    .line 428
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    .line 429
    .local v7, pointerCount:I
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/pie/PieInputFilter;->getTempPointerCoordsWithMinSizeLocked(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v9

    .line 430
    .local v9, coords:[Landroid/view/MotionEvent$PointerCoords;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/pie/PieInputFilter;->getTempPointerPropertiesWithMinSizeLocked(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v8

    .line 431
    .local v8, properties:[Landroid/view/MotionEvent$PointerProperties;
    const/16 v18, 0x0

    .local v18, i:I
    :goto_0
    move/from16 v0, v18

    if-ge v0, v7, :cond_0

    .line 432
    aget-object v2, v9, v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 433
    aget-object v2, v8, v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 431
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 435
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    add-long v4, v2, p5

    .line 436
    .local v4, eventTime:J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v11

    const/high16 v12, 0x3f80

    const/high16 v13, 0x3f80

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v17

    move-wide/from16 v2, p3

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/android/server/pie/PieInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    .line 440
    return-void
.end method

.method private sendSynthesizedMotionEventLocked(Landroid/view/MotionEvent;I)V
    .locals 20
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    .line 469
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 470
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pie/PieInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 471
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pie/PieInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 472
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pie/PieInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/pie/PieInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v12

    const/high16 v13, 0x3f80

    const/high16 v14, 0x3f80

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v18

    invoke-static/range {v3 .. v18}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v19

    .line 477
    .local v19, down:Landroid/view/MotionEvent;
    const-string v3, "PieInputFilter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Synthesized event:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/pie/PieInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    .line 479
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/server/pie/PieInputFilter;->mSyntheticDownTime:J

    .line 483
    .end local v19           #down:Landroid/view/MotionEvent;
    :goto_0
    return-void

    .line 481
    :cond_0
    const-string v3, "PieInputFilter"

    const-string v4, "Could not synthesize MotionEvent, this will drop all following events!"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 487
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .parameter "pw"
    .parameter "prefix"

    .prologue
    .line 510
    iget-object v1, p0, Lcom/android/server/pie/PieInputFilter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 511
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/pie/PieInputFilter;->mState:Lcom/android/server/pie/PieInputFilter$State;

    invoke-virtual {v2}, Lcom/android/server/pie/PieInputFilter$State;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 513
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPositions=0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/pie/PieInputFilter;->mPositions:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 515
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mQueue="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/pie/PieInputFilter;->mMotionEventQueueCountDebug:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " items"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 517
    monitor-exit v1

    .line 518
    return-void

    .line 517
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public filterInputEvent(Landroid/view/InputEvent;I)V
    .locals 6
    .parameter "event"
    .parameter "policyFlags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 229
    :try_start_0
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v3

    and-int/lit16 v3, v3, 0x1002

    const/16 v4, 0x1002

    if-ne v3, v4, :cond_0

    instance-of v3, p1, Landroid/view/MotionEvent;

    if-nez v3, :cond_1

    .line 232
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pie/PieInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    :goto_0
    invoke-virtual {p1}, Landroid/view/InputEvent;->recycle()V

    .line 257
    return-void

    .line 239
    :cond_1
    :try_start_1
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v2, v0

    .line 240
    .local v2, motionEvent:Landroid/view/MotionEvent;
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDeviceId()I

    move-result v1

    .line 241
    .local v1, deviceId:I
    iget v3, p0, Lcom/android/server/pie/PieInputFilter;->mDeviceId:I

    if-eq v1, v3, :cond_2

    .line 242
    invoke-direct {p0, v1, v2, p2}, Lcom/android/server/pie/PieInputFilter;->processDeviceSwitch(ILandroid/view/MotionEvent;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 252
    .end local v1           #deviceId:I
    .end local v2           #motionEvent:Landroid/view/MotionEvent;
    :catchall_0
    move-exception v3

    invoke-virtual {p1}, Landroid/view/InputEvent;->recycle()V

    throw v3

    .line 244
    .restart local v1       #deviceId:I
    .restart local v2       #motionEvent:Landroid/view/MotionEvent;
    :cond_2
    const/high16 v3, 0x4000

    and-int/2addr v3, p2

    if-nez v3, :cond_3

    .line 245
    :try_start_2
    iget-object v4, p0, Lcom/android/server/pie/PieInputFilter;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 246
    const/4 v3, 0x0

    const/4 v5, 0x1

    :try_start_3
    invoke-direct {p0, v3, v5}, Lcom/android/server/pie/PieInputFilter;->clearAndResetStateLocked(ZZ)V

    .line 247
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 249
    :cond_3
    :try_start_4
    invoke-direct {p0, v2, p2}, Lcom/android/server/pie/PieInputFilter;->processMotionEvent(Landroid/view/MotionEvent;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 247
    :catchall_1
    move-exception v3

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public install(Landroid/view/IInputFilterHost;)V
    .locals 3
    .parameter "host"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 495
    iput-object p1, p0, Lcom/android/server/pie/PieInputFilter;->mHost:Landroid/view/IInputFilterHost;

    .line 496
    iget-object v1, p0, Lcom/android/server/pie/PieInputFilter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 497
    const/4 v0, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, v2}, Lcom/android/server/pie/PieInputFilter;->clearAndResetStateLocked(ZZ)V

    .line 498
    monitor-exit v1

    .line 499
    return-void

    .line 498
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public uninstall()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 506
    return-void
.end method

.method public unlockFilter()Z
    .locals 3

    .prologue
    .line 206
    iget-object v1, p0, Lcom/android/server/pie/PieInputFilter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pie/PieInputFilter;->mState:Lcom/android/server/pie/PieInputFilter$State;

    sget-object v2, Lcom/android/server/pie/PieInputFilter$State;->LOCKED:Lcom/android/server/pie/PieInputFilter$State;

    if-ne v0, v2, :cond_0

    .line 208
    sget-object v0, Lcom/android/server/pie/PieInputFilter$State;->SYNTHESIZE:Lcom/android/server/pie/PieInputFilter$State;

    iput-object v0, p0, Lcom/android/server/pie/PieInputFilter;->mState:Lcom/android/server/pie/PieInputFilter$State;

    .line 209
    const/4 v0, 0x1

    monitor-exit v1

    .line 212
    :goto_0
    return v0

    .line 211
    :cond_0
    monitor-exit v1

    .line 212
    const/4 v0, 0x0

    goto :goto_0

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateDisplay(Landroid/view/Display;Landroid/view/DisplayInfo;)V
    .locals 2
    .parameter "display"
    .parameter "displayInfo"

    .prologue
    .line 189
    iget-object v1, p0, Lcom/android/server/pie/PieInputFilter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pie/PieInputFilter;->mTracker:Lcom/android/server/pie/PieGestureTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/pie/PieGestureTracker;->updateDisplay(Landroid/view/Display;)V

    .line 191
    monitor-exit v1

    .line 192
    return-void

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updatePositions(I)V
    .locals 0
    .parameter "positions"

    .prologue
    .line 196
    iput p1, p0, Lcom/android/server/pie/PieInputFilter;->mPositions:I

    .line 197
    return-void
.end method

.method public updateSensitivity(I)V
    .locals 0
    .parameter "sensitivity"

    .prologue
    .line 201
    iput p1, p0, Lcom/android/server/pie/PieInputFilter;->mSensitivity:I

    .line 202
    return-void
.end method
