.class public Lcom/android/internal/telephony/ImsSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "ImsSMSDispatcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RIL_ImsSms"


# instance fields
.field protected mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field protected mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field private mIms:Z

.field private mImsSmsFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .locals 3
    .parameter "phone"
    .parameter "storageMonitor"
    .parameter "usageMonitor"

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mIms:Z

    .line 45
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mImsSmsFormat:Ljava/lang/String;

    .line 51
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/ImsSMSDispatcher;->initDispatchers(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    .line 53
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xa

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xb

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 55
    return-void
.end method

.method private isCdmaFormat(Ljava/lang/String;)Z
    .locals 1
    .parameter "format"

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isCdmaMo()Z
    .locals 2

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isIms()Z

    move-result v0

    if-nez v0, :cond_1

    .line 350
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 353
    :goto_0
    return v0

    .line 350
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 353
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mImsSmsFormat:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaFormat(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private setImsSmsFormat(I)V
    .locals 1
    .parameter "format"

    .prologue
    .line 115
    packed-switch p1, :pswitch_data_0

    .line 123
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mImsSmsFormat:Ljava/lang/String;

    .line 126
    :goto_0
    return-void

    .line 117
    :pswitch_0
    const-string v0, "3gpp"

    iput-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mImsSmsFormat:Ljava/lang/String;

    goto :goto_0

    .line 120
    :pswitch_1
    const-string v0, "3gpp2"

    iput-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mImsSmsFormat:Ljava/lang/String;

    goto :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateImsInfo(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 129
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 131
    .local v0, responseArray:[I
    iput-boolean v3, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mIms:Z

    .line 132
    aget v1, v0, v3

    if-ne v1, v4, :cond_1

    .line 133
    const-string v1, "RIL_ImsSms"

    const-string v2, "IMS is registered!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iput-boolean v4, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mIms:Z

    .line 139
    :goto_0
    aget v1, v0, v4

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ImsSMSDispatcher;->setImsSmsFormat(I)V

    .line 141
    const-string v1, "unknown"

    iget-object v2, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mImsSmsFormat:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    const-string v1, "RIL_ImsSms"

    const-string v2, "IMS format was unknown!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iput-boolean v3, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mIms:Z

    .line 146
    :cond_0
    return-void

    .line 136
    :cond_1
    const-string v1, "RIL_ImsSms"

    const-string v2, "IMS is NOT registered!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 2
    .parameter "success"
    .parameter "result"
    .parameter "response"

    .prologue
    .line 152
    const-string v0, "RIL_ImsSms"

    const-string v1, "acknowledgeLastIncomingSms should never be called from here!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-void
.end method

.method protected calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 2
    .parameter "messageBody"
    .parameter "use7bitOnly"

    .prologue
    .line 319
    const-string v0, "RIL_ImsSms"

    const-string v1, "Error! Not implemented for IMS."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/4 v0, 0x0

    return-object v0
.end method

.method protected dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 2
    .parameter "sms"

    .prologue
    .line 158
    const-string v0, "RIL_ImsSms"

    const-string v1, "dispatchMessage should never be called from here!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v0, 0x2

    return v0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 77
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForImsNetworkStateChanged(Landroid/os/Handler;)V

    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    .line 80
    return-void
.end method

.method protected getFormat()Ljava/lang/String;
    .locals 2

    .prologue
    .line 312
    const-string v0, "RIL_ImsSms"

    const-string v1, "getFormat should never be called from here!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const-string v0, "unknown"

    return-object v0
.end method

.method public getImsSmsFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mImsSmsFormat:Ljava/lang/String;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 91
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 109
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleMessage(Landroid/os/Message;)V

    .line 111
    :goto_0
    return-void

    .line 94
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ImsSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getImsRegistrationState(Landroid/os/Message;)V

    goto :goto_0

    .line 98
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 100
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 101
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->updateImsInfo(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 103
    :cond_0
    const-string v1, "RIL_ImsSms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMS State query failed with exp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected initDispatchers(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .locals 2
    .parameter "phone"
    .parameter "storageMonitor"
    .parameter "usageMonitor"

    .prologue
    .line 59
    const-string v0, "RIL_ImsSms"

    const-string v1, "ImsSMSDispatcher: initDispatchers()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 62
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 64
    return-void
.end method

.method public isIms()Z
    .locals 1

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mIms:Z

    return v0
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 172
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 185
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method protected sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .locals 2
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "message"
    .parameter "smsHeader"
    .parameter "format"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "lastPart"

    .prologue
    .line 327
    const-string v0, "RIL_ImsSms"

    const-string v1, "Error! Not implemented for IMS."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    return-void
.end method

.method public sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 14
    .parameter "tracker"

    .prologue
    .line 221
    iget-object v7, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFormat:Ljava/lang/String;

    .line 224
    .local v7, oldFormat:Ljava/lang/String;
    const/4 v11, 0x2

    iget-object v12, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v12}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v12

    if-ne v11, v12, :cond_1

    iget-object v11, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v11}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v6

    .line 230
    .local v6, newFormat:Ljava/lang/String;
    :goto_0
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 231
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaFormat(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 232
    const-string v11, "RIL_ImsSms"

    const-string v12, "old format matched new format (cdma)"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v11, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v11, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 307
    :cond_0
    :goto_1
    return-void

    .line 224
    .end local v6           #newFormat:Ljava/lang/String;
    :cond_1
    iget-object v11, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v11}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 236
    .restart local v6       #newFormat:Ljava/lang/String;
    :cond_2
    const-string v11, "RIL_ImsSms"

    const-string v12, "old format matched new format (gsm)"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v11, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v11, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_1

    .line 243
    :cond_3
    iget-object v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 248
    .local v5, map:Ljava/util/HashMap;
    const-string v11, "scAddr"

    invoke-virtual {v5, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, "destAddr"

    invoke-virtual {v5, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, "text"

    invoke-virtual {v5, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "data"

    invoke-virtual {v5, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, "destPort"

    invoke-virtual {v5, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 252
    :cond_4
    const-string v11, "RIL_ImsSms"

    const-string v12, "sendRetrySms failed to re-encode per missing fields!"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v11, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v11, :cond_0

    .line 254
    const/4 v4, 0x1

    .line 257
    .local v4, error:I
    :try_start_0
    iget-object v11, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    iget-object v12, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v4, v13}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 258
    :catch_0
    move-exception v11

    goto :goto_1

    .line 262
    .end local v4           #error:I
    :cond_5
    const-string v11, "scAddr"

    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 263
    .local v9, scAddr:Ljava/lang/String;
    const-string v11, "destAddr"

    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 265
    .local v1, destAddr:Ljava/lang/String;
    const/4 v8, 0x0

    .line 267
    .local v8, pdu:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    const-string v11, "text"

    invoke-virtual {v5, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 268
    const-string v11, "RIL_ImsSms"

    const-string v12, "sms failed was text"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const-string v11, "text"

    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 271
    .local v10, text:Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaFormat(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 272
    const-string v11, "RIL_ImsSms"

    const-string v12, "old format (gsm) ==> new format (cdma)"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v11, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v11, :cond_7

    const/4 v11, 0x1

    :goto_2
    const/4 v12, 0x0

    invoke-static {v9, v1, v10, v11, v12}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v8

    .line 299
    .end local v10           #text:Ljava/lang/String;
    :cond_6
    :goto_3
    const-string v11, "smsc"

    iget-object v12, v8, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    invoke-virtual {v5, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string v11, "pdu"

    iget-object v12, v8, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    invoke-virtual {v5, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaFormat(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e

    iget-object v3, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 305
    .local v3, dispatcher:Lcom/android/internal/telephony/SMSDispatcher;
    :goto_4
    invoke-virtual {v3}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFormat:Ljava/lang/String;

    .line 306
    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto/16 :goto_1

    .line 273
    .end local v3           #dispatcher:Lcom/android/internal/telephony/SMSDispatcher;
    .restart local v10       #text:Ljava/lang/String;
    :cond_7
    const/4 v11, 0x0

    goto :goto_2

    .line 276
    :cond_8
    const-string v11, "RIL_ImsSms"

    const-string v12, "old format (cdma) ==> new format (gsm)"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v11, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v11, :cond_9

    const/4 v11, 0x1

    :goto_5
    const/4 v12, 0x0

    invoke-static {v9, v1, v10, v11, v12}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v8

    goto :goto_3

    :cond_9
    const/4 v11, 0x0

    goto :goto_5

    .line 280
    .end local v10           #text:Ljava/lang/String;
    :cond_a
    const-string v11, "data"

    invoke-virtual {v5, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 281
    const-string v11, "RIL_ImsSms"

    const-string v12, "sms failed was data"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const-string v11, "data"

    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    move-object v0, v11

    check-cast v0, [B

    .line 283
    .local v0, data:[B
    const-string v11, "destPort"

    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 285
    .local v2, destPort:Ljava/lang/Integer;
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaFormat(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 286
    const-string v11, "RIL_ImsSms"

    const-string v12, "old format (gsm) ==> new format (cdma)"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v11, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v11, :cond_b

    const/4 v11, 0x1

    :goto_6
    invoke-static {v9, v1, v12, v0, v11}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v8

    goto :goto_3

    :cond_b
    const/4 v11, 0x0

    goto :goto_6

    .line 291
    :cond_c
    const-string v11, "RIL_ImsSms"

    const-string v12, "old format (cdma) ==> new format (gsm)"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v11, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v11, :cond_d

    const/4 v11, 0x1

    :goto_7
    invoke-static {v9, v1, v12, v0, v11}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v8

    goto/16 :goto_3

    :cond_d
    const/4 v11, 0x0

    goto :goto_7

    .line 302
    .end local v0           #data:[B
    .end local v2           #destPort:Ljava/lang/Integer;
    :cond_e
    iget-object v3, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    goto :goto_4
.end method

.method protected sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 2
    .parameter "tracker"

    .prologue
    .line 191
    const-string v0, "RIL_ImsSms"

    const-string v1, "sendSms should never be called from here!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 6
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 197
    const-string v0, "RIL_ImsSms"

    const-string v1, "sendText"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 205
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method protected sendTextWithPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 7
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "priority"

    .prologue
    .line 210
    const-string v0, "RIL_ImsSms"

    const-string v1, "sendTextWithPriority"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendTextWithPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V

    .line 217
    :goto_0
    return-void

    .line 215
    :cond_0
    const-string v0, "RIL_ImsSms"

    const-string v1, "priority is not supported in 3gpp text message!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 2
    .parameter "phone"

    .prologue
    .line 69
    const-string v0, "RIL_ImsSms"

    const-string v1, "In IMS updatePhoneObject "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V

    .line 71
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V

    .line 72
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V

    .line 73
    return-void
.end method
