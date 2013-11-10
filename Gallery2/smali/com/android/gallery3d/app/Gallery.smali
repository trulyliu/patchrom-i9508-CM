.class public final Lcom/android/gallery3d/app/Gallery;
.super Lcom/android/gallery3d/app/AbstractGalleryActivity;
.source "Gallery.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field public static final ACTION_REVIEW:Ljava/lang/String; = "com.android.camera.action.REVIEW"

.field public static final EXTRA_CROP:Ljava/lang/String; = "crop"

.field public static final EXTRA_DREAM:Ljava/lang/String; = "dream"

.field public static final EXTRA_SLIDESHOW:Ljava/lang/String; = "slideshow"

.field public static final KEY_DISMISS_KEYGUARD:Ljava/lang/String; = "dismiss-keyguard"

.field public static final KEY_GET_ALBUM:Ljava/lang/String; = "get-album"

.field public static final KEY_GET_CONTENT:Ljava/lang/String; = "get-content"

.field public static final KEY_MEDIA_TYPES:Ljava/lang/String; = "mediaTypes"

.field public static final KEY_TYPE_BITS:Ljava/lang/String; = "type-bits"

.field private static final TAG:Ljava/lang/String; = "Gallery"


# instance fields
.field private mVersionCheckDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;-><init>()V

    return-void
.end method

.method private getContentType(Landroid/content/Intent;)Ljava/lang/String;
    .locals 5
    .parameter "intent"

    .prologue
    .line 127
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, type:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 129
    const-string v3, "application/vnd.google.panorama360+jpg"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "image/jpeg"

    .line 138
    .end local v1           #type:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 133
    .restart local v1       #type:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 135
    .local v2, uri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, t:Ljava/lang/Throwable;
    const-string v3, "Gallery"

    const-string v4, "get type fail"

    invoke-static {v3, v4, v0}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initializeByIntent()V
    .locals 5

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 79
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/Gallery;->startGetContent(Landroid/content/Intent;)V

    .line 100
    :goto_0
    return-void

    .line 83
    :cond_0
    const-string v3, "android.intent.action.PICK"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 87
    const-string v3, "Gallery"

    const-string v4, "action PICK is not supported"

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, type:Ljava/lang/String;
    const-string v3, "vnd.android.cursor.dir/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 90
    const-string v3, "/image"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "image/*"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    :cond_1
    const-string v3, "/video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "video/*"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/Gallery;->startGetContent(Landroid/content/Intent;)V

    goto :goto_0

    .line 94
    .end local v2           #type:Ljava/lang/String;
    :cond_3
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "com.android.camera.action.REVIEW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 96
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/Gallery;->startViewAction(Landroid/content/Intent;)V

    goto :goto_0

    .line 98
    :cond_5
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->startDefaultPage()V

    goto :goto_0
.end method

.method private startGetContent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 115
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 118
    .local v0, data:Landroid/os/Bundle;
    :goto_0
    const-string v2, "get-content"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 119
    invoke-static {p0, p1}, Lcom/android/gallery3d/util/GalleryUtils;->determineTypeBits(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    .line 120
    .local v1, typeBits:I
    const-string v2, "type-bits"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 121
    const-string v2, "media-path"

    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v2, v3, v0}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 124
    return-void

    .line 115
    .end local v0           #data:Landroid/os/Bundle;
    .end local v1           #typeBits:I
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method private startViewAction(Landroid/content/Intent;)V
    .locals 20
    .parameter "intent"

    .prologue
    .line 143
    const-string v17, "slideshow"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    .line 144
    .local v14, slideshow:Ljava/lang/Boolean;
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/Gallery;->getActionBar()Landroid/app/ActionBar;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/ActionBar;->hide()V

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/Gallery;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v8

    .line 147
    .local v8, manager:Lcom/android/gallery3d/data/DataManager;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Lcom/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v11

    .line 148
    .local v11, path:Lcom/android/gallery3d/data/Path;
    if-eqz v11, :cond_0

    invoke-virtual {v8, v11}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/gallery3d/data/MediaItem;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 150
    :cond_0
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v11

    .line 153
    :cond_1
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 154
    .local v5, data:Landroid/os/Bundle;
    const-string v17, "media-set-path"

    invoke-virtual {v11}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v17, "random-order"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 156
    const-string v17, "repeat"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 157
    const-string v17, "dream"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 158
    const-string v17, "dream"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 160
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/Gallery;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v17

    const-class v18, Lcom/android/gallery3d/app/SlideshowPage;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 228
    .end local v8           #manager:Lcom/android/gallery3d/data/DataManager;
    .end local v11           #path:Lcom/android/gallery3d/data/Path;
    :goto_0
    return-void

    .line 162
    .end local v5           #data:Landroid/os/Bundle;
    :cond_3
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 163
    .restart local v5       #data:Landroid/os/Bundle;
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/Gallery;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v6

    .line 164
    .local v6, dm:Lcom/android/gallery3d/data/DataManager;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v16

    .line 165
    .local v16, uri:Landroid/net/Uri;
    invoke-direct/range {p0 .. p1}, Lcom/android/gallery3d/app/Gallery;->getContentType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    .line 166
    .local v4, contentType:Ljava/lang/String;
    if-nez v4, :cond_4

    .line 167
    const v17, 0x7f0a01de

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/Gallery;->finish()V

    goto :goto_0

    .line 172
    :cond_4
    if-nez v16, :cond_5

    .line 173
    invoke-static/range {p0 .. p1}, Lcom/android/gallery3d/util/GalleryUtils;->determineTypeBits(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v15

    .line 174
    .local v15, typeBits:I
    const-string v17, "type-bits"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 175
    const-string v17, "media-path"

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/Gallery;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/Gallery;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v17

    const-class v18, Lcom/android/gallery3d/app/AlbumSetPage;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 178
    .end local v15           #typeBits:I
    :cond_5
    const-string v17, "vnd.android.cursor.dir"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 180
    const-string v17, "mediaTypes"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 181
    .local v10, mediaType:I
    if-eqz v10, :cond_6

    .line 182
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v17

    const-string v18, "mediaTypes"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v16

    .line 186
    :cond_6
    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lcom/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v12

    .line 187
    .local v12, setPath:Lcom/android/gallery3d/data/Path;
    const/4 v9, 0x0

    .line 188
    .local v9, mediaSet:Lcom/android/gallery3d/data/MediaSet;
    if-eqz v12, :cond_7

    .line 189
    invoke-virtual {v6, v12}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v9

    .end local v9           #mediaSet:Lcom/android/gallery3d/data/MediaSet;
    check-cast v9, Lcom/android/gallery3d/data/MediaSet;

    .line 191
    .restart local v9       #mediaSet:Lcom/android/gallery3d/data/MediaSet;
    :cond_7
    if-eqz v9, :cond_9

    .line 192
    invoke-virtual {v9}, Lcom/android/gallery3d/data/MediaSet;->isLeafAlbum()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 193
    const-string v17, "media-path"

    invoke-virtual {v12}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v17, "parent-media-path"

    const/16 v18, 0x3

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/Gallery;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v17

    const-class v18, Lcom/android/gallery3d/app/AlbumPage;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 198
    :cond_8
    const-string v17, "media-path"

    invoke-virtual {v12}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/Gallery;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v17

    const-class v18, Lcom/android/gallery3d/app/AlbumSetPage;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 202
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/Gallery;->startDefaultPage()V

    goto/16 :goto_0

    .line 205
    .end local v9           #mediaSet:Lcom/android/gallery3d/data/MediaSet;
    .end local v10           #mediaType:I
    .end local v12           #setPath:Lcom/android/gallery3d/data/Path;
    :cond_a
    move-object/from16 v0, v16

    invoke-virtual {v6, v0, v4}, Lcom/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v7

    .line 206
    .local v7, itemPath:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v6, v7}, Lcom/android/gallery3d/data/DataManager;->getDefaultSetOf(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/Path;

    move-result-object v3

    .line 208
    .local v3, albumPath:Lcom/android/gallery3d/data/Path;
    const-string v17, "media-item-path"

    invoke-virtual {v7}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    if-eqz v3, :cond_b

    const-string v17, "SingleItemOnly"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_e

    :cond_b
    const/4 v13, 0x1

    .line 214
    .local v13, singleItemOnly:Z
    :goto_1
    if-nez v13, :cond_d

    .line 215
    const-string v17, "media-set-path"

    invoke-virtual {v3}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v17, "treat-back-as-up"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    if-nez v17, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v17

    const/high16 v18, 0x1000

    and-int v17, v17, v18

    if-eqz v17, :cond_d

    .line 221
    :cond_c
    const-string v17, "treat-back-as-up"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 225
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/Gallery;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v17

    const-class v18, Lcom/android/gallery3d/app/PhotoPage;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 212
    .end local v13           #singleItemOnly:Z
    :cond_e
    const/4 v13, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_0

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    .line 252
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/Gallery;->requestWindowFeature(I)Z

    .line 61
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/Gallery;->requestWindowFeature(I)Z

    .line 63
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "dismiss-keyguard"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 68
    :cond_0
    const v0, 0x7f04001a

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/Gallery;->setContentView(I)V

    .line 70
    if-eqz p1, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/StateManager;->restoreFromState(Landroid/os/Bundle;)V

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/Gallery;->initializeByIntent()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 241
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onPause()V

    .line 242
    iget-object v0, p0, Lcom/android/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 245
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/StateManager;->getStateCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 233
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onResume()V

    .line 234
    iget-object v0, p0, Lcom/android/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 237
    :cond_0
    return-void

    .line 232
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startDefaultPage()V
    .locals 4

    .prologue
    .line 103
    invoke-static {p0}, Lcom/android/gallery3d/picasasource/PicasaSource;->showSignInReminder(Landroid/app/Activity;)V

    .line 104
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 105
    .local v0, data:Landroid/os/Bundle;
    const-string v1, "media-path"

    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v1, v2, v0}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 108
    invoke-static {p0}, Lcom/android/gallery3d/picasasource/PicasaSource;->getVersionCheckDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    .line 109
    iget-object v1, p0, Lcom/android/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/android/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 112
    :cond_0
    return-void
.end method
