.class public Lcom/android/gallery3d/app/Wallpaper;
.super Landroid/app/Activity;
.source "Wallpaper.java"


# static fields
.field private static final IMAGE_TYPE:Ljava/lang/String; = "image/*"

.field private static final KEY_PICKED_ITEM:Ljava/lang/String; = "picked-item"

.field private static final KEY_STATE:Ljava/lang/String; = "activity-state"

.field private static final STATE_INIT:I = 0x0

.field private static final STATE_PHOTO_PICKED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Wallpaper"


# instance fields
.field private mPickedItem:Landroid/net/Uri;

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/app/Wallpaper;->mState:I

    return-void
.end method

.method private getDefaultDisplaySize(Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 3
    .parameter "size"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Wallpaper;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 69
    .local v0, d:Landroid/view/Display;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-lt v1, v2, :cond_0

    .line 70
    invoke-virtual {v0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 74
    :goto_0
    return-object p1

    .line 72
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Point;->set(II)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 122
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 123
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/app/Wallpaper;->setResult(I)V

    .line 124
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Wallpaper;->finish()V

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iput p1, p0, Lcom/android/gallery3d/app/Wallpaper;->mState:I

    .line 128
    iget v0, p0, Lcom/android/gallery3d/app/Wallpaper;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 129
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/Wallpaper;->mPickedItem:Landroid/net/Uri;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    if-eqz p1, :cond_0

    .line 52
    const-string v0, "activity-state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/Wallpaper;->mState:I

    .line 53
    const-string v0, "picked-item"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/gallery3d/app/Wallpaper;->mPickedItem:Landroid/net/Uri;

    .line 55
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 81
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Wallpaper;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 82
    .local v1, intent:Landroid/content/Intent;
    iget v7, p0, Lcom/android/gallery3d/app/Wallpaper;->mState:I

    packed-switch v7, :pswitch_data_0

    .line 118
    :goto_0
    return-void

    .line 84
    :pswitch_0
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lcom/android/gallery3d/app/Wallpaper;->mPickedItem:Landroid/net/Uri;

    .line 85
    iget-object v7, p0, Lcom/android/gallery3d/app/Wallpaper;->mPickedItem:Landroid/net/Uri;

    if-nez v7, :cond_0

    .line 86
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.GET_CONTENT"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v8, Lcom/android/gallery3d/app/DialogPicker;

    invoke-virtual {v7, p0, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "image/*"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 89
    .local v2, request:Landroid/content/Intent;
    invoke-virtual {p0, v2, v10}, Lcom/android/gallery3d/app/Wallpaper;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 92
    .end local v2           #request:Landroid/content/Intent;
    :cond_0
    iput v10, p0, Lcom/android/gallery3d/app/Wallpaper;->mState:I

    .line 96
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Wallpaper;->getWallpaperDesiredMinimumWidth()I

    move-result v6

    .line 97
    .local v6, width:I
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Wallpaper;->getWallpaperDesiredMinimumHeight()I

    move-result v0

    .line 98
    .local v0, height:I
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    invoke-direct {p0, v7}, Lcom/android/gallery3d/app/Wallpaper;->getDefaultDisplaySize(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v3

    .line 99
    .local v3, size:Landroid/graphics/Point;
    iget v7, v3, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    int-to-float v8, v6

    div-float v4, v7, v8

    .line 100
    .local v4, spotlightX:F
    iget v7, v3, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    int-to-float v8, v0

    div-float v5, v7, v8

    .line 101
    .local v5, spotlightY:F
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.android.camera.action.CROP"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/gallery3d/app/Wallpaper;->mPickedItem:Landroid/net/Uri;

    const-string v9, "image/*"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const/high16 v8, 0x200

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "outputX"

    invoke-virtual {v7, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "outputY"

    invoke-virtual {v7, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "aspectX"

    invoke-virtual {v7, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "aspectY"

    invoke-virtual {v7, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "spotlightX"

    invoke-virtual {v7, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "spotlightY"

    invoke-virtual {v7, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "scale"

    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "scaleUpIfNeeded"

    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "noFaceDetection"

    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "set-as-wallpaper"

    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    .line 114
    .restart local v2       #request:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/Wallpaper;->startActivity(Landroid/content/Intent;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Wallpaper;->finish()V

    goto/16 :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "saveState"

    .prologue
    .line 59
    const-string v0, "activity-state"

    iget v1, p0, Lcom/android/gallery3d/app/Wallpaper;->mState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    iget-object v0, p0, Lcom/android/gallery3d/app/Wallpaper;->mPickedItem:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 61
    const-string v0, "picked-item"

    iget-object v1, p0, Lcom/android/gallery3d/app/Wallpaper;->mPickedItem:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 63
    :cond_0
    return-void
.end method
