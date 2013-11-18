.class final Lcom/android/internal/telephony/SMSDispatcher$MockSmsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MockSmsReceiver"
.end annotation


# static fields
.field private static final MOCK_ADDRESS:Ljava/lang/String; = "+01123456789"

.field private static final SEND_MOCK_SMS_PERMISSION:Ljava/lang/String; = "android.permission.SEND_MOCK_SMS"

.field private static final TAG:Ljava/lang/String; = "MockSmsReceiver"


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 0
    .parameter

    .prologue
    .line 1734
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$MockSmsReceiver;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1734
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher$MockSmsReceiver;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    return-void
.end method

.method private bcdTimestamp()[B
    .locals 16

    .prologue
    .line 1936
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1937
    .local v0, c:Ljava/util/Calendar;
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v13, "yy"

    invoke-direct {v6, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1938
    .local v6, sdf:Ljava/text/SimpleDateFormat;
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v13, "Z"

    invoke-direct {v7, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1939
    .local v7, sdf2:Ljava/text/SimpleDateFormat;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x10

    invoke-static {v13, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v13

    int-to-byte v12, v13

    .line 1941
    .local v12, year:B
    const/4 v13, 0x2

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x10

    invoke-static {v13, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v13

    int-to-byte v5, v13

    .line 1942
    .local v5, month:B
    const/4 v13, 0x5

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x10

    invoke-static {v13, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v13

    int-to-byte v2, v13

    .line 1943
    .local v2, day:B
    const/16 v13, 0xa

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x10

    invoke-static {v13, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v13

    int-to-byte v3, v13

    .line 1944
    .local v3, hour:B
    const/16 v13, 0xc

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x10

    invoke-static {v13, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v13

    int-to-byte v4, v13

    .line 1945
    .local v4, minute:B
    const/16 v13, 0xd

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x10

    invoke-static {v13, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v13

    int-to-byte v8, v13

    .line 1946
    .local v8, second:B
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 1947
    .local v11, tz:Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    div-int/lit8 v9, v13, 0x64

    .line 1948
    .local v9, timezone:I
    if-gez v9, :cond_0

    .line 1949
    add-int/lit16 v9, v9, 0x80

    .line 1951
    :cond_0
    const/4 v13, 0x7

    new-array v1, v13, [B

    const/4 v13, 0x0

    aput-byte v12, v1, v13

    const/4 v13, 0x1

    aput-byte v5, v1, v13

    const/4 v13, 0x2

    aput-byte v2, v1, v13

    const/4 v13, 0x3

    aput-byte v3, v1, v13

    const/4 v13, 0x4

    aput-byte v4, v1, v13

    const/4 v13, 0x5

    aput-byte v8, v1, v13

    const/4 v13, 0x6

    const/4 v14, 0x0

    aput-byte v14, v1, v13

    .line 1952
    .local v1, data:[B
    const/4 v13, 0x0

    array-length v14, v1

    invoke-static {v1, v13, v14}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v10

    .line 1953
    .local v10, ts:[B
    const/4 v13, 0x6

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x10

    invoke-static {v14, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v14

    int-to-byte v14, v14

    aput-byte v14, v10, v13

    .line 1954
    return-object v10
.end method

.method private getPdus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[[B
    .locals 18
    .parameter "scAddress"
    .parameter "senderAddress"
    .parameter "msg"

    .prologue
    .line 1854
    const-string v14, "+01123456789"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v14, v1, v15}, Landroid/telephony/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v13

    .line 1862
    .local v13, submitPdu:Landroid/telephony/SmsMessage$SubmitPdu;
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-static {v0, v14}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v14

    const/4 v15, 0x1

    aget v3, v14, v15

    .line 1865
    .local v3, dataLen:I
    const/4 v14, 0x3

    new-array v10, v14, [B

    const/4 v14, 0x0

    const/4 v15, 0x0

    aput-byte v15, v10, v14

    const/4 v14, 0x1

    const/4 v15, 0x0

    aput-byte v15, v10, v14

    const/4 v14, 0x2

    int-to-byte v15, v3

    aput-byte v15, v10, v14

    .line 1866
    .local v10, pds:[B
    new-instance v14, Ljava/lang/String;

    iget-object v15, v13, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    invoke-direct {v14, v15}, Ljava/lang/String;-><init>([B)V

    new-instance v15, Ljava/lang/String;

    invoke-direct {v15, v10}, Ljava/lang/String;-><init>([B)V

    const/16 v16, 0x4

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v14

    add-int/lit8 v4, v14, 0x2

    .line 1869
    .local v4, dataPos:I
    iget-object v7, v13, Landroid/telephony/SmsMessage$SubmitPdu;->encodedScAddress:[B

    .line 1870
    .local v7, encSc:[B
    iget-object v14, v13, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    array-length v14, v14

    sub-int/2addr v14, v4

    new-array v6, v14, [B

    .line 1871
    .local v6, encMsg:[B
    iget-object v14, v13, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    const/4 v15, 0x0

    iget-object v0, v13, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    sub-int v16, v16, v4

    move/from16 v0, v16

    invoke-static {v14, v4, v6, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1874
    const/4 v8, 0x0

    .line 1876
    .local v8, encSender:[B
    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->isWellFormedSmsAddress(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 1878
    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;)[B

    move-result-object v12

    .line 1879
    .local v12, sender7BitPacked:[B
    array-length v14, v12

    add-int/lit8 v14, v14, 0x2

    add-int/lit8 v14, v14, -0x1

    new-array v8, v14, [B

    .line 1880
    const/4 v14, 0x0

    array-length v15, v12

    add-int/lit8 v15, v15, -0x1

    mul-int/lit8 v15, v15, 0x2

    int-to-byte v15, v15

    aput-byte v15, v8, v14

    .line 1881
    const/4 v14, 0x1

    const/16 v15, -0x30

    aput-byte v15, v8, v14

    .line 1882
    const/4 v14, 0x1

    const/4 v15, 0x2

    array-length v0, v12

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-static {v12, v14, v8, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1896
    .end local v12           #sender7BitPacked:[B
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher$MockSmsReceiver;->bcdTimestamp()[B

    move-result-object v9

    .line 1897
    .local v9, encTs:[B
    array-length v14, v7

    add-int/lit8 v14, v14, 0x1

    array-length v15, v8

    add-int/2addr v14, v15

    add-int/lit8 v14, v14, 0x2

    array-length v15, v9

    add-int/2addr v14, v15

    array-length v15, v6

    add-int/2addr v14, v15

    new-array v11, v14, [B

    .line 1906
    .local v11, pdu:[B
    const/4 v2, 0x0

    .line 1907
    .local v2, c:I
    const/4 v14, 0x0

    array-length v15, v7

    invoke-static {v7, v14, v11, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1908
    array-length v14, v7

    add-int/2addr v2, v14

    .line 1910
    const/4 v14, 0x4

    aput-byte v14, v11, v2

    .line 1911
    add-int/lit8 v2, v2, 0x1

    .line 1913
    const/4 v14, 0x0

    array-length v15, v8

    invoke-static {v8, v14, v11, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1914
    array-length v14, v8

    add-int/2addr v2, v14

    .line 1916
    const/4 v14, 0x0

    aput-byte v14, v11, v2

    .line 1917
    add-int/lit8 v2, v2, 0x1

    .line 1918
    const/4 v14, 0x0

    aput-byte v14, v11, v2

    .line 1919
    add-int/lit8 v2, v2, 0x1

    .line 1921
    const/4 v14, 0x0

    array-length v15, v9

    invoke-static {v9, v14, v11, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1922
    array-length v14, v9

    add-int/2addr v2, v14

    .line 1924
    const/4 v14, 0x0

    array-length v15, v6

    invoke-static {v6, v14, v11, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1927
    const/4 v14, 0x1

    new-array v14, v14, [[B

    const/4 v15, 0x0

    aput-object v11, v14, v15

    return-object v14

    .line 1883
    .end local v2           #c:I
    .end local v9           #encTs:[B
    .end local v11           #pdu:[B
    :catch_0
    move-exception v5

    .line 1884
    .local v5, e:Lcom/android/internal/telephony/EncodeException;
    const-string v14, "MockSmsReceiver"

    const-string v15, "Failed to decode sender address. Using default."

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1885
    add-int/lit8 v14, v4, -0x4

    new-array v8, v14, [B

    .line 1886
    iget-object v14, v13, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    const/4 v15, 0x2

    const/16 v16, 0x0

    add-int/lit8 v17, v4, -0x4

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v14, v15, v8, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 1891
    .end local v5           #e:Lcom/android/internal/telephony/EncodeException;
    :cond_0
    add-int/lit8 v14, v4, -0x4

    new-array v8, v14, [B

    .line 1892
    iget-object v14, v13, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    const/4 v15, 0x2

    const/16 v16, 0x0

    add-int/lit8 v17, v4, -0x4

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v14, v15, v8, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1773
    const-string v14, "MockSmsReceiver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "New mock SMS reception request. Intent: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/SMSDispatcher$MockSmsReceiver;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v14, v14, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "mock_sms"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    const/4 v1, 0x1

    .line 1780
    .local v1, allowMockSMS:Z
    :goto_0
    if-nez v1, :cond_2

    .line 1782
    const-string v14, "MockSmsReceiver"

    const-string v15, "Mock SMS is not allowed. Enable Mock SMS on Settings/Delevelopment."

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    .end local v1           #allowMockSMS:Z
    :cond_0
    :goto_1
    return-void

    .line 1778
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1788
    .restart local v1       #allowMockSMS:Z
    :cond_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1789
    .local v10, msgs:Ljava/util/List;,"Ljava/util/List<[[B>;"
    const-string v14, "pdus"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v14

    check-cast v14, [Ljava/lang/Object;

    move-object v0, v14

    check-cast v0, [Ljava/lang/Object;

    move-object v7, v0

    .line 1790
    .local v7, messages:[Ljava/lang/Object;
    if-eqz v7, :cond_5

    array-length v14, v7

    if-lez v14, :cond_5

    .line 1792
    array-length v14, v7

    new-array v11, v14, [[B

    .line 1793
    .local v11, pdus:[[B
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    array-length v14, v7

    if-ge v5, v14, :cond_3

    .line 1794
    aget-object v14, v7, v5

    check-cast v14, [B

    check-cast v14, [B

    aput-object v14, v11, v5

    .line 1793
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1796
    :cond_3
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1827
    .end local v5           #i:I
    .end local v11           #pdus:[[B
    :cond_4
    const-string v14, "MockSmsReceiver"

    const-string v15, "Mock SMS. Number of msg: %d"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[B

    .line 1831
    .restart local v11       #pdus:[[B
    new-instance v8, Landroid/content/Intent;

    const-string v14, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v8, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1832
    .local v8, mockSmsIntent:Landroid/content/Intent;
    const-string v14, "pdus"

    invoke-virtual {v8, v14, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1833
    const-string v14, "format"

    const-string v15, "3gpp"

    invoke-virtual {v8, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1834
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/SMSDispatcher$MockSmsReceiver;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v15, "android.permission.RECEIVE_SMS"

    const/16 v16, 0x10

    move/from16 v0, v16

    invoke-virtual {v14, v8, v15, v0}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1838
    .end local v1           #allowMockSMS:Z
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #messages:[Ljava/lang/Object;
    .end local v8           #mockSmsIntent:Landroid/content/Intent;
    .end local v10           #msgs:Ljava/util/List;,"Ljava/util/List<[[B>;"
    .end local v11           #pdus:[[B
    :catch_0
    move-exception v2

    .line 1839
    .local v2, ex:Ljava/lang/Exception;
    const-string v14, "MockSmsReceiver"

    const-string v15, "Failed to dispatch SMS"

    invoke-static {v14, v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1800
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v1       #allowMockSMS:Z
    .restart local v7       #messages:[Ljava/lang/Object;
    .restart local v10       #msgs:Ljava/util/List;,"Ljava/util/List<[[B>;"
    :cond_5
    :try_start_1
    const-string v14, "scAddr"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1801
    .local v12, scAddress:Ljava/lang/String;
    const-string v14, "senderAddr"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1802
    .local v13, senderAddress:Ljava/lang/String;
    const-string v14, "msg"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1805
    .local v9, msg:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 1806
    const-string v12, "+01123456789"

    .line 1808
    :cond_6
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 1809
    const-string v13, "+01123456789"

    .line 1811
    :cond_7
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 1812
    const-string v9, "This is a mock SMS message."

    .line 1814
    :cond_8
    const-string v14, "MockSmsReceiver"

    const-string v15, "Mock SMS. scAddress: %s, senderAddress: %s, msg: %s"

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v12, v16, v17

    const/16 v17, 0x1

    aput-object v13, v16, v17

    const/16 v17, 0x2

    aput-object v9, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    invoke-static {v9}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1821
    .local v4, fragmentMsgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1822
    .local v3, fragmentMsg:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v3}, Lcom/android/internal/telephony/SMSDispatcher$MockSmsReceiver;->getPdus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[[B

    move-result-object v14

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public final registerReceiver()V
    .locals 5

    .prologue
    .line 1747
    :try_start_0
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 1748
    .local v2, handler:Landroid/os/Handler;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1749
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v3, "android.provider.Telephony.MOCK_SMS_RECEIVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1750
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$MockSmsReceiver;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v3, v3, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.SEND_MOCK_SMS"

    invoke-virtual {v3, p0, v1, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1751
    const-string v3, "MockSmsReceiver"

    const-string v4, "Registered MockSmsReceiver"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1755
    .end local v1           #filter:Landroid/content/IntentFilter;
    .end local v2           #handler:Landroid/os/Handler;
    :goto_0
    return-void

    .line 1752
    :catch_0
    move-exception v0

    .line 1753
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "MockSmsReceiver"

    const-string v4, "Failed to register MockSmsReceiver"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final unregisterReceiver()V
    .locals 3

    .prologue
    .line 1762
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher$MockSmsReceiver;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v1, v1, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1766
    :goto_0
    return-void

    .line 1763
    :catch_0
    move-exception v0

    .line 1764
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "MockSmsReceiver"

    const-string v2, "Failed to unregister MockSmsReceiver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
