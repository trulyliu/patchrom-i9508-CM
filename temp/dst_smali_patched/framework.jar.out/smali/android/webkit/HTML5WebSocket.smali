.class public final Landroid/webkit/HTML5WebSocket;
.super Landroid/os/Handler;
.source "HTML5WebSocket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/HTML5WebSocket$WebSocket;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HTML5WebSocket"

.field private static final WEB_SOCKET_CLOSE:I = 0x65

.field private static final WEB_SOCKET_CLOSED:I = 0xc9

.field private static final WEB_SOCKET_CONNECTED:I = 0xc8

.field private static final WEB_SOCKET_ERROR:I = 0xcb

.field private static final WEB_SOCKET_MESSAGE:I = 0xca

.field private static final WEB_SOCKET_SEND:I = 0x64


# instance fields
.field private mNativePointer:I

.field private mWebCoreHandler:Landroid/os/Handler;

.field private mWebSocket:Landroid/webkit/HTML5WebSocket$WebSocket;


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 4
    .parameter "nativePtr"
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v2, 0x0

    iput v2, p0, Landroid/webkit/HTML5WebSocket;->mNativePointer:I

    iput-object v3, p0, Landroid/webkit/HTML5WebSocket;->mWebCoreHandler:Landroid/os/Handler;

    iput-object v3, p0, Landroid/webkit/HTML5WebSocket;->mWebSocket:Landroid/webkit/HTML5WebSocket$WebSocket;

    iput p1, p0, Landroid/webkit/HTML5WebSocket;->mNativePointer:I

    invoke-direct {p0}, Landroid/webkit/HTML5WebSocket;->createWebCoreHandler()V

    const/4 v1, 0x0

    .local v1, th:Ljava/lang/Thread;
    :try_start_0
    new-instance v2, Landroid/webkit/HTML5WebSocket$WebSocket;

    invoke-direct {v2, p0}, Landroid/webkit/HTML5WebSocket$WebSocket;-><init>(Landroid/webkit/HTML5WebSocket;)V

    iput-object v2, p0, Landroid/webkit/HTML5WebSocket;->mWebSocket:Landroid/webkit/HTML5WebSocket$WebSocket;

    iget-object v2, p0, Landroid/webkit/HTML5WebSocket;->mWebSocket:Landroid/webkit/HTML5WebSocket$WebSocket;

    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/webkit/HTML5WebSocket$WebSocket;->connect(Ljava/net/URI;)Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    iget-object v2, p0, Landroid/webkit/HTML5WebSocket;->mWebSocket:Landroid/webkit/HTML5WebSocket$WebSocket;

    invoke-virtual {v2}, Landroid/webkit/HTML5WebSocket$WebSocket;->isSocketSecure()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "SSL WebSockets aren\'t supported now!"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/webkit/HTML5WebSocket;->onError(Ljava/lang/Throwable;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/webkit/HTML5WebSocket;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/webkit/HTML5WebSocket;->mNativePointer:I

    return v0
.end method

.method static synthetic access$100(Landroid/webkit/HTML5WebSocket;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/webkit/HTML5WebSocket;->nativeOnWebSocketConnected(I)V

    return-void
.end method

.method static synthetic access$200(Landroid/webkit/HTML5WebSocket;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/webkit/HTML5WebSocket;->nativeOnWebSocketClosed(I)V

    return-void
.end method

.method static synthetic access$300(Landroid/webkit/HTML5WebSocket;)Landroid/webkit/HTML5WebSocket$WebSocket;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/webkit/HTML5WebSocket;->mWebSocket:Landroid/webkit/HTML5WebSocket$WebSocket;

    return-object v0
.end method

.method static synthetic access$400(Landroid/webkit/HTML5WebSocket;I[BI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/HTML5WebSocket;->nativeOnWebSocketMessage(I[BI)V

    return-void
.end method

.method static synthetic access$500(Landroid/webkit/HTML5WebSocket;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/webkit/HTML5WebSocket;->nativeOnWebSocketError(I)V

    return-void
.end method

.method private createWebCoreHandler()V
    .locals 1

    .prologue
    new-instance v0, Landroid/webkit/HTML5WebSocket$1;

    invoke-direct {v0, p0}, Landroid/webkit/HTML5WebSocket$1;-><init>(Landroid/webkit/HTML5WebSocket;)V

    iput-object v0, p0, Landroid/webkit/HTML5WebSocket;->mWebCoreHandler:Landroid/os/Handler;

    return-void
.end method

.method public static getInstance(ILjava/lang/String;)Landroid/webkit/HTML5WebSocket;
    .locals 1
    .parameter "nativePtr"
    .parameter "uri"

    .prologue
    new-instance v0, Landroid/webkit/HTML5WebSocket;

    invoke-direct {v0, p0, p1}, Landroid/webkit/HTML5WebSocket;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method private native nativeOnWebSocketClosed(I)V
.end method

.method private native nativeOnWebSocketConnected(I)V
.end method

.method private native nativeOnWebSocketError(I)V
.end method

.method private native nativeOnWebSocketMessage(I[BI)V
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    const/16 v1, 0x65

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5WebSocket;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, message:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/webkit/HTML5WebSocket;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/webkit/HTML5WebSocket;->mWebSocket:Landroid/webkit/HTML5WebSocket$WebSocket;

    invoke-virtual {v0}, Landroid/webkit/HTML5WebSocket$WebSocket;->send()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/webkit/HTML5WebSocket;->mWebSocket:Landroid/webkit/HTML5WebSocket$WebSocket;

    invoke-virtual {v0}, Landroid/webkit/HTML5WebSocket$WebSocket;->close()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClosed()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/webkit/HTML5WebSocket;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xc9

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/webkit/HTML5WebSocket;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onConnected()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/webkit/HTML5WebSocket;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xc8

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/webkit/HTML5WebSocket;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .parameter "t"

    .prologue
    iget-object v1, p0, Landroid/webkit/HTML5WebSocket;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xcb

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/webkit/HTML5WebSocket;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onMessage()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/webkit/HTML5WebSocket;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xca

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/webkit/HTML5WebSocket;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public send([B)V
    .locals 4
    .parameter "bytes"

    .prologue
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    array-length v3, p1

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .local v0, data:Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :try_start_0
    iget-object v3, p0, Landroid/webkit/HTML5WebSocket;->mWebSocket:Landroid/webkit/HTML5WebSocket$WebSocket;

    invoke-virtual {v3, v0}, Landroid/webkit/HTML5WebSocket$WebSocket;->putWriteQueueData(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/16 v3, 0x64

    invoke-virtual {p0, v3}, Landroid/webkit/HTML5WebSocket;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .local v2, message:Landroid/os/Message;
    invoke-virtual {p0, v2}, Landroid/webkit/HTML5WebSocket;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .end local v2           #message:Landroid/os/Message;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {p0, v1}, Landroid/webkit/HTML5WebSocket;->onError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
