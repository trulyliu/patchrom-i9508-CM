.class public Landroid/view/VolumePanel;
.super Landroid/os/Handler;
.source "VolumePanel.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/VolumePanel$WarningDialogReceiver;,
        Landroid/view/VolumePanel$StreamControl;,
        Landroid/view/VolumePanel$StreamResources;
    }
.end annotation


# static fields
.field private static final BEEP_DURATION:I = 0x96

.field private static final FREE_DELAY:I = 0x2710

.field private static LOGD:Z = false

.field private static final MAX_VOLUME:I = 0x64

.field private static final MSG_DISPLAY_SAFE_VOLUME_WARNING:I = 0xb

.field private static final MSG_FREE_RESOURCES:I = 0x1

.field private static final MSG_MUTE_CHANGED:I = 0x7

.field private static final MSG_PLAY_SOUND:I = 0x2

.field private static final MSG_REMOTE_VOLUME_CHANGED:I = 0x8

.field private static final MSG_REMOTE_VOLUME_UPDATE_IF_SHOWN:I = 0x9

.field private static final MSG_RINGER_MODE_CHANGED:I = 0x6

.field private static final MSG_SLIDER_VISIBILITY_CHANGED:I = 0xa

.field private static final MSG_STOP_SOUNDS:I = 0x3

.field private static final MSG_TIMEOUT:I = 0x5

.field private static final MSG_VIBRATE:I = 0x4

.field private static final MSG_VOLUME_CHANGED:I = 0x0

.field public static final PLAY_SOUND_DELAY:I = 0x12c

.field private static final STREAMS:[Landroid/view/VolumePanel$StreamResources; = null

.field private static final STREAM_MASTER:I = -0x64

.field private static final TAG:Ljava/lang/String; = "VolumePanel"

.field private static final TIMEOUT_DELAY:I = 0xbb8

.field public static final VIBRATE_DELAY:I = 0x12c

.field private static final VIBRATE_DURATION:I = 0x12c

.field public static final VOLUME_OVERLAY_EXPANDABLE:I = 0x1

.field public static final VOLUME_OVERLAY_EXPANDED:I = 0x2

.field public static final VOLUME_OVERLAY_NONE:I = 0x3

.field public static final VOLUME_OVERLAY_SINGLE:I

.field private static sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

.field private static sConfirmSafeVolumeLock:Ljava/lang/Object;


# instance fields
.field private mActiveStreamType:I

.field private mAudioManager:Landroid/media/AudioManager;

.field protected mAudioService:Landroid/media/AudioService;

.field protected mContext:Landroid/content/Context;

.field private mCurrentOverlayStyle:I

.field private final mDialog:Landroid/app/Dialog;

.field private final mDivider:Landroid/view/View;

.field private final mMoreButton:Landroid/view/View;

.field private final mPanel:Landroid/view/ViewGroup;

.field private final mPlayMasterStreamTones:Z

.field private mRingIsSilent:Z

.field private mSettingsObserver:Landroid/database/ContentObserver;

.field private mShowCombinedVolumes:Z

.field private final mSliderGroup:Landroid/view/ViewGroup;

.field private mStreamControls:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/VolumePanel$StreamControl;",
            ">;"
        }
    .end annotation
.end field

.field private mToneGenerators:[Landroid/media/ToneGenerator;

.field private mVibrator:Landroid/os/Vibrator;

.field private final mView:Landroid/view/View;

.field private mVoiceCapable:Z

.field private mVolumeLinkNotification:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    sput-boolean v2, Landroid/view/VolumePanel;->LOGD:Z

    .line 201
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/view/VolumePanel$StreamResources;

    sget-object v1, Landroid/view/VolumePanel$StreamResources;->BluetoothSCOStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->RingerStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->VoiceStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->MediaStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->NotificationStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->AlarmStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->MasterStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->RemoteStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    sput-object v0, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    .line 238
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/VolumePanel;->sConfirmSafeVolumeLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioService;)V
    .locals 13
    .parameter "context"
    .parameter "volumeService"

    .prologue
    .line 275
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 117
    const/4 v9, -0x1

    iput v9, p0, Landroid/view/VolumePanel;->mCurrentOverlayStyle:I

    .line 137
    const/4 v9, -0x1

    iput v9, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    .line 226
    new-instance v9, Landroid/view/VolumePanel$1;

    invoke-direct {v9, p0, p0}, Landroid/view/VolumePanel$1;-><init>(Landroid/view/VolumePanel;Landroid/os/Handler;)V

    iput-object v9, p0, Landroid/view/VolumePanel;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 276
    iput-object p1, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    .line 277
    const-string v9, "audio"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/AudioManager;

    iput-object v9, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    .line 278
    iput-object p2, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    .line 281
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1110010

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 283
    .local v7, useMasterVolume:Z
    if-eqz v7, :cond_1

    .line 284
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v9, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    array-length v9, v9

    if-ge v1, v9, :cond_1

    .line 285
    sget-object v9, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v6, v9, v1

    .line 286
    .local v6, streamRes:Landroid/view/VolumePanel$StreamResources;
    iget v9, v6, Landroid/view/VolumePanel$StreamResources;->streamType:I

    const/16 v10, -0x64

    if-ne v9, v10, :cond_0

    const/4 v9, 0x1

    :goto_1
    iput-boolean v9, v6, Landroid/view/VolumePanel$StreamResources;->show:Z

    .line 284
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 286
    :cond_0
    const/4 v9, 0x0

    goto :goto_1

    .line 290
    .end local v1           #i:I
    .end local v6           #streamRes:Landroid/view/VolumePanel$StreamResources;
    :cond_1
    const-string v9, "layout_inflater"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 292
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v9, 0x10900dc

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    .line 293
    iget-object v9, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    new-instance v10, Landroid/view/VolumePanel$2;

    invoke-direct {v10, p0}, Landroid/view/VolumePanel$2;-><init>(Landroid/view/VolumePanel;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 299
    iget-object v9, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    const v10, 0x1020397

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    iput-object v9, p0, Landroid/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    .line 300
    iget-object v9, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    const v10, 0x1020398

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    iput-object v9, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    .line 301
    iget-object v9, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    const v10, 0x102030c

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    .line 302
    iget-object v9, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    const v10, 0x1020399

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Landroid/view/VolumePanel;->mDivider:Landroid/view/View;

    .line 304
    new-instance v9, Landroid/view/VolumePanel$3;

    const v10, 0x1030302

    invoke-direct {v9, p0, p1, v10}, Landroid/view/VolumePanel$3;-><init>(Landroid/view/VolumePanel;Landroid/content/Context;I)V

    iput-object v9, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    .line 314
    iget-object v9, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    const-string v10, "Volume control"

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v9, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    iget-object v10, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 316
    iget-object v9, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    new-instance v10, Landroid/view/VolumePanel$4;

    invoke-direct {v10, p0}, Landroid/view/VolumePanel$4;-><init>(Landroid/view/VolumePanel;)V

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 323
    iget-object v9, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    .line 324
    .local v8, window:Landroid/view/Window;
    const/16 v9, 0x30

    invoke-virtual {v8, v9}, Landroid/view/Window;->setGravity(I)V

    .line 325
    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 326
    .local v3, lp:Landroid/view/WindowManager$LayoutParams;
    const/4 v9, 0x0

    iput-object v9, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 328
    iget-object v9, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x105004d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    iput v9, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 330
    const/16 v9, 0x7e4

    iput v9, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 331
    const/4 v9, -0x2

    iput v9, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 332
    const/4 v9, -0x2

    iput v9, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 333
    iget v9, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v9, v9, 0x20

    iput v9, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 334
    invoke-virtual {v8, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 335
    const v9, 0x40028

    invoke-virtual {v8, v9}, Landroid/view/Window;->addFlags(I)V

    .line 338
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v9

    new-array v9, v9, [Landroid/media/ToneGenerator;

    iput-object v9, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    .line 339
    const-string/jumbo v9, "vibrator"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Vibrator;

    iput-object v9, p0, Landroid/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    .line 340
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1110032

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    iput-boolean v9, p0, Landroid/view/VolumePanel;->mVoiceCapable:Z

    .line 343
    iget-object v9, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "volume_link_notification"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    const/4 v9, 0x1

    :goto_2
    iput-boolean v9, p0, Landroid/view/VolumePanel;->mVolumeLinkNotification:Z

    .line 345
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "mode_volume_overlay"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 347
    .local v0, chosenStyle:I
    invoke-direct {p0, v0}, Landroid/view/VolumePanel;->changeOverlayStyle(I)V

    .line 349
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "volume_link_notification"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    iget-object v12, p0, Landroid/view/VolumePanel;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 352
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "mode_volume_overlay"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    iget-object v12, p0, Landroid/view/VolumePanel;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 357
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1110010

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 359
    .local v5, masterVolumeOnly:Z
    iget-object v9, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1110011

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 362
    .local v4, masterVolumeKeySounds:Z
    if-eqz v5, :cond_3

    if-eqz v4, :cond_3

    const/4 v9, 0x1

    :goto_3
    iput-boolean v9, p0, Landroid/view/VolumePanel;->mPlayMasterStreamTones:Z

    .line 365
    iget-object v9, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v9, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    invoke-direct {p0}, Landroid/view/VolumePanel;->listenToRingerMode()V

    .line 367
    return-void

    .line 343
    .end local v0           #chosenStyle:I
    .end local v4           #masterVolumeKeySounds:Z
    .end local v5           #masterVolumeOnly:Z
    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    .line 362
    .restart local v0       #chosenStyle:I
    .restart local v4       #masterVolumeKeySounds:Z
    .restart local v5       #masterVolumeOnly:Z
    :cond_3
    const/4 v9, 0x0

    goto :goto_3
.end method

.method static synthetic access$002(Landroid/view/VolumePanel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Landroid/view/VolumePanel;->mVolumeLinkNotification:Z

    return p1
.end method

.method static synthetic access$100(Landroid/view/VolumePanel;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/view/VolumePanel;->changeOverlayStyle(I)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Landroid/view/VolumePanel;->sConfirmSafeVolumeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$302(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    sput-object p0, Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$400(Landroid/view/VolumePanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/view/VolumePanel;->forceTimeout()V

    return-void
.end method

.method static synthetic access$500(Landroid/view/VolumePanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/view/VolumePanel;->resetTimeout()V

    return-void
.end method

.method static synthetic access$600(Landroid/view/VolumePanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    return v0
.end method

.method static synthetic access$602(Landroid/view/VolumePanel;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    return p1
.end method

.method static synthetic access$700(Landroid/view/VolumePanel;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private addOtherVolumes()V
    .locals 5

    .prologue
    .line 511
    iget-boolean v3, p0, Landroid/view/VolumePanel;->mShowCombinedVolumes:Z

    if-nez v3, :cond_1

    .line 532
    :cond_0
    return-void

    .line 513
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 515
    sget-object v3, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v3, v3, v0

    iget v2, v3, Landroid/view/VolumePanel$StreamResources;->streamType:I

    .line 516
    .local v2, streamType:I
    sget-object v3, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Landroid/view/VolumePanel$StreamResources;->show:Z

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    if-ne v2, v3, :cond_3

    .line 513
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 520
    :cond_3
    iget-boolean v3, p0, Landroid/view/VolumePanel;->mVoiceCapable:Z

    if-nez v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    .line 524
    :cond_4
    iget-boolean v3, p0, Landroid/view/VolumePanel;->mVoiceCapable:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Landroid/view/VolumePanel;->mVolumeLinkNotification:Z

    if-eqz v3, :cond_5

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    .line 528
    :cond_5
    iget-object v3, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/VolumePanel$StreamControl;

    .line 529
    .local v1, sc:Landroid/view/VolumePanel$StreamControl;
    iget-object v3, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget-object v4, v1, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 530
    invoke-direct {p0, v1}, Landroid/view/VolumePanel;->updateSlider(Landroid/view/VolumePanel$StreamControl;)V

    goto :goto_1
.end method

.method private changeOverlayStyle(I)V
    .locals 7
    .parameter "newStyle"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 391
    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeOverlayStyle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget v0, p0, Landroid/view/VolumePanel;->mCurrentOverlayStyle:I

    if-ne p1, v0, :cond_0

    .line 422
    :goto_0
    return-void

    .line 394
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 396
    :pswitch_0
    iget-object v0, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Landroid/view/VolumePanel;->mDivider:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 398
    iput-boolean v3, p0, Landroid/view/VolumePanel;->mShowCombinedVolumes:Z

    .line 399
    iput v3, p0, Landroid/view/VolumePanel;->mCurrentOverlayStyle:I

    goto :goto_0

    .line 402
    :pswitch_1
    iget-object v0, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 403
    iget-object v0, p0, Landroid/view/VolumePanel;->mDivider:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 404
    iput-boolean v5, p0, Landroid/view/VolumePanel;->mShowCombinedVolumes:Z

    .line 405
    iput v5, p0, Landroid/view/VolumePanel;->mCurrentOverlayStyle:I

    goto :goto_0

    .line 408
    :pswitch_2
    iget-object v0, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 409
    iget-object v0, p0, Landroid/view/VolumePanel;->mDivider:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 410
    iput-boolean v5, p0, Landroid/view/VolumePanel;->mShowCombinedVolumes:Z

    .line 411
    iget v0, p0, Landroid/view/VolumePanel;->mCurrentOverlayStyle:I

    if-ne v0, v6, :cond_1

    .line 412
    invoke-direct {p0}, Landroid/view/VolumePanel;->addOtherVolumes()V

    .line 413
    invoke-direct {p0}, Landroid/view/VolumePanel;->expand()V

    .line 415
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Landroid/view/VolumePanel;->mCurrentOverlayStyle:I

    goto :goto_0

    .line 418
    :pswitch_3
    iput-boolean v3, p0, Landroid/view/VolumePanel;->mShowCombinedVolumes:Z

    .line 419
    iput v6, p0, Landroid/view/VolumePanel;->mCurrentOverlayStyle:I

    goto :goto_0

    .line 394
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private collapse()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 584
    iget-object v2, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 585
    iget-object v2, p0, Landroid/view/VolumePanel;->mDivider:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 586
    iget-object v2, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 587
    .local v0, count:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 588
    iget-object v2, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 587
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 590
    :cond_0
    return-void
.end method

.method private createSliders()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 465
    iget-object v7, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 467
    .local v1, inflater:Landroid/view/LayoutInflater;
    new-instance v7, Ljava/util/HashMap;

    sget-object v8, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    array-length v8, v8

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    iput-object v7, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    .line 468
    iget-object v7, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 469
    .local v3, res:Landroid/content/res/Resources;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v7, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    array-length v7, v7

    if-ge v0, v7, :cond_2

    .line 470
    sget-object v7, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v5, v7, v0

    .line 471
    .local v5, streamRes:Landroid/view/VolumePanel$StreamResources;
    iget v6, v5, Landroid/view/VolumePanel$StreamResources;->streamType:I

    .line 472
    .local v6, streamType:I
    new-instance v4, Landroid/view/VolumePanel$StreamControl;

    invoke-direct {v4, p0, v9}, Landroid/view/VolumePanel$StreamControl;-><init>(Landroid/view/VolumePanel;Landroid/view/VolumePanel$1;)V

    .line 473
    .local v4, sc:Landroid/view/VolumePanel$StreamControl;
    iput v6, v4, Landroid/view/VolumePanel$StreamControl;->streamType:I

    .line 474
    const v7, 0x10900dd

    invoke-virtual {v1, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, v4, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    .line 475
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 476
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v8, 0x102039a

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v4, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    .line 477
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 478
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v8, v5, Landroid/view/VolumePanel$StreamResources;->descRes:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 479
    iget v7, v5, Landroid/view/VolumePanel$StreamResources;->iconRes:I

    iput v7, v4, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    .line 480
    iget v7, v5, Landroid/view/VolumePanel$StreamResources;->iconMuteRes:I

    iput v7, v4, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 481
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v8, v4, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 482
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 483
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v8, 0x102033a

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/SeekBar;

    iput-object v7, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    .line 484
    const/4 v7, 0x6

    if-eq v6, v7, :cond_0

    if-nez v6, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 486
    .local v2, plusOne:I
    :goto_1
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-direct {p0, v6}, Landroid/view/VolumePanel;->getStreamMaxVolume(I)I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setMax(I)V

    .line 487
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v7, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 488
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v7, v4}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    .line 489
    iget-object v7, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 484
    .end local v2           #plusOne:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 491
    .end local v4           #sc:Landroid/view/VolumePanel$StreamControl;
    .end local v5           #streamRes:Landroid/view/VolumePanel$StreamResources;
    .end local v6           #streamType:I
    :cond_2
    return-void
.end method

.method private expand()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 563
    iget-object v2, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 564
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 565
    iget-object v2, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 566
    iget-object v2, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 564
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 569
    :cond_1
    iget-object v2, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 570
    iget-object v2, p0, Landroid/view/VolumePanel;->mDivider:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 571
    return-void
.end method

.method private forceTimeout()V
    .locals 1

    .prologue
    const/4 v0, 0x5

    .line 1115
    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 1116
    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->sendMessage(Landroid/os/Message;)Z

    .line 1117
    return-void
.end method

.method private getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;
    .locals 4
    .parameter "streamType"

    .prologue
    .line 987
    const/16 v1, -0x64

    if-ne p1, v1, :cond_0

    .line 991
    iget-boolean v1, p0, Landroid/view/VolumePanel;->mPlayMasterStreamTones:Z

    if-eqz v1, :cond_2

    .line 992
    const/4 p1, 0x1

    .line 997
    :cond_0
    monitor-enter p0

    .line 998
    :try_start_0
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 1000
    :try_start_1
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    new-instance v2, Landroid/media/ToneGenerator;

    const/16 v3, 0x64

    invoke-direct {v2, p1, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    aput-object v2, v1, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1008
    :cond_1
    :goto_0
    :try_start_2
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1

    monitor-exit p0

    :goto_1
    return-object v1

    .line 994
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 1001
    :catch_0
    move-exception v0

    .line 1002
    .local v0, e:Ljava/lang/RuntimeException;
    sget-boolean v1, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_1

    .line 1003
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ToneGenerator constructor failed with RuntimeException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1009
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getStreamMaxVolume(I)I
    .locals 1
    .parameter "streamType"

    .prologue
    .line 425
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 426
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMasterMaxVolume()I

    move-result v0

    .line 430
    :goto_0
    return v0

    .line 427
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_1

    .line 428
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRemoteStreamMaxVolume()I

    move-result v0

    goto :goto_0

    .line 430
    :cond_1
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    goto :goto_0
.end method

.method private getStreamVolume(I)I
    .locals 1
    .parameter "streamType"

    .prologue
    .line 435
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 436
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMasterVolume()I

    move-result v0

    .line 440
    :goto_0
    return v0

    .line 437
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_1

    .line 438
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRemoteStreamVolume()I

    move-result v0

    goto :goto_0

    .line 440
    :cond_1
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    goto :goto_0
.end method

.method private hideSlider(I)V
    .locals 5
    .parameter "mActiveStreamType"

    .prologue
    .line 574
    iget-object v3, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 575
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 576
    iget-object v3, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/VolumePanel$StreamControl;

    .line 577
    .local v2, sc:Landroid/view/VolumePanel$StreamControl;
    iget v3, v2, Landroid/view/VolumePanel$StreamControl;->streamType:I

    if-ne p1, v3, :cond_0

    .line 578
    iget-object v3, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 575
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 581
    .end local v2           #sc:Landroid/view/VolumePanel$StreamControl;
    :cond_1
    return-void
.end method

.method private isExpanded()Z
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMuted(I)Z
    .locals 1
    .parameter "streamType"

    .prologue
    .line 455
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 456
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMasterMute()Z

    move-result v0

    .line 460
    :goto_0
    return v0

    .line 457
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_2

    .line 458
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRemoteStreamVolume()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 460
    :cond_2
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    goto :goto_0
.end method

.method private listenToRingerMode()V
    .locals 3

    .prologue
    .line 375
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 376
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 377
    iget-object v1, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/view/VolumePanel$5;

    invoke-direct {v2, p0}, Landroid/view/VolumePanel$5;-><init>(Landroid/view/VolumePanel;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 388
    return-void
.end method

.method private reorderSliders(I)V
    .locals 4
    .parameter "activeStreamType"

    .prologue
    .line 494
    iget-object v1, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 496
    iget-object v1, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/VolumePanel$StreamControl;

    .line 497
    .local v0, active:Landroid/view/VolumePanel$StreamControl;
    if-nez v0, :cond_0

    .line 498
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing stream type! - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const/4 v1, -0x1

    iput v1, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    .line 507
    :goto_0
    invoke-direct {p0}, Landroid/view/VolumePanel;->addOtherVolumes()V

    .line 508
    return-void

    .line 501
    :cond_0
    iget-object v1, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget-object v2, v0, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 502
    iput p1, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    .line 503
    iget-object v1, v0, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 504
    invoke-direct {p0, v0}, Landroid/view/VolumePanel;->updateSlider(Landroid/view/VolumePanel$StreamControl;)V

    goto :goto_0
.end method

.method private resetTimeout()V
    .locals 3

    .prologue
    const/4 v0, 0x5

    .line 1110
    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 1111
    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1112
    return-void
.end method

.method private setMusicIcon(II)V
    .locals 3
    .parameter "resId"
    .parameter "resMuteId"

    .prologue
    .line 1018
    iget-object v1, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/VolumePanel$StreamControl;

    .line 1019
    .local v0, sc:Landroid/view/VolumePanel$StreamControl;
    if-eqz v0, :cond_0

    .line 1020
    iput p1, v0, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    .line 1021
    iput p2, v0, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 1022
    iget-object v2, v0, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v1, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Landroid/view/VolumePanel;->isMuted(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1024
    :cond_0
    return-void

    .line 1022
    :cond_1
    iget v1, v0, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    goto :goto_0
.end method

.method private setStreamVolume(III)V
    .locals 1
    .parameter "streamType"
    .parameter "index"
    .parameter "flags"

    .prologue
    .line 445
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 446
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p2, p3}, Landroid/media/AudioManager;->setMasterVolume(II)V

    .line 452
    :goto_0
    return-void

    .line 447
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_1

    .line 448
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0, p2}, Landroid/media/AudioService;->setRemoteStreamVolume(I)V

    goto :goto_0

    .line 450
    :cond_1
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method private updateSlider(Landroid/view/VolumePanel$StreamControl;)V
    .locals 4
    .parameter "sc"

    .prologue
    const/4 v3, 0x1

    .line 536
    iget-object v1, p1, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget v2, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v2}, Landroid/view/VolumePanel;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 537
    iget v1, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Landroid/view/VolumePanel;->isMuted(I)Z

    move-result v0

    .line 539
    .local v0, muted:Z
    iget-object v1, p1, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 540
    iget-object v2, p1, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget v1, p1, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 541
    iget v1, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 544
    iget-object v1, p1, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const v2, 0x10802a4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 546
    :cond_1
    iget v1, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    const/16 v2, -0xc8

    if-ne v1, v2, :cond_3

    .line 549
    iget-object v1, p1, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 556
    :goto_1
    return-void

    .line 540
    :cond_2
    iget v1, p1, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    goto :goto_0

    .line 550
    :cond_3
    iget v1, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    iget-object v2, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v2

    if-eq v1, v2, :cond_4

    if-nez v0, :cond_5

    :cond_4
    sget-object v1, Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_6

    .line 552
    :cond_5
    iget-object v1, p1, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_1

    .line 554
    :cond_6
    iget-object v1, p1, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1039
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1107
    :cond_0
    :goto_0
    return-void

    .line 1042
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Landroid/view/VolumePanel;->onVolumeChanged(II)V

    goto :goto_0

    .line 1047
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Landroid/view/VolumePanel;->onMuteChanged(II)V

    goto :goto_0

    .line 1052
    :pswitch_2
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onFreeResources()V

    goto :goto_0

    .line 1057
    :pswitch_3
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onStopSounds()V

    goto :goto_0

    .line 1062
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Landroid/view/VolumePanel;->onPlaySound(II)V

    goto :goto_0

    .line 1067
    :pswitch_5
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onVibrate()V

    goto :goto_0

    .line 1072
    :pswitch_6
    iget-object v0, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1073
    iget-object v0, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1074
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    .line 1076
    :cond_1
    sget-object v1, Landroid/view/VolumePanel;->sConfirmSafeVolumeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1077
    :try_start_0
    sget-object v0, Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 1078
    sget-object v0, Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1080
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1084
    :pswitch_7
    iget-object v0, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1085
    invoke-virtual {p0}, Landroid/view/VolumePanel;->updateStates()V

    goto :goto_0

    .line 1091
    :pswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Landroid/view/VolumePanel;->onRemoteVolumeChanged(II)V

    goto :goto_0

    .line 1096
    :pswitch_9
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onRemoteVolumeUpdateIfShown()V

    goto :goto_0

    .line 1100
    :pswitch_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Landroid/view/VolumePanel;->onSliderVisibilityChanged(II)V

    goto :goto_0

    .line 1104
    :pswitch_b
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->onDisplaySafeVolumeWarning(I)V

    goto :goto_0

    .line 1039
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1148
    iget-object v1, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    if-ne p1, v1, :cond_1

    .line 1149
    invoke-direct {p0}, Landroid/view/VolumePanel;->expand()V

    .line 1157
    :cond_0
    invoke-direct {p0}, Landroid/view/VolumePanel;->resetTimeout()V

    .line 1158
    :goto_0
    return-void

    .line 1150
    :cond_1
    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 1151
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SOUND_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1152
    .local v0, volumeSettings:Landroid/content/Intent;
    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1153
    invoke-direct {p0}, Landroid/view/VolumePanel;->forceTimeout()V

    .line 1154
    iget-object v1, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onDisplaySafeVolumeWarning(I)V
    .locals 5
    .parameter "flags"

    .prologue
    .line 954
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 955
    :cond_0
    sget-object v2, Landroid/view/VolumePanel;->sConfirmSafeVolumeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 956
    :try_start_0
    sget-object v1, Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 957
    monitor-exit v2

    .line 981
    :goto_0
    return-void

    .line 959
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x10405f5

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x1040013

    new-instance v4, Landroid/view/VolumePanel$6;

    invoke-direct {v4, p0}, Landroid/view/VolumePanel$6;-><init>(Landroid/view/VolumePanel;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x1040009

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x1010355

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    sput-object v1, Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    .line 970
    new-instance v0, Landroid/view/VolumePanel$WarningDialogReceiver;

    iget-object v1, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-direct {v0, v1, v3, p0}, Landroid/view/VolumePanel$WarningDialogReceiver;-><init>(Landroid/content/Context;Landroid/app/Dialog;Landroid/view/VolumePanel;)V

    .line 973
    .local v0, warning:Landroid/view/VolumePanel$WarningDialogReceiver;
    sget-object v1, Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 974
    sget-object v1, Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v3, 0x7d9

    invoke-virtual {v1, v3}, Landroid/view/Window;->setType(I)V

    .line 976
    sget-object v1, Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 977
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 978
    invoke-virtual {p0}, Landroid/view/VolumePanel;->updateStates()V

    .line 980
    .end local v0           #warning:Landroid/view/VolumePanel$WarningDialogReceiver;
    :cond_2
    invoke-direct {p0}, Landroid/view/VolumePanel;->resetTimeout()V

    goto :goto_0

    .line 977
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected onFreeResources()V
    .locals 3

    .prologue
    .line 1027
    monitor-enter p0

    .line 1028
    :try_start_0
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 1029
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 1030
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 1032
    :cond_0
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 1028
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1034
    :cond_1
    monitor-exit p0

    .line 1035
    return-void

    .line 1034
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onMuteChanged(II)V
    .locals 4
    .parameter "streamType"
    .parameter "flags"

    .prologue
    .line 708
    sget-boolean v1, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMuteChanged(streamType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :cond_0
    iget-object v1, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/VolumePanel$StreamControl;

    .line 711
    .local v0, sc:Landroid/view/VolumePanel$StreamControl;
    if-eqz v0, :cond_1

    .line 712
    iget-object v2, v0, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v1, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Landroid/view/VolumePanel;->isMuted(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v0, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 715
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/VolumePanel;->onVolumeChanged(II)V

    .line 716
    return-void

    .line 712
    :cond_2
    iget v1, v0, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    goto :goto_0
.end method

.method protected onPlaySound(II)V
    .locals 5
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v4, 0x3

    .line 845
    iget-object v1, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "volume_adjust_sounds_enabled"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 863
    :goto_0
    return-void

    .line 850
    :cond_0
    invoke-virtual {p0, v4}, Landroid/view/VolumePanel;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 851
    invoke-virtual {p0, v4}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 853
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onStopSounds()V

    .line 856
    :cond_1
    monitor-enter p0

    .line 857
    :try_start_0
    invoke-direct {p0, p1}, Landroid/view/VolumePanel;->getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;

    move-result-object v0

    .line 858
    .local v0, toneGen:Landroid/media/ToneGenerator;
    if-eqz v0, :cond_2

    .line 859
    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 860
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {p0, v1, v2, v3}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 862
    :cond_2
    monitor-exit p0

    goto :goto_0

    .end local v0           #toneGen:Landroid/media/ToneGenerator;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 1120
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 1121
    .local v1, tag:Ljava/lang/Object;
    if-eqz p3, :cond_0

    instance-of v2, v1, Landroid/view/VolumePanel$StreamControl;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1122
    check-cast v0, Landroid/view/VolumePanel$StreamControl;

    .line 1123
    .local v0, sc:Landroid/view/VolumePanel$StreamControl;
    iget v2, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v2}, Landroid/view/VolumePanel;->getStreamVolume(I)I

    move-result v2

    if-eq v2, p2, :cond_0

    .line 1124
    iget v2, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    const/4 v3, 0x0

    invoke-direct {p0, v2, p2, v3}, Landroid/view/VolumePanel;->setStreamVolume(III)V

    .line 1127
    .end local v0           #sc:Landroid/view/VolumePanel$StreamControl;
    :cond_0
    invoke-direct {p0}, Landroid/view/VolumePanel;->resetTimeout()V

    .line 1128
    return-void
.end method

.method protected onRemoteVolumeChanged(II)V
    .locals 6
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/16 v3, -0xc8

    .line 892
    sget-boolean v0, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRemoteVolumeChanged(stream:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 895
    :cond_1
    monitor-enter p0

    .line 896
    :try_start_0
    iget v0, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    if-eq v0, v3, :cond_2

    .line 897
    const/16 v0, -0xc8

    invoke-direct {p0, v0}, Landroid/view/VolumePanel;->reorderSliders(I)V

    .line 899
    :cond_2
    const/16 v0, -0xc8

    invoke-virtual {p0, v0, p2}, Landroid/view/VolumePanel;->onShowVolumeChanged(II)V

    .line 900
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 905
    :cond_3
    :goto_0
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    if-nez v0, :cond_4

    .line 906
    invoke-virtual {p0, v4}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 907
    invoke-virtual {p0, v4, p1, p2}, Landroid/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 910
    :cond_4
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_5

    .line 911
    invoke-virtual {p0, v4}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 912
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 913
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onStopSounds()V

    .line 916
    :cond_5
    invoke-virtual {p0, v5}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 917
    invoke-virtual {p0, v5}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 918
    invoke-direct {p0}, Landroid/view/VolumePanel;->resetTimeout()V

    .line 919
    return-void

    .line 900
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 902
    :cond_6
    sget-boolean v0, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_3

    const-string v0, "VolumePanel"

    const-string/jumbo v1, "not calling onShowVolumeChanged(), no FLAG_SHOW_UI or no UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onRemoteVolumeUpdateIfShown()V
    .locals 3

    .prologue
    const/16 v2, -0xc8

    .line 922
    sget-boolean v0, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    const-string/jumbo v1, "onRemoteVolumeUpdateIfShown()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    :cond_0
    iget-object v0, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 926
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Landroid/view/VolumePanel;->onShowVolumeChanged(II)V

    .line 928
    :cond_1
    return-void
.end method

.method protected onShowVolumeChanged(II)V
    .locals 13
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x0

    const/4 v10, 0x2

    const/16 v9, -0xc8

    const/4 v8, 0x1

    .line 719
    invoke-direct {p0, p1}, Landroid/view/VolumePanel;->getStreamVolume(I)I

    move-result v0

    .line 721
    .local v0, index:I
    iput-boolean v11, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    .line 723
    sget-boolean v5, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v5, :cond_0

    .line 724
    const-string v5, "VolumePanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onShowVolumeChanged(streamType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", flags: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "), index: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :cond_0
    invoke-direct {p0, p1}, Landroid/view/VolumePanel;->getStreamMaxVolume(I)I

    move-result v1

    .line 732
    .local v1, max:I
    sparse-switch p1, :sswitch_data_0

    .line 798
    :cond_1
    :goto_0
    :sswitch_0
    iget-object v5, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/VolumePanel$StreamControl;

    .line 799
    .local v3, sc:Landroid/view/VolumePanel$StreamControl;
    if-eqz v3, :cond_5

    .line 800
    iget-object v5, v3, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getMax()I

    move-result v5

    if-eq v5, v1, :cond_2

    .line 801
    iget-object v5, v3, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v5, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 804
    :cond_2
    iget-object v5, v3, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v5, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 805
    and-int/lit8 v5, p2, 0x20

    if-nez v5, :cond_4

    iget-object v5, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v5

    if-eq p1, v5, :cond_3

    if-eq p1, v9, :cond_3

    invoke-direct {p0, p1}, Landroid/view/VolumePanel;->isMuted(I)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    sget-object v5, Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_b

    .line 810
    :cond_4
    iget-object v5, v3, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v5, v11}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 817
    :cond_5
    :goto_1
    iget-object v5, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-nez v5, :cond_8

    iget v5, p0, Landroid/view/VolumePanel;->mCurrentOverlayStyle:I

    if-eq v5, v12, :cond_8

    .line 818
    if-ne p1, v9, :cond_c

    const/4 v4, -0x1

    .line 820
    .local v4, stream:I
    :goto_2
    iget-object v5, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v4}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 821
    iget-object v5, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    iget-object v6, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 823
    iget-boolean v5, p0, Landroid/view/VolumePanel;->mShowCombinedVolumes:Z

    if-eqz v5, :cond_6

    iget v5, p0, Landroid/view/VolumePanel;->mCurrentOverlayStyle:I

    if-eq v5, v10, :cond_6

    .line 824
    invoke-direct {p0}, Landroid/view/VolumePanel;->collapse()V

    .line 827
    :cond_6
    iget v5, p0, Landroid/view/VolumePanel;->mCurrentOverlayStyle:I

    if-ne v5, v10, :cond_7

    .line 828
    invoke-direct {p0}, Landroid/view/VolumePanel;->expand()V

    .line 830
    :cond_7
    iget-object v5, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 834
    .end local v4           #stream:I
    :cond_8
    if-eq p1, v9, :cond_9

    and-int/lit8 v5, p2, 0x10

    if-eqz v5, :cond_9

    iget-object v5, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v5, p1}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    if-ne v5, v8, :cond_9

    .line 838
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x12c

    invoke-virtual {p0, v5, v6, v7}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 840
    :cond_9
    return-void

    .line 736
    .end local v3           #sc:Landroid/view/VolumePanel$StreamControl;
    :sswitch_1
    iget-object v5, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v5, v8}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 738
    .local v2, ringuri:Landroid/net/Uri;
    if-nez v2, :cond_1

    .line 739
    iput-boolean v8, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_0

    .line 746
    .end local v2           #ringuri:Landroid/net/Uri;
    :sswitch_2
    iget-object v5, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v12}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v5

    and-int/lit16 v5, v5, 0x380

    if-eqz v5, :cond_a

    .line 750
    const v5, 0x108029d

    const v6, 0x108029e

    invoke-direct {p0, v5, v6}, Landroid/view/VolumePanel;->setMusicIcon(II)V

    goto/16 :goto_0

    .line 752
    :cond_a
    const v5, 0x10802a5

    const v6, 0x10802a6

    invoke-direct {p0, v5, v6}, Landroid/view/VolumePanel;->setMusicIcon(II)V

    goto/16 :goto_0

    .line 763
    :sswitch_3
    add-int/lit8 v0, v0, 0x1

    .line 764
    add-int/lit8 v1, v1, 0x1

    .line 765
    goto/16 :goto_0

    .line 773
    :sswitch_4
    iget-object v5, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v5, v10}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 775
    .restart local v2       #ringuri:Landroid/net/Uri;
    if-nez v2, :cond_1

    .line 776
    iput-boolean v8, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_0

    .line 787
    .end local v2           #ringuri:Landroid/net/Uri;
    :sswitch_5
    add-int/lit8 v0, v0, 0x1

    .line 788
    add-int/lit8 v1, v1, 0x1

    .line 789
    goto/16 :goto_0

    .line 793
    :sswitch_6
    sget-boolean v5, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v5, :cond_1

    const-string v5, "VolumePanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "showing remote volume "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " over "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 812
    .restart local v3       #sc:Landroid/view/VolumePanel$StreamControl;
    :cond_b
    iget-object v5, v3, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_c
    move v4, p1

    .line 818
    goto/16 :goto_2

    .line 732
    nop

    :sswitch_data_0
    .sparse-switch
        -0xc8 -> :sswitch_6
        0x0 -> :sswitch_3
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_0
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
    .end sparse-switch
.end method

.method protected declared-synchronized onSliderVisibilityChanged(II)V
    .locals 6
    .parameter "streamType"
    .parameter "visible"

    .prologue
    const/4 v1, 0x1

    .line 939
    monitor-enter p0

    :try_start_0
    sget-boolean v3, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_0

    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSliderVisibilityChanged(stream="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", visi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    :cond_0
    if-ne p2, v1, :cond_2

    .line 941
    .local v1, isVisible:Z
    :goto_0
    sget-object v3, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_1

    .line 942
    sget-object v3, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v2, v3, v0

    .line 943
    .local v2, streamRes:Landroid/view/VolumePanel$StreamResources;
    iget v3, v2, Landroid/view/VolumePanel$StreamResources;->streamType:I

    if-ne v3, p1, :cond_3

    .line 944
    iput-boolean v1, v2, Landroid/view/VolumePanel$StreamResources;->show:Z

    .line 945
    if-nez v1, :cond_1

    iget v3, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    if-ne v3, p1, :cond_1

    .line 946
    const/4 v3, -0x1

    iput v3, p0, Landroid/view/VolumePanel;->mActiveStreamType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 951
    .end local v2           #streamRes:Landroid/view/VolumePanel$StreamResources;
    :cond_1
    monitor-exit p0

    return-void

    .line 940
    .end local v0           #i:I
    .end local v1           #isVisible:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 941
    .restart local v0       #i:I
    .restart local v1       #isVisible:Z
    .restart local v2       #streamRes:Landroid/view/VolumePanel$StreamResources;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 939
    .end local v0           #i:I
    .end local v1           #isVisible:Z
    .end local v2           #streamRes:Landroid/view/VolumePanel$StreamResources;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 1131
    return-void
.end method

.method protected onStopSounds()V
    .locals 4

    .prologue
    .line 867
    monitor-enter p0

    .line 868
    :try_start_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 869
    .local v1, numStreamTypes:I
    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 870
    iget-object v3, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v2, v3, v0

    .line 871
    .local v2, toneGen:Landroid/media/ToneGenerator;
    if-eqz v2, :cond_0

    .line 872
    invoke-virtual {v2}, Landroid/media/ToneGenerator;->stopTone()V

    .line 869
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 875
    .end local v2           #toneGen:Landroid/media/ToneGenerator;
    :cond_1
    monitor-exit p0

    .line 876
    return-void

    .line 875
    .end local v0           #i:I
    .end local v1           #numStreamTypes:I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .parameter "seekBar"

    .prologue
    const/16 v3, -0xc8

    .line 1134
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 1135
    .local v1, tag:Ljava/lang/Object;
    instance-of v2, v1, Landroid/view/VolumePanel$StreamControl;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1136
    check-cast v0, Landroid/view/VolumePanel$StreamControl;

    .line 1141
    .local v0, sc:Landroid/view/VolumePanel$StreamControl;
    iget v2, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    if-ne v2, v3, :cond_0

    .line 1142
    invoke-direct {p0, v3}, Landroid/view/VolumePanel;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1145
    .end local v0           #sc:Landroid/view/VolumePanel$StreamControl;
    :cond_0
    return-void
.end method

.method protected onVibrate()V
    .locals 3

    .prologue
    .line 881
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 886
    :goto_0
    return-void

    .line 885
    :cond_0
    iget-object v0, p0, Landroid/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method protected onVolumeChanged(II)V
    .locals 5
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 676
    sget-boolean v0, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVolumeChanged(streamType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_3

    .line 679
    monitor-enter p0

    .line 680
    :try_start_0
    iget v0, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    if-eq p1, v0, :cond_2

    .line 681
    iget v0, p0, Landroid/view/VolumePanel;->mCurrentOverlayStyle:I

    if-ne v0, v3, :cond_1

    .line 682
    iget v0, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    invoke-direct {p0, v0}, Landroid/view/VolumePanel;->hideSlider(I)V

    .line 684
    :cond_1
    invoke-direct {p0, p1}, Landroid/view/VolumePanel;->reorderSliders(I)V

    .line 686
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/view/VolumePanel;->onShowVolumeChanged(II)V

    .line 687
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 690
    :cond_3
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    if-nez v0, :cond_4

    .line 691
    invoke-virtual {p0, v4}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 692
    invoke-virtual {p0, v4, p1, p2}, Landroid/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 695
    :cond_4
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_5

    .line 696
    invoke-virtual {p0, v4}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 697
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 698
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onStopSounds()V

    .line 701
    :cond_5
    invoke-virtual {p0, v3}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 702
    invoke-virtual {p0, v3}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 703
    invoke-direct {p0}, Landroid/view/VolumePanel;->resetTimeout()V

    .line 704
    return-void

    .line 687
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postDisplaySafeVolumeWarning(I)V
    .locals 2
    .parameter "flags"

    .prologue
    const/16 v1, 0xb

    .line 665
    invoke-virtual {p0, v1}, Landroid/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    :goto_0
    return-void

    .line 666
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Landroid/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public postHasNewRemotePlaybackInfo()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 639
    invoke-virtual {p0, v1}, Landroid/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 643
    :goto_0
    return-void

    .line 642
    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public postMasterMuteChanged(I)V
    .locals 1
    .parameter "flags"

    .prologue
    .line 661
    const/16 v0, -0x64

    invoke-virtual {p0, v0, p1}, Landroid/view/VolumePanel;->postMuteChanged(II)V

    .line 662
    return-void
.end method

.method public postMasterVolumeChanged(I)V
    .locals 1
    .parameter "flags"

    .prologue
    .line 646
    const/16 v0, -0x64

    invoke-virtual {p0, v0, p1}, Landroid/view/VolumePanel;->postVolumeChanged(II)V

    .line 647
    return-void
.end method

.method public postMuteChanged(II)V
    .locals 1
    .parameter "streamType"
    .parameter "flags"

    .prologue
    .line 650
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    :goto_0
    return-void

    .line 651
    :cond_0
    monitor-enter p0

    .line 652
    :try_start_0
    iget-object v0, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 653
    invoke-direct {p0}, Landroid/view/VolumePanel;->createSliders()V

    .line 655
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 656
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 657
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 655
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postRemoteSliderVisibility(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 623
    const/16 v1, 0xa

    const/16 v2, -0xc8

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v2, v0}, Landroid/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 625
    return-void

    .line 623
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postRemoteVolumeChanged(II)V
    .locals 2
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/16 v1, 0x8

    .line 612
    invoke-virtual {p0, v1}, Landroid/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    :goto_0
    return-void

    .line 613
    :cond_0
    monitor-enter p0

    .line 614
    :try_start_0
    iget-object v0, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 615
    invoke-direct {p0}, Landroid/view/VolumePanel;->createSliders()V

    .line 617
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 619
    invoke-virtual {p0, v1, p1, p2}, Landroid/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 617
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postVolumeChanged(II)V
    .locals 2
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    .line 601
    invoke-virtual {p0, v1}, Landroid/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    :goto_0
    return-void

    .line 602
    :cond_0
    monitor-enter p0

    .line 603
    :try_start_0
    iget-object v0, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 604
    invoke-direct {p0}, Landroid/view/VolumePanel;->createSliders()V

    .line 606
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 607
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 608
    invoke-virtual {p0, v1, p1, p2}, Landroid/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 606
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setLayoutDirection(I)V
    .locals 1
    .parameter "layoutDirection"

    .prologue
    .line 370
    iget-object v0, p0, Landroid/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 371
    invoke-virtual {p0}, Landroid/view/VolumePanel;->updateStates()V

    .line 372
    return-void
.end method

.method public updateStates()V
    .locals 4

    .prologue
    .line 593
    iget-object v3, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 594
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 595
    iget-object v3, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/VolumePanel$StreamControl;

    .line 596
    .local v2, sc:Landroid/view/VolumePanel$StreamControl;
    invoke-direct {p0, v2}, Landroid/view/VolumePanel;->updateSlider(Landroid/view/VolumePanel$StreamControl;)V

    .line 594
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 598
    .end local v2           #sc:Landroid/view/VolumePanel$StreamControl;
    :cond_0
    return-void
.end method
