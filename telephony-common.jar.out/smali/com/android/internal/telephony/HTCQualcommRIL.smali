.class public Lcom/android/internal/telephony/HTCQualcommRIL;
.super Lcom/android/internal/telephony/QualcommMSIM42RIL;
.source "HTCQualcommRIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# static fields
.field private static final RIL_UNSOL_CDMA_3G_INDICATOR:I = 0xbc1

.field private static final RIL_UNSOL_CDMA_ENHANCE_ROAMING_INDICATOR:I = 0xbc4

.field private static final RIL_UNSOL_CDMA_NETWORK_BASE_PLUSCODE_DIAL:I = 0xbcc

.field private static final RIL_UNSOL_ENTER_LPM:I = 0x5f3

.field private static final RIL_UNSOL_RESPONSE_DATA_NETWORK_STATE_CHANGED:I = 0x520f

.field private static final RIL_UNSOL_RESPONSE_DATA_NETWORK_STATE_CHANGED_M7:I = 0x167d

.field private static final RIL_UNSOL_RESPONSE_IMS_NETWORK_STATE_CHANGED_HTC:I = 0x520d

.field private static final RIL_UNSOL_RESPONSE_PHONE_MODE_CHANGE:I = 0x1772

.field private static final RIL_UNSOL_RESPONSE_PHONE_MODE_CHANGE_M7:I = 0x12c2

.field private static final RIL_UNSOL_RESPONSE_VOICE_RADIO_TECH_CHANGED_HTC:I = 0x520c


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .parameter "context"
    .parameter "networkMode"
    .parameter "cdmaSubscription"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/QualcommMSIM42RIL;-><init>(Landroid/content/Context;II)V

    .line 55
    return-void
.end method


# virtual methods
.method protected getDataCallResponse(Landroid/os/Parcel;I)Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    .locals 6
    .parameter "p"
    .parameter "version"

    .prologue
    .line 74
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    invoke-direct {v1}, Lcom/android/internal/telephony/dataconnection/DataCallResponse;-><init>()V

    .line 76
    .local v1, dataCall:Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    iput p2, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->version:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->suggestedRetryTime:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->type:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    .line 85
    iget v4, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    sget-object v5, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v5

    if-ne v4, v5, :cond_0

    iget-object v4, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    if-eqz v4, :cond_0

    .line 87
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "getDataCallResponse, no ifname"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 89
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, addresses:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 91
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    .line 93
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, dnses:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 95
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    .line 97
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, gateways:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 99
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    .line 101
    :cond_3
    return-object v1
.end method

.method protected processUnsolicited(Landroid/os/Parcel;)V
    .locals 9
    .parameter "p"

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 109
    .local v1, dataPosition:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 111
    .local v2, response:I
    sparse-switch v2, :sswitch_data_0

    .line 152
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 155
    invoke-super {p0, p1}, Lcom/android/internal/telephony/QualcommMSIM42RIL;->processUnsolicited(Landroid/os/Parcel;)V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 112
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    .local v3, ret:Ljava/lang/Object;
    goto :goto_0

    .line 113
    .end local v3           #ret:Ljava/lang/Object;
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    .restart local v3       #ret:Ljava/lang/Object;
    goto :goto_0

    .line 114
    .end local v3           #ret:Ljava/lang/Object;
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    .restart local v3       #ret:Ljava/lang/Object;
    goto :goto_0

    .line 115
    .end local v3           #ret:Ljava/lang/Object;
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    .restart local v3       #ret:Ljava/lang/Object;
    goto :goto_0

    .line 117
    .end local v3           #ret:Ljava/lang/Object;
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    .restart local v3       #ret:Ljava/lang/Object;
    goto :goto_0

    .line 119
    .end local v3           #ret:Ljava/lang/Object;
    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    .line 121
    .restart local v3       #ret:Ljava/lang/Object;
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/HTCQualcommRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 123
    iget-object v4, p0, Lcom/android/internal/telephony/HTCQualcommRIL;->mVoiceRadioTechChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v4, :cond_0

    .line 124
    iget-object v4, p0, Lcom/android/internal/telephony/HTCQualcommRIL;->mVoiceRadioTechChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v6, v3, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 128
    .end local v3           #ret:Ljava/lang/Object;
    :sswitch_6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    .restart local v3       #ret:Ljava/lang/Object;
    goto :goto_0

    .line 130
    .end local v3           #ret:Ljava/lang/Object;
    :sswitch_7
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    .restart local v3       #ret:Ljava/lang/Object;
    goto :goto_0

    .line 132
    .end local v3           #ret:Ljava/lang/Object;
    :sswitch_8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    .line 134
    .restart local v3       #ret:Ljava/lang/Object;
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/HTCQualcommRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 137
    const-string v4, "ril.socket.reset"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 138
    invoke-virtual {p0, v8, v6}, Lcom/android/internal/telephony/HTCQualcommRIL;->setRadioPower(ZLandroid/os/Message;)V

    .line 141
    :cond_1
    const-string v4, "ril.socket.reset"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget v4, p0, Lcom/android/internal/telephony/HTCQualcommRIL;->mPreferredNetworkType:I

    invoke-virtual {p0, v4, v6}, Lcom/android/internal/telephony/HTCQualcommRIL;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 143
    iget-object v4, p0, Lcom/android/internal/telephony/HTCQualcommRIL;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "subscription_mode"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 144
    .local v0, cdmaSubscription:I
    if-eq v0, v7, :cond_2

    .line 145
    invoke-virtual {p0, v0, v6}, Lcom/android/internal/telephony/HTCQualcommRIL;->setCdmaSubscriptionSource(ILandroid/os/Message;)V

    .line 147
    :cond_2
    const v4, 0x7fffffff

    invoke-virtual {p0, v4, v6}, Lcom/android/internal/telephony/HTCQualcommRIL;->setCellInfoListRate(ILandroid/os/Message;)V

    move-object v4, v3

    .line 148
    check-cast v4, [I

    check-cast v4, [I

    aget v4, v4, v8

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/HTCQualcommRIL;->notifyRegistrantsRilConnectionChanged(I)V

    goto :goto_0

    .line 111
    :sswitch_data_0
    .sparse-switch
        0x40a -> :sswitch_8
        0x5f3 -> :sswitch_0
        0xbc1 -> :sswitch_1
        0xbc4 -> :sswitch_2
        0xbcc -> :sswitch_3
        0x12c2 -> :sswitch_4
        0x167d -> :sswitch_7
        0x1772 -> :sswitch_4
        0x520c -> :sswitch_5
        0x520d -> :sswitch_6
        0x520f -> :sswitch_7
    .end sparse-switch
.end method

.method protected responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5
    .parameter "p"

    .prologue
    .line 61
    const-string v2, "forceCdmaLteNetworkType"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/HTCQualcommRIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v0

    .line 62
    .local v0, forceCdmaLte:Z
    if-eqz v0, :cond_0

    .line 63
    iget-object v2, p0, Lcom/android/internal/telephony/HTCQualcommRIL;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    const/16 v4, 0x8

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 66
    .local v1, phoneType:I
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/HTCQualcommRIL;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 69
    .end local v1           #phoneType:I
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/QualcommMSIM42RIL;->responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method
