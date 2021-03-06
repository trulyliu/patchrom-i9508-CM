.class public Lcom/android/internal/telephony/SyntheticSmsMessage;
.super Lcom/android/internal/telephony/SmsMessageBase;
.source "SyntheticSmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SyntheticSmsMessage$SyntheticAddress;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .parameter "originatingAddress"
    .parameter "scAddress"
    .parameter "messageBody"
    .parameter "timestampMillis"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase;-><init>()V

    new-instance v2, Lcom/android/internal/telephony/SyntheticSmsMessage$SyntheticAddress;

    invoke-direct {v2}, Lcom/android/internal/telephony/SyntheticSmsMessage$SyntheticAddress;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/SyntheticSmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v2, p0, Lcom/android/internal/telephony/SyntheticSmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iput-object p1, v2, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/telephony/SyntheticSmsMessage;->messageBody:Ljava/lang/String;

    iput-wide p4, p0, Lcom/android/internal/telephony/SyntheticSmsMessage;->scTimeMillis:J

    iput-object p2, p0, Lcom/android/internal/telephony/SyntheticSmsMessage;->scAddress:Ljava/lang/String;

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .local v1, json:Lorg/json/JSONObject;
    const-string v2, "originatingAddress"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "scAddress"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "messageBody"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "timestampMillis"

    invoke-virtual {v1, v2, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "synthetic"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SyntheticSmsMessage;->mPdu:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #json:Lorg/json/JSONObject;
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static createFromPdu([B)Lcom/android/internal/telephony/SyntheticSmsMessage;
    .locals 9
    .parameter "pdu"

    .prologue
    const/4 v8, 0x0

    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v7, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .local v7, json:Lorg/json/JSONObject;
    new-instance v0, Lcom/android/internal/telephony/SyntheticSmsMessage;

    const-string v1, "originatingAddress"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "scAddress"

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "messageBody"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "timestampMillis"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/SyntheticSmsMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v7           #json:Lorg/json/JSONObject;
    :goto_0
    return-object v0

    :catch_0
    move-exception v6

    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v8

    goto :goto_0
.end method

.method public static isSyntheticPdu([B)Z
    .locals 4
    .parameter "pdu"

    .prologue
    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .local v0, json:Lorg/json/JSONObject;
    const-string v2, "synthetic"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .end local v0           #json:Lorg/json/JSONObject;
    :goto_0
    return v1

    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;->UNKNOWN:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    return-object v0
.end method

.method public getProtocolIdentifier()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public isCphsMwiMessage()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public isMWIClearMessage()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public isMWISetMessage()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public isMwiDontStore()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public isReplace()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public isReplyPathPresent()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public isStatusReportMessage()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method
