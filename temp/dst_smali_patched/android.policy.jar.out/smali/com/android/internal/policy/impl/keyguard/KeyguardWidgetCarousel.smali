.class public Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;
.source "KeyguardWidgetCarousel.java"


# static fields
.field private static CAMERA_DISTANCE:F

.field private static MAX_SCROLL_PROGRESS:F


# instance fields
.field private mAdjacentPagesAngle:F

.field protected mChildrenTransformsAnimator:Landroid/animation/AnimatorSet;

.field mFastFadeInterpolator:Landroid/view/animation/Interpolator;

.field mSlowFadeInterpolator:Landroid/view/animation/Interpolator;

.field mTmpTransform:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const v0, 0x3fa66666

    sput v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->MAX_SCROLL_PROGRESS:F

    const v0, 0x461c4000

    sput v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->CAMERA_DISTANCE:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->mTmpTransform:[F

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->mFastFadeInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->mSlowFadeInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->mAdjacentPagesAngle:F

    return-void
.end method

.method private getTransformForPage(II[F)V
    .locals 9
    .parameter "screenCenter"
    .parameter "index"
    .parameter "transform"

    .prologue
    const/high16 v8, 0x4000

    invoke-virtual {p0, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .local v1, child:Landroid/view/View;
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->getBoundedScrollProgress(ILandroid/view/View;I)F

    move-result v0

    .local v0, boundedProgress:F
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->mAdjacentPagesAngle:F

    neg-float v6, v6

    mul-float v4, v6, v0

    .local v4, rotationY:F
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .local v5, width:I
    int-to-float v6, v5

    div-float/2addr v6, v8

    int-to-float v7, v5

    div-float/2addr v7, v8

    mul-float/2addr v7, v0

    add-float v2, v6, v7

    .local v2, pivotX:F
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v3, v6

    .local v3, pivotY:F
    const/4 v6, 0x0

    aput v2, p3, v6

    const/4 v6, 0x1

    aput v3, p3, v6

    const/4 v6, 0x2

    aput v4, p3, v6

    return-void
.end method

.method private updatePageAlphaValues(I)V
    .locals 7
    .parameter "screenCenter"

    .prologue
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    :cond_0
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->mShowingInitialHints:Z

    if-nez v6, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->isPageMoving()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_1
    const/4 v4, 0x1

    .local v4, showSidePages:Z
    :goto_0
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->isReordering(Z)Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_4

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v0

    .local v0, child:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, v2, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->getOutlineAlphaForPage(IIZ)F

    move-result v3

    .local v3, outlineAlpha:F
    invoke-virtual {p0, p1, v2, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->getAlphaForPage(IIZ)F

    move-result v1

    .local v1, contentAlpha:F
    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setBackgroundAlpha(F)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setContentAlpha(F)V

    .end local v1           #contentAlpha:F
    .end local v3           #outlineAlpha:F
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #child:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    .end local v2           #i:I
    .end local v4           #showSidePages:Z
    :cond_3
    move v4, v5

    goto :goto_0

    .restart local v4       #showSidePages:Z
    :cond_4
    return-void
.end method


# virtual methods
.method animatePagesToCarousel()V
    .locals 22

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->mChildrenTransformsAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->mChildrenTransformsAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/animation/AnimatorSet;->cancel()V

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->mChildrenTransformsAnimator:Landroid/animation/AnimatorSet;

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->getChildCount()I

    move-result v7

    .local v7, count:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, anims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v7, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v6

    .local v6, child:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->mScreenCenter:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v11, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->getAlphaForPage(IIZ)F

    move-result v9

    .local v9, finalAlpha:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->mScreenCenter:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v11, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->getOutlineAlphaForPage(IIZ)F

    move-result v10

    .local v10, finalOutlineAlpha:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->mScreenCenter:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->mTmpTransform:[F

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v11, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->getTransformForPage(II[F)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->mCurrentPage:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-lt v11, v0, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->mCurrentPage:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    if-gt v11, v0, :cond_1

    const/4 v12, 0x1

    .local v12, inVisibleRange:Z
    :goto_1
    const-string v17, "contentAlpha"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v9, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .local v4, alpha:Landroid/animation/PropertyValuesHolder;
    const-string v17, "backgroundAlpha"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v10, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .local v13, outlineAlpha:Landroid/animation/PropertyValuesHolder;
    const-string v17, "pivotX"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->mTmpTransform:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    aput v20, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    .local v14, pivotX:Landroid/animation/PropertyValuesHolder;
    const-string v17, "pivotY"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->mTmpTransform:[F

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    aput v20, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    .local v15, pivotY:Landroid/animation/PropertyValuesHolder;
    const-string v17, "rotationY"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->mTmpTransform:[F

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget v20, v20, v21

    aput v20, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v16

    .local v16, rotationY:Landroid/animation/PropertyValuesHolder;
    if-eqz v12, :cond_2

    const/16 v17, 0x5

    move/from16 v0, v17

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v4, v17, v18

    const/16 v18, 0x1

    aput-object v13, v17, v18

    const/16 v18, 0x2

    aput-object v14, v17, v18

    const/16 v18, 0x3

    aput-object v15, v17, v18

    const/16 v18, 0x4

    aput-object v16, v17, v18

    move-object/from16 v0, v17

    invoke-static {v6, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .local v3, a:Landroid/animation/ObjectAnimator;
    :goto_2
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .end local v3           #a:Landroid/animation/ObjectAnimator;
    .end local v4           #alpha:Landroid/animation/PropertyValuesHolder;
    .end local v12           #inVisibleRange:Z
    .end local v13           #outlineAlpha:Landroid/animation/PropertyValuesHolder;
    .end local v14           #pivotX:Landroid/animation/PropertyValuesHolder;
    .end local v15           #pivotY:Landroid/animation/PropertyValuesHolder;
    .end local v16           #rotationY:Landroid/animation/PropertyValuesHolder;
    :cond_1
    const/4 v12, 0x0

    goto/16 :goto_1

    .restart local v4       #alpha:Landroid/animation/PropertyValuesHolder;
    .restart local v12       #inVisibleRange:Z
    .restart local v13       #outlineAlpha:Landroid/animation/PropertyValuesHolder;
    .restart local v14       #pivotX:Landroid/animation/PropertyValuesHolder;
    .restart local v15       #pivotY:Landroid/animation/PropertyValuesHolder;
    .restart local v16       #rotationY:Landroid/animation/PropertyValuesHolder;
    :cond_2
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v4, v17, v18

    const/16 v18, 0x1

    aput-object v13, v17, v18

    move-object/from16 v0, v17

    invoke-static {v6, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .restart local v3       #a:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->mFastFadeInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_2

    .end local v3           #a:Landroid/animation/ObjectAnimator;
    .end local v4           #alpha:Landroid/animation/PropertyValuesHolder;
    .end local v6           #child:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    .end local v9           #finalAlpha:F
    .end local v10           #finalOutlineAlpha:F
    .end local v12           #inVisibleRange:Z
    .end local v13           #outlineAlpha:Landroid/animation/PropertyValuesHolder;
    .end local v14           #pivotX:Landroid/animation/PropertyValuesHolder;
    .end local v15           #pivotY:Landroid/animation/PropertyValuesHolder;
    .end local v16           #rotationY:Landroid/animation/PropertyValuesHolder;
    :cond_3
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->REORDERING_ZOOM_IN_OUT_DURATION:I

    .local v8, duration:I
    new-instance v17, Landroid/animation/AnimatorSet;

    invoke-direct/range {v17 .. v17}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->mChildrenTransformsAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->mChildrenTransformsAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->mChildrenTransformsAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v17, v0

    int-to-long v0, v8

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->mChildrenTransformsAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method animatePagesToNeutral()V
    .locals 14

    .prologue
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->mChildrenTransformsAnimator:Landroid/animation/AnimatorSet;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->mChildrenTransformsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v10}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->mChildrenTransformsAnimator:Landroid/animation/AnimatorSet;

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->getChildCount()I

    move-result v4

    .local v4, count:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, anims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v4, :cond_4

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v3

    .local v3, child:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->mCurrentPage:I

    add-int/lit8 v10, v10, -0x1

    if-lt v6, v10, :cond_3

    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->mCurrentPage:I

    add-int/lit8 v10, v10, 0x1

    if-gt v6, v10, :cond_3

    const/4 v7, 0x1

    .local v7, inVisibleRange:Z
    :goto_1
    if-nez v7, :cond_1

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setRotationY(F)V

    :cond_1
    const-string v10, "contentAlpha"

    const/4 v11, 0x1

    new-array v11, v11, [F

    const/4 v12, 0x0

    const/high16 v13, 0x3f80

    aput v13, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .local v1, alpha:Landroid/animation/PropertyValuesHolder;
    const-string v10, "backgroundAlpha"

    const/4 v11, 0x1

    new-array v11, v11, [F

    const/4 v12, 0x0

    const v13, 0x3f19999a

    aput v13, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .local v8, outlineAlpha:Landroid/animation/PropertyValuesHolder;
    const-string v10, "rotationY"

    const/4 v11, 0x1

    new-array v11, v11, [F

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .local v9, rotationY:Landroid/animation/PropertyValuesHolder;
    const/4 v10, 0x3

    new-array v10, v10, [Landroid/animation/PropertyValuesHolder;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    const/4 v11, 0x1

    aput-object v8, v10, v11

    const/4 v11, 0x2

    aput-object v9, v10, v11

    invoke-static {v3, v10}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, a:Landroid/animation/ObjectAnimator;
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setVisibility(I)V

    if-nez v7, :cond_2

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->mSlowFadeInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v0           #a:Landroid/animation/ObjectAnimator;
    .end local v1           #alpha:Landroid/animation/PropertyValuesHolder;
    .end local v7           #inVisibleRange:Z
    .end local v8           #outlineAlpha:Landroid/animation/PropertyValuesHolder;
    .end local v9           #rotationY:Landroid/animation/PropertyValuesHolder;
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .end local v3           #child:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    :cond_4
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->REORDERING_ZOOM_IN_OUT_DURATION:I

    .local v5, duration:I
    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->mChildrenTransformsAnimator:Landroid/animation/AnimatorSet;

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->mChildrenTransformsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v10, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->mChildrenTransformsAnimator:Landroid/animation/AnimatorSet;

    int-to-long v11, v5

    invoke-virtual {v10, v11, v12}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->mChildrenTransformsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v10}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public getAlphaForPage(IIZ)F
    .locals 6
    .parameter "screenCenter"
    .parameter "index"
    .parameter "showSidePages"

    .prologue
    const/4 v0, 0x0

    const/high16 v4, 0x3f80

    invoke-virtual {p0, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .local v1, child:Landroid/view/View;
    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->getNextPage()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-lt p2, v5, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->getNextPage()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    if-gt p2, v5, :cond_2

    const/4 v2, 0x1

    .local v2, inVisibleRange:Z
    :goto_1
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->getScrollProgress(ILandroid/view/View;I)F

    move-result v3

    .local v3, scrollProgress:F
    invoke-virtual {p0, p2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->isOverScrollChild(IF)Z

    move-result v5

    if-eqz v5, :cond_3

    move v0, v4

    goto :goto_0

    .end local v2           #inVisibleRange:Z
    .end local v3           #scrollProgress:F
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .restart local v2       #inVisibleRange:Z
    .restart local v3       #scrollProgress:F
    :cond_3
    if-eqz p3, :cond_4

    if-nez v2, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->getNextPage()I

    move-result v5

    if-ne p2, v5, :cond_0

    :cond_5
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->getBoundedScrollProgress(ILandroid/view/View;I)F

    move-result v3

    sget v5, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->MAX_SCROLL_PROGRESS:F

    div-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v5, v4

    sub-float v0, v4, v5

    .local v0, alpha:F
    goto :goto_0
.end method

.method protected getMaxScrollProgress()F
    .locals 1

    .prologue
    sget v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->MAX_SCROLL_PROGRESS:F

    return v0
.end method

.method public getOutlineAlphaForPage(IIZ)F
    .locals 2
    .parameter "screenCenter"
    .parameter "index"
    .parameter "showSidePages"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->getNextPage()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt p2, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->getNextPage()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-gt p2, v1, :cond_0

    const/4 v0, 0x1

    .local v0, inVisibleRange:Z
    :goto_0
    if-eqz v0, :cond_1

    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getOutlineAlphaForPage(IIZ)F

    move-result v1

    :goto_1
    return v1

    .end local v0           #inVisibleRange:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0       #inVisibleRange:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected onEndReordering()V
    .locals 2

    .prologue
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->onEndReordering()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->REORDERING_ZOOM_IN_OUT_DURATION:I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->fadeInSecurity(I)V

    return-void
.end method

.method protected reorderStarting()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->REORDERING_ZOOM_IN_OUT_DURATION:I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->fadeOutSecurity(I)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->animatePagesToNeutral()V

    return-void
.end method

.method protected screenScrolled(I)V
    .locals 14
    .parameter "screenCenter"

    .prologue
    const/high16 v13, 0x4000

    const/4 v12, 0x0

    const/4 v10, 0x0

    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->mScreenCenter:I

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->updatePageAlphaValues(I)V

    invoke-virtual {p0, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->isReordering(Z)Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->getChildCount()I

    move-result v9

    if-ge v2, v9, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v7

    .local v7, v:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    invoke-virtual {p0, p1, v7, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->getScrollProgress(ILandroid/view/View;I)F

    move-result v6

    .local v6, scrollProgress:F
    invoke-virtual {p0, p1, v7, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->getBoundedScrollProgress(ILandroid/view/View;I)F

    move-result v1

    .local v1, boundedProgress:F
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->mDragView:Landroid/view/View;

    if-eq v7, v9, :cond_2

    if-nez v7, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    sget v9, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->CAMERA_DISTANCE:F

    invoke-virtual {v7, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setCameraDistance(F)V

    invoke-virtual {p0, v2, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->isOverScrollChild(IF)Z

    move-result v9

    if-eqz v9, :cond_5

    sget v9, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->OVERSCROLL_MAX_ROTATION:F

    neg-float v9, v9

    mul-float/2addr v9, v6

    invoke-virtual {v7, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setRotationY(F)V

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpg-float v9, v6, v12

    if-gez v9, :cond_4

    const/4 v9, 0x1

    :goto_2
    invoke-virtual {v7, v11, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setOverScrollAmount(FZ)V

    :goto_3
    invoke-virtual {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getAlpha()F

    move-result v0

    .local v0, alpha:F
    cmpl-float v9, v0, v12

    if-nez v9, :cond_6

    const/4 v9, 0x4

    invoke-virtual {v7, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setVisibility(I)V

    goto :goto_1

    .end local v0           #alpha:F
    :cond_4
    move v9, v10

    goto :goto_2

    :cond_5
    invoke-virtual {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getMeasuredWidth()I

    move-result v8

    .local v8, width:I
    int-to-float v9, v8

    div-float/2addr v9, v13

    int-to-float v11, v8

    div-float/2addr v11, v13

    mul-float/2addr v11, v1

    add-float v3, v9, v11

    .local v3, pivotX:F
    invoke-virtual {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v4, v9

    .local v4, pivotY:F
    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->mAdjacentPagesAngle:F

    neg-float v9, v9

    mul-float v5, v9, v1

    .local v5, rotationY:F
    invoke-virtual {v7, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setPivotX(F)V

    invoke-virtual {v7, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setPivotY(F)V

    invoke-virtual {v7, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setRotationY(F)V

    invoke-virtual {v7, v12, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setOverScrollAmount(FZ)V

    goto :goto_3

    .end local v3           #pivotX:F
    .end local v4           #pivotY:F
    .end local v5           #rotationY:F
    .end local v8           #width:I
    .restart local v0       #alpha:F
    :cond_6
    invoke-virtual {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v7, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setVisibility(I)V

    goto :goto_1
.end method

.method public showInitialPageHints()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->mShowingInitialHints:Z

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->getChildCount()I

    move-result v1

    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->getNextPage()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-lt v2, v5, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->getNextPage()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    if-gt v2, v5, :cond_0

    move v3, v4

    .local v3, inVisibleRange:Z
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v0

    .local v0, child:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    if-eqz v3, :cond_1

    const v5, 0x3f19999a

    invoke-virtual {v0, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setBackgroundAlpha(F)V

    const/high16 v5, 0x3f80

    invoke-virtual {v0, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setContentAlpha(F)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #child:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    .end local v3           #inVisibleRange:Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .restart local v0       #child:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    .restart local v3       #inVisibleRange:Z
    :cond_1
    invoke-virtual {v0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setBackgroundAlpha(F)V

    invoke-virtual {v0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setContentAlpha(F)V

    goto :goto_2

    .end local v0           #child:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    .end local v3           #inVisibleRange:Z
    :cond_2
    return-void
.end method

.method protected zoomIn(Ljava/lang/Runnable;)Z
    .locals 1
    .parameter "onCompleteRunnable"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetCarousel;->animatePagesToCarousel()V

    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->zoomIn(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method
