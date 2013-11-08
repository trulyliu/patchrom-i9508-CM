.class Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStereoListenerTransport;
.super Lcom/stericsson/hardware/fm/IOnStereoListener$Stub;
.source "FmReceiverImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericsson/hardware/fm/FmReceiverImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnStereoListenerTransport"
.end annotation


# static fields
.field private static final TYPE_ON_STEREO:I = 0x1


# instance fields
.field private mListener:Lcom/stericsson/hardware/fm/FmReceiver$OnPlayingInStereoListener;

.field private final mListenerHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/stericsson/hardware/fm/FmReceiver$OnPlayingInStereoListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    invoke-direct {p0}, Lcom/stericsson/hardware/fm/IOnStereoListener$Stub;-><init>()V

    iput-object p1, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStereoListenerTransport;->mListener:Lcom/stericsson/hardware/fm/FmReceiver$OnPlayingInStereoListener;

    new-instance v0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStereoListenerTransport$1;

    invoke-direct {v0, p0}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStereoListenerTransport$1;-><init>(Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStereoListenerTransport;)V

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStereoListenerTransport;->mListenerHandler:Landroid/os/Handler;

    return-void
.end method

.method private _handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .local v0, b:Landroid/os/Bundle;
    const-string v2, "inStereo"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .local v1, inStereo:Z
    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStereoListenerTransport;->mListener:Lcom/stericsson/hardware/fm/FmReceiver$OnPlayingInStereoListener;

    invoke-interface {v2, v1}, Lcom/stericsson/hardware/fm/FmReceiver$OnPlayingInStereoListener;->onPlayingInStereo(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$800(Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStereoListenerTransport;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStereoListenerTransport;->_handleMessage(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public onPlayingInStereo(Z)V
    .locals 3
    .parameter "inStereo"

    .prologue
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, b:Landroid/os/Bundle;
    const-string v2, "inStereo"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverImpl$OnStereoListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
