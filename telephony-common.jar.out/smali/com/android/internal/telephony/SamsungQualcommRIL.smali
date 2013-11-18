.class public Lcom/android/internal/telephony/SamsungQualcommRIL;
.super Lcom/android/internal/telephony/QualcommMSIM42RIL;
.source "SamsungQualcommRIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# static fields
.field public static final SEND_SMS_TIMEOUT_IN_MS:J = 0x7530L


# instance fields
.field private driverCall:Z

.field private googleEditionSS:Z

.field private hasTdScdmaSignalStrength:Z

.field private homeOperator:Ljava/lang/String;

.field private isGSM:Z

.field private lastKnownOfGood:[Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mIsSendingSMS:Z

.field private mSMSLock:Ljava/lang/Object;

.field private oldRilState:Z

.field private operator:Ljava/lang/String;

.field private passedCheck:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 4
    .parameter "context"
    .parameter "networkMode"
    .parameter "cdmaSubscription"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/QualcommMSIM42RIL;-><init>(Landroid/content/Context;II)V

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mSMSLock:Ljava/lang/Object;

    .line 65
    iput-boolean v1, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mIsSendingSMS:Z

    .line 66
    iput-boolean v1, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->isGSM:Z

    .line 67
    iput-boolean v3, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->passedCheck:Z

    .line 69
    const-string v0, "ro.cdma.home.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->homeOperator:Ljava/lang/String;

    .line 70
    const-string v0, "ro.cdma.home.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->operator:Ljava/lang/String;

    .line 71
    const-string v0, "exynos4RadioState"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SamsungQualcommRIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->oldRilState:Z

    .line 72
    const-string v0, "googleEditionSS"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SamsungQualcommRIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->googleEditionSS:Z

    .line 73
    const-string v0, "newDriverCall"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SamsungQualcommRIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->driverCall:Z

    .line 74
    const-string v0, "TdScdmaSignalStrength"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SamsungQualcommRIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->hasTdScdmaSignalStrength:Z

    .line 75
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v1

    aput-object v2, v0, v3

    const/4 v1, 0x2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->lastKnownOfGood:[Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mAudioManager:Landroid/media/AudioManager;

    .line 80
    return-void
.end method

.method private handleNitzTimeReceived(Landroid/os/Parcel;)V
    .locals 13
    .parameter "p"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 705
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 710
    .local v2, nitz:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 712
    .local v4, nitzReceiveTime:J
    new-array v6, v11, [Ljava/lang/Object;

    .line 714
    .local v6, result:[Ljava/lang/Object;
    move-object v0, v2

    .line 715
    .local v0, fixedNitz:Ljava/lang/String;
    const-string v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 716
    .local v3, nitzParts:[Ljava/lang/String;
    array-length v7, v3

    const/4 v8, 0x4

    if-ne v7, v8, :cond_0

    .line 718
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v3, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v3, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v3, v11

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 721
    :cond_0
    aput-object v0, v6, v9

    .line 722
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v10

    .line 724
    const-string v7, "telephony.test.ignore.nitz"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 727
    .local v1, ignoreNitz:Z
    if-eqz v1, :cond_1

    .line 728
    const-string v7, "ignoring UNSOL_NITZ_TIME_RECEIVED"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/SamsungQualcommRIL;->riljLog(Ljava/lang/String;)V

    .line 738
    :goto_0
    return-void

    .line 730
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mNITZTimeRegistrant:Landroid/os/Registrant;

    if-eqz v7, :cond_2

    .line 731
    iget-object v7, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mNITZTimeRegistrant:Landroid/os/Registrant;

    new-instance v8, Landroid/os/AsyncResult;

    invoke-direct {v8, v12, v6, v12}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v7, v8}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 735
    :cond_2
    iput-object v6, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mLastNITZTimeInfo:Ljava/lang/Object;

    goto :goto_0
.end method

.method private operatorCheck(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .parameter "p"

    .prologue
    .line 561
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object v1, v2

    check-cast v1, [Ljava/lang/String;

    .line 562
    .local v1, response:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_7

    .line 563
    aget-object v2, v1, v0

    if-eqz v2, :cond_6

    .line 564
    const/4 v2, 0x2

    if-ge v0, v2, :cond_4

    .line 565
    aget-object v2, v1, v0

    const-string v3, "       Empty"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    aget-object v2, v1, v0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->isGSM:Z

    if-nez v2, :cond_3

    .line 566
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->operator:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 581
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->lastKnownOfGood:[Ljava/lang/String;

    aget-object v3, v1, v0

    aput-object v3, v2, v0

    .line 562
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 567
    :cond_3
    aget-object v2, v1, v0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 569
    :try_start_0
    aget-object v2, v1, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 570
    aget-object v2, v1, v0

    invoke-static {v2}, Lcom/android/internal/telephony/Operators;->operatorReplace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 572
    if-nez v0, :cond_1

    .line 573
    add-int/lit8 v2, v0, 0x1

    aget-object v3, v1, v0

    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 574
    :catch_0
    move-exception v2

    goto :goto_1

    .line 578
    :cond_4
    aget-object v2, v1, v0

    const-string v3, "31000"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    aget-object v2, v1, v0

    const-string v3, "11111"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    aget-object v2, v1, v0

    const-string v3, "123456"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    aget-object v2, v1, v0

    const-string v3, "31099"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    aget-object v2, v1, v0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->isGSM:Z

    if-nez v2, :cond_1

    .line 579
    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->homeOperator:Ljava/lang/String;

    aput-object v2, v1, v0

    goto :goto_1

    .line 583
    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->lastKnownOfGood:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    .line 584
    iget-object v2, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->lastKnownOfGood:[Ljava/lang/String;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    goto :goto_2

    .line 587
    :cond_7
    return-object v1
.end method

.method private responseVoiceDataRegistrationState(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5
    .parameter "p"

    .prologue
    .line 592
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v2, v3

    check-cast v2, [Ljava/lang/String;

    .line 593
    .local v2, response:[Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->isGSM:Z

    if-eqz v3, :cond_1

    .line 610
    :cond_0
    return-object v2

    .line 596
    :cond_1
    array-length v3, v2

    const/16 v4, 0xa

    if-lt v3, v4, :cond_0

    .line 597
    const/4 v1, 0x6

    .local v1, i:I
    :goto_0
    const/16 v3, 0x9

    if-gt v1, v3, :cond_0

    .line 598
    aget-object v3, v2, v1

    if-nez v3, :cond_2

    .line 599
    const v3, 0x7fffffff

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 597
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 602
    :cond_2
    :try_start_0
    aget-object v3, v2, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 603
    :catch_0
    move-exception v0

    .line 604
    .local v0, e:Ljava/lang/NumberFormatException;
    aget-object v3, v2, v1

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    goto :goto_1
.end method

.method public static s([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "a"

    .prologue
    .line 615
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 617
    .local v1, result:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 618
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 619
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 617
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 621
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private setWbAmr(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 634
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 635
    const-string v0, "RILJ"

    const-string v1, "setWbAmr(): setting audio parameter - wb_amr=on"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iget-object v0, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "wide_voice_enable=true"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 642
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->passedCheck:Z

    if-eqz v0, :cond_1

    .line 643
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->passedCheck:Z

    .line 644
    :cond_1
    return-void

    .line 637
    :cond_2
    if-nez p1, :cond_0

    .line 638
    const-string v0, "RILJ"

    const-string v1, "setWbAmr(): setting audio parameter - wb_amr=on"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object v0, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "wide_voice_enable=false"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private smsLock()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    .line 168
    iget-object v5, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mSMSLock:Ljava/lang/Object;

    monitor-enter v5

    .line 169
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x7530

    add-long v0, v6, v8

    .line 170
    .local v0, timeoutTime:J
    const-wide/16 v2, 0x7530

    .line 171
    .local v2, waitTimeLeft:J
    :goto_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mIsSendingSMS:Z

    if-eqz v4, :cond_0

    cmp-long v4, v2, v10

    if-lez v4, :cond_0

    .line 172
    const-string v4, "RILJ"

    const-string v6, "sendSMS() waiting for response of previous SEND_SMS"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mSMSLock:Ljava/lang/Object;

    invoke-virtual {v4, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 178
    :goto_1
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v2, v0, v6

    goto :goto_0

    .line 180
    :cond_0
    cmp-long v4, v2, v10

    if-gtz v4, :cond_1

    .line 181
    const-string v4, "RILJ"

    const-string v6, "sendSms() timed out waiting for response of previous CDMA_SEND_SMS"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mIsSendingSMS:Z

    .line 184
    monitor-exit v5

    .line 186
    return-void

    .line 184
    .end local v0           #timeoutTime:J
    .end local v2           #waitTimeLeft:J
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 175
    .restart local v0       #timeoutTime:J
    .restart local v2       #waitTimeLeft:J
    :catch_0
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method protected getRadioStateFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioState;
    .locals 4
    .parameter "stateInt"

    .prologue
    .line 229
    iget-boolean v1, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->oldRilState:Z

    if-nez v1, :cond_0

    .line 230
    invoke-super {p0, p1}, Lcom/android/internal/telephony/QualcommMSIM42RIL;->getRadioStateFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 234
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 255
    :pswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized RIL_RadioState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 235
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 258
    .local v0, state:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :goto_0
    return-object v0

    .line 237
    .end local v0           #state:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .restart local v0       #state:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_0

    .line 241
    .end local v0           #state:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :pswitch_3
    const-string v1, "RILJ"

    const-string v2, "SIM is PIN-unlocked now"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v1, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_1

    .line 243
    iget-object v1, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 252
    :cond_1
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .restart local v0       #state:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_0

    .line 234
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected notifyRegistrantsCdmaInfoRec(Lcom/android/internal/telephony/cdma/CdmaInformationRecords;)V
    .locals 6
    .parameter "infoRec"

    .prologue
    const/16 v5, 0x403

    .line 683
    const/16 v0, 0x403

    .line 685
    .local v0, response:I
    iget-object v2, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    if-eqz v2, :cond_0

    .line 686
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    .line 687
    .local v1, sir:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->isPresent:Z

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->signalType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget v2, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->alertPitch:I

    if-nez v2, :cond_0

    iget v2, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->signal:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 693
    const-string v2, "RILJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dropping \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v5}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v5, v1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" to prevent \"ring of death\" bug."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    .end local v1           #sir:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;
    :goto_0
    return-void

    .line 700
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/QualcommMSIM42RIL;->notifyRegistrantsCdmaInfoRec(Lcom/android/internal/telephony/cdma/CdmaInformationRecords;)V

    goto :goto_0
.end method

.method protected processSolicited(Landroid/os/Parcel;)V
    .locals 10
    .parameter "p"

    .prologue
    const/4 v9, 0x0

    .line 337
    const/4 v1, 0x0

    .line 339
    .local v1, found:Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 340
    .local v4, serial:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 344
    .local v0, error:I
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SamsungQualcommRIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 346
    .local v3, rr:Lcom/android/internal/telephony/RILRequest;
    if-nez v3, :cond_0

    .line 347
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected solicited response! sn: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :goto_0
    return-void

    .line 352
    :cond_0
    const/4 v2, 0x0

    .line 354
    .local v2, ret:Ljava/lang/Object;
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v6

    if-lez v6, :cond_3

    .line 356
    :cond_1
    :try_start_0
    iget v6, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    packed-switch v6, :pswitch_data_0

    .line 491
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognized solicited response: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    :catch_0
    move-exception v5

    .line 496
    .local v5, tr:Ljava/lang/Throwable;
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "< "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v8}, Lcom/android/internal/telephony/SamsungQualcommRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " exception, possible invalid RIL response"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 500
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v6, :cond_2

    .line 501
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v6, v9, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 502
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 504
    :cond_2
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto :goto_0

    .line 362
    .end local v5           #tr:Ljava/lang/Throwable;
    :pswitch_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 512
    .end local v2           #ret:Ljava/lang/Object;
    :cond_3
    :goto_1
    iget v6, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    packed-switch v6, :pswitch_data_1

    .line 525
    :cond_4
    :goto_2
    :pswitch_1
    if-eqz v0, :cond_7

    .line 526
    iget v6, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    sparse-switch v6, :sswitch_data_0

    .line 542
    :cond_5
    :goto_3
    invoke-virtual {v3, v0, v2}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 543
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto :goto_0

    .line 363
    .restart local v2       #ret:Ljava/lang/Object;
    :pswitch_2
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 364
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 365
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 366
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 367
    :pswitch_6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 368
    :pswitch_7
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 369
    :pswitch_8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 370
    :pswitch_9
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 371
    :pswitch_a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 372
    :pswitch_b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 373
    :pswitch_c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 374
    :pswitch_d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 376
    :pswitch_e
    iget-object v6, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 377
    iget-object v6, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    if-eqz v6, :cond_6

    .line 378
    const-string v6, "testing emergency call, notify ECM Registrants"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SamsungQualcommRIL;->riljLog(Ljava/lang/String;)V

    .line 379
    iget-object v6, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    invoke-virtual {v6}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 382
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 383
    goto :goto_1

    .line 385
    :pswitch_f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 386
    :pswitch_10
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 387
    :pswitch_11
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 388
    :pswitch_12
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 389
    :pswitch_13
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 392
    :pswitch_14
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoiceDataRegistrationState(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 393
    :pswitch_15
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoiceDataRegistrationState(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 400
    :pswitch_16
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->operatorCheck(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 402
    :pswitch_17
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 403
    :pswitch_18
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 404
    :pswitch_19
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 405
    :pswitch_1a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 406
    :pswitch_1b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseSetupDataCall(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 407
    :pswitch_1c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 408
    :pswitch_1d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 409
    :pswitch_1e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 410
    :pswitch_1f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 411
    :pswitch_20
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 412
    :pswitch_21
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseCallForward(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 413
    :pswitch_22
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 414
    :pswitch_23
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 415
    :pswitch_24
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 416
    :pswitch_25
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 417
    :pswitch_26
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 418
    :pswitch_27
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 419
    :pswitch_28
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 420
    :pswitch_29
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 421
    :pswitch_2a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 422
    :pswitch_2b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 423
    :pswitch_2c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 424
    :pswitch_2d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 425
    :pswitch_2e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 426
    :pswitch_2f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 427
    :pswitch_30
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseOperatorInfos(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 428
    :pswitch_31
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 429
    :pswitch_32
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 430
    :pswitch_33
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 431
    :pswitch_34
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 432
    :pswitch_35
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 433
    :pswitch_36
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 434
    :pswitch_37
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 435
    :pswitch_38
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 436
    :pswitch_39
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseDataCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 437
    :pswitch_3a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 438
    :pswitch_3b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 439
    :pswitch_3c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 440
    :pswitch_3d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 441
    :pswitch_3e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 442
    :pswitch_3f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 443
    :pswitch_40
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 444
    :pswitch_41
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 445
    :pswitch_42
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 446
    :pswitch_43
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 447
    :pswitch_44
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 448
    :pswitch_45
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 449
    :pswitch_46
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 450
    :pswitch_47
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 451
    :pswitch_48
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 452
    :pswitch_49
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 453
    :pswitch_4a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseGetPreferredNetworkType(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 454
    :pswitch_4b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseCellList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 455
    :pswitch_4c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 456
    :pswitch_4d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 457
    :pswitch_4e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 458
    :pswitch_4f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 459
    :pswitch_50
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 460
    :pswitch_51
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 461
    :pswitch_52
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 462
    :pswitch_53
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 463
    :pswitch_54
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 464
    :pswitch_55
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 465
    :pswitch_56
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 466
    :pswitch_57
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 467
    :pswitch_58
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseGmsBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 468
    :pswitch_59
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 469
    :pswitch_5a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 470
    :pswitch_5b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseCdmaBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 471
    :pswitch_5c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 472
    :pswitch_5d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 473
    :pswitch_5e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 474
    :pswitch_5f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 475
    :pswitch_60
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 476
    :pswitch_61
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 477
    :pswitch_62
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 478
    :pswitch_63
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 479
    :pswitch_64
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 480
    :pswitch_65
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 481
    :pswitch_66
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 482
    :pswitch_67
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 483
    :pswitch_68
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 484
    :pswitch_69
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 485
    :pswitch_6a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 486
    :pswitch_6b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 487
    :pswitch_6c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 488
    :pswitch_6d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseCellInfoList(Landroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v2

    .local v2, ret:Ljava/util/ArrayList;
    goto/16 :goto_1

    .line 489
    .local v2, ret:Ljava/lang/Object;
    :pswitch_6e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    goto/16 :goto_1

    .line 515
    .end local v2           #ret:Ljava/lang/Object;
    :pswitch_6f
    iget-object v6, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v6, :cond_4

    .line 517
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ON enter sim puk fakeSimStatusChanged: reg count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v7}, Landroid/os/RegistrantList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SamsungQualcommRIL;->riljLog(Ljava/lang/String;)V

    .line 520
    iget-object v6, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_2

    .line 532
    :sswitch_0
    iget-object v6, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v6, :cond_5

    .line 534
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ON some errors fakeSimStatusChanged: reg count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v7}, Landroid/os/RegistrantList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SamsungQualcommRIL;->riljLog(Ljava/lang/String;)V

    .line 537
    iget-object v6, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_3

    .line 547
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "< "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v7}, Lcom/android/internal/telephony/SamsungQualcommRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {p0, v7, v2}, Lcom/android/internal/telephony/SamsungQualcommRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SamsungQualcommRIL;->riljLog(Ljava/lang/String;)V

    .line 550
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v6, :cond_8

    .line 551
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v6, v2, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 552
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 555
    :cond_8
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto/16 :goto_0

    .line 356
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_55
        :pswitch_5e
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_5f
        :pswitch_60
        :pswitch_61
        :pswitch_62
        :pswitch_65
        :pswitch_63
        :pswitch_64
        :pswitch_66
        :pswitch_67
        :pswitch_68
        :pswitch_69
        :pswitch_6a
        :pswitch_6b
        :pswitch_6c
        :pswitch_6d
        :pswitch_6e
    .end packed-switch

    .line 512
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_6f
        :pswitch_1
        :pswitch_6f
    .end packed-switch

    .line 526
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
        0x2b -> :sswitch_0
    .end sparse-switch
.end method

.method protected processUnsolicited(Landroid/os/Parcel;)V
    .locals 11
    .parameter "p"

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 281
    .local v2, dataPosition:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 283
    .local v4, response:I
    sparse-switch v4, :sswitch_data_0

    .line 324
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 327
    invoke-super {p0, p1}, Lcom/android/internal/telephony/QualcommMSIM42RIL;->processUnsolicited(Landroid/os/Parcel;)V

    .line 331
    :goto_0
    return-void

    .line 286
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    .line 287
    .local v5, ret:Ljava/lang/Object;
    invoke-virtual {p0, v9, v8}, Lcom/android/internal/telephony/SamsungQualcommRIL;->setRadioPower(ZLandroid/os/Message;)V

    .line 288
    iget v6, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mPreferredNetworkType:I

    invoke-virtual {p0, v6, v8}, Lcom/android/internal/telephony/SamsungQualcommRIL;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 289
    iget-object v6, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "subscription_mode"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 290
    .local v1, cdmaSubscription:I
    if-eq v1, v10, :cond_0

    .line 291
    iget v6, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mCdmaSubscription:I

    invoke-virtual {p0, v6, v8}, Lcom/android/internal/telephony/SamsungQualcommRIL;->setCdmaSubscriptionSource(ILandroid/os/Message;)V

    .line 293
    :cond_0
    const v6, 0x7fffffff

    invoke-virtual {p0, v6, v8}, Lcom/android/internal/telephony/SamsungQualcommRIL;->setCellInfoListRate(ILandroid/os/Message;)V

    .line 294
    check-cast v5, [I

    .end local v5           #ret:Ljava/lang/Object;
    check-cast v5, [I

    aget v6, v5, v9

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SamsungQualcommRIL;->notifyRegistrantsRilConnectionChanged(I)V

    goto :goto_0

    .line 297
    .end local v1           #cdmaSubscription:I
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->handleNitzTimeReceived(Landroid/os/Parcel;)V

    goto :goto_0

    .line 301
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    .restart local v5       #ret:Ljava/lang/Object;
    move-object v0, v5

    .line 302
    check-cast v0, Ljava/lang/String;

    .line 303
    .local v0, amString:Ljava/lang/String;
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Executing AM: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "am "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 307
    :catch_0
    move-exception v3

    .line 308
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 309
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "am "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " could not be executed."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 313
    .end local v0           #amString:Ljava/lang/String;
    .end local v3           #e:Ljava/io/IOException;
    .end local v5           #ret:Ljava/lang/Object;
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    .line 314
    .restart local v5       #ret:Ljava/lang/Object;
    goto/16 :goto_0

    .line 316
    .end local v5           #ret:Ljava/lang/Object;
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    .line 317
    .restart local v5       #ret:Ljava/lang/Object;
    goto/16 :goto_0

    .line 319
    .end local v5           #ret:Ljava/lang/Object;
    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    .line 320
    .restart local v5       #ret:Ljava/lang/Object;
    check-cast v5, [I

    .end local v5           #ret:Ljava/lang/Object;
    check-cast v5, [I

    aget v6, v5, v9

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SamsungQualcommRIL;->setWbAmr(I)V

    goto/16 :goto_0

    .line 283
    nop

    :sswitch_data_0
    .sparse-switch
        0x3f0 -> :sswitch_1
        0x40a -> :sswitch_0
        0x40c -> :sswitch_4
        0x2b02 -> :sswitch_2
        0x2b09 -> :sswitch_5
        0x2b0d -> :sswitch_3
    .end sparse-switch
.end method

.method protected responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .parameter "p"

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->driverCall:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->isGSM:Z

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mRilVersion:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_3

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->samsungDriverCall:Z

    .line 271
    iget-boolean v0, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->driverCall:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->passedCheck:Z

    if-eqz v0, :cond_2

    .line 272
    iget-object v0, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "wide_voice_enable=false"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 273
    :cond_2
    invoke-super {p0, p1}, Lcom/android/internal/telephony/QualcommMSIM42RIL;->responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 270
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 8
    .parameter "p"

    .prologue
    const/4 v7, 0x1

    .line 87
    new-instance v3, Lcom/android/internal/telephony/uicc/IccCardStatus;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccCardStatus;-><init>()V

    .line 88
    .local v3, cardStatus:Lcom/android/internal/telephony/uicc/IccCardStatus;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setCardState(I)V

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setUniversalPinState(I)V

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 97
    .local v5, numApplications:I
    const/16 v6, 0x8

    if-le v5, v6, :cond_0

    .line 98
    const/16 v5, 0x8

    .line 100
    :cond_0
    new-array v6, v5, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    iput-object v6, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    .line 101
    if-ne v5, v7, :cond_1

    iget-boolean v6, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->isGSM:Z

    if-nez v6, :cond_1

    .line 102
    add-int/lit8 v6, v5, 0x2

    new-array v6, v6, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    iput-object v6, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    .line 105
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;-><init>()V

    .line 106
    .local v0, appStatus:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 107
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    .end local v0           #appStatus:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;-><init>()V

    .line 108
    .restart local v0       #appStatus:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:I

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 121
    iget-object v6, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aput-object v0, v6, v4

    .line 106
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 123
    :cond_2
    if-ne v5, v7, :cond_3

    iget-boolean v6, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->isGSM:Z

    if-nez v6, :cond_3

    .line 124
    iput v7, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    .line 125
    const/4 v6, 0x2

    iput v6, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    .line 126
    new-instance v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;-><init>()V

    .line 127
    .local v1, appStatus2:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v6

    iput-object v6, v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 128
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    iput-object v6, v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 129
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    iput-object v6, v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 130
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    iput-object v6, v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    .line 131
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    iput-object v6, v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    .line 132
    iget v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:I

    iput v6, v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:I

    .line 133
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    iput-object v6, v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 134
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    iput-object v6, v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 135
    iget-object v6, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    iget v7, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    aput-object v1, v6, v7

    .line 136
    new-instance v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    invoke-direct {v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;-><init>()V

    .line 137
    .local v2, appStatus3:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    const/4 v6, 0x5

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 138
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    iput-object v6, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 139
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    iput-object v6, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 140
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    iput-object v6, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    .line 141
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    iput-object v6, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    .line 142
    iget v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:I

    iput v6, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:I

    .line 143
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    iput-object v6, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 144
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    iput-object v6, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 145
    iget-object v6, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    iget v7, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    aput-object v2, v6, v7

    .line 147
    .end local v1           #appStatus2:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    .end local v2           #appStatus3:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    :cond_3
    return-object v3
.end method

.method protected responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .parameter "p"

    .prologue
    .line 744
    iget-object v1, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mSMSLock:Ljava/lang/Object;

    monitor-enter v1

    .line 745
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mIsSendingSMS:Z

    .line 746
    iget-object v0, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->mSMSLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 747
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 749
    invoke-super {p0, p1}, Lcom/android/internal/telephony/QualcommMSIM42RIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 747
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 20
    .parameter "p"

    .prologue
    .line 190
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/SamsungQualcommRIL;->hasTdScdmaSignalStrength:Z

    if-eqz v2, :cond_0

    const/16 v18, 0xd

    .line 197
    .local v18, numInts:I
    :goto_0
    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 198
    .local v19, response:[I
    const/16 v17, 0x0

    .local v17, i:I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 199
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aput v2, v19, v17

    .line 198
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 190
    .end local v17           #i:I
    .end local v18           #numInts:I
    .end local v19           #response:[I
    :cond_0
    const/16 v18, 0xc

    goto :goto_0

    .line 202
    .restart local v17       #i:I
    .restart local v18       #numInts:I
    .restart local v19       #response:[I
    :cond_1
    const/4 v2, 0x0

    aget v3, v19, v2

    and-int/lit16 v3, v3, 0xff

    aput v3, v19, v2

    .line 206
    const/4 v2, 0x2

    aget v3, v19, v2

    rem-int/lit16 v3, v3, 0x100

    aput v3, v19, v2

    .line 207
    const/4 v2, 0x4

    aget v3, v19, v2

    rem-int/lit16 v3, v3, 0x100

    aput v3, v19, v2

    .line 210
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/SamsungQualcommRIL;->googleEditionSS:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/SamsungQualcommRIL;->isGSM:Z

    if-nez v2, :cond_2

    .line 211
    const/16 v2, 0x8

    const/4 v3, 0x2

    aget v3, v19, v3

    aput v3, v19, v2

    .line 223
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/SamsungQualcommRIL;->hasTdScdmaSignalStrength:Z

    if-eqz v2, :cond_5

    new-instance v2, Landroid/telephony/SignalStrength;

    const/4 v3, 0x0

    aget v3, v19, v3

    const/4 v4, 0x1

    aget v4, v19, v4

    const/4 v5, 0x2

    aget v5, v19, v5

    const/4 v6, 0x3

    aget v6, v19, v6

    const/4 v7, 0x4

    aget v7, v19, v7

    const/4 v8, 0x5

    aget v8, v19, v8

    const/4 v9, 0x6

    aget v9, v19, v9

    const/4 v10, 0x7

    aget v10, v19, v10

    const/16 v11, 0x8

    aget v11, v19, v11

    const/16 v12, 0x9

    aget v12, v19, v12

    const/16 v13, 0xa

    aget v13, v19, v13

    const/16 v14, 0xb

    aget v14, v19, v14

    const/16 v15, 0xc

    aget v15, v19, v15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    if-eqz v16, :cond_4

    const/16 v16, 0x1

    :goto_3
    invoke-direct/range {v2 .. v16}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIIZ)V

    :goto_4
    return-object v2

    .line 212
    :cond_2
    const/4 v2, 0x7

    aget v2, v19, v2

    const/16 v3, 0x63

    if-ne v2, v3, :cond_3

    .line 216
    const/16 v2, 0x8

    const v3, 0x7fffffff

    aput v3, v19, v2

    .line 217
    const/16 v2, 0x9

    const v3, 0x7fffffff

    aput v3, v19, v2

    .line 218
    const/16 v2, 0xa

    const v3, 0x7fffffff

    aput v3, v19, v2

    .line 219
    const/16 v2, 0xb

    const v3, 0x7fffffff

    aput v3, v19, v2

    goto :goto_2

    .line 221
    :cond_3
    const/4 v2, 0x7

    aget v3, v19, v2

    and-int/lit16 v3, v3, 0xff

    aput v3, v19, v2

    goto :goto_2

    .line 223
    :cond_4
    const/16 v16, 0x0

    goto :goto_3

    :cond_5
    new-instance v2, Landroid/telephony/SignalStrength;

    const/4 v3, 0x0

    aget v3, v19, v3

    const/4 v4, 0x1

    aget v4, v19, v4

    const/4 v5, 0x2

    aget v5, v19, v5

    const/4 v6, 0x3

    aget v6, v19, v6

    const/4 v7, 0x4

    aget v7, v19, v7

    const/4 v8, 0x5

    aget v8, v19, v8

    const/4 v9, 0x6

    aget v9, v19, v9

    const/4 v10, 0x7

    aget v10, v19, v10

    const/16 v11, 0x8

    aget v11, v19, v11

    const/16 v12, 0x9

    aget v12, v19, v12

    const/16 v13, 0xa

    aget v13, v19, v13

    const/16 v14, 0xb

    aget v14, v19, v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_6

    const/4 v15, 0x1

    :goto_5
    invoke-direct/range {v2 .. v15}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIZ)V

    goto :goto_4

    :cond_6
    const/4 v15, 0x0

    goto :goto_5
.end method

.method public sendCdmaSms([BLandroid/os/Message;)V
    .locals 0
    .parameter "pdu"
    .parameter "result"

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/android/internal/telephony/SamsungQualcommRIL;->smsLock()V

    .line 154
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/QualcommMSIM42RIL;->sendCdmaSms([BLandroid/os/Message;)V

    .line 155
    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "smscPDU"
    .parameter "pdu"
    .parameter "result"

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/android/internal/telephony/SamsungQualcommRIL;->smsLock()V

    .line 161
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/QualcommMSIM42RIL;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 162
    return-void
.end method

.method public setPhoneType(I)V
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 263
    invoke-super {p0, p1}, Lcom/android/internal/telephony/QualcommMSIM42RIL;->setPhoneType(I)V

    .line 264
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/SamsungQualcommRIL;->isGSM:Z

    .line 265
    return-void

    .line 264
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
