.class Lcom/android/camera/HdrSoftwareProcessor$RGB;
.super Ljava/lang/Object;
.source "HdrSoftwareProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/HdrSoftwareProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RGB"
.end annotation


# instance fields
.field b:I

.field g:I

.field r:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/camera/HdrSoftwareProcessor$RGB;->set(I)V

    .line 44
    return-void
.end method


# virtual methods
.method public set(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 47
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/HdrSoftwareProcessor$RGB;->r:I

    .line 48
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/HdrSoftwareProcessor$RGB;->g:I

    .line 49
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/HdrSoftwareProcessor$RGB;->b:I

    .line 50
    return-void
.end method

.method public set(III)V
    .locals 0
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    .line 53
    iput p1, p0, Lcom/android/camera/HdrSoftwareProcessor$RGB;->r:I

    .line 54
    iput p2, p0, Lcom/android/camera/HdrSoftwareProcessor$RGB;->g:I

    .line 55
    iput p3, p0, Lcom/android/camera/HdrSoftwareProcessor$RGB;->b:I

    .line 56
    return-void
.end method
