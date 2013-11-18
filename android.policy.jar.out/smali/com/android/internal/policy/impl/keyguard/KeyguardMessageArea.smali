.class Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;
.super Landroid/widget/TextView;
.source "KeyguardMessageArea.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$AnnounceRunnable;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;
    }
.end annotation


# static fields
.field private static final ANNOUNCEMENT_DELAY:J = 0xfaL

.field private static final ANNOUNCE_TOKEN:Ljava/lang/Object; = null

.field static final BATTERY_LOW_ICON:I = 0x0

.field static final CHARGING_ICON:I = 0x0

.field static final DISCHARGING_ICON:I = 0x0

.field protected static final FADE_DURATION:I = 0x2ee

.field static final SECURITY_MESSAGE_DURATION:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "KeyguardMessageArea"


# instance fields
.field mAlwaysShowBattery:Z

.field protected mBatteryCharged:Z

.field protected mBatteryIsLow:Z

.field mBatteryLevel:I

.field mCharging:Z

.field mClearMessageRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mMessage:Ljava/lang/CharSequence;

.field private mSeparator:Ljava/lang/CharSequence;

.field mShowingBatteryInfo:Z

.field mShowingBouncer:Z

.field mShowingMessage:Z

.field mTimeout:J

.field mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->ANNOUNCE_TOKEN:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 182
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 185
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mShowingBatteryInfo:Z

    .line 73
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mAlwaysShowBattery:Z

    .line 76
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mShowingBouncer:Z

    .line 79
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mCharging:Z

    .line 82
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mBatteryLevel:I

    .line 87
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mTimeout:J

    .line 100
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mClearMessageRunnable:Ljava/lang/Runnable;

    .line 161
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 187
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 190
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->setSelected(Z)V

    .line 193
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    .line 194
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 195
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    .line 197
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10405f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mSeparator:Ljava/lang/CharSequence;

    .line 199
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->update()V

    .line 200
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->hideMessage(IZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->showMessage(I)V

    return-void
.end method

.method private varargs concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .parameter "args"

    .prologue
    const/4 v4, 0x0

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .local v0, b:Ljava/lang/StringBuilder;
    aget-object v3, p1, v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 232
    aget-object v3, p1, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 234
    :cond_0
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_3

    .line 235
    aget-object v2, p1, v1

    .line 236
    .local v2, text:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 237
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 238
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mSeparator:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 240
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 234
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 243
    .end local v2           #text:Ljava/lang/CharSequence;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getChargeInfo(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "icon"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 261
    const/4 v0, 0x0

    .line 262
    .local v0, string:Ljava/lang/CharSequence;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mShowingBatteryInfo:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mShowingMessage:Z

    if-nez v1, :cond_0

    .line 264
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mCharging:Z

    if-eqz v1, :cond_2

    .line 266
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mBatteryCharged:Z

    if-eqz v1, :cond_1

    const v1, 0x1040399

    :goto_0
    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mBatteryLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 269
    iput v5, p1, Llibcore/util/MutableInt;->value:I

    .line 281
    :cond_0
    :goto_1
    return-object v0

    .line 266
    :cond_1
    const v1, 0x1040398

    goto :goto_0

    .line 270
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mBatteryIsLow:Z

    if-eqz v1, :cond_3

    .line 272
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x104039b

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mBatteryLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 274
    iput v5, p1, Llibcore/util/MutableInt;->value:I

    goto :goto_1

    .line 275
    :cond_3
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mAlwaysShowBattery:Z

    if-eqz v1, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040038

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mBatteryLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 278
    iput v5, p1, Llibcore/util/MutableInt;->value:I

    goto :goto_1
.end method

.method private hideMessage(IZ)V
    .locals 5
    .parameter "duration"
    .parameter "thenUpdate"

    .prologue
    const/4 v4, 0x0

    .line 285
    if-lez p1, :cond_2

    .line 286
    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 287
    .local v0, anim:Landroid/animation/Animator;
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 288
    if-eqz p2, :cond_0

    .line 289
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 296
    :cond_0
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 303
    .end local v0           #anim:Landroid/animation/Animator;
    :cond_1
    :goto_0
    return-void

    .line 298
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->setAlpha(F)V

    .line 299
    if-eqz p2, :cond_1

    .line 300
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->update()V

    goto :goto_0
.end method

.method private showMessage(I)V
    .locals 5
    .parameter "duration"

    .prologue
    const/high16 v4, 0x3f80

    .line 306
    if-lez p1, :cond_0

    .line 307
    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 308
    .local v0, anim:Landroid/animation/Animator;
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 309
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 313
    .end local v0           #anim:Landroid/animation/Animator;
    :goto_0
    return-void

    .line 311
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->setAlpha(F)V

    goto :goto_0
.end method


# virtual methods
.method getCurrentMessage()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mShowingMessage:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getOwnerInfo()Ljava/lang/String;
    .locals 5

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 252
    .local v2, res:Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 253
    .local v0, info:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled()Z

    move-result v1

    .line 254
    .local v1, ownerInfoEnabled:Z
    if-eqz v1, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mShowingMessage:Z

    if-nez v3, :cond_0

    .line 255
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    .line 257
    :cond_0
    return-object v0
.end method

.method public securityMessageChanged()V
    .locals 7

    .prologue
    .line 203
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->setAlpha(F)V

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mShowingMessage:Z

    .line 205
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->update()V

    .line 206
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mClearMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 207
    iget-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mTimeout:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mClearMessageRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->ANNOUNCE_TOKEN:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 211
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$AnnounceRunnable;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$AnnounceRunnable;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->ANNOUNCE_TOKEN:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0xfa

    add-long/2addr v3, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 213
    return-void
.end method

.method update()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 223
    new-instance v0, Llibcore/util/MutableInt;

    invoke-direct {v0, v5}, Llibcore/util/MutableInt;-><init>(I)V

    .line 224
    .local v0, icon:Llibcore/util/MutableInt;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getChargeInfo(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getOwnerInfo()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getCurrentMessage()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 225
    .local v1, status:Ljava/lang/CharSequence;
    iget v2, v0, Llibcore/util/MutableInt;->value:I

    invoke-virtual {p0, v2, v5, v5, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 226
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->setText(Ljava/lang/CharSequence;)V

    .line 227
    return-void
.end method
