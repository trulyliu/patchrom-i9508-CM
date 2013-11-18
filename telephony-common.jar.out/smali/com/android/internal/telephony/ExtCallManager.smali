.class public Lcom/android/internal/telephony/ExtCallManager;
.super Lcom/android/internal/telephony/CallManager;
.source "ExtCallManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ExtCallManager$1;,
        Lcom/android/internal/telephony/ExtCallManager$ExtCmHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_LOCAL_CALL_HOLD:I = 0xca

.field private static final EVENT_VOICE_SYSTEM_ID:I = 0xc9

.field private static final LOCAL_MODEM:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "ExtCallManager"

.field private static final PROPERTY_VOICE_MODEM_INDEX:Ljava/lang/String; = "persist.radio.voice.modem.index"

.field private static final REMOTE_MODEM:I = 0x1

.field private static final VDBG:Z

.field private static mActiveSub:I


# instance fields
.field private final mActiveSubChangeRegistrants:Landroid/os/RegistrantList;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mLchStatus:[I

.field private vsidVoice:[J

.field private vsidVoiceDef:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/ExtCallManager;->mActiveSub:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 63
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;-><init>()V

    .line 82
    new-array v0, v1, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/telephony/ExtCallManager;->vsidVoiceDef:[J

    .line 84
    new-array v0, v1, [J

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/internal/telephony/ExtCallManager;->vsidVoice:[J

    .line 87
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/internal/telephony/ExtCallManager;->mLchStatus:[I

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/ExtCallManager;->mAudioManager:Landroid/media/AudioManager;

    .line 91
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ExtCallManager;->mActiveSubChangeRegistrants:Landroid/os/RegistrantList;

    .line 988
    return-void

    .line 82
    :array_0
    .array-data 0x8
        0x0t 0x10t 0xc0t 0x10t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x10t 0xdct 0x10t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x10t 0xdct 0x10t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 84
    :array_1
    .array-data 0x8
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 87
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/ExtCallManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/internal/telephony/ExtCallManager;->hasMoreThanOneRingingCall()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/ExtCallManager;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->handleEventVoiceSysId(Landroid/os/Message;)V

    return-void
.end method

.method private getAudioCallState(Lcom/android/internal/telephony/Call;)I
    .locals 3
    .parameter "call"

    .prologue
    .line 332
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 333
    .local v0, state:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v1

    .line 334
    .local v1, sub:I
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/ExtCallManager;->getAudioStateFromCallState(ILcom/android/internal/telephony/Call$State;)I

    move-result v2

    return v2
.end method

.method private getAudioStateFromCallState(ILcom/android/internal/telephony/Call$State;)I
    .locals 2
    .parameter "sub"
    .parameter "state"

    .prologue
    .line 311
    const/4 v0, 0x1

    .line 312
    .local v0, callState:I
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq p2, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq p2, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne p2, v1, :cond_2

    .line 314
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getActiveSubscription()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 315
    const/4 v0, 0x2

    .line 328
    :goto_0
    return v0

    .line 317
    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    .line 319
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne p2, v1, :cond_4

    .line 320
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getActiveSubscription()I

    move-result v1

    if-ne p1, v1, :cond_3

    .line 321
    const/4 v0, 0x3

    goto :goto_0

    .line 323
    :cond_3
    const/4 v0, 0x4

    goto :goto_0

    .line 326
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getFirstActiveCall(Ljava/util/ArrayList;I)Lcom/android/internal/telephony/Call;
    .locals 3
    .parameter
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;I)",
            "Lcom/android/internal/telephony/Call;"
        }
    .end annotation

    .prologue
    .line 914
    .local p1, calls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/Call;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 915
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v2

    if-eq v2, p2, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    instance-of v2, v2, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v2, :cond_0

    .line 920
    .end local v0           #call:Lcom/android/internal/telephony/Call;
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFirstCallOfState(Ljava/util/ArrayList;Lcom/android/internal/telephony/Call$State;I)Lcom/android/internal/telephony/Call;
    .locals 3
    .parameter
    .parameter "state"
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;",
            "Lcom/android/internal/telephony/Call$State;",
            "I)",
            "Lcom/android/internal/telephony/Call;"
        }
    .end annotation

    .prologue
    .line 928
    .local p1, calls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/Call;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 929
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    if-eq v2, p2, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v2

    if-eq v2, p3, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    instance-of v2, v2, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v2, :cond_0

    .line 935
    .end local v0           #call:Lcom/android/internal/telephony/Call;
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFirstNonIdleCall(Ljava/util/List;I)Lcom/android/internal/telephony/Call;
    .locals 5
    .parameter
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;I)",
            "Lcom/android/internal/telephony/Call;"
        }
    .end annotation

    .prologue
    .line 745
    .local p1, calls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    const/4 v2, 0x0

    .line 746
    .local v2, result:Lcom/android/internal/telephony/Call;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 747
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v3

    if-eq v3, p2, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    instance-of v3, v3, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v3, :cond_0

    .line 749
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_2

    .line 756
    .end local v0           #call:Lcom/android/internal/telephony/Call;
    :goto_1
    return-object v0

    .line 751
    .restart local v0       #call:Lcom/android/internal/telephony/Call;
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_0

    .line 752
    if-nez v2, :cond_0

    move-object v2, v0

    goto :goto_0

    .end local v0           #call:Lcom/android/internal/telephony/Call;
    :cond_3
    move-object v0, v2

    .line 756
    goto :goto_1
.end method

.method public static getInstance()Lcom/android/internal/telephony/CallManager;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/android/internal/telephony/ExtCallManager;->INSTANCE:Lcom/android/internal/telephony/CallManager;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/android/internal/telephony/ExtCallManager;

    invoke-direct {v0}, Lcom/android/internal/telephony/ExtCallManager;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/ExtCallManager;->INSTANCE:Lcom/android/internal/telephony/CallManager;

    .line 102
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/ExtCallManager;->INSTANCE:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method private getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 4
    .parameter "subscription"

    .prologue
    .line 117
    const/4 v1, 0x0

    .line 118
    .local v1, p:Lcom/android/internal/telephony/Phone;
    iget-object v3, p0, Lcom/android/internal/telephony/ExtCallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Phone;

    .line 119
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 120
    move-object v1, v2

    .line 124
    .end local v2           #phone:Lcom/android/internal/telephony/Phone;
    :cond_1
    return-object v1
.end method

.method private getVsid(Lcom/android/internal/telephony/Phone;I)J
    .locals 7
    .parameter "offHookPhone"
    .parameter "sub"

    .prologue
    .line 338
    const-wide/16 v1, 0x0

    .line 340
    .local v1, vsid:J
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 351
    const/4 v0, 0x0

    .line 353
    .local v0, voiceModemIndex:I
    sget-object v3, Lcom/android/internal/telephony/ExtCallManager;->sBaseband:Ljava/lang/String;

    const-string v4, "sglte"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/ExtCallManager;->sBaseband:Ljava/lang/String;

    const-string v4, "sglte2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 354
    :cond_0
    const-string v3, "persist.radio.voice.modem.index"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 358
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/ExtCallManager;->vsidVoice:[J

    aget-wide v3, v3, p2

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 359
    iget-object v3, p0, Lcom/android/internal/telephony/ExtCallManager;->vsidVoice:[J

    iget-object v4, p0, Lcom/android/internal/telephony/ExtCallManager;->vsidVoiceDef:[J

    aget-wide v4, v4, v0

    aput-wide v4, v3, p2

    .line 361
    :cond_2
    const-string v3, "ExtCallManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVsid modem index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " vsid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/ExtCallManager;->vsidVoice:[J

    aget-wide v5, v5, p2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "sub = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v3, p0, Lcom/android/internal/telephony/ExtCallManager;->vsidVoice:[J

    aget-wide v1, v3, p2

    .line 366
    .end local v0           #voiceModemIndex:I
    :goto_0
    return-wide v1

    .line 344
    :pswitch_0
    const-string v3, "ExtCallManager"

    const-string v4, "getVsid for SIP"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 347
    :pswitch_1
    const-wide/32 v1, 0x10c02000

    .line 348
    const-string v3, "ExtCallManager"

    const-string v4, "getVsid for IMS"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 340
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleEventVoiceSysId(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 641
    const/4 v1, -0x1

    .line 643
    .local v1, sub:I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 644
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 645
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 646
    iget-object v3, p0, Lcom/android/internal/telephony/ExtCallManager;->vsidVoice:[J

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->longValue()J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 647
    const-string v2, "ExtCallManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Voice System ID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/ExtCallManager;->vsidVoice:[J

    aget-wide v4, v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sub = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_0
    return-void
.end method

.method private hasMoreThanOneHoldingCall(I)Z
    .locals 6
    .parameter "subscription"

    .prologue
    const/4 v3, 0x1

    .line 967
    const/4 v1, 0x0

    .line 968
    .local v1, count:I
    iget-object v4, p0, Lcom/android/internal/telephony/ExtCallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 969
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v4

    if-eq v4, p1, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    instance-of v4, v4, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v4, :cond_0

    .line 972
    :cond_1
    add-int/lit8 v1, v1, 0x1

    if-le v1, v3, :cond_0

    .line 975
    .end local v0           #call:Lcom/android/internal/telephony/Call;
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private hasMoreThanOneRingingCall()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 946
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getActiveSubscription()I

    move-result v3

    .line 947
    .local v3, subscription:I
    const/4 v1, 0x0

    .line 949
    .local v1, count:I
    iget-object v5, p0, Lcom/android/internal/telephony/ExtCallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 950
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v5

    if-eq v5, v3, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    instance-of v5, v5, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v5, :cond_0

    .line 953
    :cond_1
    add-int/lit8 v1, v1, 0x1

    if-le v1, v4, :cond_0

    .line 956
    .end local v0           #call:Lcom/android/internal/telephony/Call;
    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private setAudioParameters(I)V
    .locals 9
    .parameter "sub"

    .prologue
    .line 370
    const-wide/16 v4, 0x0

    .line 371
    .local v4, vsid:J
    const/4 v2, 0x1

    .line 373
    .local v2, newCallState:I
    iget-object v6, p0, Lcom/android/internal/telephony/ExtCallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Phone;

    .line 374
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v6

    if-ne v6, p1, :cond_0

    .line 375
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 377
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 380
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 383
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ExtCallManager;->getAudioCallState(Lcom/android/internal/telephony/Call;)I

    move-result v2

    .line 384
    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/ExtCallManager;->getVsid(Lcom/android/internal/telephony/Phone;I)J

    move-result-wide v4

    .line 386
    const-string v6, "ExtCallManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setAudioParams callstate="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " vsid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-direct {p0, v4, v5, v2}, Lcom/android/internal/telephony/ExtCallManager;->setAudioStateParam(JI)V

    goto :goto_0

    .line 390
    .end local v0           #call:Lcom/android/internal/telephony/Call;
    .end local v3           #phone:Lcom/android/internal/telephony/Phone;
    :cond_2
    return-void
.end method

.method private setAudioStateParam(JI)V
    .locals 4
    .parameter "vsid"
    .parameter "state"

    .prologue
    .line 298
    iget-object v1, p0, Lcom/android/internal/telephony/ExtCallManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 299
    const-string v1, "ExtCallManager"

    const-string v2, " Audio Service is null!! "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :goto_0
    return-void

    .line 302
    :cond_0
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vsid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "call_state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 305
    .local v0, keyValPairs:Ljava/lang/String;
    const-string v1, "ExtCallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting audio state to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v1, p0, Lcom/android/internal/telephony/ExtCallManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateLchStatus(I)V
    .locals 7
    .parameter "sub"

    .prologue
    .line 266
    const/4 v1, 0x0

    .line 267
    .local v1, lchStatus:I
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getFgPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 268
    .local v2, offHookPhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 270
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getActiveFgCallState(I)Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_0

    .line 273
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getBgPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 274
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 276
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    .line 278
    .local v3, state:Lcom/android/internal/telephony/Call$State;
    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_1

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_1

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getActiveSubscription()I

    move-result v4

    if-eq p1, v4, :cond_2

    .line 282
    const/4 v1, 0x1

    .line 285
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/ExtCallManager;->mLchStatus:[I

    aget v4, v4, p1

    if-eq v1, v4, :cond_4

    .line 286
    const-string v4, "ExtCallManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " setLocal Call Hold to  = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getActiveSubscription()I

    move-result v4

    if-eq v4, p1, :cond_3

    .line 289
    const-string v4, "ExtCallManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set parameters for Lch sub = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->setAudioParameters(I)V

    .line 292
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/ExtCallManager;->mHandler:Lcom/android/internal/telephony/CallManager$CmHandler;

    const/16 v5, 0xca

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/CallManager$CmHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Lcom/android/internal/telephony/Phone;->setLocalCallHold(ILandroid/os/Message;)V

    .line 293
    iget-object v4, p0, Lcom/android/internal/telephony/ExtCallManager;->mLchStatus:[I

    aput v1, v4, p1

    .line 295
    :cond_4
    return-void
.end method


# virtual methods
.method public canConference(Lcom/android/internal/telephony/Call;I)Z
    .locals 4
    .parameter "heldCall"
    .parameter "subscription"

    .prologue
    .line 537
    const/4 v0, 0x0

    .line 538
    .local v0, activePhone:Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    .line 540
    .local v1, heldPhone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/ExtCallManager;->hasActiveFgCall(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 541
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/ExtCallManager;->getActiveFgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 544
    :cond_0
    if-eqz p1, :cond_1

    .line 545
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 548
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public canTransfer(Lcom/android/internal/telephony/Call;I)Z
    .locals 3
    .parameter "heldCall"
    .parameter "subscription"

    .prologue
    .line 625
    const/4 v0, 0x0

    .line 626
    .local v0, activePhone:Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    .line 628
    .local v1, heldPhone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/ExtCallManager;->hasActiveFgCall(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 629
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/ExtCallManager;->getActiveFgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 632
    :cond_0
    if-eqz p1, :cond_1

    .line 633
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 636
    :cond_1
    if-ne v1, v0, :cond_2

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canTransfer()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public clearDisconnected()V
    .locals 1

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getActiveSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ExtCallManager;->clearDisconnected(I)V

    .line 604
    return-void
.end method

.method public clearDisconnected(I)V
    .locals 3
    .parameter "subscription"

    .prologue
    .line 612
    iget-object v2, p0, Lcom/android/internal/telephony/ExtCallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 613
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 614
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    goto :goto_0

    .line 617
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    :cond_1
    return-void
.end method

.method public conference(Lcom/android/internal/telephony/Call;)V
    .locals 4
    .parameter "heldCall"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 562
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v1

    .line 569
    .local v1, subscription:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ExtCallManager;->getFgPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 570
    .local v0, fgPhone:Lcom/android/internal/telephony/Phone;
    instance-of v2, v0, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v2, :cond_0

    .line 571
    check-cast v0, Lcom/android/internal/telephony/sip/SipPhone;

    .end local v0           #fgPhone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/sip/SipPhone;->conference(Lcom/android/internal/telephony/Call;)V

    .line 583
    :goto_0
    return-void

    .line 572
    .restart local v0       #fgPhone:Lcom/android/internal/telephony/Phone;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->canConference(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 573
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->conference()V

    goto :goto_0

    .line 575
    :cond_1
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "Can\'t conference foreground and selected background call"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;I[Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "phone"
    .parameter "dialString"
    .parameter "callType"
    .parameter "extras"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 598
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/CallManager;->dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;I[Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public getActiveFgCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 727
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getActiveSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ExtCallManager;->getActiveFgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getActiveFgCall(I)Lcom/android/internal/telephony/Call;
    .locals 3
    .parameter "subscription"

    .prologue
    .line 732
    iget-object v2, p0, Lcom/android/internal/telephony/ExtCallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/ExtCallManager;->getFirstNonIdleCall(Ljava/util/List;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 733
    .local v0, call:Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_0

    .line 734
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 735
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 739
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    :cond_0
    :goto_0
    return-object v0

    .line 735
    .restart local v1       #phone:Lcom/android/internal/telephony/Phone;
    :cond_1
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_0
.end method

.method public getActiveFgCallState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .prologue
    .line 843
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getActiveSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ExtCallManager;->getActiveFgCallState(I)Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    return-object v0
.end method

.method public getActiveFgCallState(I)Lcom/android/internal/telephony/Call$State;
    .locals 2
    .parameter "subscription"

    .prologue
    .line 848
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getActiveFgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 850
    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 851
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 854
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    goto :goto_0
.end method

.method public getActiveSubscription()I
    .locals 1

    .prologue
    .line 259
    sget v0, Lcom/android/internal/telephony/ExtCallManager;->mActiveSub:I

    return v0
.end method

.method public getBgCallConnections(I)Ljava/util/List;
    .locals 2
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 874
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getFirstActiveBgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 875
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 876
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 878
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ExtCallManager;->mEmptyConnections:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getBgPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 223
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getFirstActiveBgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getFgCallConnections(I)Ljava/util/List;
    .locals 2
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 862
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getActiveFgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 863
    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 864
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 866
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ExtCallManager;->mEmptyConnections:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getFgCallLatestConnection(I)Lcom/android/internal/telephony/Connection;
    .locals 2
    .parameter "subscription"

    .prologue
    .line 887
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getActiveFgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 888
    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 889
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 891
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFgPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 214
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getActiveFgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getFirstActiveBgCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 774
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getActiveSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ExtCallManager;->getFirstActiveBgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getFirstActiveBgCall(I)Lcom/android/internal/telephony/Call;
    .locals 3
    .parameter "subscription"

    .prologue
    .line 793
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 794
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->hasMoreThanOneHoldingCall(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 795
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 803
    :cond_0
    :goto_0
    return-object v0

    .line 797
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/ExtCallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/ExtCallManager;->getFirstNonIdleCall(Ljava/util/List;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 798
    .local v0, call:Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_0

    .line 799
    if-nez v1, :cond_2

    const/4 v0, 0x0

    :goto_1
    goto :goto_0

    :cond_2
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_1
.end method

.method public getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 822
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getActiveSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ExtCallManager;->getFirstActiveRingingCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getFirstActiveRingingCall(I)Lcom/android/internal/telephony/Call;
    .locals 3
    .parameter "subscription"

    .prologue
    .line 827
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 828
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    iget-object v2, p0, Lcom/android/internal/telephony/ExtCallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/ExtCallManager;->getFirstNonIdleCall(Ljava/util/List;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 829
    .local v0, call:Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_0

    .line 830
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 834
    :cond_0
    :goto_0
    return-object v0

    .line 830
    :cond_1
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_0
.end method

.method public getOtherActiveSub(I)I
    .locals 6
    .parameter "subscription"

    .prologue
    .line 503
    const/4 v2, -0x1

    .line 504
    .local v2, otherSub:I
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v0

    .line 506
    .local v0, count:I
    const-string v3, "ExtCallManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "is other sub active = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 508
    const-string v3, "ExtCallManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Count ** "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    if-eq v1, p1, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ExtCallManager;->getState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v3, v4, :cond_1

    .line 510
    const-string v3, "ExtCallManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got other active sub  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    move v2, v1

    .line 515
    :cond_0
    return v2

    .line 507
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getPhoneInCall(I)Lcom/android/internal/telephony/Phone;
    .locals 2
    .parameter "subscription"

    .prologue
    .line 237
    const/4 v0, 0x0

    .line 238
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getFirstActiveRingingCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-nez v1, :cond_0

    .line 239
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getFirstActiveRingingCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 246
    :goto_0
    return-object v0

    .line 240
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getActiveFgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-nez v1, :cond_1

    .line 241
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getActiveFgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    goto :goto_0

    .line 244
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getFirstActiveBgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    goto :goto_0
.end method

.method public getRingingPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 232
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getFirstActiveRingingCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getServiceState(I)I
    .locals 7
    .parameter "subscription"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 165
    const/4 v2, 0x1

    .line 167
    .local v2, resultState:I
    iget-object v4, p0, Lcom/android/internal/telephony/ExtCallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 168
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 169
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 170
    .local v3, serviceState:I
    if-nez v3, :cond_2

    .line 172
    move v2, v3

    .line 188
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    .end local v3           #serviceState:I
    :cond_1
    return v2

    .line 174
    .restart local v1       #phone:Lcom/android/internal/telephony/Phone;
    .restart local v3       #serviceState:I
    :cond_2
    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 177
    if-eq v2, v5, :cond_3

    if-ne v2, v6, :cond_0

    .line 179
    :cond_3
    move v2, v3

    goto :goto_0

    .line 181
    :cond_4
    if-ne v3, v5, :cond_0

    .line 182
    if-ne v2, v6, :cond_0

    .line 183
    move v2, v3

    goto :goto_0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getActiveSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ExtCallManager;->getState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    return-object v0
.end method

.method public getState(I)Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 5
    .parameter "subscription"

    .prologue
    .line 146
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 148
    .local v2, s:Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v3, p0, Lcom/android/internal/telephony/ExtCallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 149
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 150
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_1

    .line 151
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 152
    :cond_1
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_0

    .line 153
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 157
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    :cond_2
    return-object v2
.end method

.method public hasActiveBgCall()Z
    .locals 1

    .prologue
    .line 683
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getActiveSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ExtCallManager;->hasActiveBgCall(I)Z

    move-result v0

    return v0
.end method

.method public hasActiveBgCall(I)Z
    .locals 1
    .parameter "subscription"

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/internal/telephony/ExtCallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getFirstActiveCall(Ljava/util/ArrayList;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasActiveFgCall()Z
    .locals 1

    .prologue
    .line 657
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getActiveSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ExtCallManager;->hasActiveFgCall(I)Z

    move-result v0

    return v0
.end method

.method public hasActiveFgCall(I)Z
    .locals 1
    .parameter "subscription"

    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/internal/telephony/ExtCallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getFirstActiveCall(Ljava/util/ArrayList;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasActiveFgCallAnyPhone()Z
    .locals 1

    .prologue
    .line 674
    invoke-super {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    return v0
.end method

.method public hasActiveRingingCall()Z
    .locals 1

    .prologue
    .line 704
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getActiveSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ExtCallManager;->hasActiveRingingCall(I)Z

    move-result v0

    return v0
.end method

.method public hasActiveRingingCall(I)Z
    .locals 1
    .parameter "subscription"

    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/internal/telephony/ExtCallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getFirstActiveCall(Ljava/util/ArrayList;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDisconnectedBgCall(I)Z
    .locals 2
    .parameter "subscription"

    .prologue
    .line 906
    iget-object v0, p0, Lcom/android/internal/telephony/ExtCallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/ExtCallManager;->getFirstCallOfState(Ljava/util/ArrayList;Lcom/android/internal/telephony/Call$State;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDisconnectedFgCall(I)Z
    .locals 2
    .parameter "subscription"

    .prologue
    .line 898
    iget-object v0, p0, Lcom/android/internal/telephony/ExtCallManager;->mForegroundCalls:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/ExtCallManager;->getFirstCallOfState(Ljava/util/ArrayList;Lcom/android/internal/telephony/Call$State;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initHandler()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/internal/telephony/ExtCallManager;->mHandler:Lcom/android/internal/telephony/CallManager$CmHandler;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcom/android/internal/telephony/ExtCallManager$ExtCmHandler;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ExtCallManager$ExtCmHandler;-><init>(Lcom/android/internal/telephony/ExtCallManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ExtCallManager;->mHandler:Lcom/android/internal/telephony/CallManager$CmHandler;

    .line 110
    :cond_0
    return-void
.end method

.method protected registerForPhoneStates(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .parameter "phone"

    .prologue
    .line 484
    invoke-super {p0, p1}, Lcom/android/internal/telephony/CallManager;->registerForPhoneStates(Lcom/android/internal/telephony/Phone;)V

    .line 486
    iget-object v0, p0, Lcom/android/internal/telephony/ExtCallManager;->mHandler:Lcom/android/internal/telephony/CallManager$CmHandler;

    const/16 v1, 0xc9

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForUnsolVoiceSystemId(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 488
    return-void
.end method

.method public registerForSubscriptionChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 980
    iget-object v0, p0, Lcom/android/internal/telephony/ExtCallManager;->mActiveSubChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 981
    return-void
.end method

.method public registerPhone(Lcom/android/internal/telephony/Phone;)Z
    .locals 3
    .parameter "phone"

    .prologue
    .line 198
    invoke-super {p0, p1}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    .line 200
    .local v1, retVal:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 201
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/ExtCallManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v2, :cond_0

    .line 202
    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/internal/telephony/ExtCallManager;->mAudioManager:Landroid/media/AudioManager;

    .line 205
    :cond_0
    return v1
.end method

.method public setActiveSubscription(I)V
    .locals 4
    .parameter "subscription"

    .prologue
    const/4 v3, 0x0

    .line 251
    const-string v0, "ExtCallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setActiveSubscription existing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/ExtCallManager;->mActiveSub:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "new = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    sput p1, Lcom/android/internal/telephony/ExtCallManager;->mActiveSub:I

    .line 253
    iget-object v0, p0, Lcom/android/internal/telephony/ExtCallManager;->mActiveSubChangeRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    sget v2, Lcom/android/internal/telephony/ExtCallManager;->mActiveSub:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 254
    return-void
.end method

.method public setAudioMode()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 395
    iget-object v5, p0, Lcom/android/internal/telephony/ExtCallManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v5, :cond_0

    .line 396
    const-string v5, "ExtCallManager"

    const-string v6, "setAudioMode: Audio Service is null!! "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :goto_0
    return-void

    .line 400
    :cond_0
    const/4 v1, 0x0

    .line 401
    .local v1, mode:I
    sget-object v5, Lcom/android/internal/telephony/ExtCallManager$1;->$SwitchMap$com$android$internal$telephony$PhoneConstants$State:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 460
    :cond_1
    :goto_1
    const-string v5, "ExtCallManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setAudioMode State = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 404
    :pswitch_0
    iget-object v5, p0, Lcom/android/internal/telephony/ExtCallManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getMode()I

    move-result v5

    if-eq v5, v9, :cond_1

    .line 406
    iget-object v5, p0, Lcom/android/internal/telephony/ExtCallManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    if-lez v5, :cond_2

    .line 407
    const-string v5, "ExtCallManager"

    const-string v6, "requestAudioFocus on STREAM_RING"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v5, p0, Lcom/android/internal/telephony/ExtCallManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v7, v7}, Landroid/media/AudioManager;->requestAudioFocusForCall(II)V

    .line 411
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/ExtCallManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v9}, Landroid/media/AudioManager;->setMode(I)V

    .line 412
    const-string v5, "ExtCallManager"

    const-string v6, "setAudioMode RINGING"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 416
    :pswitch_1
    const/4 v4, 0x0

    .local v4, sub:I
    :goto_2
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 418
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ExtCallManager;->updateLchStatus(I)V

    .line 416
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 420
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getActiveSubscription()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ExtCallManager;->setAudioParameters(I)V

    .line 422
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 423
    .local v3, offHookPhone:Lcom/android/internal/telephony/Phone;
    const/4 v2, 0x2

    .line 426
    .local v2, newAudioMode:I
    instance-of v5, v3, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v5, :cond_4

    .line 428
    const-string v5, "ExtCallManager"

    const-string v6, "setAudioMode Set audio mode for SIP call!"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const/4 v2, 0x3

    .line 434
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/ExtCallManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    .line 435
    .local v0, currMode:I
    if-eq v0, v2, :cond_1

    .line 437
    iget-object v5, p0, Lcom/android/internal/telephony/ExtCallManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v8, v7}, Landroid/media/AudioManager;->requestAudioFocusForCall(II)V

    .line 439
    const-string v5, "ExtCallManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setAudioMode Setting audio mode from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v5, p0, Lcom/android/internal/telephony/ExtCallManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v2}, Landroid/media/AudioManager;->setMode(I)V

    goto/16 :goto_1

    .line 446
    .end local v0           #currMode:I
    .end local v2           #newAudioMode:I
    .end local v3           #offHookPhone:Lcom/android/internal/telephony/Phone;
    .end local v4           #sub:I
    :pswitch_2
    iget-object v5, p0, Lcom/android/internal/telephony/ExtCallManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getMode()I

    move-result v5

    if-eqz v5, :cond_1

    .line 447
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getActiveSubscription()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ExtCallManager;->setAudioParameters(I)V

    .line 448
    const/4 v4, 0x0

    .restart local v4       #sub:I
    :goto_3
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 450
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ExtCallManager;->updateLchStatus(I)V

    .line 449
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 453
    :cond_5
    iget-object v5, p0, Lcom/android/internal/telephony/ExtCallManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v8}, Landroid/media/AudioManager;->setMode(I)V

    .line 454
    const-string v5, "ExtCallManager"

    const-string v6, "abandonAudioFocus"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v5, p0, Lcom/android/internal/telephony/ExtCallManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->abandonAudioFocusForCall()V

    goto/16 :goto_1

    .line 401
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setCallAudioDrivers(ILcom/android/internal/telephony/Call$State;)V
    .locals 7
    .parameter "phoneType"
    .parameter "state"

    .prologue
    .line 468
    const-string v4, "ExtCallManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setCallAudioDrivers for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    if-nez p1, :cond_0

    .line 470
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result p1

    .line 472
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/ExtCallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 473
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 474
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v4

    invoke-direct {p0, v1, v4}, Lcom/android/internal/telephony/ExtCallManager;->getVsid(Lcom/android/internal/telephony/Phone;I)J

    move-result-wide v2

    .line 475
    .local v2, vsid:J
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v4

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/ExtCallManager;->getAudioStateFromCallState(ILcom/android/internal/telephony/Call$State;)I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/telephony/ExtCallManager;->setAudioStateParam(JI)V

    .line 480
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    .end local v2           #vsid:J
    :cond_2
    return-void
.end method

.method public switchToLocalHold(IZ)V
    .locals 4
    .parameter "subscription"
    .parameter "switchTo"

    .prologue
    .line 520
    const/4 v0, 0x0

    .line 521
    .local v0, activePhone:Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    .line 523
    .local v1, heldPhone:Lcom/android/internal/telephony/Phone;
    const-string v2, "ExtCallManager"

    const-string v3, " switchToLocalHold update audio state"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->setAudioMode()V

    .line 527
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1027
    .local v0, b:Ljava/lang/StringBuilder;
    const-string v5, "ExtCallManager {"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1028
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 1029
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\nSUB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1030
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\nstate = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ExtCallManager;->getState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1031
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ExtCallManager;->getActiveFgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 1032
    .local v1, call:Lcom/android/internal/telephony/Call;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n- Foreground: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ExtCallManager;->getActiveFgCallState(I)Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1033
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1034
    const-string v5, "\n  Conn: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ExtCallManager;->getFgCallConnections(I)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1035
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ExtCallManager;->getFirstActiveBgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 1036
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n- Background: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1037
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1038
    const-string v5, "\n  Conn: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ExtCallManager;->getBgCallConnections(I)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1039
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ExtCallManager;->getFirstActiveRingingCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 1040
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n- Ringing: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1041
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1028
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1044
    .end local v1           #call:Lcom/android/internal/telephony/Call;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getAllPhones()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Phone;

    .line 1045
    .local v4, phone:Lcom/android/internal/telephony/Phone;
    if-eqz v4, :cond_1

    .line 1046
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\nPhone: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1048
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 1049
    .restart local v1       #call:Lcom/android/internal/telephony/Call;
    const-string v5, "\n- Foreground: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1050
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 1051
    const-string v5, " Background: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1052
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 1053
    const-string v5, " Ringing: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1056
    .end local v1           #call:Lcom/android/internal/telephony/Call;
    .end local v4           #phone:Lcom/android/internal/telephony/Phone;
    :cond_2
    const-string v5, "\n}"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1057
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method protected unregisterForPhoneStates(Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .parameter "phone"

    .prologue
    .line 492
    invoke-super {p0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForPhoneStates(Lcom/android/internal/telephony/Phone;)V

    .line 494
    iget-object v0, p0, Lcom/android/internal/telephony/ExtCallManager;->mHandler:Lcom/android/internal/telephony/CallManager$CmHandler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForUnsolVoiceSystemId(Landroid/os/Handler;)V

    .line 495
    return-void
.end method

.method public unregisterForSubscriptionChange(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 985
    iget-object v0, p0, Lcom/android/internal/telephony/ExtCallManager;->mActiveSubChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 986
    return-void
.end method
