.class public Landroid/webkit/WebSettingsClassic;
.super Landroid/webkit/WebSettings;
.source "WebSettingsClassic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebSettingsClassic$1;,
        Landroid/webkit/WebSettingsClassic$EventHandler;,
        Landroid/webkit/WebSettingsClassic$AutoFillProfile;
    }
.end annotation


# static fields
.field private static final ACCEPT_LANG_FOR_US_LOCALE:Ljava/lang/String; = "en-US"

.field private static final DESKTOP_USERAGENT:Ljava/lang/String; = "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

.field private static final DOUBLE_TAP_TOAST_COUNT:Ljava/lang/String; = "double_tap_toast_count"

.field private static final IPHONE_USERAGENT:Ljava/lang/String; = "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

.field private static final PREF_FILE:Ljava/lang/String; = "WebViewSettings"

.field private static final PREVIOUS_VERSION:Ljava/lang/String; = "4.1.1"

.field private static mDoubleTapToastCount:I

.field private static sLocale:Ljava/util/Locale;

.field private static sLockForLocaleSettings:Ljava/lang/Object;


# instance fields
.field private mAcceptLanguage:Ljava/lang/String;

.field private mAllowContentAccess:Z

.field private mAllowFileAccess:Z

.field private mAllowFileAccessFromFileURLs:Z

.field private mAllowUniversalAccessFromFileURLs:Z

.field private mAppCacheEnabled:Z

.field private mAppCacheMaxSize:J

.field private mAppCachePath:Ljava/lang/String;

.field private mAutoFillEnabled:Z

.field private mAutoFillProfile:Landroid/webkit/WebSettingsClassic$AutoFillProfile;

.field private mBlockNetworkImage:Z

.field private mBlockNetworkLoads:Z

.field private mBrowserFrame:Landroid/webkit/BrowserFrame;

.field private mBuiltInZoomControls:Z

.field private mContext:Landroid/content/Context;

.field private mCursiveFontFamily:Ljava/lang/String;

.field private mDatabaseEnabled:Z

.field private mDatabasePath:Ljava/lang/String;

.field private mDatabasePathHasBeenSet:Z

.field private mDefaultFixedFontSize:I

.field private mDefaultFontSize:I

.field private mDefaultTextEncoding:Ljava/lang/String;

.field private mDefaultZoom:Landroid/webkit/WebSettings$ZoomDensity;

.field private mDisplayZoomControls:Z

.field private mDomStorageEnabled:Z

.field private mDoubleTapZoom:I

.field private mEnableSmoothTransition:Z

.field private final mEventHandler:Landroid/webkit/WebSettingsClassic$EventHandler;

.field private mFantasyFontFamily:Ljava/lang/String;

.field private mFixedFontFamily:Ljava/lang/String;

.field private mForceUserScalable:Z

.field private mGeolocationDatabasePath:Ljava/lang/String;

.field private mGeolocationEnabled:Z

.field private mHardwareAccelSkia:Z

.field private mJavaScriptCanOpenWindowsAutomatically:Z

.field private mJavaScriptEnabled:Z

.field private mLayoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

.field private mLightTouchEnabled:Z

.field private mLinkPrefetchEnabled:Z

.field private mLoadWithOverviewMode:Z

.field private mLoadsImagesAutomatically:Z

.field private mMaximumDecodedImageSize:J

.field private mMediaPlaybackRequiresUserGesture:Z

.field private mMinimumFontSize:I

.field private mMinimumLogicalFontSize:I

.field private mNavDump:Z

.field private mNeedInitialFocus:Z

.field private mOverrideCacheMode:I

.field private mPageCacheCapacity:I

.field private mPasswordEchoEnabled:Z

.field private mPluginState:Landroid/webkit/WebSettings$PluginState;

.field private mPrivateBrowsingEnabled:Z

.field private mRenderPriority:Landroid/webkit/WebSettings$RenderPriority;

.field private mSansSerifFontFamily:Ljava/lang/String;

.field private mSaveFormData:Z

.field private mSavePassword:Z

.field private mSerifFontFamily:Ljava/lang/String;

.field private mShowVisualIndicator:Z

.field private mShrinksStandaloneImagesToFit:Z

.field private mStandardFontFamily:Ljava/lang/String;

.field private mSupportMultipleWindows:Z

.field private mSupportZoom:Z

.field private mSyncPending:Z

.field private mSyntheticLinksEnabled:Z

.field private mTextSize:I

.field private mUseDefaultUserAgent:Z

.field private mUseDoubleTree:Z

.field private mUseWebViewBackgroundForOverscroll:Z

.field private mUseWideViewport:Z

.field private mUserAgent:Ljava/lang/String;

.field private mWebSocketsEnabled:Z

.field private mWebView:Landroid/webkit/WebViewClassic;

.field private mWorkersEnabled:Z

.field private mXSSAuditorEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x3

    sput v0, Landroid/webkit/WebSettingsClassic;->mDoubleTapToastCount:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/webkit/WebViewClassic;)V
    .locals 8
    .parameter "context"
    .parameter "webview"

    .prologue
    const/16 v6, 0x64

    const/16 v7, 0x10

    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 278
    invoke-direct {p0}, Landroid/webkit/WebSettings;-><init>()V

    .line 45
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mSyncPending:Z

    .line 55
    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mLayoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 57
    iput v6, p0, Landroid/webkit/WebSettingsClassic;->mTextSize:I

    .line 58
    const-string/jumbo v1, "sans-serif"

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mStandardFontFamily:Ljava/lang/String;

    .line 59
    const-string/jumbo v1, "monospace"

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mFixedFontFamily:Ljava/lang/String;

    .line 60
    const-string/jumbo v1, "sans-serif"

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mSansSerifFontFamily:Ljava/lang/String;

    .line 61
    const-string/jumbo v1, "serif"

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mSerifFontFamily:Ljava/lang/String;

    .line 62
    const-string v1, "cursive"

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mCursiveFontFamily:Ljava/lang/String;

    .line 63
    const-string v1, "fantasy"

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mFantasyFontFamily:Ljava/lang/String;

    .line 68
    iput v4, p0, Landroid/webkit/WebSettingsClassic;->mMinimumFontSize:I

    .line 69
    iput v4, p0, Landroid/webkit/WebSettingsClassic;->mMinimumLogicalFontSize:I

    .line 70
    iput v7, p0, Landroid/webkit/WebSettingsClassic;->mDefaultFontSize:I

    .line 71
    const/16 v1, 0xd

    iput v1, p0, Landroid/webkit/WebSettingsClassic;->mDefaultFixedFontSize:I

    .line 72
    iput v3, p0, Landroid/webkit/WebSettingsClassic;->mPageCacheCapacity:I

    .line 73
    iput-boolean v2, p0, Landroid/webkit/WebSettingsClassic;->mLoadsImagesAutomatically:Z

    .line 74
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mBlockNetworkImage:Z

    .line 76
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mJavaScriptEnabled:Z

    .line 77
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mAllowUniversalAccessFromFileURLs:Z

    .line 78
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mAllowFileAccessFromFileURLs:Z

    .line 79
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mHardwareAccelSkia:Z

    .line 80
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mShowVisualIndicator:Z

    .line 81
    sget-object v1, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mPluginState:Landroid/webkit/WebSettings$PluginState;

    .line 82
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mJavaScriptCanOpenWindowsAutomatically:Z

    .line 83
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mUseDoubleTree:Z

    .line 84
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mUseWideViewport:Z

    .line 85
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mSupportMultipleWindows:Z

    .line 86
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mShrinksStandaloneImagesToFit:Z

    .line 87
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroid/webkit/WebSettingsClassic;->mMaximumDecodedImageSize:J

    .line 88
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mPrivateBrowsingEnabled:Z

    .line 89
    iput-boolean v2, p0, Landroid/webkit/WebSettingsClassic;->mSyntheticLinksEnabled:Z

    .line 91
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mAppCacheEnabled:Z

    .line 92
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mDatabaseEnabled:Z

    .line 93
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mWebSocketsEnabled:Z

    .line 94
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mDomStorageEnabled:Z

    .line 95
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mWorkersEnabled:Z

    .line 96
    iput-boolean v2, p0, Landroid/webkit/WebSettingsClassic;->mGeolocationEnabled:Z

    .line 97
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mXSSAuditorEnabled:Z

    .line 98
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mLinkPrefetchEnabled:Z

    .line 100
    const-wide v4, 0x7fffffffffffffffL

    iput-wide v4, p0, Landroid/webkit/WebSettingsClassic;->mAppCacheMaxSize:J

    .line 101
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mAppCachePath:Ljava/lang/String;

    .line 102
    const-string v1, ""

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mDatabasePath:Ljava/lang/String;

    .line 105
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mDatabasePathHasBeenSet:Z

    .line 106
    const-string v1, ""

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mGeolocationDatabasePath:Ljava/lang/String;

    .line 110
    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mDefaultZoom:Landroid/webkit/WebSettings$ZoomDensity;

    .line 111
    sget-object v1, Landroid/webkit/WebSettings$RenderPriority;->NORMAL:Landroid/webkit/WebSettings$RenderPriority;

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mRenderPriority:Landroid/webkit/WebSettings$RenderPriority;

    .line 112
    const/4 v1, -0x1

    iput v1, p0, Landroid/webkit/WebSettingsClassic;->mOverrideCacheMode:I

    .line 113
    iput v6, p0, Landroid/webkit/WebSettingsClassic;->mDoubleTapZoom:I

    .line 114
    iput-boolean v2, p0, Landroid/webkit/WebSettingsClassic;->mSaveFormData:Z

    .line 115
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mAutoFillEnabled:Z

    .line 116
    iput-boolean v2, p0, Landroid/webkit/WebSettingsClassic;->mSavePassword:Z

    .line 117
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mLightTouchEnabled:Z

    .line 118
    iput-boolean v2, p0, Landroid/webkit/WebSettingsClassic;->mNeedInitialFocus:Z

    .line 119
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mNavDump:Z

    .line 120
    iput-boolean v2, p0, Landroid/webkit/WebSettingsClassic;->mSupportZoom:Z

    .line 121
    iput-boolean v2, p0, Landroid/webkit/WebSettingsClassic;->mMediaPlaybackRequiresUserGesture:Z

    .line 122
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mBuiltInZoomControls:Z

    .line 123
    iput-boolean v2, p0, Landroid/webkit/WebSettingsClassic;->mDisplayZoomControls:Z

    .line 124
    iput-boolean v2, p0, Landroid/webkit/WebSettingsClassic;->mAllowFileAccess:Z

    .line 125
    iput-boolean v2, p0, Landroid/webkit/WebSettingsClassic;->mAllowContentAccess:Z

    .line 126
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mLoadWithOverviewMode:Z

    .line 127
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mEnableSmoothTransition:Z

    .line 128
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mForceUserScalable:Z

    .line 129
    iput-boolean v2, p0, Landroid/webkit/WebSettingsClassic;->mPasswordEchoEnabled:Z

    .line 178
    iput-boolean v2, p0, Landroid/webkit/WebSettingsClassic;->mUseWebViewBackgroundForOverscroll:Z

    .line 279
    new-instance v1, Landroid/webkit/WebSettingsClassic$EventHandler;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Landroid/webkit/WebSettingsClassic$EventHandler;-><init>(Landroid/webkit/WebSettingsClassic;Landroid/webkit/WebSettingsClassic$1;)V

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mEventHandler:Landroid/webkit/WebSettingsClassic$EventHandler;

    .line 280
    iput-object p1, p0, Landroid/webkit/WebSettingsClassic;->mContext:Landroid/content/Context;

    .line 281
    iput-object p2, p0, Landroid/webkit/WebSettingsClassic;->mWebView:Landroid/webkit/WebViewClassic;

    .line 282
    const v1, 0x10400f7

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mDefaultTextEncoding:Ljava/lang/String;

    .line 285
    sget-object v1, Landroid/webkit/WebSettingsClassic;->sLockForLocaleSettings:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 286
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/webkit/WebSettingsClassic;->sLockForLocaleSettings:Ljava/lang/Object;

    .line 287
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sput-object v1, Landroid/webkit/WebSettingsClassic;->sLocale:Ljava/util/Locale;

    .line 289
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mAcceptLanguage:Ljava/lang/String;

    .line 290
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->getCurrentUserAgent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    .line 291
    iput-boolean v2, p0, Landroid/webkit/WebSettingsClassic;->mUseDefaultUserAgent:Z

    .line 293
    iget-object v1, p0, Landroid/webkit/WebSettingsClassic;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.INTERNET"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroid/webkit/WebSettingsClassic;->mBlockNetworkLoads:Z

    .line 298
    iget-object v1, p0, Landroid/webkit/WebSettingsClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v1, v7, :cond_1

    .line 300
    iput-boolean v2, p0, Landroid/webkit/WebSettingsClassic;->mAllowUniversalAccessFromFileURLs:Z

    .line 301
    iput-boolean v2, p0, Landroid/webkit/WebSettingsClassic;->mAllowFileAccessFromFileURLs:Z

    .line 304
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "show_password"

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    move v3, v2

    :cond_2
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mPasswordEchoEnabled:Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :goto_1
    return-void

    :cond_3
    move v1, v3

    .line 293
    goto :goto_0

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    iput-boolean v2, p0, Landroid/webkit/WebSettingsClassic;->mPasswordEchoEnabled:Z

    goto :goto_1
.end method

.method static synthetic access$000(Landroid/webkit/WebSettingsClassic;)Landroid/webkit/BrowserFrame;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    return-object v0
.end method

.method static synthetic access$100(Landroid/webkit/WebSettingsClassic;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/webkit/WebSettingsClassic;->nativeSync(I)V

    return-void
.end method

.method static synthetic access$202(Landroid/webkit/WebSettingsClassic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mSyncPending:Z

    return p1
.end method

.method static synthetic access$400(Landroid/webkit/WebSettingsClassic;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 36
    sget v0, Landroid/webkit/WebSettingsClassic;->mDoubleTapToastCount:I

    return v0
.end method

.method static synthetic access$600(Landroid/webkit/WebSettingsClassic;)Landroid/webkit/WebSettings$RenderPriority;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mRenderPriority:Landroid/webkit/WebSettings$RenderPriority;

    return-object v0
.end method

.method private static addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V
    .locals 3
    .parameter "builder"
    .parameter "locale"

    .prologue
    .line 359
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/WebSettingsClassic;->convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 360
    .local v1, language:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 361
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, country:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 364
    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .end local v0           #country:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "langCode"

    .prologue
    .line 341
    if-nez p0, :cond_1

    .line 342
    const/4 p0, 0x0

    .line 354
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 344
    .restart local p0
    :cond_1
    const-string v0, "iw"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 346
    const-string p0, "he"

    goto :goto_0

    .line 347
    :cond_2
    const-string v0, "in"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 349
    const-string p0, "id"

    goto :goto_0

    .line 350
    :cond_3
    const-string v0, "ji"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    const-string/jumbo p0, "yi"

    goto :goto_0
.end method

.method private getCurrentAcceptLanguage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 320
    sget-object v3, Landroid/webkit/WebSettingsClassic;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v3

    .line 321
    :try_start_0
    sget-object v1, Landroid/webkit/WebSettingsClassic;->sLocale:Ljava/util/Locale;

    .line 322
    .local v1, locale:Ljava/util/Locale;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 324
    .local v0, buffer:Ljava/lang/StringBuilder;
    invoke-static {v0, v1}, Landroid/webkit/WebSettingsClassic;->addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V

    .line 326
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 327
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 328
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    :cond_0
    const-string v2, "en-US"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 322
    .end local v0           #buffer:Ljava/lang/StringBuilder;
    .end local v1           #locale:Ljava/util/Locale;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private declared-synchronized getCurrentUserAgent()Ljava/lang/String;
    .locals 3

    .prologue
    .line 376
    monitor-enter p0

    :try_start_0
    sget-object v2, Landroid/webkit/WebSettingsClassic;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 377
    :try_start_1
    sget-object v0, Landroid/webkit/WebSettingsClassic;->sLocale:Ljava/util/Locale;

    .line 378
    .local v0, locale:Ljava/util/Locale;
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 379
    :try_start_2
    iget-object v1, p0, Landroid/webkit/WebSettingsClassic;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/webkit/WebSettingsClassic;->getDefaultUserAgentForLocale(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 378
    .end local v0           #locale:Ljava/util/Locale;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 376
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static getDefaultUserAgentForLocale(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;
    .locals 14
    .parameter "context"
    .parameter "locale"

    .prologue
    .line 394
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 396
    .local v1, buffer:Ljava/lang/StringBuffer;
    sget-object v10, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 397
    .local v10, version:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_5

    .line 398
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->isDigit(C)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 400
    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 410
    :goto_0
    const-string v11, "; "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 411
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    .line 412
    .local v7, language:Ljava/lang/String;
    if-eqz v7, :cond_6

    .line 413
    invoke-static {v7}, Landroid/webkit/WebSettingsClassic;->convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 414
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    .line 415
    .local v5, country:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 416
    const-string v11, "-"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 417
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 423
    .end local v5           #country:Ljava/lang/String;
    :cond_0
    :goto_1
    const-string v11, ";"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 425
    const-string v11, "REL"

    sget-object v12, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 426
    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 427
    .local v9, model:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_1

    .line 428
    const-string v11, " "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 429
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 432
    .end local v9           #model:Ljava/lang/String;
    :cond_1
    sget-object v6, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 433
    .local v6, id:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_2

    .line 434
    const-string v11, " Build/"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 435
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 437
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x10403e8

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 439
    .local v8, mobile:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x10403e7

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, base:Ljava/lang/String;
    const-string v3, ""

    .line 443
    .local v3, cmtag:Ljava/lang/String;
    const-string/jumbo v11, "ro.cm.version"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 444
    .local v4, cmversion:Ljava/lang/String;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_3

    .line 445
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " CyanogenMod/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "([0-9\\.]+?)-.*"

    const-string v13, "$1"

    invoke-virtual {v4, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 446
    const-string/jumbo v11, "ro.cm.device"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 447
    .local v2, cmdevice:Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_3

    .line 448
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 451
    .end local v2           #cmdevice:Ljava/lang/String;
    :cond_3
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v1, v11, v12

    const/4 v12, 0x1

    aput-object v8, v11, v12

    invoke-static {v0, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    return-object v11

    .line 404
    .end local v0           #base:Ljava/lang/String;
    .end local v3           #cmtag:Ljava/lang/String;
    .end local v4           #cmversion:Ljava/lang/String;
    .end local v6           #id:Ljava/lang/String;
    .end local v7           #language:Ljava/lang/String;
    .end local v8           #mobile:Ljava/lang/String;
    :cond_4
    const-string v11, "4.1.1"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 408
    :cond_5
    const-string v11, "1.0"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 421
    .restart local v7       #language:Ljava/lang/String;
    :cond_6
    const-string v11, "en"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1
.end method

.method private native nativeSync(I)V
.end method

.method private pin(I)I
    .locals 2
    .parameter "size"

    .prologue
    const/16 v1, 0x48

    const/4 v0, 0x1

    .line 1756
    if-ge p1, v0, :cond_1

    move p1, v0

    .line 1761
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 1758
    .restart local p1
    :cond_1
    if-le p1, v1, :cond_0

    move p1, v1

    .line 1759
    goto :goto_0
.end method

.method private declared-synchronized postSync()V
    .locals 3

    .prologue
    .line 1767
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mSyncPending:Z

    if-nez v0, :cond_0

    .line 1768
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mEventHandler:Landroid/webkit/WebSettingsClassic$EventHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebSettingsClassic$EventHandler;->sendMessage(Landroid/os/Message;)Z
    invoke-static {v0, v1}, Landroid/webkit/WebSettingsClassic$EventHandler;->access$800(Landroid/webkit/WebSettingsClassic$EventHandler;Landroid/os/Message;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mSyncPending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1771
    :cond_0
    monitor-exit p0

    return-void

    .line 1767
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private verifyNetworkAccess()V
    .locals 4

    .prologue
    .line 1118
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mBlockNetworkLoads:Z

    if-nez v0, :cond_0

    .line 1119
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERNET"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1122
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Permission denied - application missing INTERNET permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1127
    :cond_0
    return-void
.end method


# virtual methods
.method public enableSmoothTransition()Z
    .locals 1

    .prologue
    .line 603
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mEnableSmoothTransition:Z

    return v0
.end method

.method public forceUserScalable()Z
    .locals 1

    .prologue
    .line 1660
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mForceUserScalable:Z

    return v0
.end method

.method declared-synchronized getAcceptLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1540
    monitor-enter p0

    :try_start_0
    sget-object v2, Landroid/webkit/WebSettingsClassic;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1541
    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1542
    .local v0, currentLocale:Ljava/util/Locale;
    sget-object v1, Landroid/webkit/WebSettingsClassic;->sLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1543
    sput-object v0, Landroid/webkit/WebSettingsClassic;->sLocale:Ljava/util/Locale;

    .line 1544
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mAcceptLanguage:Ljava/lang/String;

    .line 1546
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1547
    :try_start_2
    iget-object v1, p0, Landroid/webkit/WebSettingsClassic;->mAcceptLanguage:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v1

    .line 1546
    .end local v0           #currentLocale:Ljava/util/Locale;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1540
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getAllowContentAccess()Z
    .locals 1

    .prologue
    .line 571
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mAllowContentAccess:Z

    return v0
.end method

.method public getAllowFileAccess()Z
    .locals 1

    .prologue
    .line 555
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mAllowFileAccess:Z

    return v0
.end method

.method public declared-synchronized getAllowFileAccessFromFileURLs()Z
    .locals 1

    .prologue
    .line 1418
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mAllowFileAccessFromFileURLs:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAllowUniversalAccessFromFileURLs()Z
    .locals 1

    .prologue
    .line 1410
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mAllowUniversalAccessFromFileURLs:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAutoFillEnabled()Z
    .locals 1

    .prologue
    .line 1688
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mAutoFillEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAutoFillProfile()Landroid/webkit/WebSettingsClassic$AutoFillProfile;
    .locals 1

    .prologue
    .line 1699
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mAutoFillProfile:Landroid/webkit/WebSettingsClassic$AutoFillProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBlockNetworkImage()Z
    .locals 1

    .prologue
    .line 1093
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mBlockNetworkImage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBlockNetworkLoads()Z
    .locals 1

    .prologue
    .line 1113
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mBlockNetworkLoads:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBuiltInZoomControls()Z
    .locals 1

    .prologue
    .line 522
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mBuiltInZoomControls:Z

    return v0
.end method

.method public getCacheMode()I
    .locals 1

    .prologue
    .line 1597
    iget v0, p0, Landroid/webkit/WebSettingsClassic;->mOverrideCacheMode:I

    return v0
.end method

.method public declared-synchronized getCursiveFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 943
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mCursiveFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDatabaseEnabled()Z
    .locals 1

    .prologue
    .line 1340
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mDatabaseEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDatabasePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1332
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mDatabasePath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultFixedFontSize()I
    .locals 1

    .prologue
    .line 1042
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkit/WebSettingsClassic;->mDefaultFixedFontSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultFontSize()I
    .locals 1

    .prologue
    .line 1022
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkit/WebSettingsClassic;->mDefaultFontSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultTextEncodingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1483
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mDefaultTextEncoding:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDefaultZoom()Landroid/webkit/WebSettings$ZoomDensity;
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mDefaultZoom:Landroid/webkit/WebSettings$ZoomDensity;

    return-object v0
.end method

.method public getDisplayZoomControls()Z
    .locals 1

    .prologue
    .line 539
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mDisplayZoomControls:Z

    return v0
.end method

.method public declared-synchronized getDomStorageEnabled()Z
    .locals 1

    .prologue
    .line 1324
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mDomStorageEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getDoubleTapToastCount()I
    .locals 1

    .prologue
    .line 1703
    sget v0, Landroid/webkit/WebSettingsClassic;->mDoubleTapToastCount:I

    return v0
.end method

.method public getDoubleTapZoom()I
    .locals 1

    .prologue
    .line 691
    iget v0, p0, Landroid/webkit/WebSettingsClassic;->mDoubleTapZoom:I

    return v0
.end method

.method public declared-synchronized getFantasyFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 962
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mFantasyFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFixedFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 886
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mFixedFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHardwareAccelSkiaEnabled()Z
    .locals 1

    .prologue
    .line 1178
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mHardwareAccelSkia:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getJavaScriptCanOpenWindowsAutomatically()Z
    .locals 1

    .prologue
    .line 1464
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mJavaScriptCanOpenWindowsAutomatically:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getJavaScriptEnabled()Z
    .locals 1

    .prologue
    .line 1402
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mJavaScriptEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;
    .locals 1

    .prologue
    .line 848
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mLayoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLightTouchEnabled()Z
    .locals 1

    .prologue
    .line 726
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mLightTouchEnabled:Z

    return v0
.end method

.method public getLoadWithOverviewMode()Z
    .locals 1

    .prologue
    .line 587
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mLoadWithOverviewMode:Z

    return v0
.end method

.method public declared-synchronized getLoadsImagesAutomatically()Z
    .locals 1

    .prologue
    .line 1074
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mLoadsImagesAutomatically:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMediaPlaybackRequiresUserGesture()Z
    .locals 1

    .prologue
    .line 505
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mMediaPlaybackRequiresUserGesture:Z

    return v0
.end method

.method public declared-synchronized getMinimumFontSize()I
    .locals 1

    .prologue
    .line 982
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkit/WebSettingsClassic;->mMinimumFontSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMinimumLogicalFontSize()I
    .locals 1

    .prologue
    .line 1002
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkit/WebSettingsClassic;->mMinimumLogicalFontSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNavDump()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 469
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mNavDump:Z

    return v0
.end method

.method getNeedInitialFocus()Z
    .locals 1

    .prologue
    .line 1566
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mNeedInitialFocus:Z

    return v0
.end method

.method public declared-synchronized getPluginState()Landroid/webkit/WebSettings$PluginState;
    .locals 1

    .prologue
    .line 1435
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mPluginState:Landroid/webkit/WebSettings$PluginState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPluginsEnabled()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1427
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mPluginState:Landroid/webkit/WebSettings$PluginState;

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPluginsPath()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1444
    monitor-enter p0

    :try_start_0
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 1722
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewClassic;->nativeGetProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getSansSerifFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 905
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mSansSerifFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSaveFormData()Z
    .locals 1

    .prologue
    .line 637
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mSaveFormData:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mPrivateBrowsingEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSavePassword()Z
    .locals 1

    .prologue
    .line 653
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mSavePassword:Z

    return v0
.end method

.method public declared-synchronized getSerifFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 924
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mSerifFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getShowVisualIndicator()Z
    .locals 1

    .prologue
    .line 1196
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mShowVisualIndicator:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStandardFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 867
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mStandardFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTextZoom()I
    .locals 1

    .prologue
    .line 672
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkit/WebSettingsClassic;->mTextSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUseDoubleTree()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 744
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method getUseFixedViewport()Z
    .locals 1

    .prologue
    .line 1630
    invoke-virtual {p0}, Landroid/webkit/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v0

    return v0
.end method

.method public getUseWebViewBackgroundForOverscrollBackground()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 621
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mUseWebViewBackgroundForOverscroll:Z

    return v0
.end method

.method public declared-synchronized getUseWideViewPort()Z
    .locals 1

    .prologue
    .line 804
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mUseWideViewport:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserAgent()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 778
    monitor-enter p0

    :try_start_0
    const-string v0, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    iget-object v1, p0, Landroid/webkit/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 779
    const/4 v0, 0x1

    .line 785
    :goto_0
    monitor-exit p0

    return v0

    .line 780
    :cond_0
    :try_start_1
    const-string v0, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

    iget-object v1, p0, Landroid/webkit/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 781
    const/4 v0, 0x2

    goto :goto_0

    .line 782
    :cond_1
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mUseDefaultUserAgent:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 783
    const/4 v0, 0x0

    goto :goto_0

    .line 785
    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    .line 778
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserAgentString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1516
    monitor-enter p0

    :try_start_0
    const-string v2, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    iget-object v3, p0, Landroid/webkit/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

    iget-object v3, p0, Landroid/webkit/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/webkit/WebSettingsClassic;->mUseDefaultUserAgent:Z

    if-nez v2, :cond_1

    .line 1519
    :cond_0
    iget-object v2, p0, Landroid/webkit/WebSettingsClassic;->mUserAgent:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1535
    :goto_0
    monitor-exit p0

    return-object v2

    .line 1522
    :cond_1
    const/4 v1, 0x0

    .line 1523
    .local v1, doPostSync:Z
    :try_start_1
    sget-object v3, Landroid/webkit/WebSettingsClassic;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1524
    :try_start_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1525
    .local v0, currentLocale:Ljava/util/Locale;
    sget-object v2, Landroid/webkit/WebSettingsClassic;->sLocale:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1526
    sput-object v0, Landroid/webkit/WebSettingsClassic;->sLocale:Ljava/util/Locale;

    .line 1527
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->getCurrentUserAgent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    .line 1528
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/WebSettingsClassic;->mAcceptLanguage:Ljava/lang/String;

    .line 1529
    const/4 v1, 0x1

    .line 1531
    :cond_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1532
    if-eqz v1, :cond_3

    .line 1533
    :try_start_3
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V

    .line 1535
    :cond_3
    iget-object v2, p0, Landroid/webkit/WebSettingsClassic;->mUserAgent:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 1531
    .end local v0           #currentLocale:Ljava/util/Locale;
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1516
    .end local v1           #doPostSync:Z
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getWebSocketsEnabled()Z
    .locals 1

    .prologue
    .line 1348
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mWebSocketsEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method isNarrowColumnLayout()Z
    .locals 2

    .prologue
    .line 1551
    invoke-virtual {p0}, Landroid/webkit/WebSettingsClassic;->getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPrivateBrowsingEnabled()Z
    .locals 1

    .prologue
    .line 1637
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mPrivateBrowsingEnabled:Z

    return v0
.end method

.method declared-synchronized onDestroyed()V
    .locals 0

    .prologue
    .line 1752
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public setAllowContentAccess(Z)V
    .locals 0
    .parameter "allow"

    .prologue
    .line 563
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mAllowContentAccess:Z

    .line 564
    return-void
.end method

.method public setAllowFileAccess(Z)V
    .locals 0
    .parameter "allow"

    .prologue
    .line 547
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mAllowFileAccess:Z

    .line 548
    return-void
.end method

.method public declared-synchronized setAllowFileAccessFromFileURLs(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1157
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mAllowFileAccessFromFileURLs:Z

    if-eq v0, p1, :cond_0

    .line 1158
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mAllowFileAccessFromFileURLs:Z

    .line 1159
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1161
    :cond_0
    monitor-exit p0

    return-void

    .line 1157
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAllowUniversalAccessFromFileURLs(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1146
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mAllowUniversalAccessFromFileURLs:Z

    if-eq v0, p1, :cond_0

    .line 1147
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mAllowUniversalAccessFromFileURLs:Z

    .line 1148
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1150
    :cond_0
    monitor-exit p0

    return-void

    .line 1146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppCacheEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1256
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mAppCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1257
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mAppCacheEnabled:Z

    .line 1258
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1260
    :cond_0
    monitor-exit p0

    return-void

    .line 1256
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppCacheMaxSize(J)V
    .locals 2
    .parameter "appCacheMaxSize"

    .prologue
    .line 1280
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Landroid/webkit/WebSettingsClassic;->mAppCacheMaxSize:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 1281
    iput-wide p1, p0, Landroid/webkit/WebSettingsClassic;->mAppCacheMaxSize:J

    .line 1282
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1284
    :cond_0
    monitor-exit p0

    return-void

    .line 1280
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppCachePath(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 1269
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mAppCachePath:Ljava/lang/String;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1270
    iput-object p1, p0, Landroid/webkit/WebSettingsClassic;->mAppCachePath:Ljava/lang/String;

    .line 1271
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1273
    :cond_0
    monitor-exit p0

    return-void

    .line 1269
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAutoFillEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 1680
    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    iget-boolean v1, p0, Landroid/webkit/WebSettingsClassic;->mPrivateBrowsingEnabled:Z

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 1681
    .local v0, autoFillEnabled:Z
    :goto_0
    iget-boolean v1, p0, Landroid/webkit/WebSettingsClassic;->mAutoFillEnabled:Z

    if-eq v1, v0, :cond_0

    .line 1682
    iput-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mAutoFillEnabled:Z

    .line 1683
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1685
    :cond_0
    monitor-exit p0

    return-void

    .line 1680
    .end local v0           #autoFillEnabled:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setAutoFillProfile(Landroid/webkit/WebSettingsClassic$AutoFillProfile;)V
    .locals 1
    .parameter "profile"

    .prologue
    .line 1692
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mAutoFillProfile:Landroid/webkit/WebSettingsClassic$AutoFillProfile;

    if-eq v0, p1, :cond_0

    .line 1693
    iput-object p1, p0, Landroid/webkit/WebSettingsClassic;->mAutoFillProfile:Landroid/webkit/WebSettingsClassic$AutoFillProfile;

    .line 1694
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1696
    :cond_0
    monitor-exit p0

    return-void

    .line 1692
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBlockNetworkImage(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1082
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mBlockNetworkImage:Z

    if-eq v0, p1, :cond_0

    .line 1083
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mBlockNetworkImage:Z

    .line 1084
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1086
    :cond_0
    monitor-exit p0

    return-void

    .line 1082
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBlockNetworkLoads(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1101
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mBlockNetworkLoads:Z

    if-eq v0, p1, :cond_0

    .line 1102
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mBlockNetworkLoads:Z

    .line 1103
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->verifyNetworkAccess()V

    .line 1104
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1106
    :cond_0
    monitor-exit p0

    return-void

    .line 1101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBuiltInZoomControls(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 513
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mBuiltInZoomControls:Z

    .line 514
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v1, p0, Landroid/webkit/WebSettingsClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic;->updateMultiTouchSupport(Landroid/content/Context;)V

    .line 515
    return-void
.end method

.method public setCacheMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 1586
    iget v0, p0, Landroid/webkit/WebSettingsClassic;->mOverrideCacheMode:I

    if-eq p1, v0, :cond_0

    .line 1587
    iput p1, p0, Landroid/webkit/WebSettingsClassic;->mOverrideCacheMode:I

    .line 1588
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V

    .line 1590
    :cond_0
    return-void
.end method

.method public declared-synchronized setCursiveFontFamily(Ljava/lang/String;)V
    .locals 1
    .parameter "font"

    .prologue
    .line 932
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mCursiveFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 933
    iput-object p1, p0, Landroid/webkit/WebSettingsClassic;->mCursiveFontFamily:Ljava/lang/String;

    .line 934
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 936
    :cond_0
    monitor-exit p0

    return-void

    .line 932
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDatabaseEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1291
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mDatabaseEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1292
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mDatabaseEnabled:Z

    .line 1293
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1295
    :cond_0
    monitor-exit p0

    return-void

    .line 1291
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDatabasePath(Ljava/lang/String;)V
    .locals 1
    .parameter "databasePath"

    .prologue
    .line 1232
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mDatabasePathHasBeenSet:Z

    if-nez v0, :cond_0

    .line 1233
    iput-object p1, p0, Landroid/webkit/WebSettingsClassic;->mDatabasePath:Ljava/lang/String;

    .line 1234
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mDatabasePathHasBeenSet:Z

    .line 1235
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1237
    :cond_0
    monitor-exit p0

    return-void

    .line 1232
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultFixedFontSize(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 1030
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/webkit/WebSettingsClassic;->pin(I)I

    move-result p1

    .line 1031
    iget v0, p0, Landroid/webkit/WebSettingsClassic;->mDefaultFixedFontSize:I

    if-eq v0, p1, :cond_0

    .line 1032
    iput p1, p0, Landroid/webkit/WebSettingsClassic;->mDefaultFixedFontSize:I

    .line 1033
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1035
    :cond_0
    monitor-exit p0

    return-void

    .line 1030
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultFontSize(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 1010
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/webkit/WebSettingsClassic;->pin(I)I

    move-result p1

    .line 1011
    iget v0, p0, Landroid/webkit/WebSettingsClassic;->mDefaultFontSize:I

    if-eq v0, p1, :cond_0

    .line 1012
    iput p1, p0, Landroid/webkit/WebSettingsClassic;->mDefaultFontSize:I

    .line 1013
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1015
    :cond_0
    monitor-exit p0

    return-void

    .line 1010
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultTextEncodingName(Ljava/lang/String;)V
    .locals 1
    .parameter "encoding"

    .prologue
    .line 1472
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mDefaultTextEncoding:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1473
    iput-object p1, p0, Landroid/webkit/WebSettingsClassic;->mDefaultTextEncoding:Ljava/lang/String;

    .line 1474
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1476
    :cond_0
    monitor-exit p0

    return-void

    .line 1472
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V
    .locals 2
    .parameter "zoom"

    .prologue
    .line 699
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mDefaultZoom:Landroid/webkit/WebSettings$ZoomDensity;

    if-eq v0, p1, :cond_0

    .line 700
    iput-object p1, p0, Landroid/webkit/WebSettingsClassic;->mDefaultZoom:Landroid/webkit/WebSettings$ZoomDensity;

    .line 701
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mWebView:Landroid/webkit/WebViewClassic;

    iget v1, p1, Landroid/webkit/WebSettings$ZoomDensity;->value:I

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic;->adjustDefaultZoomDensity(I)V

    .line 703
    :cond_0
    return-void
.end method

.method public setDisplayZoomControls(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 530
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mDisplayZoomControls:Z

    .line 531
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v1, p0, Landroid/webkit/WebSettingsClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic;->updateMultiTouchSupport(Landroid/content/Context;)V

    .line 532
    return-void
.end method

.method public declared-synchronized setDomStorageEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1313
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mDomStorageEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1314
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mDomStorageEnabled:Z

    .line 1315
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1317
    :cond_0
    monitor-exit p0

    return-void

    .line 1313
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setDoubleTapToastCount(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 1707
    sget v0, Landroid/webkit/WebSettingsClassic;->mDoubleTapToastCount:I

    if-eq v0, p1, :cond_0

    .line 1708
    sput p1, Landroid/webkit/WebSettingsClassic;->mDoubleTapToastCount:I

    .line 1710
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mEventHandler:Landroid/webkit/WebSettingsClassic$EventHandler;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebSettingsClassic$EventHandler;->sendMessage(Landroid/os/Message;)Z
    invoke-static {v0, v1}, Landroid/webkit/WebSettingsClassic$EventHandler;->access$800(Landroid/webkit/WebSettingsClassic$EventHandler;Landroid/os/Message;)Z

    .line 1713
    :cond_0
    return-void
.end method

.method public setDoubleTapZoom(I)V
    .locals 1
    .parameter "doubleTapZoom"

    .prologue
    .line 680
    iget v0, p0, Landroid/webkit/WebSettingsClassic;->mDoubleTapZoom:I

    if-eq v0, p1, :cond_0

    .line 681
    iput p1, p0, Landroid/webkit/WebSettingsClassic;->mDoubleTapZoom:I

    .line 682
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewClassic;->updateDoubleTapZoom(I)V

    .line 684
    :cond_0
    return-void
.end method

.method public setEnableSmoothTransition(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 595
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mEnableSmoothTransition:Z

    .line 596
    return-void
.end method

.method public declared-synchronized setFantasyFontFamily(Ljava/lang/String;)V
    .locals 1
    .parameter "font"

    .prologue
    .line 951
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mFantasyFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 952
    iput-object p1, p0, Landroid/webkit/WebSettingsClassic;->mFantasyFontFamily:Ljava/lang/String;

    .line 953
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 955
    :cond_0
    monitor-exit p0

    return-void

    .line 951
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFixedFontFamily(Ljava/lang/String;)V
    .locals 1
    .parameter "font"

    .prologue
    .line 875
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mFixedFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 876
    iput-object p1, p0, Landroid/webkit/WebSettingsClassic;->mFixedFontFamily:Ljava/lang/String;

    .line 877
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 879
    :cond_0
    monitor-exit p0

    return-void

    .line 875
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setForceUserScalable(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1668
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mForceUserScalable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1669
    monitor-exit p0

    return-void

    .line 1668
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setGeolocationDatabasePath(Ljava/lang/String;)V
    .locals 1
    .parameter "databasePath"

    .prologue
    .line 1244
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mGeolocationDatabasePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1246
    iput-object p1, p0, Landroid/webkit/WebSettingsClassic;->mGeolocationDatabasePath:Ljava/lang/String;

    .line 1247
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1249
    :cond_0
    monitor-exit p0

    return-void

    .line 1244
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setGeolocationEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1369
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mGeolocationEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1370
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mGeolocationEnabled:Z

    .line 1371
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1373
    :cond_0
    monitor-exit p0

    return-void

    .line 1369
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setHardwareAccelSkiaEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1168
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mHardwareAccelSkia:Z

    if-eq v0, p1, :cond_0

    .line 1169
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mHardwareAccelSkia:Z

    .line 1170
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1172
    :cond_0
    monitor-exit p0

    return-void

    .line 1168
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setJavaScriptCanOpenWindowsAutomatically(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1453
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mJavaScriptCanOpenWindowsAutomatically:Z

    if-eq v0, p1, :cond_0

    .line 1454
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mJavaScriptCanOpenWindowsAutomatically:Z

    .line 1455
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1457
    :cond_0
    monitor-exit p0

    return-void

    .line 1453
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setJavaScriptEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1134
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mJavaScriptEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1135
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mJavaScriptEnabled:Z

    .line 1136
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V

    .line 1137
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewClassic;->updateJavaScriptEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1139
    :cond_0
    monitor-exit p0

    return-void

    .line 1134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 831
    monitor-enter p0

    :try_start_0
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->TEXT_AUTOSIZING:Landroid/webkit/WebSettings$LayoutAlgorithm;

    if-ne p1, v0, :cond_0

    .line 832
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "WebViewClassic does not support TEXT_AUTOSIZING layout mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 831
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 837
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mLayoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    if-eq v0, p1, :cond_1

    .line 838
    iput-object p1, p0, Landroid/webkit/WebSettingsClassic;->mLayoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 839
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 841
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public setLightTouchEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 718
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mLightTouchEnabled:Z

    .line 719
    return-void
.end method

.method public declared-synchronized setLinkPrefetchEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1391
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mLinkPrefetchEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1392
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mLinkPrefetchEnabled:Z

    .line 1393
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1395
    :cond_0
    monitor-exit p0

    return-void

    .line 1391
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLoadWithOverviewMode(Z)V
    .locals 0
    .parameter "overview"

    .prologue
    .line 579
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mLoadWithOverviewMode:Z

    .line 580
    return-void
.end method

.method public declared-synchronized setLoadsImagesAutomatically(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1063
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mLoadsImagesAutomatically:Z

    if-eq v0, p1, :cond_0

    .line 1064
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mLoadsImagesAutomatically:Z

    .line 1065
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1067
    :cond_0
    monitor-exit p0

    return-void

    .line 1063
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMaximumDecodedImageSize(J)V
    .locals 2
    .parameter "size"

    .prologue
    .line 1619
    iget-wide v0, p0, Landroid/webkit/WebSettingsClassic;->mMaximumDecodedImageSize:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 1620
    iput-wide p1, p0, Landroid/webkit/WebSettingsClassic;->mMaximumDecodedImageSize:J

    .line 1621
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V

    .line 1623
    :cond_0
    return-void
.end method

.method public setMediaPlaybackRequiresUserGesture(Z)V
    .locals 1
    .parameter "support"

    .prologue
    .line 494
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mMediaPlaybackRequiresUserGesture:Z

    if-eq v0, p1, :cond_0

    .line 495
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mMediaPlaybackRequiresUserGesture:Z

    .line 496
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V

    .line 498
    :cond_0
    return-void
.end method

.method public declared-synchronized setMinimumFontSize(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 970
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/webkit/WebSettingsClassic;->pin(I)I

    move-result p1

    .line 971
    iget v0, p0, Landroid/webkit/WebSettingsClassic;->mMinimumFontSize:I

    if-eq v0, p1, :cond_0

    .line 972
    iput p1, p0, Landroid/webkit/WebSettingsClassic;->mMinimumFontSize:I

    .line 973
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 975
    :cond_0
    monitor-exit p0

    return-void

    .line 970
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMinimumLogicalFontSize(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 990
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/webkit/WebSettingsClassic;->pin(I)I

    move-result p1

    .line 991
    iget v0, p0, Landroid/webkit/WebSettingsClassic;->mMinimumLogicalFontSize:I

    if-eq v0, p1, :cond_0

    .line 992
    iput p1, p0, Landroid/webkit/WebSettingsClassic;->mMinimumLogicalFontSize:I

    .line 993
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 995
    :cond_0
    monitor-exit p0

    return-void

    .line 990
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNavDump(Z)V
    .locals 0
    .parameter "enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 460
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mNavDump:Z

    .line 461
    return-void
.end method

.method public setNeedInitialFocus(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1559
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mNeedInitialFocus:Z

    if-eq v0, p1, :cond_0

    .line 1560
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mNeedInitialFocus:Z

    .line 1562
    :cond_0
    return-void
.end method

.method public declared-synchronized setPageCacheCapacity(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 1050
    monitor-enter p0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 1051
    :cond_0
    const/16 v0, 0x14

    if-le p1, v0, :cond_1

    const/16 p1, 0x14

    .line 1052
    :cond_1
    :try_start_0
    iget v0, p0, Landroid/webkit/WebSettingsClassic;->mPageCacheCapacity:I

    if-eq v0, p1, :cond_2

    .line 1053
    iput p1, p0, Landroid/webkit/WebSettingsClassic;->mPageCacheCapacity:I

    .line 1054
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1056
    :cond_2
    monitor-exit p0

    return-void

    .line 1050
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPluginState(Landroid/webkit/WebSettings$PluginState;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 1213
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mPluginState:Landroid/webkit/WebSettings$PluginState;

    if-eq v0, p1, :cond_0

    .line 1214
    iput-object p1, p0, Landroid/webkit/WebSettingsClassic;->mPluginState:Landroid/webkit/WebSettings$PluginState;

    .line 1215
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1217
    :cond_0
    monitor-exit p0

    return-void

    .line 1213
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPluginsEnabled(Z)V
    .locals 1
    .parameter "flag"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1205
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    sget-object v0, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    :goto_0
    invoke-virtual {p0, v0}, Landroid/webkit/WebSettingsClassic;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1206
    monitor-exit p0

    return-void

    .line 1205
    :cond_0
    :try_start_1
    sget-object v0, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPluginsPath(Ljava/lang/String;)V
    .locals 0
    .parameter "pluginsPath"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1225
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method declared-synchronized setPrivateBrowsingEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1645
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mPrivateBrowsingEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1646
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mPrivateBrowsingEnabled:Z

    .line 1650
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mAutoFillEnabled:Z

    invoke-virtual {p0, v0}, Landroid/webkit/WebSettingsClassic;->setAutoFillEnabled(Z)V

    .line 1652
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1654
    :cond_0
    monitor-exit p0

    return-void

    .line 1645
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1716
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClassic;->nativeSetProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1717
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 1719
    :cond_0
    return-void
.end method

.method public declared-synchronized setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V
    .locals 3
    .parameter "priority"

    .prologue
    .line 1574
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mRenderPriority:Landroid/webkit/WebSettings$RenderPriority;

    if-eq v0, p1, :cond_0

    .line 1575
    iput-object p1, p0, Landroid/webkit/WebSettingsClassic;->mRenderPriority:Landroid/webkit/WebSettings$RenderPriority;

    .line 1576
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mEventHandler:Landroid/webkit/WebSettingsClassic$EventHandler;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebSettingsClassic$EventHandler;->sendMessage(Landroid/os/Message;)Z
    invoke-static {v0, v1}, Landroid/webkit/WebSettingsClassic$EventHandler;->access$800(Landroid/webkit/WebSettingsClassic$EventHandler;Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1579
    :cond_0
    monitor-exit p0

    return-void

    .line 1574
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSansSerifFontFamily(Ljava/lang/String;)V
    .locals 1
    .parameter "font"

    .prologue
    .line 894
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mSansSerifFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 895
    iput-object p1, p0, Landroid/webkit/WebSettingsClassic;->mSansSerifFontFamily:Ljava/lang/String;

    .line 896
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 898
    :cond_0
    monitor-exit p0

    return-void

    .line 894
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSaveFormData(Z)V
    .locals 0
    .parameter "save"

    .prologue
    .line 629
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mSaveFormData:Z

    .line 630
    return-void
.end method

.method public setSavePassword(Z)V
    .locals 0
    .parameter "save"

    .prologue
    .line 645
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mSavePassword:Z

    .line 646
    return-void
.end method

.method public declared-synchronized setSerifFontFamily(Ljava/lang/String;)V
    .locals 1
    .parameter "font"

    .prologue
    .line 913
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mSerifFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 914
    iput-object p1, p0, Landroid/webkit/WebSettingsClassic;->mSerifFontFamily:Ljava/lang/String;

    .line 915
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 917
    :cond_0
    monitor-exit p0

    return-void

    .line 913
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setShowVisualIndicator(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1186
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mShowVisualIndicator:Z

    if-eq v0, p1, :cond_0

    .line 1187
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mShowVisualIndicator:Z

    .line 1188
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1190
    :cond_0
    monitor-exit p0

    return-void

    .line 1186
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setShrinksStandaloneImagesToFit(Z)V
    .locals 1
    .parameter "shrink"

    .prologue
    .line 1607
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mShrinksStandaloneImagesToFit:Z

    if-eq v0, p1, :cond_0

    .line 1608
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mShrinksStandaloneImagesToFit:Z

    .line 1609
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V

    .line 1611
    :cond_0
    return-void
.end method

.method public declared-synchronized setStandardFontFamily(Ljava/lang/String;)V
    .locals 1
    .parameter "font"

    .prologue
    .line 856
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mStandardFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 857
    iput-object p1, p0, Landroid/webkit/WebSettingsClassic;->mStandardFontFamily:Ljava/lang/String;

    .line 858
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 860
    :cond_0
    monitor-exit p0

    return-void

    .line 856
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSupportMultipleWindows(Z)V
    .locals 1
    .parameter "support"

    .prologue
    .line 812
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mSupportMultipleWindows:Z

    if-eq v0, p1, :cond_0

    .line 813
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mSupportMultipleWindows:Z

    .line 814
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 816
    :cond_0
    monitor-exit p0

    return-void

    .line 812
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSupportZoom(Z)V
    .locals 2
    .parameter "support"

    .prologue
    .line 477
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mSupportZoom:Z

    .line 478
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v1, p0, Landroid/webkit/WebSettingsClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic;->updateMultiTouchSupport(Landroid/content/Context;)V

    .line 479
    return-void
.end method

.method declared-synchronized setSyntheticLinksEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1672
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mSyntheticLinksEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1673
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mSyntheticLinksEnabled:Z

    .line 1674
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1676
    :cond_0
    monitor-exit p0

    return-void

    .line 1672
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTextZoom(I)V
    .locals 1
    .parameter "textZoom"

    .prologue
    .line 661
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkit/WebSettingsClassic;->mTextSize:I

    if-eq v0, p1, :cond_0

    .line 662
    iput p1, p0, Landroid/webkit/WebSettingsClassic;->mTextSize:I

    .line 663
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 665
    :cond_0
    monitor-exit p0

    return-void

    .line 661
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUseDoubleTree(Z)V
    .locals 0
    .parameter "use"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 735
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public setUseWebViewBackgroundForOverscrollBackground(Z)V
    .locals 0
    .parameter "view"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 612
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mUseWebViewBackgroundForOverscroll:Z

    .line 613
    return-void
.end method

.method public declared-synchronized setUseWideViewPort(Z)V
    .locals 1
    .parameter "use"

    .prologue
    .line 793
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mUseWideViewport:Z

    if-eq v0, p1, :cond_0

    .line 794
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mUseWideViewport:Z

    .line 795
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 797
    :cond_0
    monitor-exit p0

    return-void

    .line 793
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUserAgent(I)V
    .locals 3
    .parameter "ua"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 753
    monitor-enter p0

    const/4 v0, 0x0

    .line 754
    .local v0, uaString:Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 755
    :try_start_0
    const-string v1, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    iget-object v2, p0, Landroid/webkit/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 770
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 758
    :cond_1
    :try_start_1
    const-string v0, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    .line 769
    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Landroid/webkit/WebSettingsClassic;->setUserAgentString(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 753
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 760
    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 761
    :try_start_2
    const-string v1, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

    iget-object v2, p0, Landroid/webkit/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 764
    const-string v0, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 766
    :cond_4
    if-eqz p1, :cond_2

    goto :goto_0
.end method

.method public declared-synchronized setUserAgentString(Ljava/lang/String;)V
    .locals 3
    .parameter "ua"

    .prologue
    .line 1491
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 1492
    :cond_0
    sget-object v2, Landroid/webkit/WebSettingsClassic;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1493
    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1494
    .local v0, currentLocale:Ljava/util/Locale;
    sget-object v1, Landroid/webkit/WebSettingsClassic;->sLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1495
    sput-object v0, Landroid/webkit/WebSettingsClassic;->sLocale:Ljava/util/Locale;

    .line 1496
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mAcceptLanguage:Ljava/lang/String;

    .line 1498
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1499
    :try_start_2
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->getCurrentUserAgent()Ljava/lang/String;

    move-result-object p1

    .line 1500
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebSettingsClassic;->mUseDefaultUserAgent:Z

    .line 1505
    .end local v0           #currentLocale:Ljava/util/Locale;
    :goto_0
    iget-object v1, p0, Landroid/webkit/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1506
    iput-object p1, p0, Landroid/webkit/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    .line 1507
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1509
    :cond_2
    monitor-exit p0

    return-void

    .line 1498
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1491
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1502
    :cond_3
    const/4 v1, 0x0

    :try_start_5
    iput-boolean v1, p0, Landroid/webkit/WebSettingsClassic;->mUseDefaultUserAgent:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method

.method public declared-synchronized setWebSocketsEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1302
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mWebSocketsEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1303
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mWebSocketsEnabled:Z

    .line 1304
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1306
    :cond_0
    monitor-exit p0

    return-void

    .line 1302
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWorkersEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1358
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mWorkersEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1359
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mWorkersEnabled:Z

    .line 1360
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1362
    :cond_0
    monitor-exit p0

    return-void

    .line 1358
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setXSSAuditorEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1381
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mXSSAuditorEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1382
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mXSSAuditorEnabled:Z

    .line 1383
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1385
    :cond_0
    monitor-exit p0

    return-void

    .line 1381
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized supportMultipleWindows()Z
    .locals 1

    .prologue
    .line 823
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mSupportMultipleWindows:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public supportZoom()Z
    .locals 1

    .prologue
    .line 486
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mSupportZoom:Z

    return v0
.end method

.method declared-synchronized syncSettingsAndCreateHandler(Landroid/webkit/BrowserFrame;)V
    .locals 4
    .parameter "frame"

    .prologue
    .line 1731
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/webkit/WebSettingsClassic;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    .line 1736
    iget-object v1, p0, Landroid/webkit/WebSettingsClassic;->mContext:Landroid/content/Context;

    const-string v2, "WebViewSettings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1738
    .local v0, sp:Landroid/content/SharedPreferences;
    sget v1, Landroid/webkit/WebSettingsClassic;->mDoubleTapToastCount:I

    if-lez v1, :cond_0

    .line 1739
    const-string v1, "double_tap_toast_count"

    sget v2, Landroid/webkit/WebSettingsClassic;->mDoubleTapToastCount:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Landroid/webkit/WebSettingsClassic;->mDoubleTapToastCount:I

    .line 1742
    :cond_0
    iget v1, p1, Landroid/webkit/BrowserFrame;->mNativeFrame:I

    invoke-direct {p0, v1}, Landroid/webkit/WebSettingsClassic;->nativeSync(I)V

    .line 1743
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/WebSettingsClassic;->mSyncPending:Z

    .line 1744
    iget-object v1, p0, Landroid/webkit/WebSettingsClassic;->mEventHandler:Landroid/webkit/WebSettingsClassic$EventHandler;

    #calls: Landroid/webkit/WebSettingsClassic$EventHandler;->createHandler()V
    invoke-static {v1}, Landroid/webkit/WebSettingsClassic$EventHandler;->access$900(Landroid/webkit/WebSettingsClassic$EventHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1745
    monitor-exit p0

    return-void

    .line 1731
    .end local v0           #sp:Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
