.class public Lcom/android/camera/EffectsRecorder;
.super Ljava/lang/Object;
.source "EffectsRecorder.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/EffectsRecorder$SerializableInvocationHandler;,
        Lcom/android/camera/EffectsRecorder$EffectsListener;
    }
.end annotation


# static fields
.field public static final EFFECT_BACKDROPPER:I = 0x2

.field public static final EFFECT_GF_BIG_EYES:I = 0x1

.field public static final EFFECT_GF_BIG_MOUTH:I = 0x2

.field public static final EFFECT_GF_BIG_NOSE:I = 0x4

.field public static final EFFECT_GF_SMALL_EYES:I = 0x5

.field public static final EFFECT_GF_SMALL_MOUTH:I = 0x3

.field public static final EFFECT_GF_SQUEEZE:I = 0x0

.field public static final EFFECT_GOOFY_FACE:I = 0x1

.field public static final EFFECT_MSG_DONE_LEARNING:I = 0x1

.field public static final EFFECT_MSG_EFFECTS_STOPPED:I = 0x3

.field public static final EFFECT_MSG_PREVIEW_RUNNING:I = 0x5

.field public static final EFFECT_MSG_RECORDING_DONE:I = 0x4

.field public static final EFFECT_MSG_STARTED_LEARNING:I = 0x0

.field public static final EFFECT_MSG_SWITCHING_EFFECT:I = 0x2

.field public static final EFFECT_NONE:I = 0x0

.field public static final NUM_OF_GF_EFFECTS:I = 0x6

.field private static final STATE_CONFIGURE:I = 0x0

.field private static final STATE_PREVIEW:I = 0x3

.field private static final STATE_RECORD:I = 0x4

.field private static final STATE_RELEASED:I = 0x5

.field private static final STATE_STARTING_PREVIEW:I = 0x2

.field private static final STATE_WAITING_FOR_SURFACE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EffectsRecorder"

.field private static sClassFilter:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sClsGraphEnvironment:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sClsGraphRunner:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sClsLearningDoneListener:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sClsOnRecordingDoneListener:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sClsOnRunnerDoneListener:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sClsSurfaceTextureSourceListener:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sCtGraphEnvironment:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static sCtPoint:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static sCtQuad:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static sEffectsRecorder:Lcom/android/camera/EffectsRecorder;

.field private static sEffectsRecorderIndex:I

.field private static sFilterContextGetGLEnvironment:Ljava/lang/reflect/Method;

.field private static sFilterGraphGetFilter:Ljava/lang/reflect/Method;

.field private static sFilterGraphTearDown:Ljava/lang/reflect/Method;

.field private static sFilterIsAvailable:Ljava/lang/reflect/Method;

.field private static sFilterSetInputValue:Ljava/lang/reflect/Method;

.field private static sGLEnvironmentActivate:Ljava/lang/reflect/Method;

.field private static sGLEnvironmentDeactivate:Ljava/lang/reflect/Method;

.field private static sGLEnvironmentIsActive:Ljava/lang/reflect/Method;

.field private static sGraphEnvironmentAddReferences:Ljava/lang/reflect/Method;

.field private static sGraphEnvironmentCreateGLEnvironment:Ljava/lang/reflect/Method;

.field private static sGraphEnvironmentGetContext:Ljava/lang/reflect/Method;

.field private static sGraphEnvironmentGetRunner:Ljava/lang/reflect/Method;

.field private static sGraphEnvironmentLoadGraph:Ljava/lang/reflect/Method;

.field private static sGraphRunnerGetError:Ljava/lang/reflect/Method;

.field private static sGraphRunnerGetGraph:Ljava/lang/reflect/Method;

.field private static sGraphRunnerRun:Ljava/lang/reflect/Method;

.field private static sGraphRunnerSetDoneCallback:Ljava/lang/reflect/Method;

.field private static sGraphRunnerStop:Ljava/lang/reflect/Method;

.field private static sLearningDoneListenerOnLearningDone:Ljava/lang/reflect/Method;

.field private static sObjectEquals:Ljava/lang/reflect/Method;

.field private static sObjectToString:Ljava/lang/reflect/Method;

.field private static sOnRecordingDoneListenerOnRecordingDone:Ljava/lang/reflect/Method;

.field private static sOnRunnerDoneListenerOnRunnerDone:Ljava/lang/reflect/Method;

.field private static sReflectionInited:Z

.field private static sSurfaceTextureSourceListenerOnSurfaceTextureSourceReady:Ljava/lang/reflect/Method;

.field private static sSurfaceTextureTargetDisconnect:Ljava/lang/reflect/Method;


# instance fields
.field private mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

.field private mCameraDisplayOrientation:I

.field private mCameraFacing:I

.field private mCaptureRate:D

.field private mContext:Landroid/content/Context;

.field private mCurrentEffect:I

.field private mEffect:I

.field private mEffectParameter:Ljava/lang/Object;

.field private mEffectsListener:Lcom/android/camera/EffectsRecorder$EffectsListener;

.field private mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

.field private mFd:Ljava/io/FileDescriptor;

.field private mGraphEnv:Ljava/lang/Object;

.field private mGraphId:I

.field private mHandler:Landroid/os/Handler;

.field private mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

.field private mLearningDoneListener:Ljava/lang/Object;

.field private mLogVerbose:Z

.field private mMaxDurationMs:I

.field private mMaxFileSize:J

.field private mOldRunner:Ljava/lang/Object;

.field private mOrientationHint:I

.field private mOutputFile:Ljava/lang/String;

.field private mPreviewHeight:I

.field private mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mPreviewWidth:I

.field private mProfile:Landroid/media/CamcorderProfile;

.field private mRecordingDoneListener:Ljava/lang/Object;

.field private mRunner:Ljava/lang/Object;

.field private mRunnerDoneCallback:Ljava/lang/Object;

.field private mSoundPlayer:Lcom/android/camera/SoundClips$Player;

.field private mSourceReadyCallback:Ljava/lang/Object;

.field private mState:I

.field private mTextureSource:Landroid/graphics/SurfaceTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 54
    sput-boolean v2, Lcom/android/camera/EffectsRecorder;->sReflectionInited:Z

    .line 107
    :try_start_0
    const-string v2, "android.filterfw.core.Filter"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/android/camera/EffectsRecorder;->sClassFilter:Ljava/lang/Class;

    .line 108
    sget-object v2, Lcom/android/camera/EffectsRecorder;->sClassFilter:Ljava/lang/Class;

    const-string v3, "isAvailable"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/camera/EffectsRecorder;->sFilterIsAvailable:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 115
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v1

    .line 111
    .local v1, ex:Ljava/lang/ClassNotFoundException;
    const-string v2, "EffectsRecorder"

    const-string v3, "Can\'t find the class android.filterfw.core.Filter"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    .end local v1           #ex:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 113
    .local v0, e:Ljava/lang/NoSuchMethodException;
    const-string v2, "EffectsRecorder"

    const-string v3, "Can\'t find the method Filter.isAvailable"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Lcom/android/camera/EffectsRecorder;->mCaptureRate:D

    .line 150
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/camera/EffectsRecorder;->mOrientationHint:I

    .line 151
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Lcom/android/camera/EffectsRecorder;->mMaxFileSize:J

    .line 152
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/camera/EffectsRecorder;->mMaxDurationMs:I

    .line 153
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/camera/EffectsRecorder;->mCameraFacing:I

    .line 156
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/camera/EffectsRecorder;->mEffect:I

    .line 157
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/camera/EffectsRecorder;->mCurrentEffect:I

    .line 164
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    .line 165
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/camera/EffectsRecorder;->mOldRunner:Ljava/lang/Object;

    .line 175
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    .line 177
    const-string v9, "EffectsRecorder"

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    .line 204
    iget-boolean v9, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v9, :cond_0

    const-string v9, "EffectsRecorder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "EffectsRecorder created ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    sget-boolean v9, Lcom/android/camera/EffectsRecorder;->sReflectionInited:Z

    if-nez v9, :cond_1

    .line 208
    :try_start_0
    sget-object v9, Lcom/android/camera/EffectsRecorder;->sClassFilter:Ljava/lang/Class;

    const-string v10, "setInputValue"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-class v13, Ljava/lang/Object;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sFilterSetInputValue:Ljava/lang/reflect/Method;

    .line 211
    const-string v9, "android.filterfw.geometry.Point"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 212
    .local v4, clsPoint:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    invoke-virtual {v4, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sCtPoint:Ljava/lang/reflect/Constructor;

    .line 215
    const-string v9, "android.filterfw.geometry.Quad"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 216
    .local v5, clsQuad:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    const/4 v10, 0x1

    aput-object v4, v9, v10

    const/4 v10, 0x2

    aput-object v4, v9, v10

    const/4 v10, 0x3

    aput-object v4, v9, v10

    invoke-virtual {v5, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sCtQuad:Ljava/lang/reflect/Constructor;

    .line 219
    const-string v9, "android.filterpacks.videoproc.BackDropperFilter"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 221
    .local v0, clsBackDropperFilter:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v9, "android.filterpacks.videoproc.BackDropperFilter$LearningDoneListener"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sClsLearningDoneListener:Ljava/lang/Class;

    .line 223
    sget-object v9, Lcom/android/camera/EffectsRecorder;->sClsLearningDoneListener:Ljava/lang/Class;

    const-string v10, "onLearningDone"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v0, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sLearningDoneListenerOnLearningDone:Ljava/lang/reflect/Method;

    .line 226
    const-class v9, Ljava/lang/Object;

    const-string v10, "equals"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Ljava/lang/Object;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sObjectEquals:Ljava/lang/reflect/Method;

    .line 227
    const-class v9, Ljava/lang/Object;

    const-string v10, "toString"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sObjectToString:Ljava/lang/reflect/Method;

    .line 229
    const-string v9, "android.filterfw.core.GraphRunner$OnRunnerDoneListener"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sClsOnRunnerDoneListener:Ljava/lang/Class;

    .line 231
    sget-object v9, Lcom/android/camera/EffectsRecorder;->sClsOnRunnerDoneListener:Ljava/lang/Class;

    const-string v10, "onRunnerDone"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sOnRunnerDoneListenerOnRunnerDone:Ljava/lang/reflect/Method;

    .line 234
    const-string v9, "android.filterfw.core.GraphRunner"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sClsGraphRunner:Ljava/lang/Class;

    .line 235
    sget-object v9, Lcom/android/camera/EffectsRecorder;->sClsGraphRunner:Ljava/lang/Class;

    const-string v10, "getGraph"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sGraphRunnerGetGraph:Ljava/lang/reflect/Method;

    .line 236
    sget-object v9, Lcom/android/camera/EffectsRecorder;->sClsGraphRunner:Ljava/lang/Class;

    const-string v10, "setDoneCallback"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    sget-object v13, Lcom/android/camera/EffectsRecorder;->sClsOnRunnerDoneListener:Ljava/lang/Class;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sGraphRunnerSetDoneCallback:Ljava/lang/reflect/Method;

    .line 238
    sget-object v9, Lcom/android/camera/EffectsRecorder;->sClsGraphRunner:Ljava/lang/Class;

    const-string v10, "run"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sGraphRunnerRun:Ljava/lang/reflect/Method;

    .line 239
    sget-object v9, Lcom/android/camera/EffectsRecorder;->sClsGraphRunner:Ljava/lang/Class;

    const-string v10, "getError"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sGraphRunnerGetError:Ljava/lang/reflect/Method;

    .line 240
    sget-object v9, Lcom/android/camera/EffectsRecorder;->sClsGraphRunner:Ljava/lang/Class;

    const-string v10, "stop"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sGraphRunnerStop:Ljava/lang/reflect/Method;

    .line 242
    const-string v9, "android.filterfw.core.FilterContext"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 243
    .local v1, clsFilterContext:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v9, "getGLEnvironment"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v1, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sFilterContextGetGLEnvironment:Ljava/lang/reflect/Method;

    .line 246
    const-string v9, "android.filterfw.core.FilterGraph"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 247
    .local v2, clsFilterGraph:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v9, "getFilter"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v2, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sFilterGraphGetFilter:Ljava/lang/reflect/Method;

    .line 249
    const-string v9, "tearDown"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    invoke-virtual {v2, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sFilterGraphTearDown:Ljava/lang/reflect/Method;

    .line 252
    const-string v9, "android.filterfw.GraphEnvironment"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sClsGraphEnvironment:Ljava/lang/Class;

    .line 253
    sget-object v9, Lcom/android/camera/EffectsRecorder;->sClsGraphEnvironment:Ljava/lang/Class;

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sCtGraphEnvironment:Ljava/lang/reflect/Constructor;

    .line 254
    sget-object v9, Lcom/android/camera/EffectsRecorder;->sClsGraphEnvironment:Ljava/lang/Class;

    const-string v10, "createGLEnvironment"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sGraphEnvironmentCreateGLEnvironment:Ljava/lang/reflect/Method;

    .line 256
    sget-object v9, Lcom/android/camera/EffectsRecorder;->sClsGraphEnvironment:Ljava/lang/Class;

    const-string v10, "getRunner"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sGraphEnvironmentGetRunner:Ljava/lang/reflect/Method;

    .line 258
    sget-object v9, Lcom/android/camera/EffectsRecorder;->sClsGraphEnvironment:Ljava/lang/Class;

    const-string v10, "addReferences"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, [Ljava/lang/Object;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sGraphEnvironmentAddReferences:Ljava/lang/reflect/Method;

    .line 260
    sget-object v9, Lcom/android/camera/EffectsRecorder;->sClsGraphEnvironment:Ljava/lang/Class;

    const-string v10, "loadGraph"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Landroid/content/Context;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sGraphEnvironmentLoadGraph:Ljava/lang/reflect/Method;

    .line 262
    sget-object v9, Lcom/android/camera/EffectsRecorder;->sClsGraphEnvironment:Ljava/lang/Class;

    const-string v10, "getContext"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sGraphEnvironmentGetContext:Ljava/lang/reflect/Method;

    .line 265
    const-string v9, "android.filterfw.core.GLEnvironment"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 266
    .local v3, clsGLEnvironment:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v9, "isActive"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v3, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sGLEnvironmentIsActive:Ljava/lang/reflect/Method;

    .line 267
    const-string v9, "activate"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v3, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sGLEnvironmentActivate:Ljava/lang/reflect/Method;

    .line 268
    const-string v9, "deactivate"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v3, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sGLEnvironmentDeactivate:Ljava/lang/reflect/Method;

    .line 270
    const-string v9, "android.filterpacks.videosrc.SurfaceTextureTarget"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 272
    .local v6, clsSurfaceTextureTarget:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v9, "disconnect"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    invoke-virtual {v6, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sSurfaceTextureTargetDisconnect:Ljava/lang/reflect/Method;

    .line 275
    const-string v9, "android.filterpacks.videosink.MediaEncoderFilter$OnRecordingDoneListener"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sClsOnRecordingDoneListener:Ljava/lang/Class;

    .line 277
    sget-object v9, Lcom/android/camera/EffectsRecorder;->sClsOnRecordingDoneListener:Ljava/lang/Class;

    const-string v10, "onRecordingDone"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sOnRecordingDoneListenerOnRecordingDone:Ljava/lang/reflect/Method;

    .line 280
    const-string v9, "android.filterpacks.videosrc.SurfaceTextureSource$SurfaceTextureSourceListener"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sClsSurfaceTextureSourceListener:Ljava/lang/Class;

    .line 282
    sget-object v9, Lcom/android/camera/EffectsRecorder;->sClsSurfaceTextureSourceListener:Ljava/lang/Class;

    const-string v10, "onSurfaceTextureSourceReady"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Landroid/graphics/SurfaceTexture;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/camera/EffectsRecorder;->sSurfaceTextureSourceListenerOnSurfaceTextureSourceReady:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/camera/EffectsRecorder;->sReflectionInited:Z

    .line 293
    .end local v0           #clsBackDropperFilter:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #clsFilterContext:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #clsFilterGraph:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #clsGLEnvironment:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v4           #clsPoint:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v5           #clsQuad:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v6           #clsSurfaceTextureTarget:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1
    sget v9, Lcom/android/camera/EffectsRecorder;->sEffectsRecorderIndex:I

    add-int/lit8 v9, v9, 0x1

    sput v9, Lcom/android/camera/EffectsRecorder;->sEffectsRecorderIndex:I

    .line 294
    const-string v9, "EffectsRecorder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Current effects recorder index is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/android/camera/EffectsRecorder;->sEffectsRecorderIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    sput-object p0, Lcom/android/camera/EffectsRecorder;->sEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    .line 296
    new-instance v8, Lcom/android/camera/EffectsRecorder$SerializableInvocationHandler;

    sget v9, Lcom/android/camera/EffectsRecorder;->sEffectsRecorderIndex:I

    invoke-direct {v8, v9}, Lcom/android/camera/EffectsRecorder$SerializableInvocationHandler;-><init>(I)V

    .line 298
    .local v8, sih:Lcom/android/camera/EffectsRecorder$SerializableInvocationHandler;
    sget-object v9, Lcom/android/camera/EffectsRecorder;->sClsLearningDoneListener:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Lcom/android/camera/EffectsRecorder;->sClsLearningDoneListener:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-static {v9, v10, v8}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, p0, Lcom/android/camera/EffectsRecorder;->mLearningDoneListener:Ljava/lang/Object;

    .line 301
    sget-object v9, Lcom/android/camera/EffectsRecorder;->sClsOnRunnerDoneListener:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Lcom/android/camera/EffectsRecorder;->sClsOnRunnerDoneListener:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-static {v9, v10, v8}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, p0, Lcom/android/camera/EffectsRecorder;->mRunnerDoneCallback:Ljava/lang/Object;

    .line 304
    sget-object v9, Lcom/android/camera/EffectsRecorder;->sClsSurfaceTextureSourceListener:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Lcom/android/camera/EffectsRecorder;->sClsSurfaceTextureSourceListener:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-static {v9, v10, v8}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, p0, Lcom/android/camera/EffectsRecorder;->mSourceReadyCallback:Ljava/lang/Object;

    .line 307
    sget-object v9, Lcom/android/camera/EffectsRecorder;->sClsOnRecordingDoneListener:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Lcom/android/camera/EffectsRecorder;->sClsOnRecordingDoneListener:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-static {v9, v10, v8}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, p0, Lcom/android/camera/EffectsRecorder;->mRecordingDoneListener:Ljava/lang/Object;

    .line 311
    iput-object p1, p0, Lcom/android/camera/EffectsRecorder;->mContext:Landroid/content/Context;

    .line 312
    new-instance v9, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v9, p0, Lcom/android/camera/EffectsRecorder;->mHandler:Landroid/os/Handler;

    .line 313
    invoke-static {p1}, Lcom/android/camera/SoundClips;->getPlayer(Landroid/content/Context;)Lcom/android/camera/SoundClips$Player;

    move-result-object v9

    iput-object v9, p0, Lcom/android/camera/EffectsRecorder;->mSoundPlayer:Lcom/android/camera/SoundClips$Player;

    .line 314
    return-void

    .line 286
    .end local v8           #sih:Lcom/android/camera/EffectsRecorder$SerializableInvocationHandler;
    :catch_0
    move-exception v7

    .line 287
    .local v7, ex:Ljava/lang/Exception;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9
.end method

.method static synthetic access$000()Lcom/android/camera/EffectsRecorder;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/camera/EffectsRecorder;->sEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/android/camera/EffectsRecorder;->sEffectsRecorderIndex:I

    return v0
.end method

.method static synthetic access$1000()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/camera/EffectsRecorder;->sSurfaceTextureSourceListenerOnSurfaceTextureSourceReady:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/EffectsRecorder;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/camera/EffectsRecorder;->invokeOnSurfaceTextureSourceReady([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1200()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/camera/EffectsRecorder;->sOnRecordingDoneListenerOnRecordingDone:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/EffectsRecorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/camera/EffectsRecorder;->invokeOnRecordingDone()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/EffectsRecorder;)Lcom/android/camera/EffectsRecorder$EffectsListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mEffectsListener:Lcom/android/camera/EffectsRecorder$EffectsListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/EffectsRecorder;)Ljava/io/FileDescriptor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/EffectsRecorder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mOutputFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/camera/EffectsRecorder;->sObjectEquals:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/EffectsRecorder;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/camera/EffectsRecorder;->invokeObjectEquals(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/camera/EffectsRecorder;->sObjectToString:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/EffectsRecorder;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/camera/EffectsRecorder;->invokeObjectToString()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/camera/EffectsRecorder;->sLearningDoneListenerOnLearningDone:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/EffectsRecorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/camera/EffectsRecorder;->invokeOnLearningDone()V

    return-void
.end method

.method static synthetic access$800()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/camera/EffectsRecorder;->sOnRunnerDoneListenerOnRunnerDone:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/EffectsRecorder;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/camera/EffectsRecorder;->invokeOnRunnerDone([Ljava/lang/Object;)V

    return-void
.end method

.method private getConstant(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 1234
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1235
    :catch_0
    move-exception v0

    .line 1236
    .local v0, ex:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getContextGLEnvironment(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "receiver"

    .prologue
    .line 1216
    :try_start_0
    sget-object v1, Lcom/android/camera/EffectsRecorder;->sFilterContextGetGLEnvironment:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/android/camera/EffectsRecorder;->sGraphEnvironmentGetContext:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1218
    :catch_0
    move-exception v0

    .line 1219
    .local v0, ex:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getGraphFilter(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .parameter "receiver"
    .parameter "name"

    .prologue
    .line 1207
    :try_start_0
    sget-object v1, Lcom/android/camera/EffectsRecorder;->sFilterGraphGetFilter:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/android/camera/EffectsRecorder;->sGraphRunnerGetGraph:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1209
    :catch_0
    move-exception v0

    .line 1210
    .local v0, ex:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getGraphTearDown(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .parameter "receiver"
    .parameter "filterContext"

    .prologue
    .line 1225
    :try_start_0
    sget-object v1, Lcom/android/camera/EffectsRecorder;->sFilterGraphTearDown:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/android/camera/EffectsRecorder;->sGraphRunnerGetGraph:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1230
    return-void

    .line 1227
    :catch_0
    move-exception v0

    .line 1228
    .local v0, ex:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private declared-synchronized initializeEffect(Z)V
    .locals 13
    .parameter "forceReset"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 605
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mCurrentEffect:I

    iget v4, p0, Lcom/android/camera/EffectsRecorder;->mEffect:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mCurrentEffect:I

    if-ne v3, v11, :cond_5

    .line 609
    :cond_0
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mGraphEnv:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/EffectsRecorder;->sGraphEnvironmentAddReferences:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v7, 0x8

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "previewSurfaceTexture"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/camera/EffectsRecorder;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "previewWidth"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget v9, p0, Lcom/android/camera/EffectsRecorder;->mPreviewWidth:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, "previewHeight"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    iget v9, p0, Lcom/android/camera/EffectsRecorder;->mPreviewHeight:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-string v9, "orientation"

    aput-object v9, v7, v8

    const/4 v8, 0x7

    iget v9, p0, Lcom/android/camera/EffectsRecorder;->mOrientationHint:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    aput-object v7, v5, v6

    invoke-direct {p0, v3, v4, v5}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    if-eq v3, v12, :cond_1

    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    if-ne v3, v11, :cond_2

    .line 618
    :cond_1
    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mCurrentEffect:I

    const/4 v4, 0x2

    invoke-direct {p0, v3, v4}, Lcom/android/camera/EffectsRecorder;->sendMessage(II)V

    .line 621
    :cond_2
    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mEffect:I

    packed-switch v3, :pswitch_data_0

    .line 634
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown effect ID"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/EffectsRecorder;->mEffect:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 605
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 623
    :pswitch_0
    :try_start_1
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mGraphEnv:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/EffectsRecorder;->sGraphEnvironmentLoadGraph:Ljava/lang/reflect/Method;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/camera/EffectsRecorder;->mContext:Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const v7, 0x7f080004

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {p0, v3, v4, v5}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/android/camera/EffectsRecorder;->mGraphId:I

    .line 636
    :goto_0
    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mEffect:I

    iput v3, p0, Lcom/android/camera/EffectsRecorder;->mCurrentEffect:I

    .line 638
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    iput-object v3, p0, Lcom/android/camera/EffectsRecorder;->mOldRunner:Ljava/lang/Object;

    .line 639
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mGraphEnv:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/EffectsRecorder;->sGraphEnvironmentGetRunner:Ljava/lang/reflect/Method;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/camera/EffectsRecorder;->mGraphId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Lcom/android/camera/EffectsRecorder;->sClsGraphEnvironment:Ljava/lang/Class;

    const-string v8, "MODE_ASYNCHRONOUS"

    invoke-direct {p0, v7, v8}, Lcom/android/camera/EffectsRecorder;->getConstant(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {p0, v3, v4, v5}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    .line 642
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/EffectsRecorder;->sGraphRunnerSetDoneCallback:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/camera/EffectsRecorder;->mRunnerDoneCallback:Ljava/lang/Object;

    aput-object v7, v5, v6

    invoke-direct {p0, v3, v4, v5}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    iget-boolean v3, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v3, :cond_3

    .line 644
    const-string v3, "EffectsRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New runner: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Old runner: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/EffectsRecorder;->mOldRunner:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :cond_3
    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    if-eq v3, v12, :cond_4

    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    if-ne v3, v11, :cond_5

    .line 651
    :cond_4
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v3}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 652
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V

    .line 653
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mOldRunner:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/EffectsRecorder;->sGraphRunnerStop:Ljava/lang/reflect/Method;

    invoke-direct {p0, v3, v4}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    .line 657
    :cond_5
    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mCurrentEffect:I

    packed-switch v3, :pswitch_data_1

    .line 684
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/EffectsRecorder;->setFaceDetectOrientation()V

    .line 685
    invoke-direct {p0}, Lcom/android/camera/EffectsRecorder;->setRecordingOrientation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 686
    monitor-exit p0

    return-void

    .line 628
    :pswitch_1
    const/4 v3, 0x2

    const/4 v4, 0x0

    :try_start_2
    invoke-direct {p0, v3, v4}, Lcom/android/camera/EffectsRecorder;->sendMessage(II)V

    .line 629
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mGraphEnv:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/EffectsRecorder;->sGraphEnvironmentLoadGraph:Ljava/lang/reflect/Method;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/camera/EffectsRecorder;->mContext:Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/high16 v7, 0x7f08

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {p0, v3, v4, v5}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/android/camera/EffectsRecorder;->mGraphId:I

    goto/16 :goto_0

    .line 659
    :pswitch_2
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/camera/EffectsRecorder;->tryEnableVideoStabilization(Z)Z

    .line 660
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    const-string v4, "goofyrenderer"

    invoke-direct {p0, v3, v4}, Lcom/android/camera/EffectsRecorder;->getGraphFilter(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 661
    .local v1, goofyFilter:Ljava/lang/Object;
    const-string v4, "currentEffect"

    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mEffectParameter:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v4, v3}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 665
    .end local v1           #goofyFilter:Ljava/lang/Object;
    :pswitch_3
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/camera/EffectsRecorder;->tryEnableVideoStabilization(Z)Z

    .line 666
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    const-string v4, "background"

    invoke-direct {p0, v3, v4}, Lcom/android/camera/EffectsRecorder;->getGraphFilter(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 667
    .local v0, backgroundSrc:Ljava/lang/Object;
    sget-boolean v3, Lcom/android/gallery3d/common/ApiHelper;->HAS_EFFECTS_RECORDING_CONTEXT_INPUT:Z

    if-eqz v3, :cond_7

    .line 670
    const-string v3, "context"

    iget-object v4, p0, Lcom/android/camera/EffectsRecorder;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v3, v4}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 672
    :cond_7
    const-string v3, "sourceUrl"

    iget-object v4, p0, Lcom/android/camera/EffectsRecorder;->mEffectParameter:Ljava/lang/Object;

    invoke-direct {p0, v0, v3, v4}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 675
    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mCameraFacing:I

    if-ne v3, v10, :cond_6

    .line 676
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    const-string v4, "replacer"

    invoke-direct {p0, v3, v4}, Lcom/android/camera/EffectsRecorder;->getGraphFilter(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 677
    .local v2, replacer:Ljava/lang/Object;
    const-string v3, "mirrorBg"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 678
    iget-boolean v3, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v3, :cond_6

    const-string v3, "EffectsRecorder"

    const-string v4, "Setting the background to be mirrored"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 621
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 657
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private initializeFilterFramework()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 580
    sget-object v3, Lcom/android/camera/EffectsRecorder;->sCtGraphEnvironment:Ljava/lang/reflect/Constructor;

    invoke-direct {p0, v3}, Lcom/android/camera/EffectsRecorder;->newInstance(Ljava/lang/reflect/Constructor;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/EffectsRecorder;->mGraphEnv:Ljava/lang/Object;

    .line 581
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mGraphEnv:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/EffectsRecorder;->sGraphEnvironmentCreateGLEnvironment:Ljava/lang/reflect/Method;

    invoke-direct {p0, v3, v4}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    .line 583
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 584
    .local v2, videoFrameWidth:I
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 585
    .local v1, videoFrameHeight:I
    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mCameraDisplayOrientation:I

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mCameraDisplayOrientation:I

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_1

    .line 586
    :cond_0
    move v0, v2

    .line 587
    .local v0, tmp:I
    move v2, v1

    .line 588
    move v1, v0

    .line 591
    .end local v0           #tmp:I
    :cond_1
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mGraphEnv:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/EffectsRecorder;->sGraphEnvironmentAddReferences:Ljava/lang/reflect/Method;

    new-array v5, v8, [Ljava/lang/Object;

    const/16 v6, 0xc

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "textureSourceCallback"

    aput-object v7, v6, v9

    iget-object v7, p0, Lcom/android/camera/EffectsRecorder;->mSourceReadyCallback:Ljava/lang/Object;

    aput-object v7, v6, v8

    const/4 v7, 0x2

    const-string v8, "recordingWidth"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "recordingHeight"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string v8, "recordingProfile"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    iget-object v8, p0, Lcom/android/camera/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    aput-object v8, v6, v7

    const/16 v7, 0x8

    const-string v8, "learningDoneListener"

    aput-object v8, v6, v7

    const/16 v7, 0x9

    iget-object v8, p0, Lcom/android/camera/EffectsRecorder;->mLearningDoneListener:Ljava/lang/Object;

    aput-object v8, v6, v7

    const/16 v7, 0xa

    const-string v8, "recordingDoneListener"

    aput-object v8, v6, v7

    const/16 v7, 0xb

    iget-object v8, p0, Lcom/android/camera/EffectsRecorder;->mRecordingDoneListener:Ljava/lang/Object;

    aput-object v8, v6, v7

    aput-object v6, v5, v9

    invoke-direct {p0, v3, v4, v5}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    .line 600
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/camera/EffectsRecorder;->mGraphId:I

    .line 601
    iput v9, p0, Lcom/android/camera/EffectsRecorder;->mCurrentEffect:I

    .line 602
    return-void
.end method

.method private invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 2
    .parameter "receiver"
    .parameter "method"

    .prologue
    .line 1166
    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1167
    :catch_0
    move-exception v0

    .line 1168
    .local v0, ex:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "receiver"
    .parameter "method"
    .parameter "args"

    .prologue
    .line 1175
    :try_start_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1176
    :catch_0
    move-exception v0

    .line 1177
    .local v0, ex:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private invokeObjectEquals(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "proxy"
    .parameter "args"

    .prologue
    const/4 v0, 0x0

    .line 734
    aget-object v1, p2, v0

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private invokeObjectToString()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Proxy-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private invokeOnLearningDone()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 742
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    const-string v1, "Learning done callback triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0, v2}, Lcom/android/camera/EffectsRecorder;->sendMessage(II)V

    .line 746
    invoke-virtual {p0, v2}, Lcom/android/camera/EffectsRecorder;->enable3ALocks(Z)V

    .line 747
    return-void
.end method

.method private invokeOnRecordingDone()V
    .locals 2

    .prologue
    .line 882
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    const-string v1, "Recording done callback triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/camera/EffectsRecorder;->sendMessage(II)V

    .line 884
    return-void
.end method

.method private invokeOnRunnerDone([Ljava/lang/Object;)V
    .locals 8
    .parameter "args"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v3, 0x0

    .line 750
    aget-object v3, p1, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 751
    .local v2, runnerDoneResult:I
    monitor-enter p0

    .line 752
    :try_start_0
    iget-boolean v3, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v3, :cond_0

    .line 753
    const-string v3, "EffectsRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Graph runner done ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mRunner "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mOldRunner "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/EffectsRecorder;->mOldRunner:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :cond_0
    sget-object v3, Lcom/android/camera/EffectsRecorder;->sClsGraphRunner:Ljava/lang/Class;

    const-string v4, "RESULT_ERROR"

    invoke-direct {p0, v3, v4}, Lcom/android/camera/EffectsRecorder;->getConstant(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 761
    const-string v3, "EffectsRecorder"

    const-string v4, "Error running filter graph!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    const/4 v0, 0x0

    .line 763
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    if-eqz v3, :cond_b

    .line 764
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/EffectsRecorder;->sGraphRunnerGetError:Ljava/lang/reflect/Method;

    invoke-direct {p0, v3, v4}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #e:Ljava/lang/Exception;
    check-cast v0, Ljava/lang/Exception;

    .line 768
    .restart local v0       #e:Ljava/lang/Exception;
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/camera/EffectsRecorder;->raiseError(Ljava/lang/Exception;)V

    .line 770
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mOldRunner:Ljava/lang/Object;

    if-eqz v3, :cond_6

    .line 772
    iget-boolean v3, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v3, :cond_3

    const-string v3, "EffectsRecorder"

    const-string v4, "Tearing down old graph."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    :cond_3
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mGraphEnv:Ljava/lang/Object;

    invoke-direct {p0, v3}, Lcom/android/camera/EffectsRecorder;->getContextGLEnvironment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 774
    .local v1, glEnv:Ljava/lang/Object;
    if-eqz v1, :cond_4

    sget-object v3, Lcom/android/camera/EffectsRecorder;->sGLEnvironmentIsActive:Ljava/lang/reflect/Method;

    invoke-direct {p0, v1, v3}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_4

    .line 775
    sget-object v3, Lcom/android/camera/EffectsRecorder;->sGLEnvironmentActivate:Ljava/lang/reflect/Method;

    invoke-direct {p0, v1, v3}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    .line 777
    :cond_4
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mOldRunner:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/camera/EffectsRecorder;->mGraphEnv:Ljava/lang/Object;

    sget-object v5, Lcom/android/camera/EffectsRecorder;->sGraphEnvironmentGetContext:Ljava/lang/reflect/Method;

    invoke-direct {p0, v4, v5}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/camera/EffectsRecorder;->getGraphTearDown(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 779
    if-eqz v1, :cond_5

    sget-object v3, Lcom/android/camera/EffectsRecorder;->sGLEnvironmentIsActive:Ljava/lang/reflect/Method;

    invoke-direct {p0, v1, v3}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 780
    sget-object v3, Lcom/android/camera/EffectsRecorder;->sGLEnvironmentDeactivate:Ljava/lang/reflect/Method;

    invoke-direct {p0, v1, v3}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    .line 782
    :cond_5
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/EffectsRecorder;->mOldRunner:Ljava/lang/Object;

    .line 784
    .end local v1           #glEnv:Ljava/lang/Object;
    :cond_6
    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    if-eq v3, v7, :cond_7

    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    if-ne v3, v6, :cond_c

    .line 787
    :cond_7
    iget-boolean v3, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v3, :cond_8

    .line 788
    const-string v3, "EffectsRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Previous effect halted. Running graph again. state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    :cond_8
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/camera/EffectsRecorder;->tryEnable3ALocks(Z)Z

    .line 803
    sget-object v3, Lcom/android/camera/EffectsRecorder;->sClsGraphRunner:Ljava/lang/Class;

    const-string v4, "RESULT_ERROR"

    invoke-direct {p0, v3, v4}, Lcom/android/camera/EffectsRecorder;->getConstant(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_9

    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mCurrentEffect:I

    if-ne v3, v6, :cond_9

    .line 806
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/camera/EffectsRecorder;->sendMessage(II)V

    .line 808
    :cond_9
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/EffectsRecorder;->sGraphRunnerRun:Ljava/lang/reflect/Method;

    invoke-direct {p0, v3, v4}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    .line 817
    :cond_a
    :goto_1
    monitor-exit p0

    .line 818
    return-void

    .line 765
    .restart local v0       #e:Ljava/lang/Exception;
    :cond_b
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mOldRunner:Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 766
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mOldRunner:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/EffectsRecorder;->sGraphRunnerGetError:Ljava/lang/reflect/Method;

    invoke-direct {p0, v3, v4}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #e:Ljava/lang/Exception;
    check-cast v0, Ljava/lang/Exception;

    .restart local v0       #e:Ljava/lang/Exception;
    goto/16 :goto_0

    .line 809
    .end local v0           #e:Ljava/lang/Exception;
    :cond_c
    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_a

    .line 811
    iget-boolean v3, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v3, :cond_d

    const-string v3, "EffectsRecorder"

    const-string v4, "Runner halted, restoring direct preview"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    :cond_d
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/camera/EffectsRecorder;->tryEnable3ALocks(Z)Z

    .line 813
    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-direct {p0, v3, v4}, Lcom/android/camera/EffectsRecorder;->sendMessage(II)V

    goto :goto_1

    .line 817
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private invokeOnSurfaceTextureSourceReady([Ljava/lang/Object;)V
    .locals 5
    .parameter "args"

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x3

    const/4 v1, 0x0

    .line 821
    aget-object v0, p1, v1

    check-cast v0, Landroid/graphics/SurfaceTexture;

    .line 822
    .local v0, source:Landroid/graphics/SurfaceTexture;
    iget-boolean v1, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v1, :cond_0

    const-string v1, "EffectsRecorder"

    const-string v2, "SurfaceTexture ready callback received"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :cond_0
    monitor-enter p0

    .line 824
    :try_start_0
    iput-object v0, p0, Lcom/android/camera/EffectsRecorder;->mTextureSource:Landroid/graphics/SurfaceTexture;

    .line 826
    iget v1, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    if-nez v1, :cond_2

    .line 830
    iget-boolean v1, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v1, :cond_1

    const-string v1, "EffectsRecorder"

    const-string v2, "Ready callback: Already stopped, skipping."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    :cond_1
    monitor-exit p0

    .line 878
    :goto_0
    return-void

    .line 833
    :cond_2
    iget v1, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    if-ne v1, v4, :cond_4

    .line 836
    iget-boolean v1, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v1, :cond_3

    const-string v1, "EffectsRecorder"

    const-string v2, "Ready callback: Already released, skipping."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    :cond_3
    monitor-exit p0

    goto :goto_0

    .line 877
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 839
    :cond_4
    if-nez v0, :cond_9

    .line 840
    :try_start_1
    iget-boolean v1, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v1, :cond_5

    .line 841
    const-string v1, "EffectsRecorder"

    const-string v2, "Ready callback: source null! Looks like graph was closed!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    :cond_5
    iget v1, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    if-eq v1, v3, :cond_6

    iget v1, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    iget v1, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_8

    .line 849
    :cond_6
    iget-boolean v1, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v1, :cond_7

    .line 850
    const-string v1, "EffectsRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ready callback: State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". stopCameraPreview"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/EffectsRecorder;->stopCameraPreview()V

    .line 856
    :cond_8
    monitor-exit p0

    goto :goto_0

    .line 860
    :cond_9
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/EffectsRecorder;->tryEnable3ALocks(Z)Z

    .line 862
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 863
    iget-boolean v1, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v1, :cond_a

    const-string v1, "EffectsRecorder"

    const-string v2, "Runner active, connecting effects preview"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    :cond_a
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/EffectsRecorder;->mTextureSource:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V

    .line 866
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->startPreviewAsync()V

    .line 869
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/EffectsRecorder;->tryEnable3ALocks(Z)Z

    .line 871
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    .line 873
    iget-boolean v1, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v1, :cond_b

    const-string v1, "EffectsRecorder"

    const-string v2, "Start preview/effect switch complete"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    :cond_b
    iget v1, p0, Lcom/android/camera/EffectsRecorder;->mCurrentEffect:I

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Lcom/android/camera/EffectsRecorder;->sendMessage(II)V

    .line 877
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public static isEffectSupported(I)Z
    .locals 7
    .parameter "effectId"

    .prologue
    const/4 v2, 0x0

    .line 184
    sget-object v1, Lcom/android/camera/EffectsRecorder;->sFilterIsAvailable:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    move v1, v2

    .line 200
    :goto_0
    return v1

    .line 187
    :cond_0
    packed-switch p0, :pswitch_data_0

    move v1, v2

    .line 195
    goto :goto_0

    .line 189
    :pswitch_0
    :try_start_0
    sget-object v1, Lcom/android/camera/EffectsRecorder;->sFilterIsAvailable:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "com.google.android.filterpacks.facedetect.GoofyRenderFilter"

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    .line 192
    :pswitch_1
    sget-object v1, Lcom/android/camera/EffectsRecorder;->sFilterIsAvailable:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "android.filterpacks.videoproc.BackDropperFilter"

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "EffectsRecorder"

    const-string v3, "Fail to check filter"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 200
    goto :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private newInstance(Ljava/lang/reflect/Constructor;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 1199
    .local p1, ct:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1200
    :catch_0
    move-exception v0

    .line 1201
    .local v0, ex:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter "initArgs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 1191
    .local p1, ct:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1192
    :catch_0
    move-exception v0

    .line 1193
    .local v0, ex:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private raiseError(Ljava/lang/Exception;)V
    .locals 2
    .parameter "exception"

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mEffectsListener:Lcom/android/camera/EffectsRecorder$EffectsListener;

    if-eqz v0, :cond_0

    .line 1150
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/EffectsRecorder$2;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/EffectsRecorder$2;-><init>(Lcom/android/camera/EffectsRecorder;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1161
    :cond_0
    return-void
.end method

.method private sendMessage(II)V
    .locals 2
    .parameter "effect"
    .parameter "msg"

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mEffectsListener:Lcom/android/camera/EffectsRecorder$EffectsListener;

    if-eqz v0, :cond_0

    .line 1139
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/EffectsRecorder$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/EffectsRecorder$1;-><init>(Lcom/android/camera/EffectsRecorder;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1146
    :cond_0
    return-void
.end method

.method private setFaceDetectOrientation()V
    .locals 5

    .prologue
    .line 485
    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mCurrentEffect:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 486
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    const-string v4, "rotate"

    invoke-direct {p0, v3, v4}, Lcom/android/camera/EffectsRecorder;->getGraphFilter(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 487
    .local v2, rotateFilter:Ljava/lang/Object;
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    const-string v4, "metarotate"

    invoke-direct {p0, v3, v4}, Lcom/android/camera/EffectsRecorder;->getGraphFilter(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 488
    .local v0, metaRotateFilter:Ljava/lang/Object;
    const-string v3, "rotation"

    iget v4, p0, Lcom/android/camera/EffectsRecorder;->mOrientationHint:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 489
    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mOrientationHint:I

    rsub-int v3, v3, 0x168

    rem-int/lit16 v1, v3, 0x168

    .line 490
    .local v1, reverseDegrees:I
    const-string v3, "rotation"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v0, v3, v4}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 492
    .end local v0           #metaRotateFilter:Ljava/lang/Object;
    .end local v1           #reverseDegrees:I
    .end local v2           #rotateFilter:Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .parameter "receiver"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1183
    :try_start_0
    sget-object v1, Lcom/android/camera/EffectsRecorder;->sFilterSetInputValue:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1187
    return-void

    .line 1184
    :catch_0
    move-exception v0

    .line 1185
    .local v0, ex:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setRecordingOrientation()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 495
    iget v6, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    if-eq v6, v12, :cond_0

    iget-object v6, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    if-eqz v6, :cond_0

    .line 496
    sget-object v6, Lcom/android/camera/EffectsRecorder;->sCtPoint:Ljava/lang/reflect/Constructor;

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-direct {p0, v6, v7}, Lcom/android/camera/EffectsRecorder;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 497
    .local v0, bl:Ljava/lang/Object;
    sget-object v6, Lcom/android/camera/EffectsRecorder;->sCtPoint:Ljava/lang/reflect/Constructor;

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-direct {p0, v6, v7}, Lcom/android/camera/EffectsRecorder;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 498
    .local v1, br:Ljava/lang/Object;
    sget-object v6, Lcom/android/camera/EffectsRecorder;->sCtPoint:Ljava/lang/reflect/Constructor;

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-direct {p0, v6, v7}, Lcom/android/camera/EffectsRecorder;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 499
    .local v4, tl:Ljava/lang/Object;
    sget-object v6, Lcom/android/camera/EffectsRecorder;->sCtPoint:Ljava/lang/reflect/Constructor;

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-direct {p0, v6, v7}, Lcom/android/camera/EffectsRecorder;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 501
    .local v5, tr:Ljava/lang/Object;
    iget v6, p0, Lcom/android/camera/EffectsRecorder;->mCameraFacing:I

    if-nez v6, :cond_1

    .line 503
    sget-object v6, Lcom/android/camera/EffectsRecorder;->sCtQuad:Ljava/lang/reflect/Constructor;

    new-array v7, v12, [Ljava/lang/Object;

    aput-object v0, v7, v9

    aput-object v1, v7, v10

    aput-object v4, v7, v11

    aput-object v5, v7, v13

    invoke-direct {p0, v6, v7}, Lcom/android/camera/EffectsRecorder;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 515
    .local v3, recordingRegion:Ljava/lang/Object;
    :goto_0
    iget-object v6, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    const-string v7, "recorder"

    invoke-direct {p0, v6, v7}, Lcom/android/camera/EffectsRecorder;->getGraphFilter(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 516
    .local v2, recorder:Ljava/lang/Object;
    const-string v6, "inputRegion"

    invoke-direct {p0, v2, v6, v3}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 518
    .end local v0           #bl:Ljava/lang/Object;
    .end local v1           #br:Ljava/lang/Object;
    .end local v2           #recorder:Ljava/lang/Object;
    .end local v3           #recordingRegion:Ljava/lang/Object;
    .end local v4           #tl:Ljava/lang/Object;
    .end local v5           #tr:Ljava/lang/Object;
    :cond_0
    return-void

    .line 507
    .restart local v0       #bl:Ljava/lang/Object;
    .restart local v1       #br:Ljava/lang/Object;
    .restart local v4       #tl:Ljava/lang/Object;
    .restart local v5       #tr:Ljava/lang/Object;
    :cond_1
    iget v6, p0, Lcom/android/camera/EffectsRecorder;->mOrientationHint:I

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/android/camera/EffectsRecorder;->mOrientationHint:I

    const/16 v7, 0xb4

    if-ne v6, v7, :cond_3

    .line 509
    :cond_2
    sget-object v6, Lcom/android/camera/EffectsRecorder;->sCtQuad:Ljava/lang/reflect/Constructor;

    new-array v7, v12, [Ljava/lang/Object;

    aput-object v1, v7, v9

    aput-object v0, v7, v10

    aput-object v5, v7, v11

    aput-object v4, v7, v13

    invoke-direct {p0, v6, v7}, Lcom/android/camera/EffectsRecorder;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .restart local v3       #recordingRegion:Ljava/lang/Object;
    goto :goto_0

    .line 512
    .end local v3           #recordingRegion:Ljava/lang/Object;
    :cond_3
    sget-object v6, Lcom/android/camera/EffectsRecorder;->sCtQuad:Ljava/lang/reflect/Constructor;

    new-array v7, v12, [Ljava/lang/Object;

    aput-object v4, v7, v9

    aput-object v5, v7, v10

    aput-object v0, v7, v11

    aput-object v1, v7, v13

    invoke-direct {p0, v6, v7}, Lcom/android/camera/EffectsRecorder;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .restart local v3       #recordingRegion:Ljava/lang/Object;
    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized disconnectCamera()V
    .locals 2

    .prologue
    .line 982
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    const-string v1, "Disconnecting the effects from Camera"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/EffectsRecorder;->stopCameraPreview()V

    .line 984
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 985
    monitor-exit p0

    return-void

    .line 982
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnectDisplay()V
    .locals 6

    .prologue
    .line 968
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v1, :cond_0

    const-string v1, "EffectsRecorder"

    const-string v2, "Disconnecting the graph from the SurfaceTexture"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    :cond_0
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    const-string v2, "display"

    invoke-direct {p0, v1, v2}, Lcom/android/camera/EffectsRecorder;->getGraphFilter(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 971
    .local v0, display:Ljava/lang/Object;
    sget-object v1, Lcom/android/camera/EffectsRecorder;->sSurfaceTextureTargetDisconnect:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/camera/EffectsRecorder;->mGraphEnv:Ljava/lang/Object;

    sget-object v5, Lcom/android/camera/EffectsRecorder;->sGraphEnvironmentGetContext:Ljava/lang/reflect/Method;

    invoke-direct {p0, v4, v5}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 973
    monitor-exit p0

    return-void

    .line 968
    .end local v0           #display:Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized enable3ALocks(Z)V
    .locals 3
    .parameter "toggle"

    .prologue
    .line 1072
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v1, :cond_0

    const-string v1, "EffectsRecorder"

    const-string v2, "Enable3ALocks"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    :cond_0
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v1, :cond_2

    .line 1074
    const-string v1, "EffectsRecorder"

    const-string v2, "Camera already null. Not enabling 3A locks."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1081
    :cond_1
    monitor-exit p0

    return-void

    .line 1077
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1078
    .local v0, params:Landroid/hardware/Camera$Parameters;
    invoke-virtual {p0, p1}, Lcom/android/camera/EffectsRecorder;->tryEnable3ALocks(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1079
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Attempt to lock 3A on camera with no locking support!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1072
    .end local v0           #params:Landroid/hardware/Camera$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized release()V
    .locals 3

    .prologue
    .line 1118
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Releasing ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    :cond_0
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 1127
    :goto_0
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mSoundPlayer:Lcom/android/camera/SoundClips$Player;

    if-eqz v0, :cond_1

    .line 1128
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mSoundPlayer:Lcom/android/camera/SoundClips$Player;

    invoke-interface {v0}, Lcom/android/camera/SoundClips$Player;->release()V

    .line 1129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/EffectsRecorder;->mSoundPlayer:Lcom/android/camera/SoundClips$Player;

    .line 1131
    :cond_1
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    .line 1134
    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/EffectsRecorder;->sEffectsRecorder:Lcom/android/camera/EffectsRecorder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1135
    monitor-exit p0

    return-void

    .line 1124
    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/camera/EffectsRecorder;->stopPreview()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1120
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized setCamera(Lcom/android/camera/CameraManager$CameraProxy;)V
    .locals 2
    .parameter "cameraDevice"

    .prologue
    .line 317
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 328
    iput-object p1, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    monitor-exit p0

    return-void

    .line 319
    :pswitch_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setCamera cannot be called while previewing!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 317
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 321
    :pswitch_1
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setCamera cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :pswitch_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setCamera called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 317
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setCameraDisplayOrientation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 534
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    if-eqz v0, :cond_0

    .line 535
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setCameraDisplayOrientation called after configuration!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 538
    :cond_0
    iput p1, p0, Lcom/android/camera/EffectsRecorder;->mCameraDisplayOrientation:I

    .line 539
    return-void
.end method

.method public setCameraFacing(I)V
    .locals 2
    .parameter "facing"

    .prologue
    .line 542
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 549
    iput p1, p0, Lcom/android/camera/EffectsRecorder;->mCameraFacing:I

    .line 550
    invoke-direct {p0}, Lcom/android/camera/EffectsRecorder;->setRecordingOrientation()V

    .line 551
    return-void

    .line 544
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setCameraFacing called on alrady released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 542
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public setCaptureRate(D)V
    .locals 3
    .parameter "fps"

    .prologue
    .line 409
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 419
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting time lapse capture rate to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_0
    iput-wide p1, p0, Lcom/android/camera/EffectsRecorder;->mCaptureRate:D

    .line 421
    return-void

    .line 411
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setCaptureRate cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setCaptureRate called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setEffect(ILjava/lang/Object;)V
    .locals 3
    .parameter "effect"
    .parameter "effectParameter"

    .prologue
    .line 454
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEffect: effect ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", parameter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_0
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 466
    iput p1, p0, Lcom/android/camera/EffectsRecorder;->mEffect:I

    .line 467
    iput-object p2, p0, Lcom/android/camera/EffectsRecorder;->mEffectParameter:Ljava/lang/Object;

    .line 469
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 471
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/EffectsRecorder;->initializeEffect(Z)V

    .line 473
    :cond_2
    return-void

    .line 459
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setEffect cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setEffect called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 457
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setEffectsListener(Lcom/android/camera/EffectsRecorder$EffectsListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 481
    iput-object p1, p0, Lcom/android/camera/EffectsRecorder;->mEffectsListener:Lcom/android/camera/EffectsRecorder$EffectsListener;

    .line 482
    return-void
.end method

.method public declared-synchronized setMaxDuration(I)V
    .locals 2
    .parameter "maxDurationMs"

    .prologue
    .line 395
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 404
    iput p1, p0, Lcom/android/camera/EffectsRecorder;->mMaxDurationMs:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    monitor-exit p0

    return-void

    .line 397
    :pswitch_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setMaxDuration cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 395
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 399
    :pswitch_1
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setMaxDuration called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 395
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized setMaxFileSize(J)V
    .locals 2
    .parameter "maxFileSize"

    .prologue
    .line 378
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 387
    iput-wide p1, p0, Lcom/android/camera/EffectsRecorder;->mMaxFileSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    monitor-exit p0

    return-void

    .line 380
    :pswitch_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setMaxFileSize cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 378
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 382
    :pswitch_1
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setMaxFileSize called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 378
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V
    .locals 2
    .parameter "errorListener"

    .prologue
    .line 567
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 576
    iput-object p1, p0, Lcom/android/camera/EffectsRecorder;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    .line 577
    return-void

    .line 569
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setErrorListener cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 571
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setErrorListener called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 567
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V
    .locals 2
    .parameter "infoListener"

    .prologue
    .line 554
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 563
    iput-object p1, p0, Lcom/android/camera/EffectsRecorder;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    .line 564
    return-void

    .line 556
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setInfoListener cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 558
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setInfoListener called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 554
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOrientationHint(I)V
    .locals 3
    .parameter "degrees"

    .prologue
    .line 520
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 527
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting orientation hint to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_0
    iput p1, p0, Lcom/android/camera/EffectsRecorder;->mOrientationHint:I

    .line 529
    invoke-direct {p0}, Lcom/android/camera/EffectsRecorder;->setFaceDetectOrientation()V

    .line 530
    invoke-direct {p0}, Lcom/android/camera/EffectsRecorder;->setRecordingOrientation()V

    .line 531
    return-void

    .line 522
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setOrientationHint called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 520
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public setOutputFile(Ljava/io/FileDescriptor;)V
    .locals 2
    .parameter "fd"

    .prologue
    .line 358
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 367
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/EffectsRecorder;->mOutputFile:Ljava/lang/String;

    .line 368
    iput-object p1, p0, Lcom/android/camera/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;

    .line 369
    return-void

    .line 360
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setOutputFile cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setOutputFile called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOutputFile(Ljava/lang/String;)V
    .locals 2
    .parameter "outputFile"

    .prologue
    .line 344
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 353
    iput-object p1, p0, Lcom/android/camera/EffectsRecorder;->mOutputFile:Ljava/lang/String;

    .line 354
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;

    .line 355
    return-void

    .line 346
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setOutputFile cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setOutputFile called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setPreviewSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V
    .locals 3
    .parameter "previewSurfaceTexture"
    .parameter "previewWidth"
    .parameter "previewHeight"

    .prologue
    .line 426
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewSurfaceTexture("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_0
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 438
    iput-object p1, p0, Lcom/android/camera/EffectsRecorder;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 439
    iput p2, p0, Lcom/android/camera/EffectsRecorder;->mPreviewWidth:I

    .line 440
    iput p3, p0, Lcom/android/camera/EffectsRecorder;->mPreviewHeight:I

    .line 442
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_1

    .line 451
    :goto_0
    return-void

    .line 429
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setPreviewSurfaceTexture cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 432
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setPreviewSurfaceTexture called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/camera/EffectsRecorder;->startPreview()V

    goto :goto_0

    .line 448
    :pswitch_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/EffectsRecorder;->initializeEffect(Z)V

    goto :goto_0

    .line 427
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 442
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public setProfile(Landroid/media/CamcorderProfile;)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 332
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 340
    iput-object p1, p0, Lcom/android/camera/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    .line 341
    return-void

    .line 334
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setProfile cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setProfile called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized startPreview()V
    .locals 3

    .prologue
    .line 689
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting preview ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :cond_0
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 705
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mEffect:I

    if-nez v0, :cond_1

    .line 706
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No effect selected!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 689
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 695
    :pswitch_0
    :try_start_1
    const-string v0, "EffectsRecorder"

    const-string v1, "startPreview called when already running preview"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 731
    :goto_0
    monitor-exit p0

    return-void

    .line 698
    :pswitch_1
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot start preview when already recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 700
    :pswitch_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setEffect called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 708
    :cond_1
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mEffectParameter:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 709
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No effect parameter provided!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 711
    :cond_2
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    if-nez v0, :cond_3

    .line 712
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No recording profile provided!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 714
    :cond_3
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_5

    .line 715
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_4

    const-string v0, "EffectsRecorder"

    const-string v1, "Passed a null surface; waiting for valid one"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :cond_4
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    goto :goto_0

    .line 719
    :cond_5
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_6

    .line 720
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No camera to record from!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 723
    :cond_6
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_7

    const-string v0, "EffectsRecorder"

    const-string v1, "Initializing filter framework and running the graph."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :cond_7
    invoke-direct {p0}, Lcom/android/camera/EffectsRecorder;->initializeFilterFramework()V

    .line 726
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/EffectsRecorder;->initializeEffect(Z)V

    .line 728
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    .line 729
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    sget-object v1, Lcom/android/camera/EffectsRecorder;->sGraphRunnerRun:Ljava/lang/reflect/Method;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 691
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public declared-synchronized startRecording()V
    .locals 8

    .prologue
    const/4 v0, 0x1

    .line 887
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v4, :cond_0

    const-string v4, "EffectsRecorder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting recording ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    :cond_0
    iget v4, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v4, :pswitch_data_0

    .line 899
    iget-object v4, p0, Lcom/android/camera/EffectsRecorder;->mOutputFile:Ljava/lang/String;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;

    if-nez v4, :cond_1

    .line 900
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "No output file name or descriptor provided!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 887
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 891
    :pswitch_0
    :try_start_1
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Already recording, cannot begin anew!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 893
    :pswitch_1
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "startRecording called on an already released recorder!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 903
    :cond_1
    iget v4, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    if-nez v4, :cond_2

    .line 904
    invoke-virtual {p0}, Lcom/android/camera/EffectsRecorder;->startPreview()V

    .line 907
    :cond_2
    iget-object v4, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    const-string v5, "recorder"

    invoke-direct {p0, v4, v5}, Lcom/android/camera/EffectsRecorder;->getGraphFilter(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 908
    .local v1, recorder:Ljava/lang/Object;
    iget-object v4, p0, Lcom/android/camera/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;

    if-eqz v4, :cond_5

    .line 909
    const-string v4, "outputFileDescriptor"

    iget-object v5, p0, Lcom/android/camera/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;

    invoke-direct {p0, v1, v4, v5}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 915
    :goto_0
    const-string v4, "audioSource"

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v1, v4, v5}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 916
    const-string v4, "recordingProfile"

    iget-object v5, p0, Lcom/android/camera/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    invoke-direct {p0, v1, v4, v5}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 917
    const-string v4, "orientationHint"

    iget v5, p0, Lcom/android/camera/EffectsRecorder;->mOrientationHint:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v1, v4, v5}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 922
    iget-wide v4, p0, Lcom/android/camera/EffectsRecorder;->mCaptureRate:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_6

    .line 923
    .local v0, captureTimeLapse:Z
    :goto_1
    if-eqz v0, :cond_7

    .line 924
    const-wide/high16 v4, 0x3ff0

    iget-wide v6, p0, Lcom/android/camera/EffectsRecorder;->mCaptureRate:D

    div-double v2, v4, v6

    .line 925
    .local v2, timeBetweenFrameCapture:D
    const-string v4, "timelapseRecordingIntervalUs"

    const-wide v5, 0x412e848000000000L

    mul-double/2addr v5, v2

    double-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {p0, v1, v4, v5}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 932
    .end local v2           #timeBetweenFrameCapture:D
    :goto_2
    iget-object v4, p0, Lcom/android/camera/EffectsRecorder;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    if-eqz v4, :cond_3

    .line 933
    const-string v4, "infoListener"

    iget-object v5, p0, Lcom/android/camera/EffectsRecorder;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    invoke-direct {p0, v1, v4, v5}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 935
    :cond_3
    iget-object v4, p0, Lcom/android/camera/EffectsRecorder;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    if-eqz v4, :cond_4

    .line 936
    const-string v4, "errorListener"

    iget-object v5, p0, Lcom/android/camera/EffectsRecorder;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    invoke-direct {p0, v1, v4, v5}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 938
    :cond_4
    const-string v4, "maxFileSize"

    iget-wide v5, p0, Lcom/android/camera/EffectsRecorder;->mMaxFileSize:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {p0, v1, v4, v5}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 939
    const-string v4, "maxDurationMs"

    iget v5, p0, Lcom/android/camera/EffectsRecorder;->mMaxDurationMs:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v1, v4, v5}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 940
    const-string v4, "recording"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {p0, v1, v4, v5}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 941
    iget-object v4, p0, Lcom/android/camera/EffectsRecorder;->mSoundPlayer:Lcom/android/camera/SoundClips$Player;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/android/camera/SoundClips$Player;->play(I)V

    .line 942
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/camera/EffectsRecorder;->mState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 943
    monitor-exit p0

    return-void

    .line 911
    .end local v0           #captureTimeLapse:Z
    :cond_5
    :try_start_2
    const-string v4, "outputFile"

    iget-object v5, p0, Lcom/android/camera/EffectsRecorder;->mOutputFile:Ljava/lang/String;

    invoke-direct {p0, v1, v4, v5}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 922
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 929
    .restart local v0       #captureTimeLapse:Z
    :cond_7
    const-string v4, "timelapseRecordingIntervalUs"

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {p0, v1, v4, v5}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 889
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized stopCameraPreview()V
    .locals 2

    .prologue
    .line 991
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    const-string v1, "Stopping camera preview."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    :cond_0
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    .line 993
    const-string v0, "EffectsRecorder"

    const-string v1, "Camera already null. Nothing to disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 998
    :goto_0
    monitor-exit p0

    return-void

    .line 996
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 997
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 991
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopPreview()V
    .locals 3

    .prologue
    .line 1002
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping preview ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    :cond_0
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    sparse-switch v0, :sswitch_data_0

    .line 1013
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1014
    invoke-virtual {p0}, Lcom/android/camera/EffectsRecorder;->stopRecording()V

    .line 1017
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/EffectsRecorder;->mCurrentEffect:I

    .line 1020
    invoke-virtual {p0}, Lcom/android/camera/EffectsRecorder;->stopCameraPreview()V

    .line 1022
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    .line 1023
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/camera/EffectsRecorder;->mOldRunner:Ljava/lang/Object;

    .line 1024
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    sget-object v1, Lcom/android/camera/EffectsRecorder;->sGraphRunnerStop:Ljava/lang/reflect/Method;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    .line 1025
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1027
    :goto_0
    monitor-exit p0

    return-void

    .line 1005
    :sswitch_0
    :try_start_1
    const-string v0, "EffectsRecorder"

    const-string v1, "StopPreview called when preview not active!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1002
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1008
    :sswitch_1
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "stopPreview called on released EffectsRecorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1003
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method public declared-synchronized stopRecording()V
    .locals 4

    .prologue
    .line 946
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v1, :cond_0

    const-string v1, "EffectsRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop recording ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    :cond_0
    iget v1, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 959
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    const-string v2, "recorder"

    invoke-direct {p0, v1, v2}, Lcom/android/camera/EffectsRecorder;->getGraphFilter(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 960
    .local v0, recorder:Ljava/lang/Object;
    const-string v1, "recording"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 961
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder;->mSoundPlayer:Lcom/android/camera/SoundClips$Player;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/android/camera/SoundClips$Player;->play(I)V

    .line 962
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/camera/EffectsRecorder;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 963
    .end local v0           #recorder:Ljava/lang/Object;
    :goto_0
    monitor-exit p0

    return-void

    .line 952
    :pswitch_1
    :try_start_1
    const-string v1, "EffectsRecorder"

    const-string v2, "StopRecording called when recording not active!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 946
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 955
    :pswitch_2
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "stopRecording called on released EffectsRecorder!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 948
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method declared-synchronized tryEnable3ALocks(Z)Z
    .locals 4
    .parameter "toggle"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1053
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v2, :cond_0

    const-string v2, "EffectsRecorder"

    const-string v3, "tryEnable3ALocks"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    :cond_0
    iget-object v2, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v2, :cond_2

    .line 1055
    const-string v2, "EffectsRecorder"

    const-string v3, "Camera already null. Not tryenabling 3A locks."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1066
    :cond_1
    :goto_0
    monitor-exit p0

    return v1

    .line 1058
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1059
    .local v0, params:Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/android/camera/Util;->isAutoExposureLockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/android/camera/Util;->isAutoWhiteBalanceLockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1061
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 1062
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 1063
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1064
    const/4 v1, 0x1

    goto :goto_0

    .line 1053
    .end local v0           #params:Landroid/hardware/Camera$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method tryEnableVideoStabilization(Z)Z
    .locals 5
    .parameter "toggle"

    .prologue
    const/4 v2, 0x0

    .line 1032
    iget-boolean v3, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v3, :cond_0

    const-string v3, "EffectsRecorder"

    const-string v4, "tryEnableVideoStabilization."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    :cond_0
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v3, :cond_2

    .line 1034
    const-string v3, "EffectsRecorder"

    const-string v4, "Camera already null. Not enabling video stabilization."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    :cond_1
    :goto_0
    return v2

    .line 1037
    :cond_2
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v3}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1039
    .local v0, params:Landroid/hardware/Camera$Parameters;
    const-string v3, "video-stabilization-supported"

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1040
    .local v1, vstabSupported:Ljava/lang/String;
    const-string v3, "true"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1041
    iget-boolean v2, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v2, :cond_3

    const-string v2, "EffectsRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting video stabilization to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    :cond_3
    const-string v3, "video-stabilization"

    if-eqz p1, :cond_4

    const-string v2, "true"

    :goto_1
    invoke-virtual {v0, v3, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    iget-object v2, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2, v0}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1044
    const/4 v2, 0x1

    goto :goto_0

    .line 1042
    :cond_4
    const-string v2, "false"

    goto :goto_1

    .line 1046
    :cond_5
    iget-boolean v3, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v3, :cond_1

    const-string v3, "EffectsRecorder"

    const-string v4, "Video stabilization not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
