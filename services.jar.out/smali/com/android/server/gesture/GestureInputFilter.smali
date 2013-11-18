.class public Lcom/android/server/gesture/GestureInputFilter;
.super Ljava/lang/Object;
.source "GestureInputFilter.java"

# interfaces
.implements Landroid/view/IInputFilter;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "GestureInputFilter"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGesturePadHeight:F

.field private mGesturePadWidth:F

.field private mHost:Landroid/view/IInputFilterHost;

.field private mInputManager:Landroid/hardware/input/InputManager;

.field private mOrientation:I

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private final mScreenHeight:I

.field private final mScreenWidth:I

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/gesture/GestureInputFilter;->mHost:Landroid/view/IInputFilterHost;

    .line 62
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/gesture/GestureInputFilter;->mInputManager:Landroid/hardware/input/InputManager;

    .line 63
    iput-object p1, p0, Lcom/android/server/gesture/GestureInputFilter;->mContext:Landroid/content/Context;

    .line 64
    iget-object v8, p0, Lcom/android/server/gesture/GestureInputFilter;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v8}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v0

    .local v0, arr$:[I
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_0

    aget v3, v0, v2

    .line 65
    .local v3, id:I
    iget-object v8, p0, Lcom/android/server/gesture/GestureInputFilter;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v8, v3}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v4

    .line 66
    .local v4, inputDevice:Landroid/view/InputDevice;
    invoke-virtual {v4}, Landroid/view/InputDevice;->getSources()I

    move-result v8

    const/high16 v9, 0x40

    and-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/server/gesture/GestureInputFilter;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v9, v3}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/InputDevice;->getSources()I

    move-result v9

    if-ne v8, v9, :cond_1

    .line 68
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/InputDevice$MotionRange;->getMax()F

    move-result v8

    iput v8, p0, Lcom/android/server/gesture/GestureInputFilter;->mGesturePadWidth:F

    .line 69
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/InputDevice$MotionRange;->getMax()F

    move-result v8

    iput v8, p0, Lcom/android/server/gesture/GestureInputFilter;->mGesturePadHeight:F

    .line 73
    .end local v3           #id:I
    .end local v4           #inputDevice:Landroid/view/InputDevice;
    :cond_0
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    .line 74
    .local v6, vc:Landroid/view/ViewConfiguration;
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v8

    iput v8, p0, Lcom/android/server/gesture/GestureInputFilter;->mTouchSlop:I

    .line 75
    const-string v8, "window"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    .line 76
    .local v7, wm:Landroid/view/WindowManager;
    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 77
    .local v1, display:Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v8

    iput v8, p0, Lcom/android/server/gesture/GestureInputFilter;->mScreenWidth:I

    .line 78
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v8

    iput v8, p0, Lcom/android/server/gesture/GestureInputFilter;->mScreenHeight:I

    .line 79
    new-instance v8, Landroid/view/GestureDetector;

    invoke-direct {v8, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v8, p0, Lcom/android/server/gesture/GestureInputFilter;->mGestureDetector:Landroid/view/GestureDetector;

    .line 80
    iget-object v8, p0, Lcom/android/server/gesture/GestureInputFilter;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v8, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 81
    new-instance v8, Lcom/android/server/gesture/GestureInputFilter$1;

    invoke-direct {v8, p0, p1}, Lcom/android/server/gesture/GestureInputFilter$1;-><init>(Lcom/android/server/gesture/GestureInputFilter;Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/server/gesture/GestureInputFilter;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 90
    return-void

    .line 64
    .end local v1           #display:Landroid/view/Display;
    .end local v6           #vc:Landroid/view/ViewConfiguration;
    .end local v7           #wm:Landroid/view/WindowManager;
    .restart local v3       #id:I
    .restart local v4       #inputDevice:Landroid/view/InputDevice;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/android/server/gesture/GestureInputFilter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Lcom/android/server/gesture/GestureInputFilter;->mOrientation:I

    return p1
.end method

.method private generateSwipe(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "e1"
    .parameter "e2"

    .prologue
    .line 153
    iget v10, p0, Lcom/android/server/gesture/GestureInputFilter;->mOrientation:I

    sparse-switch v10, :sswitch_data_0

    .line 175
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 176
    .local v0, deltaX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 178
    .local v1, deltaY:F
    iget v10, p0, Lcom/android/server/gesture/GestureInputFilter;->mTouchSlop:I

    int-to-float v10, v10

    cmpg-float v10, v0, v10

    if-gez v10, :cond_0

    iget v10, p0, Lcom/android/server/gesture/GestureInputFilter;->mTouchSlop:I

    int-to-float v10, v10

    cmpg-float v10, v1, v10

    if-gez v10, :cond_0

    .line 179
    const/4 v10, 0x0

    .line 221
    :goto_1
    return v10

    .line 155
    .end local v0           #deltaX:F
    .end local v1           #deltaY:F
    :sswitch_0
    const-string v10, "GestureInputFilter"

    const-string v11, "Adjusting motion for 90 degrees"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    invoke-virtual {p1, v10, v11}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 157
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    invoke-virtual {p2, v10, v11}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    .line 160
    :sswitch_1
    const-string v10, "GestureInputFilter"

    const-string v11, "Adjusting motion for 180 degrees"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget v10, p0, Lcom/android/server/gesture/GestureInputFilter;->mGesturePadWidth:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    sub-float/2addr v10, v11

    iget v11, p0, Lcom/android/server/gesture/GestureInputFilter;->mGesturePadHeight:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    sub-float/2addr v11, v12

    invoke-virtual {p1, v10, v11}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 163
    iget v10, p0, Lcom/android/server/gesture/GestureInputFilter;->mGesturePadWidth:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    sub-float/2addr v10, v11

    iget v11, p0, Lcom/android/server/gesture/GestureInputFilter;->mGesturePadHeight:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    sub-float/2addr v11, v12

    invoke-virtual {p2, v10, v11}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    .line 167
    :sswitch_2
    const-string v10, "GestureInputFilter"

    const-string v11, "Adjusting motion for 270 degrees"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget v10, p0, Lcom/android/server/gesture/GestureInputFilter;->mGesturePadHeight:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    sub-float/2addr v10, v11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    invoke-virtual {p1, v10, v11}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 170
    iget v10, p0, Lcom/android/server/gesture/GestureInputFilter;->mGesturePadHeight:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    sub-float/2addr v10, v11

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    invoke-virtual {p2, v10, v11}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto/16 :goto_0

    .line 182
    .restart local v0       #deltaX:F
    .restart local v1       #deltaY:F
    :cond_0
    cmpl-float v10, v0, v1

    if-lez v10, :cond_2

    .line 183
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual {p2, v10, v11}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 188
    :cond_1
    :goto_2
    iget v10, p0, Lcom/android/server/gesture/GestureInputFilter;->mScreenWidth:I

    int-to-float v10, v10

    iget v11, p0, Lcom/android/server/gesture/GestureInputFilter;->mGesturePadWidth:F

    div-float v8, v10, v11

    .line 189
    .local v8, scaleX:F
    iget v10, p0, Lcom/android/server/gesture/GestureInputFilter;->mScreenHeight:I

    int-to-float v10, v10

    iget v11, p0, Lcom/android/server/gesture/GestureInputFilter;->mGesturePadHeight:F

    div-float v9, v10, v11

    .line 191
    .local v9, scaleY:F
    mul-float v4, v0, v8

    .line 192
    .local v4, magnitudeX:F
    mul-float v5, v1, v9

    .line 194
    .local v5, magnitudeY:F
    iget v10, p0, Lcom/android/server/gesture/GestureInputFilter;->mScreenWidth:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v6, v10

    .line 195
    .local v6, origX:F
    iget v10, p0, Lcom/android/server/gesture/GestureInputFilter;->mScreenHeight:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v7, v10

    .line 196
    .local v7, origY:F
    const/4 v2, 0x0

    .line 197
    .local v2, endX:F
    const/4 v3, 0x0

    .line 199
    .local v3, endY:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_3

    .line 202
    iget v10, p0, Lcom/android/server/gesture/GestureInputFilter;->mTouchSlop:I

    int-to-float v10, v10

    add-float/2addr v10, v6

    const/high16 v11, 0x40a0

    add-float v2, v10, v11

    .line 203
    add-float v3, v7, v5

    .line 220
    :goto_3
    invoke-direct {p0, v6, v7, v2, v3}, Lcom/android/server/gesture/GestureInputFilter;->sendSwipe(FFFF)V

    .line 221
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 184
    .end local v2           #endX:F
    .end local v3           #endY:F
    .end local v4           #magnitudeX:F
    .end local v5           #magnitudeY:F
    .end local v6           #origX:F
    .end local v7           #origY:F
    .end local v8           #scaleX:F
    .end local v9           #scaleY:F
    :cond_2
    cmpl-float v10, v1, v0

    if-lez v10, :cond_1

    .line 185
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual {p2, v10, v11}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_2

    .line 204
    .restart local v2       #endX:F
    .restart local v3       #endY:F
    .restart local v4       #magnitudeX:F
    .restart local v5       #magnitudeY:F
    .restart local v6       #origX:F
    .restart local v7       #origY:F
    .restart local v8       #scaleX:F
    .restart local v9       #scaleY:F
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    cmpg-float v10, v10, v11

    if-gez v10, :cond_4

    .line 206
    iget v10, p0, Lcom/android/server/gesture/GestureInputFilter;->mTouchSlop:I

    int-to-float v10, v10

    add-float/2addr v10, v6

    const/high16 v11, 0x40a0

    add-float v2, v10, v11

    .line 207
    sub-float v3, v7, v5

    goto :goto_3

    .line 208
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_5

    .line 210
    add-float v2, v6, v4

    .line 211
    iget v10, p0, Lcom/android/server/gesture/GestureInputFilter;->mTouchSlop:I

    int-to-float v10, v10

    add-float/2addr v10, v7

    const/high16 v11, 0x40a0

    add-float v3, v10, v11

    goto :goto_3

    .line 212
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    cmpg-float v10, v10, v11

    if-gez v10, :cond_6

    .line 214
    sub-float v2, v6, v4

    .line 215
    iget v10, p0, Lcom/android/server/gesture/GestureInputFilter;->mTouchSlop:I

    int-to-float v10, v10

    add-float/2addr v10, v7

    const/high16 v11, 0x40a0

    add-float v3, v10, v11

    goto :goto_3

    .line 217
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 153
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method private static final lerp(FFF)F
    .locals 1
    .parameter "a"
    .parameter "b"
    .parameter "alpha"

    .prologue
    .line 263
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method private sendInputEvent(Landroid/view/InputEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/server/gesture/GestureInputFilter;->mInputManager:Landroid/hardware/input/InputManager;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 260
    return-void
.end method

.method private sendMotionEvent(IJFFF)V
    .locals 23
    .parameter "action"
    .parameter "when"
    .parameter "x"
    .parameter "y"
    .parameter "pressure"

    .prologue
    .line 243
    const/high16 v21, 0x3f80

    .line 244
    .local v21, DEFAULT_SIZE:F
    const/16 v18, 0x0

    .line 245
    .local v18, DEFAULT_META_STATE:I
    const/high16 v19, 0x3f80

    .line 246
    .local v19, DEFAULT_PRECISION_X:F
    const/high16 v20, 0x3f80

    .line 247
    .local v20, DEFAULT_PRECISION_Y:F
    const/16 v16, 0x0

    .line 248
    .local v16, DEFAULT_DEVICE_ID:I
    const/16 v17, 0x0

    .line 250
    .local v17, DEFAULT_EDGE_FLAGS:I
    const/high16 v10, 0x3f80

    const/4 v11, 0x0

    const/high16 v12, 0x3f80

    const/high16 v13, 0x3f80

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p2

    move/from16 v6, p1

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v22

    .line 253
    .local v22, e:Landroid/view/MotionEvent;
    const/16 v2, 0x1002

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 254
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/gesture/GestureInputFilter;->sendInputEvent(Landroid/view/InputEvent;)V

    .line 255
    return-void
.end method

.method private sendSwipe(FFFF)V
    .locals 18
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 225
    const-wide/16 v10, 0x64

    .line 226
    .local v10, duration:J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 227
    .local v4, now:J
    move-wide/from16 v16, v4

    .line 228
    .local v16, startTime:J
    const-wide/16 v2, 0x64

    add-long v14, v16, v2

    .line 229
    .local v14, endTime:J
    const/4 v3, 0x0

    const/high16 v8, 0x3f80

    move-object/from16 v2, p0

    move/from16 v6, p1

    move/from16 v7, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/server/gesture/GestureInputFilter;->sendMotionEvent(IJFFF)V

    .line 231
    :goto_0
    cmp-long v2, v4, v14

    if-gez v2, :cond_0

    .line 232
    sub-long v12, v4, v16

    .line 233
    .local v12, elapsedTime:J
    long-to-float v2, v12

    const/high16 v3, 0x42c8

    div-float v9, v2, v3

    .line 234
    .local v9, alpha:F
    const/4 v3, 0x2

    move/from16 v0, p1

    move/from16 v1, p3

    invoke-static {v0, v1, v9}, Lcom/android/server/gesture/GestureInputFilter;->lerp(FFF)F

    move-result v6

    move/from16 v0, p2

    move/from16 v1, p4

    invoke-static {v0, v1, v9}, Lcom/android/server/gesture/GestureInputFilter;->lerp(FFF)F

    move-result v7

    const/high16 v8, 0x3f80

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/gesture/GestureInputFilter;->sendMotionEvent(IJFFF)V

    .line 236
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 237
    goto :goto_0

    .line 238
    .end local v9           #alpha:F
    .end local v12           #elapsedTime:J
    :cond_0
    const/4 v3, 0x1

    const/high16 v8, 0x3f80

    move-object/from16 v2, p0

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/gesture/GestureInputFilter;->sendMotionEvent(IJFFF)V

    .line 239
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 144
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0
    .parameter "pw"
    .parameter "prefix"

    .prologue
    .line 150
    return-void
.end method

.method public filterInputEvent(Landroid/view/InputEvent;I)V
    .locals 4
    .parameter "event"
    .parameter "policyFlags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 106
    :try_start_0
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v2

    const/high16 v3, 0x40

    if-ne v2, v3, :cond_0

    instance-of v2, p1, Landroid/view/MotionEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 109
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/gesture/GestureInputFilter;->mHost:Landroid/view/IInputFilterHost;

    invoke-interface {v2, p1, p2}, Landroid/view/IInputFilterHost;->sendInputEvent(Landroid/view/InputEvent;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 119
    :goto_0
    invoke-virtual {p1}, Landroid/view/InputEvent;->recycle()V

    .line 121
    return-void

    .line 116
    :cond_1
    :try_start_2
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v1, v0

    .line 117
    .local v1, motionEvent:Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/android/server/gesture/GestureInputFilter;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 119
    .end local v1           #motionEvent:Landroid/view/MotionEvent;
    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Landroid/view/InputEvent;->recycle()V

    throw v2

    .line 110
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public install(Landroid/view/IInputFilterHost;)V
    .locals 1
    .parameter "host"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/server/gesture/GestureInputFilter;->mHost:Landroid/view/IInputFilterHost;

    .line 129
    iget-object v0, p0, Lcom/android/server/gesture/GestureInputFilter;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 130
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "e"

    .prologue
    .line 306
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 307
    .local v1, now:J
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/16 v6, 0x1b

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x101

    move-wide v3, v1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-direct {p0, v0}, Lcom/android/server/gesture/GestureInputFilter;->sendInputEvent(Landroid/view/InputEvent;)V

    .line 310
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x1

    const/16 v6, 0x1b

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x101

    move-wide v3, v1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-direct {p0, v0}, Lcom/android/server/gesture/GestureInputFilter;->sendInputEvent(Landroid/view/InputEvent;)V

    .line 312
    const/4 v0, 0x1

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 317
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 296
    invoke-direct {p0, p1, p2}, Lcom/android/server/gesture/GestureInputFilter;->generateSwipe(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 9
    .parameter "e"

    .prologue
    const/4 v3, 0x0

    .line 288
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.CAMERA_BUTTON"

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 289
    .local v1, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/gesture/GestureInputFilter;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    const/4 v6, 0x0

    move-object v4, v3

    move-object v5, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 291
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 283
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 273
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 301
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 277
    const/4 v0, 0x0

    return v0
.end method

.method public uninstall()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 137
    iput-object v1, p0, Lcom/android/server/gesture/GestureInputFilter;->mHost:Landroid/view/IInputFilterHost;

    .line 138
    iget-object v0, p0, Lcom/android/server/gesture/GestureInputFilter;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 139
    iput-object v1, p0, Lcom/android/server/gesture/GestureInputFilter;->mContext:Landroid/content/Context;

    .line 140
    return-void
.end method
