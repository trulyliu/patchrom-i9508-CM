.class public Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;
.super Landroid/widget/FrameLayout;
.source "KeyguardTransportControlView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$SavedState;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$IRemoteControlDisplayWeak;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z = false

.field private static final DISPLAY_TIMEOUT_MS:I = 0x1388

.field private static final MSG_SET_ARTWORK:I = 0x67

.field private static final MSG_SET_GENERATION_ID:I = 0x68

.field private static final MSG_SET_METADATA:I = 0x65

.field private static final MSG_SET_TRANSPORT_CONTROLS:I = 0x66

.field private static final MSG_UPDATE_STATE:I = 0x64

.field protected static final TAG:Ljava/lang/String; = "TransportControlView"


# instance fields
.field private mAlbumArt:Landroid/widget/ImageView;

.field private mAttached:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBtnNext:Landroid/widget/ImageView;

.field private mBtnPlay:Landroid/widget/ImageView;

.field private mBtnPrev:Landroid/widget/ImageView;

.field private mClientGeneration:I

.field private mClientIntent:Landroid/app/PendingIntent;

.field private mCurrentPlayState:I

.field private mHandler:Landroid/os/Handler;

.field private mIRCD:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$IRemoteControlDisplayWeak;

.field private mMetadata:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;

.field private mPopulateMetadataWhenAttached:Landroid/os/Bundle;

.field private mTrackTitle:Landroid/widget/TextView;

.field private mTransportControlFlags:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 184
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mPopulateMetadataWhenAttached:Landroid/os/Bundle;

    .line 85
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mHandler:Landroid/os/Handler;

    .line 186
    new-instance v0, Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/media/AudioManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mAudioManager:Landroid/media/AudioManager;

    .line 187
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mCurrentPlayState:I

    .line 188
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$IRemoteControlDisplayWeak;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$IRemoteControlDisplayWeak;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mIRCD:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$IRemoteControlDisplayWeak;

    .line 189
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mClientGeneration:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mClientGeneration:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->updatePlayPauseState(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->updateMetadata(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->updateTransportControls(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;)Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mAlbumArt:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mClientIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method private getMdString(Landroid/os/Bundle;I)Ljava/lang/String;
    .locals 1
    .parameter "data"
    .parameter "id"

    .prologue
    .line 257
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private populateMetadata()V
    .locals 8

    .prologue
    const/16 v7, 0x21

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 280
    .local v3, trackTitleLength:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;->access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 281
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;->access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;->access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 284
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;->artist:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 285
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 286
    const-string v4, " - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;->artist:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;->albumTitle:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 291
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_3

    .line 292
    const-string v4, " - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;->albumTitle:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    :cond_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mTrackTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 297
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mTrackTitle:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    .line 298
    .local v2, str:Landroid/text/Spannable;
    if-eqz v3, :cond_5

    .line 299
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    const/4 v5, -0x1

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5, v3, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 301
    add-int/lit8 v3, v3, 0x1

    .line 303
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-le v4, v3, :cond_6

    .line 304
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    const v5, 0x7fffffff

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-interface {v2, v4, v3, v5, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 308
    :cond_6
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mAlbumArt:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 309
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mTransportControlFlags:I

    .line 310
    .local v0, flags:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mBtnPrev:Landroid/widget/ImageView;

    const/4 v5, 0x1

    invoke-static {v4, v0, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->setVisibilityBasedOnFlag(Landroid/view/View;II)V

    .line 311
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mBtnNext:Landroid/widget/ImageView;

    const/16 v5, 0x80

    invoke-static {v4, v0, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->setVisibilityBasedOnFlag(Landroid/view/View;II)V

    .line 312
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mBtnPlay:Landroid/widget/ImageView;

    const/16 v5, 0x3c

    invoke-static {v4, v0, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->setVisibilityBasedOnFlag(Landroid/view/View;II)V

    .line 318
    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mCurrentPlayState:I

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->updatePlayPauseState(I)V

    .line 319
    return-void
.end method

.method private sendMediaButtonClick(I)V
    .locals 6
    .parameter "keyCode"

    .prologue
    const/4 v4, 0x0

    .line 412
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mClientIntent:Landroid/app/PendingIntent;

    if-nez v3, :cond_0

    .line 414
    const-string v3, "TransportControlView"

    const-string v4, "sendMediaButtonClick(): No client is currently registered"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :goto_0
    return-void

    .line 419
    :cond_0
    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, v4, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 420
    .local v2, keyEvent:Landroid/view/KeyEvent;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 421
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 423
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mClientIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 429
    :goto_1
    new-instance v2, Landroid/view/KeyEvent;

    .end local v2           #keyEvent:Landroid/view/KeyEvent;
    const/4 v3, 0x1

    invoke-direct {v2, v3, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 430
    .restart local v2       #keyEvent:Landroid/view/KeyEvent;
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 431
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 433
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mClientIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 434
    :catch_0
    move-exception v0

    .line 435
    .local v0, e:Landroid/app/PendingIntent$CanceledException;
    const-string v3, "TransportControlView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error sending intent for media button up: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_0

    .line 424
    .end local v0           #e:Landroid/app/PendingIntent$CanceledException;
    :catch_1
    move-exception v0

    .line 425
    .restart local v0       #e:Landroid/app/PendingIntent$CanceledException;
    const-string v3, "TransportControlView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error sending intent for media button down: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_1
.end method

.method private static setVisibilityBasedOnFlag(Landroid/view/View;II)V
    .locals 1
    .parameter "view"
    .parameter "flags"
    .parameter "flag"

    .prologue
    .line 322
    and-int v0, p1, p2

    if-eqz v0, :cond_0

    .line 323
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 327
    :goto_0
    return-void

    .line 325
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateMetadata(Landroid/os/Bundle;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mAttached:Z

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;

    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->getMdString(Landroid/os/Bundle;I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;->artist:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;->access$802(Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 263
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;->artist:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;

    const/16 v1, 0xd

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->getMdString(Landroid/os/Bundle;I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;->artist:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;->access$802(Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;

    const/4 v1, 0x7

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->getMdString(Landroid/os/Bundle;I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;->access$902(Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 267
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->getMdString(Landroid/os/Bundle;I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;->albumTitle:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;->access$1002(Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 268
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->populateMetadata()V

    .line 272
    :goto_0
    return-void

    .line 270
    :cond_1
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mPopulateMetadataWhenAttached:Landroid/os/Bundle;

    goto :goto_0
.end method

.method private updatePlayPauseState(I)V
    .locals 4
    .parameter "state"

    .prologue
    .line 332
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mCurrentPlayState:I

    if-ne p1, v2, :cond_0

    .line 364
    :goto_0
    return-void

    .line 337
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 357
    const v1, 0x1080024

    .line 358
    .local v1, imageResId:I
    const v0, 0x10403a5

    .line 361
    .local v0, imageDescId:I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mBtnPlay:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 362
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mBtnPlay:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 363
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mCurrentPlayState:I

    goto :goto_0

    .line 339
    .end local v0           #imageDescId:I
    .end local v1           #imageResId:I
    :sswitch_0
    const v1, 0x108008a

    .line 342
    .restart local v1       #imageResId:I
    const v0, 0x10403a5

    .line 343
    .restart local v0       #imageDescId:I
    goto :goto_1

    .line 346
    .end local v0           #imageDescId:I
    .end local v1           #imageResId:I
    :sswitch_1
    const v1, 0x1080023

    .line 347
    .restart local v1       #imageResId:I
    const v0, 0x10403a4

    .line 348
    .restart local v0       #imageDescId:I
    goto :goto_1

    .line 351
    .end local v0           #imageDescId:I
    .end local v1           #imageResId:I
    :sswitch_2
    const v1, 0x1080354

    .line 352
    .restart local v1       #imageResId:I
    const v0, 0x10403a6

    .line 353
    .restart local v0       #imageDescId:I
    goto :goto_1

    .line 337
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x8 -> :sswitch_2
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method private updateTransportControls(I)V
    .locals 0
    .parameter "transportControlFlags"

    .prologue
    .line 192
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mTransportControlFlags:I

    .line 193
    return-void
.end method

.method private wasPlayingRecently(IJ)Z
    .locals 6
    .parameter "state"
    .parameter "stateChangeTimeMs"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 445
    packed-switch p1, :pswitch_data_0

    .line 469
    const-string v0, "TransportControlView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown playback state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in wasPlayingRecently()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 470
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 455
    goto :goto_0

    .line 467
    :pswitch_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, p2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 445
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 212
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 214
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mPopulateMetadataWhenAttached:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mPopulateMetadataWhenAttached:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->updateMetadata(Landroid/os/Bundle;)V

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mPopulateMetadataWhenAttached:Landroid/os/Bundle;

    .line 218
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mAttached:Z

    if-nez v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mIRCD:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$IRemoteControlDisplayWeak;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    .line 222
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mAttached:Z

    .line 223
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 397
    const/4 v0, -0x1

    .line 398
    .local v0, keyCode:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mBtnPrev:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_2

    .line 399
    const/16 v0, 0x58

    .line 406
    :cond_0
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 407
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->sendMediaButtonClick(I)V

    .line 409
    :cond_1
    return-void

    .line 400
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mBtnNext:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_3

    .line 401
    const/16 v0, 0x57

    goto :goto_0

    .line 402
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mBtnPlay:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_0

    .line 403
    const/16 v0, 0x55

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 237
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 238
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mAttached:Z

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mIRCD:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$IRemoteControlDisplayWeak;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    .line 242
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mAttached:Z

    .line 243
    return-void
.end method

.method public onFinishInflate()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 197
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 198
    const v5, 0x1020016

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mTrackTitle:Landroid/widget/TextView;

    .line 199
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mTrackTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 200
    const v5, 0x10202f4

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mAlbumArt:Landroid/widget/ImageView;

    .line 201
    const v5, 0x10202f5

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mBtnPrev:Landroid/widget/ImageView;

    .line 202
    const v5, 0x10202f6

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mBtnPlay:Landroid/widget/ImageView;

    .line 203
    const v5, 0x10202f7

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mBtnNext:Landroid/widget/ImageView;

    .line 204
    const/4 v5, 0x3

    new-array v1, v5, [Landroid/view/View;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mBtnPrev:Landroid/widget/ImageView;

    aput-object v6, v1, v5

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mBtnPlay:Landroid/widget/ImageView;

    aput-object v5, v1, v7

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mBtnNext:Landroid/widget/ImageView;

    aput-object v6, v1, v5

    .line 205
    .local v1, buttons:[Landroid/view/View;
    move-object v0, v1

    .local v0, arr$:[Landroid/view/View;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 206
    .local v4, view:Landroid/view/View;
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 208
    .end local v4           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 227
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mAttached:Z

    if-eqz v1, :cond_0

    .line 228
    const/16 v1, 0x200

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 230
    .local v0, dim:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->mIRCD:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$IRemoteControlDisplayWeak;

    invoke-virtual {v1, v2, v0, v0}, Landroid/media/AudioManager;->remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V

    .line 232
    .end local v0           #dim:I
    :cond_0
    return-void
.end method

.method public providesClock()Z
    .locals 1

    .prologue
    .line 441
    const/4 v0, 0x0

    return v0
.end method
