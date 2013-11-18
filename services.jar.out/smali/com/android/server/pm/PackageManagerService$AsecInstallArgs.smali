.class Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;
.super Lcom/android/server/pm/PackageManagerService$InstallArgs;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsecInstallArgs"
.end annotation


# static fields
.field static final PUBLIC_RES_FILE_NAME:Ljava/lang/String; = "res.zip"

.field static final RES_FILE_NAME:Ljava/lang/String; = "pkg.apk"


# instance fields
.field cid:Ljava/lang/String;

.field libraryPath:Ljava/lang/String;

.field packagePath:Ljava/lang/String;

.field resourcePath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/net/Uri;Ljava/lang/String;ZZ)V
    .locals 7
    .parameter
    .parameter "packageURI"
    .parameter "cid"
    .parameter "isExternal"
    .parameter "isForwardLocked"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 7810
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 7811
    if-eqz p4, :cond_1

    const/16 v1, 0x8

    :goto_0
    if-eqz p5, :cond_0

    const/4 v0, 0x1

    :cond_0
    or-int v3, v1, v0

    move-object v0, p0

    move-object v1, p2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/content/pm/ManifestDigest;Landroid/os/UserHandle;)V

    .line 7814
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    .line 7815
    return-void

    :cond_1
    move v1, v0

    .line 7811
    goto :goto_0
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)V
    .locals 7
    .parameter
    .parameter "params"

    .prologue
    .line 7783
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 7784
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getPackageUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver;

    iget v3, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    iget-object v4, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getManifestDigest()Landroid/content/pm/ManifestDigest;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/content/pm/ManifestDigest;Landroid/os/UserHandle;)V

    .line 7787
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 10
    .parameter
    .parameter "fullCodePath"
    .parameter "fullResourcePath"
    .parameter "nativeLibraryPath"
    .parameter "isExternal"
    .parameter "isForwardLocked"

    .prologue
    .line 7790
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 7791
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p5, :cond_0

    const/16 v0, 0x8

    move v3, v0

    :goto_0
    if-eqz p6, :cond_1

    const/4 v0, 0x1

    :goto_1
    or-int/2addr v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/content/pm/ManifestDigest;Landroid/os/UserHandle;)V

    .line 7795
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 7796
    .local v7, eidx:I
    const/4 v0, 0x0

    invoke-virtual {p2, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 7797
    .local v9, subStr1:Ljava/lang/String;
    const-string v0, "/"

    invoke-virtual {v9, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    .line 7798
    .local v8, sidx:I
    add-int/lit8 v0, v8, 0x1

    invoke-virtual {v9, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    .line 7799
    invoke-direct {p0, v9}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->setCachePath(Ljava/lang/String;)V

    .line 7800
    return-void

    .line 7791
    .end local v7           #eidx:I
    .end local v8           #sidx:I
    .end local v9           #subStr1:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    move v3, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Z)V
    .locals 7
    .parameter
    .parameter "cid"
    .parameter "isForwardLocked"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 7802
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 7803
    #calls: Lcom/android/server/pm/PackageManagerService;->isAsecExternal(Ljava/lang/String;)Z
    invoke-static {p1, p2}, Lcom/android/server/pm/PackageManagerService;->access$3500(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    :goto_0
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :cond_0
    or-int v3, v2, v0

    move-object v0, p0

    move-object v2, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/content/pm/ManifestDigest;Landroid/os/UserHandle;)V

    .line 7806
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    .line 7807
    invoke-static {p2}, Lcom/android/internal/content/PackageHelper;->getSdDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->setCachePath(Ljava/lang/String;)V

    .line 7808
    return-void

    :cond_1
    move v2, v0

    .line 7803
    goto :goto_0
.end method

.method static synthetic access$4300(Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 7774
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->isExternal()Z

    move-result v0

    return v0
.end method

.method private cleanUp()V
    .locals 1

    .prologue
    .line 7988
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    .line 7989
    return-void
.end method

.method private final isExternal()Z
    .locals 1

    .prologue
    .line 7832
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCachePath(Ljava/lang/String;)V
    .locals 3
    .parameter "newCachePath"

    .prologue
    .line 7944
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7945
    .local v0, cachePath:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "lib"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->libraryPath:Ljava/lang/String;

    .line 7946
    new-instance v1, Ljava/io/File;

    const-string v2, "pkg.apk"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->packagePath:Ljava/lang/String;

    .line 7948
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->isFwdLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7949
    new-instance v1, Ljava/io/File;

    const-string v2, "res.zip"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->resourcePath:Ljava/lang/String;

    .line 7953
    :goto_0
    return-void

    .line 7951
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->packagePath:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->resourcePath:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method checkFreeStorage(Lcom/android/internal/app/IMediaContainerService;)Z
    .locals 5
    .parameter "imcs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 7823
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.android.defcontainer"

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->packageURI:Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 7825
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->packageURI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->isFwdLocked()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/android/internal/app/IMediaContainerService;->checkExternalFreeStorage(Landroid/net/Uri;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 7827
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->packageURI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    .line 7825
    return v0

    .line 7827
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->packageURI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    throw v0
.end method

.method cleanUpResourcesLI()V
    .locals 5

    .prologue
    .line 7992
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v1

    .line 7994
    .local v1, sourceFile:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/Installer;->rmdex(Ljava/lang/String;)I

    move-result v0

    .line 7995
    .local v0, retCode:I
    if-gez v0, :cond_0

    .line 7996
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t remove dex file for package:  at location "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", retcode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8001
    :cond_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cleanUp()V

    .line 8002
    return-void
.end method

.method copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    .locals 10
    .parameter "imcs"
    .parameter "temp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 7836
    if-eqz p2, :cond_0

    .line 7837
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->createCopyFile()V

    .line 7848
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.android.defcontainer"

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->packageURI:Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 7850
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->packageURI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    #calls: Lcom/android/server/pm/PackageManagerService;->getEncryptKey()Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$3600(Lcom/android/server/pm/PackageManagerService;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pkg.apk"

    const-string v5, "res.zip"

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->isExternal()Z

    move-result v6

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->isFwdLocked()Z

    move-result v7

    move-object v0, p1

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/app/IMediaContainerService;->copyResourceToContainer(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 7853
    .local v8, newCachePath:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->packageURI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v9}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    .line 7856
    if-eqz v8, :cond_1

    .line 7857
    invoke-direct {p0, v8}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->setCachePath(Ljava/lang/String;)V

    move v0, v9

    .line 7860
    :goto_1
    return v0

    .line 7843
    .end local v8           #newCachePath:Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    goto :goto_0

    .line 7853
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->packageURI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v9}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    throw v0

    .line 7860
    .restart local v8       #newCachePath:Ljava/lang/String;
    :cond_1
    const/16 v0, -0x12

    goto :goto_1
.end method

.method createCopyFile()V
    .locals 1

    .prologue
    .line 7818
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getTempContainerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    .line 7819
    return-void
.end method

.method doPostCopy(I)I
    .locals 3
    .parameter "uid"

    .prologue
    .line 8042
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->isFwdLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8043
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {p1}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v1

    const-string v2, "pkg.apk"

    invoke-static {v0, v1, v2}, Lcom/android/internal/content/PackageHelper;->fixSdPermissions(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8046
    :cond_0
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to finalize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8047
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    .line 8048
    const/16 v0, -0x12

    .line 8052
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method doPostDeleteLI(Z)Z
    .locals 3
    .parameter "delete"

    .prologue
    .line 8016
    const/4 v1, 0x0

    .line 8017
    .local v1, ret:Z
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->isContainerMounted(Ljava/lang/String;)Z

    move-result v0

    .line 8018
    .local v0, mounted:Z
    if-eqz v0, :cond_0

    .line 8020
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->unMountSdDir(Ljava/lang/String;)Z

    move-result v1

    .line 8022
    :cond_0
    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 8023
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cleanUpResourcesLI()V

    .line 8025
    :cond_1
    return v1
.end method

.method doPostInstall(II)I
    .locals 6
    .parameter "status"
    .parameter "uid"

    .prologue
    .line 7956
    const/4 v3, 0x1

    if-eq p1, v3, :cond_1

    .line 7957
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cleanUp()V

    .line 7981
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 7961
    .restart local p1
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->isFwdLocked()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7962
    invoke-static {p2}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v0

    .line 7963
    .local v0, groupOwner:I
    const-string v2, "pkg.apk"

    .line 7969
    .local v2, protectedFile:Ljava/lang/String;
    :goto_1
    const/16 v3, 0x2710

    if-lt p2, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Lcom/android/internal/content/PackageHelper;->fixSdPermissions(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 7971
    :cond_2
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to finalize "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7972
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    .line 7973
    const/16 p1, -0x12

    goto :goto_0

    .line 7965
    .end local v0           #groupOwner:I
    .end local v2           #protectedFile:Ljava/lang/String;
    :cond_3
    const/4 v0, -0x1

    .line 7966
    .restart local v0       #groupOwner:I
    const/4 v2, 0x0

    .restart local v2       #protectedFile:Ljava/lang/String;
    goto :goto_1

    .line 7976
    :cond_4
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/content/PackageHelper;->isContainerMounted(Ljava/lang/String;)Z

    move-result v1

    .line 7977
    .local v1, mounted:Z
    if-nez v1, :cond_0

    .line 7978
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    #calls: Lcom/android/server/pm/PackageManagerService;->getEncryptKey()Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$3600(Lcom/android/server/pm/PackageManagerService;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/internal/content/PackageHelper;->mountSdDir(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    goto :goto_0
.end method

.method doPreCopy()I
    .locals 4

    .prologue
    .line 8030
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->isFwdLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8031
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string v2, "com.android.defcontainer"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "pkg.apk"

    invoke-static {v0, v1, v2}, Lcom/android/internal/content/PackageHelper;->fixSdPermissions(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8033
    const/16 v0, -0x12

    .line 8037
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method doPreInstall(I)I
    .locals 5
    .parameter "status"

    .prologue
    .line 7880
    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    .line 7882
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    .line 7895
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 7884
    .restart local p1
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->isContainerMounted(Ljava/lang/String;)Z

    move-result v0

    .line 7885
    .local v0, mounted:Z
    if-nez v0, :cond_0

    .line 7886
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    #calls: Lcom/android/server/pm/PackageManagerService;->getEncryptKey()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$3600(Lcom/android/server/pm/PackageManagerService;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3e8

    invoke-static {v2, v3, v4}, Lcom/android/internal/content/PackageHelper;->mountSdDir(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 7888
    .local v1, newCachePath:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 7889
    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->setCachePath(Ljava/lang/String;)V

    goto :goto_0

    .line 7891
    :cond_2
    const/16 p1, -0x12

    goto :goto_0
.end method

.method doRename(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "status"
    .parameter "pkgName"
    .parameter "oldCodePath"

    .prologue
    const/4 v2, 0x0

    .line 7900
    const-string v3, "/pkg.apk"

    #calls: Lcom/android/server/pm/PackageManagerService;->getNextCodePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p3, p2, v3}, Lcom/android/server/pm/PackageManagerService;->access$3200(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7901
    .local v0, newCacheId:Ljava/lang/String;
    const/4 v1, 0x0

    .line 7902
    .local v1, newCachePath:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/content/PackageHelper;->isContainerMounted(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7904
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/content/PackageHelper;->unMountSdDir(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 7905
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to unmount "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " before renaming"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7940
    :goto_0
    return v2

    .line 7909
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/android/internal/content/PackageHelper;->renameSdDir(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 7910
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to rename "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " which might be stale. Will try to clean up."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7913
    invoke-static {v0}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 7914
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Very strange. Cannot clean up stale container "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7918
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/android/internal/content/PackageHelper;->renameSdDir(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 7919
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to rename "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " inspite of cleaning it up."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7924
    :cond_2
    invoke-static {v0}, Lcom/android/internal/content/PackageHelper;->isContainerMounted(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 7925
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mounting container "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7926
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    #calls: Lcom/android/server/pm/PackageManagerService;->getEncryptKey()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$3600(Lcom/android/server/pm/PackageManagerService;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3e8

    invoke-static {v0, v3, v4}, Lcom/android/internal/content/PackageHelper;->mountSdDir(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 7931
    :goto_1
    if-nez v1, :cond_4

    .line 7932
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get cache path for  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7929
    :cond_3
    invoke-static {v0}, Lcom/android/internal/content/PackageHelper;->getSdDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 7935
    :cond_4
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Succesfully renamed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at new path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7938
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    .line 7939
    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->setCachePath(Ljava/lang/String;)V

    .line 7940
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method getCodePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7866
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->packagePath:Ljava/lang/String;

    return-object v0
.end method

.method getNativeLibraryPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7876
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->libraryPath:Ljava/lang/String;

    return-object v0
.end method

.method getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8012
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->getAsecPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getResourcePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7871
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->resourcePath:Ljava/lang/String;

    return-object v0
.end method

.method matchContainer(Ljava/lang/String;)Z
    .locals 1
    .parameter "app"

    .prologue
    .line 8005
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8006
    const/4 v0, 0x1

    .line 8008
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
