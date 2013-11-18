.class public Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;
.super Lcom/android/internal/policy/impl/keyguard/CarrierText;
.source "MSimCarrierText.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MSimCarrierText"


# instance fields
.field private mMSimCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private mPlmn:[Ljava/lang/CharSequence;

.field private mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

.field private mSpn:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/CarrierText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText$1;-><init>(Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->mMSimCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 70
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->initialize()V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->mPlmn:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->mSpn:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;)[Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0
.end method

.method private initialize()V
    .locals 2

    .prologue
    .line 58
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v0

    .line 59
    .local v0, numPhones:I
    new-array v1, v0, [Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->mPlmn:[Ljava/lang/CharSequence;

    .line 60
    new-array v1, v0, [Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->mSpn:[Ljava/lang/CharSequence;

    .line 61
    new-array v1, v0, [Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    .line 62
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->onAttachedToWindow()V

    .line 91
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->mMSimCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 92
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->onDetachedFromWindow()V

    .line 97
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->mMSimCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 98
    return-void
.end method

.method protected updateCarrierText([Lcom/android/internal/telephony/IccCardConstants$State;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .locals 7
    .parameter "simState"
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 74
    const-string v2, ""

    .line 75
    .local v2, text:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_3

    .line 76
    aget-object v3, p1, v1

    aget-object v4, p2, v1

    aget-object v5, p3, v1

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->getCarrierTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 77
    .local v0, displayText:Ljava/lang/CharSequence;
    sget-boolean v3, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->USE_UPPER_CASE:Z

    if-eqz v3, :cond_0

    .line 78
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 80
    :cond_0
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v2, v0

    .line 75
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    :cond_1
    const-string v0, ""

    goto :goto_1

    .line 80
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1040095

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 84
    .end local v0           #displayText:Ljava/lang/CharSequence;
    :cond_3
    const-string v3, "MSimCarrierText"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCarrierText: text = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->setText(Ljava/lang/CharSequence;)V

    .line 86
    return-void
.end method
