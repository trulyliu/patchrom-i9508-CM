.class public Lcom/android/gallery3d/filtershow/presets/ImagePresetBWRed;
.super Lcom/android/gallery3d/filtershow/presets/ImagePreset;
.source "ImagePresetBWRed.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;-><init>()V

    return-void
.end method


# virtual methods
.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const-string v0, "B&W - Red"

    return-object v0
.end method

.method public setup()V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePresetBWRed;->mFilters:Ljava/util/Vector;

    new-instance v1, Lcom/android/gallery3d/filtershow/filters/ImageFilterBWRed;

    invoke-direct {v1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBWRed;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 31
    return-void
.end method
