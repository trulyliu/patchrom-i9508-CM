.class Lcom/android/gallery3d/app/PhotoPage$UpdateProgressListener;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Lcom/android/gallery3d/app/StitchingChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateProgressListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoPage;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$UpdateProgressListener;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/app/PhotoPage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 233
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoPage$UpdateProgressListener;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    return-void
.end method

.method private sendUpdate(Landroid/net/Uri;I)V
    .locals 3
    .parameter "uri"
    .parameter "message"

    .prologue
    .line 251
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$UpdateProgressListener;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v2}, Lcom/android/gallery3d/app/PhotoPage;->access$100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 252
    .local v0, currentPhoto:Lcom/android/gallery3d/data/MediaObject;
    instance-of v2, v0, Lcom/android/gallery3d/data/LocalImage;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 254
    .local v1, isCurrentPhoto:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 255
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$UpdateProgressListener;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/gallery3d/app/PhotoPage;->access$200(Lcom/android/gallery3d/app/PhotoPage;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 257
    :cond_0
    return-void

    .line 252
    .end local v1           #isCurrentPhoto:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onStitchingProgress(Landroid/net/Uri;I)V
    .locals 1
    .parameter "uri"
    .parameter "progress"

    .prologue
    .line 247
    const/16 v0, 0xd

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/app/PhotoPage$UpdateProgressListener;->sendUpdate(Landroid/net/Uri;I)V

    .line 248
    return-void
.end method

.method public onStitchingQueued(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 242
    const/16 v0, 0xd

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/app/PhotoPage$UpdateProgressListener;->sendUpdate(Landroid/net/Uri;I)V

    .line 243
    return-void
.end method

.method public onStitchingResult(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 237
    const/16 v0, 0xb

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/app/PhotoPage$UpdateProgressListener;->sendUpdate(Landroid/net/Uri;I)V

    .line 238
    return-void
.end method
