.class public Lcom/android/internal/telephony/SamsungExynos3RIL;
.super Lcom/android/internal/telephony/RIL;
.source "SamsungExynos3RIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SamsungExynos3RIL$1;,
        Lcom/android/internal/telephony/SamsungExynos3RIL$ConnectivityHandler;,
        Lcom/android/internal/telephony/SamsungExynos3RIL$SamsungDriverCall;
    }
.end annotation


# static fields
.field static final RIL_REQUEST_DIAL_EMERGENCY:I = 0x2720

.field static final RIL_UNSOL_AM:I = 0x2b02

.field static final RIL_UNSOL_DEVICE_READY_NOTI:I = 0x2b00

.field static final RIL_UNSOL_GPS_NOTI:I = 0x2b01

.field static final RIL_UNSOL_HSDPA_STATE_CHANGED:I = 0x2b08

.field static final RIL_UNSOL_O2_HOME_ZONE_INFO:I = 0x2aff

.field static final RIL_UNSOL_SAMSUNG_UNKNOWN_MAGIC_REQUEST:I = 0x2b04

.field static final RIL_UNSOL_SAMSUNG_UNKNOWN_MAGIC_REQUEST_2:I = 0x2b03


# instance fields
.field private mCatProCmdBuffer:Ljava/lang/Object;

.field private mIsSamsungCdma:Z

.field private mSignalbarCount:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3
    .parameter "context"
    .parameter "networkMode"
    .parameter "cdmaSubscription"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;II)V

    .line 63
    const-string v2, "ro.telephony.sends_barcount"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mSignalbarCount:Z

    .line 64
    const-string v0, "ro.ril.samsung_cdma"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mIsSamsungCdma:Z

    .line 69
    return-void

    :cond_0
    move v0, v1

    .line 63
    goto :goto_0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/SamsungExynos3RIL;ILandroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SamsungExynos3RIL;->sendPreferedNetworktype(ILandroid/os/Message;)V

    return-void
.end method

.method static requestToString(I)Ljava/lang/String;
    .locals 1
    .parameter "request"

    .prologue
    .line 83
    packed-switch p0, :pswitch_data_0

    .line 85
    invoke-static {p0}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 84
    :pswitch_0
    const-string v0, "DIAL_EMERGENCY"

    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x2720
        :pswitch_0
    .end packed-switch
.end method

.method private sendPreferedNetworktype(ILandroid/os/Message;)V
    .locals 3
    .parameter "networkType"
    .parameter "response"

    .prologue
    .line 916
    const/16 v1, 0x49

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 919
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 920
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 922
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SamsungExynos3RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->riljLog(Ljava/lang/String;)V

    .line 925
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SamsungExynos3RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 926
    return-void
.end method

.method private startPppdCdmaService(Ljava/lang/String;)Z
    .locals 6
    .parameter "ttyname"

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 745
    const-string v2, "net.cdma.datalinkinterface"

    invoke-static {v2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    const-string v2, "ril.cdma.data_state"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    const-string v2, "RILJ"

    const-string v3, "Set ril.cdma.data_state=1, waiting for ril.cdma.data_state=2."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_1

    .line 754
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 756
    :goto_1
    const-string v2, "ril.cdma.data_state"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 757
    const-string v2, "RILJ"

    const-string v3, "Got ril.cdma.data_state=2, connected."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    :goto_2
    return v1

    .line 753
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 763
    :cond_1
    const/4 v0, 0x1

    :goto_3
    if-ge v0, v5, :cond_3

    .line 764
    const-wide/16 v2, 0x3e8

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 766
    :goto_4
    const-string v2, "ril.cdma.data_state"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 767
    const-string v2, "RILJ"

    const-string v3, "Got ril.cdma.data_state=2, connected."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 763
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 773
    :cond_3
    const-string v1, "RILJ"

    const-string v2, "Didn\'t get ril.cdma.data_state=2 timely, aborting."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    const-string v1, "ril.cdma.data_state"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    const/4 v1, 0x0

    goto :goto_2

    .line 754
    :catch_0
    move-exception v2

    goto :goto_1

    .line 764
    :catch_1
    move-exception v2

    goto :goto_4
.end method


# virtual methods
.method public deactivateDataCall(IILandroid/os/Message;)V
    .locals 2
    .parameter "cid"
    .parameter "reason"
    .parameter "result"

    .prologue
    .line 782
    iget-boolean v0, p0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mIsSamsungCdma:Z

    if-eqz v0, :cond_0

    .line 784
    const-string v0, "RILJ"

    const-string v1, "Set ril.cdma.data_state=0."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    const-string v0, "ril.cdma.data_state"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/RIL;->deactivateDataCall(IILandroid/os/Message;)V

    .line 789
    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 3
    .parameter "address"
    .parameter "clirMode"
    .parameter "uusInfo"
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 326
    iget-boolean v1, p0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mIsSamsungCdma:Z

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/internal/telephony/SamsungExynos3RIL;->dialEmergencyCall(Ljava/lang/String;ILandroid/os/Message;)V

    .line 348
    :goto_0
    return-void

    .line 331
    :cond_0
    const/16 v1, 0xa

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 332
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 333
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    if-nez p3, :cond_1

    .line 337
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SamsungExynos3RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->riljLog(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SamsungExynos3RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    goto :goto_0

    .line 339
    :cond_1
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_1
.end method

.method public dialEmergencyCall(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 5
    .parameter "address"
    .parameter "clirMode"
    .parameter "result"

    .prologue
    const/4 v4, 0x0

    .line 353
    const-string v1, "RILJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Emergency dial: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const/16 v1, 0x2720

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 356
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 357
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 358
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SamsungExynos3RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->riljLog(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SamsungExynos3RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 364
    return-void
.end method

.method protected notifyRegistrantsCdmaInfoRec(Lcom/android/internal/telephony/cdma/CdmaInformationRecords;)V
    .locals 6
    .parameter "infoRec"

    .prologue
    const/16 v5, 0x403

    .line 843
    const/16 v0, 0x403

    .line 845
    .local v0, response:I
    iget-object v2, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    if-eqz v2, :cond_0

    .line 846
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    .line 847
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

    .line 852
    const-string v2, "RILJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dropping \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v5}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v5, v1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" to prevent \"ring of death\" bug."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    .end local v1           #sir:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;
    :goto_0
    return-void

    .line 858
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->notifyRegistrantsCdmaInfoRec(Lcom/android/internal/telephony/cdma/CdmaInformationRecords;)V

    goto :goto_0
.end method

.method protected processSolicited(Landroid/os/Parcel;)V
    .locals 9
    .parameter "p"

    .prologue
    const/4 v8, 0x0

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 118
    .local v3, serial:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 120
    .local v0, error:I
    const-string v5, "RILJ"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Serial: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string v5, "RILJ"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SamsungExynos3RIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    .line 127
    .local v2, rr:Lcom/android/internal/telephony/RILRequest;
    if-nez v2, :cond_0

    .line 128
    const-string v5, "RILJ"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected solicited response! sn: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :goto_0
    return-void

    .line 133
    :cond_0
    const/4 v1, 0x0

    .line 135
    .local v1, ret:Ljava/lang/Object;
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v5

    if-lez v5, :cond_3

    .line 137
    :cond_1
    :try_start_0
    iget v5, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    sparse-switch v5, :sswitch_data_0

    .line 255
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unrecognized solicited response: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :catch_0
    move-exception v4

    .line 260
    .local v4, tr:Ljava/lang/Throwable;
    const-string v5, "RILJ"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "< "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v7}, Lcom/android/internal/telephony/SamsungExynos3RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " exception, possible invalid RIL response"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    iget-object v5, v2, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v5, :cond_2

    .line 265
    iget-object v5, v2, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v5, v8, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 266
    iget-object v5, v2, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 268
    :cond_2
    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto :goto_0

    .line 143
    .end local v4           #tr:Ljava/lang/Throwable;
    :sswitch_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 276
    .end local v1           #ret:Ljava/lang/Object;
    :cond_3
    :goto_1
    iget v5, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    packed-switch v5, :pswitch_data_0

    .line 289
    :cond_4
    :goto_2
    :pswitch_0
    if-eqz v0, :cond_5

    .line 291
    const/4 v5, -0x1

    if-ne v0, v5, :cond_7

    iget v5, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    const/16 v6, 0x19

    if-ne v5, v6, :cond_7

    .line 295
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    .line 311
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "< "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v6}, Lcom/android/internal/telephony/SamsungExynos3RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {p0, v6, v1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/SamsungExynos3RIL;->riljLog(Ljava/lang/String;)V

    .line 314
    iget-object v5, v2, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v5, :cond_6

    .line 315
    iget-object v5, v2, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v5, v1, v8}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 316
    iget-object v5, v2, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 319
    :cond_6
    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto/16 :goto_0

    .line 144
    .restart local v1       #ret:Ljava/lang/Object;
    :sswitch_1
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 145
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 146
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 147
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 148
    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 149
    :sswitch_6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 150
    :sswitch_7
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 151
    :sswitch_8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 152
    :sswitch_9
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 153
    :sswitch_a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 154
    :sswitch_b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 155
    :sswitch_c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 156
    :sswitch_d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 157
    :sswitch_e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 158
    :sswitch_f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 159
    :sswitch_10
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 160
    :sswitch_11
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseLastCallFailCause(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 161
    :sswitch_12
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 162
    :sswitch_13
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoiceRegistrationState(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 163
    :sswitch_14
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 164
    :sswitch_15
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 165
    :sswitch_16
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 166
    :sswitch_17
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 167
    :sswitch_18
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 168
    :sswitch_19
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 169
    :sswitch_1a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseSetupDataCall(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 170
    :sswitch_1b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 171
    :sswitch_1c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 172
    :sswitch_1d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 173
    :sswitch_1e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 174
    :sswitch_1f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 175
    :sswitch_20
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseCallForward(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 176
    :sswitch_21
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 177
    :sswitch_22
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 178
    :sswitch_23
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 179
    :sswitch_24
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 180
    :sswitch_25
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 181
    :sswitch_26
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 182
    :sswitch_27
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 183
    :sswitch_28
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 184
    :sswitch_29
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 185
    :sswitch_2a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 186
    :sswitch_2b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 187
    :sswitch_2c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 188
    :sswitch_2d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 189
    :sswitch_2e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 190
    :sswitch_2f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseOperatorInfos(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 191
    :sswitch_30
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 192
    :sswitch_31
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 193
    :sswitch_32
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 194
    :sswitch_33
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 195
    :sswitch_34
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 196
    :sswitch_35
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 197
    :sswitch_36
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 198
    :sswitch_37
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 199
    :sswitch_38
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseDataCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 200
    :sswitch_39
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 201
    :sswitch_3a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 202
    :sswitch_3b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 203
    :sswitch_3c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 204
    :sswitch_3d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 205
    :sswitch_3e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 206
    :sswitch_3f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 207
    :sswitch_40
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 208
    :sswitch_41
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 209
    :sswitch_42
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 210
    :sswitch_43
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 211
    :sswitch_44
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 212
    :sswitch_45
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 213
    :sswitch_46
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 214
    :sswitch_47
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 215
    :sswitch_48
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 216
    :sswitch_49
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseNetworkType(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 217
    :sswitch_4a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseCellList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 218
    :sswitch_4b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 219
    :sswitch_4c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 220
    :sswitch_4d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 221
    :sswitch_4e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 222
    :sswitch_4f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 223
    :sswitch_50
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 224
    :sswitch_51
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 225
    :sswitch_52
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 226
    :sswitch_53
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 227
    :sswitch_54
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 228
    :sswitch_55
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 229
    :sswitch_56
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 230
    :sswitch_57
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseGmsBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 231
    :sswitch_58
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 232
    :sswitch_59
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 233
    :sswitch_5a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseCdmaBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 234
    :sswitch_5b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 235
    :sswitch_5c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 236
    :sswitch_5d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 237
    :sswitch_5e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseCdmaSubscription(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 238
    :sswitch_5f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 239
    :sswitch_60
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 240
    :sswitch_61
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 241
    :sswitch_62
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 242
    :sswitch_63
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 243
    :sswitch_64
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 244
    :sswitch_65
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 245
    :sswitch_66
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 246
    :sswitch_67
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 247
    :sswitch_68
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 248
    :sswitch_69
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 249
    :sswitch_6a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 250
    :sswitch_6b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 251
    :sswitch_6c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseCellInfoList(Landroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v1

    .local v1, ret:Ljava/util/ArrayList;
    goto/16 :goto_1

    .line 252
    .local v1, ret:Ljava/lang/Object;
    :sswitch_6d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 253
    :sswitch_6e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v1

    goto/16 :goto_1

    .line 279
    .end local v1           #ret:Ljava/lang/Object;
    :pswitch_1
    iget-object v5, p0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v5, :cond_4

    .line 281
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ON enter sim puk fakeSimStatusChanged: reg count="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/SamsungExynos3RIL;->riljLog(Ljava/lang/String;)V

    .line 284
    iget-object v5, p0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v5}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_2

    .line 296
    :catch_1
    move-exception v4

    .line 297
    .restart local v4       #tr:Ljava/lang/Throwable;
    const-string v5, "RILJ"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "< "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v7}, Lcom/android/internal/telephony/SamsungExynos3RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " exception, Processing Samsung SMS fix "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 300
    invoke-virtual {v2, v0, v1}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 301
    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto/16 :goto_0

    .line 305
    .end local v4           #tr:Ljava/lang/Throwable;
    :cond_7
    invoke-virtual {v2, v0, v1}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 306
    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto/16 :goto_0

    .line 137
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0xf -> :sswitch_e
        0x10 -> :sswitch_f
        0x11 -> :sswitch_10
        0x12 -> :sswitch_11
        0x13 -> :sswitch_12
        0x14 -> :sswitch_13
        0x15 -> :sswitch_14
        0x16 -> :sswitch_15
        0x17 -> :sswitch_16
        0x18 -> :sswitch_17
        0x19 -> :sswitch_18
        0x1a -> :sswitch_19
        0x1b -> :sswitch_1a
        0x1c -> :sswitch_1b
        0x1d -> :sswitch_1c
        0x1e -> :sswitch_1d
        0x1f -> :sswitch_1e
        0x20 -> :sswitch_1f
        0x21 -> :sswitch_20
        0x22 -> :sswitch_21
        0x23 -> :sswitch_22
        0x24 -> :sswitch_23
        0x25 -> :sswitch_24
        0x26 -> :sswitch_25
        0x27 -> :sswitch_26
        0x28 -> :sswitch_27
        0x29 -> :sswitch_28
        0x2a -> :sswitch_29
        0x2b -> :sswitch_2a
        0x2c -> :sswitch_2b
        0x2d -> :sswitch_2c
        0x2e -> :sswitch_2d
        0x2f -> :sswitch_2e
        0x30 -> :sswitch_2f
        0x31 -> :sswitch_30
        0x32 -> :sswitch_31
        0x33 -> :sswitch_32
        0x34 -> :sswitch_33
        0x35 -> :sswitch_34
        0x36 -> :sswitch_35
        0x37 -> :sswitch_36
        0x38 -> :sswitch_37
        0x39 -> :sswitch_38
        0x3a -> :sswitch_39
        0x3b -> :sswitch_3a
        0x3c -> :sswitch_3b
        0x3d -> :sswitch_3c
        0x3e -> :sswitch_3d
        0x3f -> :sswitch_3e
        0x40 -> :sswitch_3f
        0x41 -> :sswitch_40
        0x42 -> :sswitch_41
        0x43 -> :sswitch_42
        0x44 -> :sswitch_43
        0x45 -> :sswitch_44
        0x46 -> :sswitch_45
        0x47 -> :sswitch_46
        0x48 -> :sswitch_47
        0x49 -> :sswitch_48
        0x4a -> :sswitch_49
        0x4b -> :sswitch_4a
        0x4c -> :sswitch_4b
        0x4d -> :sswitch_4c
        0x4e -> :sswitch_4d
        0x4f -> :sswitch_4e
        0x50 -> :sswitch_4f
        0x51 -> :sswitch_50
        0x52 -> :sswitch_51
        0x53 -> :sswitch_52
        0x54 -> :sswitch_53
        0x55 -> :sswitch_54
        0x56 -> :sswitch_5d
        0x57 -> :sswitch_55
        0x58 -> :sswitch_56
        0x59 -> :sswitch_57
        0x5a -> :sswitch_58
        0x5b -> :sswitch_59
        0x5c -> :sswitch_5a
        0x5d -> :sswitch_5b
        0x5e -> :sswitch_5c
        0x5f -> :sswitch_5e
        0x60 -> :sswitch_5f
        0x61 -> :sswitch_60
        0x62 -> :sswitch_61
        0x63 -> :sswitch_64
        0x64 -> :sswitch_62
        0x65 -> :sswitch_63
        0x66 -> :sswitch_65
        0x67 -> :sswitch_66
        0x68 -> :sswitch_67
        0x69 -> :sswitch_68
        0x6a -> :sswitch_69
        0x6b -> :sswitch_6a
        0x6c -> :sswitch_6b
        0x6d -> :sswitch_6c
        0x6e -> :sswitch_6d
        0x2720 -> :sswitch_6e
    .end sparse-switch

    .line 276
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected processUnsolicited(Landroid/os/Parcel;)V
    .locals 24
    .parameter "p"

    .prologue
    .line 371
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    .line 373
    .local v7, dataPosition:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 375
    .local v16, response:I
    sparse-switch v16, :sswitch_data_0

    .line 400
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 403
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->processUnsolicited(Landroid/os/Parcel;)V

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 382
    :sswitch_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .line 407
    :goto_1
    sparse-switch v16, :sswitch_data_1

    goto :goto_0

    .line 429
    :sswitch_1
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SamsungExynos3RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 433
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 435
    .local v13, nitzReceiveTime:J
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    .local v17, result:[Ljava/lang/Object;
    move-object/from16 v12, v18

    .line 437
    check-cast v12, Ljava/lang/String;

    .line 438
    .local v12, nitz:Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " RIL_UNSOL_NITZ_TIME_RECEIVED length = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "[/:,+-]"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->riljLog(Ljava/lang/String;)V

    .line 442
    const-string v19, "[/:,+-]"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x9

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_1

    .line 443
    const/16 v19, 0x0

    const-string v20, ","

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 445
    :cond_1
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " RIL_UNSOL_NITZ_TIME_RECEIVED striped nitz = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->riljLog(Ljava/lang/String;)V

    .line 448
    const/16 v19, 0x0

    aput-object v12, v17, v19

    .line 449
    const/16 v19, 0x1

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v17, v19

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mNITZTimeRegistrant:Landroid/os/Registrant;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mNITZTimeRegistrant:Landroid/os/Registrant;

    move-object/from16 v19, v0

    new-instance v20, Landroid/os/AsyncResult;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v19 .. v20}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 383
    .end local v12           #nitz:Ljava/lang/String;
    .end local v13           #nitzReceiveTime:J
    .end local v17           #result:[Ljava/lang/Object;
    :sswitch_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .local v18, ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 384
    .end local v18           #ret:Ljava/lang/Object;
    :sswitch_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseCdmaInformationRecord(Landroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v18

    .local v18, ret:Ljava/util/ArrayList;
    goto/16 :goto_1

    .line 385
    .end local v18           #ret:Ljava/util/ArrayList;
    :sswitch_4
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .local v18, ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 386
    .end local v18           #ret:Ljava/lang/Object;
    :sswitch_5
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 391
    .end local v18           #ret:Ljava/lang/Object;
    :sswitch_6
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 392
    .end local v18           #ret:Ljava/lang/Object;
    :sswitch_7
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 393
    .end local v18           #ret:Ljava/lang/Object;
    :sswitch_8
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 394
    .end local v18           #ret:Ljava/lang/Object;
    :sswitch_9
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 395
    .end local v18           #ret:Ljava/lang/Object;
    :sswitch_a
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 396
    .end local v18           #ret:Ljava/lang/Object;
    :sswitch_b
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 409
    .end local v18           #ret:Ljava/lang/Object;
    :sswitch_c
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->unsljLog(I)V

    .line 411
    check-cast v18, [I

    check-cast v18, [I

    const/16 v19, 0x0

    aget v19, v18, v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    const/4 v11, 0x1

    .line 412
    .local v11, newHsdpa:Z
    :goto_2
    const-string v19, "gsm.network.type"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 413
    .local v6, curState:Ljava/lang/String;
    const/4 v5, 0x0

    .line 415
    .local v5, curHsdpa:Z
    const-string v19, "HSDPA"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 416
    const/4 v5, 0x1

    .line 422
    :cond_2
    if-eq v5, v11, :cond_0

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mVoiceNetworkStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v19, v0

    new-instance v20, Landroid/os/AsyncResult;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v20 .. v23}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v19 .. v20}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 411
    .end local v5           #curHsdpa:Z
    .end local v6           #curState:Ljava/lang/String;
    .end local v11           #newHsdpa:Z
    :cond_3
    const/4 v11, 0x0

    goto :goto_2

    .line 417
    .restart local v5       #curHsdpa:Z
    .restart local v6       #curState:Ljava/lang/String;
    .restart local v11       #newHsdpa:Z
    :cond_4
    const-string v19, "UMTS"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_2

    goto/16 :goto_0

    .line 457
    .end local v5           #curHsdpa:Z
    .end local v6           #curState:Ljava/lang/String;
    .end local v11           #newHsdpa:Z
    .restart local v12       #nitz:Ljava/lang/String;
    .restart local v13       #nitzReceiveTime:J
    .restart local v17       #result:[Ljava/lang/Object;
    :cond_5
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mLastNITZTimeInfo:Ljava/lang/Object;

    goto/16 :goto_0

    .line 466
    .end local v12           #nitz:Ljava/lang/String;
    .end local v13           #nitzReceiveTime:J
    .end local v17           #result:[Ljava/lang/Object;
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    move-object/from16 v19, v0

    new-instance v20, Landroid/os/AsyncResult;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v19 .. v20}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 473
    :sswitch_e
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SamsungExynos3RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mCatProCmdRegistrant:Landroid/os/Registrant;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mCatProCmdRegistrant:Landroid/os/Registrant;

    move-object/from16 v19, v0

    new-instance v20, Landroid/os/AsyncResult;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v19 .. v20}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 482
    :cond_6
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/SamsungExynos3RIL;->mCatProCmdBuffer:Ljava/lang/Object;

    goto/16 :goto_0

    .line 490
    :sswitch_f
    :try_start_0
    move-object/from16 v0, v18

    check-cast v0, Ljava/util/ArrayList;

    move-object v10, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    .local v10, listInfoRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/CdmaInformationRecords;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;

    .line 497
    .local v15, rec:Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/telephony/SamsungExynos3RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 498
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/SamsungExynos3RIL;->notifyRegistrantsCdmaInfoRec(Lcom/android/internal/telephony/cdma/CdmaInformationRecords;)V

    goto :goto_3

    .line 491
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #listInfoRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/CdmaInformationRecords;>;"
    .end local v15           #rec:Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    :catch_0
    move-exception v8

    .line 492
    .local v8, e:Ljava/lang/ClassCastException;
    const-string v19, "RILJ"

    const-string v20, "Unexpected exception casting to listInfoRecs"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v8           #e:Ljava/lang/ClassCastException;
    :sswitch_10
    move-object/from16 v4, v18

    .line 503
    check-cast v4, Ljava/lang/String;

    .line 504
    .local v4, amString:Ljava/lang/String;
    const-string v19, "RILJ"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Executing AM: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "am "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 508
    :catch_1
    move-exception v8

    .line 509
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 510
    const-string v19, "RILJ"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "am "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " could not be executed."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 375
    :sswitch_data_0
    .sparse-switch
        0x3f0 -> :sswitch_0
        0x3f1 -> :sswitch_2
        0x3f5 -> :sswitch_5
        0x403 -> :sswitch_3
        0x2aff -> :sswitch_6
        0x2b00 -> :sswitch_7
        0x2b01 -> :sswitch_8
        0x2b02 -> :sswitch_b
        0x2b03 -> :sswitch_a
        0x2b04 -> :sswitch_9
        0x2b08 -> :sswitch_4
    .end sparse-switch

    .line 407
    :sswitch_data_1
    .sparse-switch
        0x3f0 -> :sswitch_1
        0x3f1 -> :sswitch_d
        0x3f5 -> :sswitch_e
        0x403 -> :sswitch_f
        0x2b02 -> :sswitch_10
        0x2b08 -> :sswitch_c
    .end sparse-switch
.end method

.method protected responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 17
    .parameter "p"

    .prologue
    .line 523
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    .line 524
    .local v1, dataAvail:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    .line 525
    .local v7, pos:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataSize()I

    move-result v9

    .line 527
    .local v9, size:I
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Parcel size = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Parcel pos = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Parcel dataAvail = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 532
    .local v6, num:I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 534
    .local v8, response:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DriverCall;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v6, :cond_8

    .line 535
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mIsSamsungCdma:Z

    if-eqz v12, :cond_0

    .line 536
    new-instance v2, Lcom/android/internal/telephony/SamsungExynos3RIL$SamsungDriverCall;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/internal/telephony/SamsungExynos3RIL$SamsungDriverCall;-><init>(Lcom/android/internal/telephony/SamsungExynos3RIL;)V

    .line 540
    .local v2, dc:Lcom/android/internal/telephony/DriverCall;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-static {v12}, Lcom/android/internal/telephony/DriverCall;->stateFromCLCC(I)Lcom/android/internal/telephony/DriverCall$State;

    move-result-object v12

    iput-object v12, v2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 541
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    iput v12, v2, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 542
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    iput v12, v2, Lcom/android/internal/telephony/DriverCall;->TOA:I

    .line 543
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x1

    :goto_2
    iput-boolean v12, v2, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    .line 544
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eqz v12, :cond_2

    const/4 v12, 0x1

    :goto_3
    iput-boolean v12, v2, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    .line 545
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    iput v12, v2, Lcom/android/internal/telephony/DriverCall;->als:I

    .line 546
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eqz v12, :cond_3

    const/4 v12, 0x1

    :goto_4
    iput-boolean v12, v2, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 547
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eqz v12, :cond_4

    const/4 v4, 0x1

    .line 548
    .local v4, isVideo:Z
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eqz v12, :cond_5

    const/4 v12, 0x1

    :goto_6
    iput-boolean v12, v2, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    .line 549
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 550
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 551
    .local v5, np:I
    invoke-static {v5}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    move-result v12

    iput v12, v2, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 552
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    .line 553
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    iput v12, v2, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    .line 554
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 556
    .local v11, uusInfoPresent:I
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "state = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "index = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v2, Lcom/android/internal/telephony/DriverCall;->index:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "state = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v2, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isMpty = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-boolean v14, v2, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isMT = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-boolean v14, v2, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "als = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v2, Lcom/android/internal/telephony/DriverCall;->als:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isVoice = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-boolean v14, v2, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isVideo = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "number = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "numberPresentation = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "name = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v2, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "namePresentation = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v2, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "uusInfoPresent = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    .line 571
    new-instance v12, Lcom/android/internal/telephony/UUSInfo;

    invoke-direct {v12}, Lcom/android/internal/telephony/UUSInfo;-><init>()V

    iput-object v12, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 572
    iget-object v12, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/UUSInfo;->setType(I)V

    .line 573
    iget-object v12, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/UUSInfo;->setDcs(I)V

    .line 574
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .line 575
    .local v10, userData:[B
    iget-object v12, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v12, v10}, Lcom/android/internal/telephony/UUSInfo;->setUserData([B)V

    .line 576
    const-string v12, "RILJ"

    const-string v13, "Incoming UUS : type=%d, dcs=%d, length=%d"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    iget-object v0, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    iget-object v0, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    iget-object v0, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Incoming UUS : data (string)="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    new-instance v14, Ljava/lang/String;

    iget-object v15, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v15}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Incoming UUS : data (hex): "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v14}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    .end local v10           #userData:[B
    :goto_7
    iget-object v12, v2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v13, v2, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v12, v13}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 591
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    iget-boolean v12, v2, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    if-eqz v12, :cond_7

    .line 594
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v12}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 595
    const-string v12, "RILJ"

    const-string v13, "InCall VoicePrivacy is enabled"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 538
    .end local v2           #dc:Lcom/android/internal/telephony/DriverCall;
    .end local v4           #isVideo:Z
    .end local v5           #np:I
    .end local v11           #uusInfoPresent:I
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v2}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .restart local v2       #dc:Lcom/android/internal/telephony/DriverCall;
    goto/16 :goto_1

    .line 543
    :cond_1
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 544
    :cond_2
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 546
    :cond_3
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 547
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 548
    .restart local v4       #isVideo:Z
    :cond_5
    const/4 v12, 0x0

    goto/16 :goto_6

    .line 585
    .restart local v5       #np:I
    .restart local v11       #uusInfoPresent:I
    :cond_6
    const-string v12, "RILJ"

    const-string v13, "Incoming UUS : NOT present!"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 597
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v12}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 598
    const-string v12, "RILJ"

    const-string v13, "InCall VoicePrivacy is disabled"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 602
    .end local v2           #dc:Lcom/android/internal/telephony/DriverCall;
    .end local v4           #isVideo:Z
    .end local v5           #np:I
    .end local v11           #uusInfoPresent:I
    :cond_8
    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 604
    return-object v8
.end method

.method protected responseCdmaSubscription(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 10
    .parameter "p"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 793
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v1, v3

    check-cast v1, [Ljava/lang/String;

    .line 795
    .local v1, response:[Ljava/lang/String;
    array-length v3, v1

    if-ne v3, v9, :cond_0

    .line 797
    const-string v3, "ril.prl_ver_1"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v0, v3, v5

    .line 798
    .local v0, prlVersion:Ljava/lang/String;
    const/4 v3, 0x5

    new-array v2, v3, [Ljava/lang/String;

    aget-object v3, v1, v6

    aput-object v3, v2, v6

    aget-object v3, v1, v5

    aput-object v3, v2, v5

    aget-object v3, v1, v7

    aput-object v3, v2, v7

    aget-object v3, v1, v8

    aput-object v3, v2, v8

    aput-object v0, v2, v9

    .end local v1           #response:[Ljava/lang/String;
    .local v2, response:[Ljava/lang/String;
    move-object v1, v2

    .line 802
    .end local v0           #prlVersion:Ljava/lang/String;
    .end local v2           #response:[Ljava/lang/String;
    .restart local v1       #response:[Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method protected responseLastCallFailCause(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .parameter "p"

    .prologue
    const/4 v3, 0x0

    .line 609
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 611
    .local v0, response:[I
    iget-boolean v1, p0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mIsSamsungCdma:Z

    if-eqz v1, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    aget v1, v0, v3

    const v2, 0xffff

    if-ne v1, v2, :cond_0

    .line 615
    const-string v1, "RILJ"

    const-string v2, "Overriding ERROR_UNSPECIFIED fail cause with NORMAL_CLEARING."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    const/16 v1, 0x10

    aput v1, v0, v3

    .line 619
    :cond_0
    return-object v0
.end method

.method protected responseNetworkType(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .parameter "p"

    .prologue
    const/4 v3, 0x0

    .line 686
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 689
    .local v0, response:[I
    iget-boolean v1, p0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mIsSamsungCdma:Z

    if-nez v1, :cond_0

    aget v1, v0, v3

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 690
    const-string v1, "RILJ"

    const-string v2, "Overriding network type response from global to WCDMA preferred"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    aput v3, v0, v3

    .line 694
    :cond_0
    return-object v0
.end method

.method protected responseSetupDataCall(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 9
    .parameter "p"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 700
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    invoke-direct {v0}, Lcom/android/internal/telephony/dataconnection/DataCallResponse;-><init>()V

    .line 701
    .local v0, dataCall:Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v2, v3

    check-cast v2, [Ljava/lang/String;

    .line 703
    .local v2, strings:[Ljava/lang/String;
    array-length v3, v2

    if-lt v3, v8, :cond_3

    .line 704
    aget-object v3, v2, v7

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    .line 706
    iget-boolean v3, p0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mIsSamsungCdma:Z

    if-eqz v3, :cond_2

    .line 708
    aget-object v3, v2, v6

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SamsungExynos3RIL;->startPppdCdmaService(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 710
    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v3

    iput v3, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    .line 741
    :cond_0
    :goto_0
    return-object v0

    .line 715
    :cond_1
    const-string v3, "net.cdma.ppp.interface"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    .line 716
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "net."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 718
    .local v1, ifprop:Ljava/lang/String;
    new-array v3, v6, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".local-ip"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    iput-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    .line 719
    new-array v3, v6, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".remote-ip"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    iput-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    .line 720
    new-array v3, v8, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dns1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dns2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    iput-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    goto/16 :goto_0

    .line 723
    .end local v1           #ifprop:Ljava/lang/String;
    :cond_2
    aget-object v3, v2, v6

    iput-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    .line 725
    array-length v3, v2

    const/4 v4, 0x3

    if-lt v3, v4, :cond_0

    .line 726
    aget-object v3, v2, v8

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    goto/16 :goto_0

    .line 730
    :cond_3
    iget-boolean v3, p0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mIsSamsungCdma:Z

    if-eqz v3, :cond_4

    .line 734
    const-string v3, "RILJ"

    const-string v4, "Set ril.cdma.data_state=0 to make sure pppd_cdma is stopped."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    const-string v3, "ril.cdma.data_state"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    :cond_4
    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v3

    iput v3, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    goto/16 :goto_0
.end method

.method protected responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 13
    .parameter "p"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v3, 0x2

    const/4 v8, 0x0

    const/4 v4, 0x3

    .line 628
    const-string v1, "gsm.sim.state"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 629
    .local v11, state:Ljava/lang/String;
    const-string v1, "READY"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mIsSamsungCdma:Z

    if-nez v1, :cond_0

    .line 630
    iget-object v1, p0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 633
    :cond_0
    const/4 v1, 0x7

    new-array v10, v1, [I

    .line 634
    .local v10, response:[I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    const/4 v1, 0x7

    if-ge v9, v1, :cond_1

    .line 635
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aput v1, v10, v9

    .line 634
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 638
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mIsSamsungCdma:Z

    if-eqz v1, :cond_4

    .line 639
    aget v1, v10, v4

    if-gez v1, :cond_2

    .line 640
    aget v1, v10, v4

    neg-int v1, v1

    aput v1, v10, v4

    .line 664
    :cond_2
    :goto_1
    new-instance v0, Landroid/telephony/SignalStrength;

    aget v1, v10, v8

    const/4 v2, 0x1

    aget v2, v10, v2

    aget v3, v10, v3

    aget v4, v10, v4

    aget v5, v10, v5

    aget v6, v10, v6

    const/4 v7, 0x6

    aget v7, v10, v7

    iget-boolean v12, p0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mIsSamsungCdma:Z

    if-nez v12, :cond_3

    const/4 v8, 0x1

    :cond_3
    invoke-direct/range {v0 .. v8}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIZ)V

    .line 667
    .local v0, signalStrength:Landroid/telephony/SignalStrength;
    return-object v0

    .line 647
    .end local v0           #signalStrength:Landroid/telephony/SignalStrength;
    :cond_4
    iget-boolean v1, p0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mSignalbarCount:Z

    if-eqz v1, :cond_6

    .line 651
    aget v1, v10, v8

    const v2, 0xff00

    and-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x3

    aput v1, v10, v8

    .line 655
    :goto_2
    const/4 v1, 0x1

    const/4 v2, -0x1

    aput v2, v10, v1

    .line 656
    aget v1, v10, v3

    if-gez v1, :cond_7

    const/16 v1, -0x78

    :goto_3
    aput v1, v10, v3

    .line 657
    aget v1, v10, v4

    if-gez v1, :cond_8

    const/16 v1, -0xa0

    :goto_4
    aput v1, v10, v4

    .line 658
    aget v1, v10, v5

    if-gez v1, :cond_9

    const/16 v1, -0x78

    :goto_5
    aput v1, v10, v5

    .line 659
    aget v1, v10, v6

    if-gez v1, :cond_a

    const/4 v1, -0x1

    :goto_6
    aput v1, v10, v6

    .line 660
    const/4 v1, 0x6

    aget v1, v10, v1

    if-ltz v1, :cond_5

    const/4 v1, 0x6

    aget v1, v10, v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_2

    .line 661
    :cond_5
    const/4 v1, 0x6

    const/4 v2, -0x1

    aput v2, v10, v1

    goto :goto_1

    .line 653
    :cond_6
    aget v1, v10, v8

    and-int/lit16 v1, v1, 0xff

    aput v1, v10, v8

    goto :goto_2

    .line 656
    :cond_7
    aget v1, v10, v3

    neg-int v1, v1

    goto :goto_3

    .line 657
    :cond_8
    aget v1, v10, v4

    neg-int v1, v1

    goto :goto_4

    .line 658
    :cond_9
    aget v1, v10, v5

    neg-int v1, v1

    goto :goto_5

    .line 659
    :cond_a
    aget v1, v10, v6

    neg-int v1, v1

    goto :goto_6
.end method

.method protected responseVoiceRegistrationState(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 6
    .parameter "p"

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x4

    const/16 v3, 0x10

    const/4 v2, 0x6

    .line 672
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    .line 674
    .local v0, response:[Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mIsSamsungCdma:Z

    if-eqz v1, :cond_0

    array-length v1, v0

    if-le v1, v2, :cond_0

    .line 676
    aget-object v1, v0, v4

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 677
    aget-object v1, v0, v5

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 678
    aget-object v1, v0, v2

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 681
    :cond_0
    return-object v0
.end method

.method public setCurrentPreferredNetworkType()V
    .locals 1

    .prologue
    .line 888
    const-string v0, "setCurrentPreferredNetworkType IGNORED"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SamsungExynos3RIL;->riljLog(Ljava/lang/String;)V

    .line 894
    return-void
.end method

.method public setOnCatProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    const/4 v3, 0x0

    .line 930
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mCatProCmdRegistrant:Landroid/os/Registrant;

    .line 931
    iget-object v0, p0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mCatProCmdBuffer:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 932
    iget-object v0, p0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mCatProCmdRegistrant:Landroid/os/Registrant;

    new-instance v1, Landroid/os/AsyncResult;

    iget-object v2, p0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mCatProCmdBuffer:Ljava/lang/Object;

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 934
    iput-object v3, p0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mCatProCmdBuffer:Ljava/lang/Object;

    .line 936
    :cond_0
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 5
    .parameter "networkType"
    .parameter "response"

    .prologue
    .line 901
    iget-object v3, p0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 904
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .line 905
    .local v2, mobileState:Landroid/net/NetworkInfo$State;
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v2, v3, :cond_0

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_1

    .line 906
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/SamsungExynos3RIL$ConnectivityHandler;

    iget-object v3, p0, Lcom/android/internal/telephony/SamsungExynos3RIL;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v3}, Lcom/android/internal/telephony/SamsungExynos3RIL$ConnectivityHandler;-><init>(Lcom/android/internal/telephony/SamsungExynos3RIL;Landroid/content/Context;)V

    .line 907
    .local v1, handler:Lcom/android/internal/telephony/SamsungExynos3RIL$ConnectivityHandler;
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/SamsungExynos3RIL$ConnectivityHandler;->setPreferedNetworkType(ILandroid/os/Message;)V

    .line 911
    .end local v1           #handler:Lcom/android/internal/telephony/SamsungExynos3RIL$ConnectivityHandler;
    :goto_0
    return-void

    .line 909
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SamsungExynos3RIL;->sendPreferedNetworktype(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public setRadioPower(ZLandroid/os/Message;)V
    .locals 5
    .parameter "on"
    .parameter "result"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 92
    const-string v2, "persist.ril.enable"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 93
    .local v0, allow:Z
    if-nez v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 97
    :cond_0
    const/16 v2, 0x17

    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 99
    .local v1, rr:Lcom/android/internal/telephony/RILRequest;
    if-eqz p1, :cond_1

    .line 100
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/SamsungExynos3RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SamsungExynos3RIL;->riljLog(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SamsungExynos3RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    goto :goto_0

    .line 103
    :cond_1
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method
