.class Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActiveAdmin"
.end annotation


# static fields
.field static final DEF_KEYGUARD_FEATURES_DISABLED:I = 0x0

.field static final DEF_MAXIMUM_FAILED_PASSWORDS_FOR_WIPE:I = 0x0

.field static final DEF_MAXIMUM_TIME_TO_UNLOCK:J = 0x0L

.field static final DEF_MINIMUM_PASSWORD_LENGTH:I = 0x0

.field static final DEF_MINIMUM_PASSWORD_LETTERS:I = 0x1

.field static final DEF_MINIMUM_PASSWORD_LOWER_CASE:I = 0x0

.field static final DEF_MINIMUM_PASSWORD_NON_LETTER:I = 0x0

.field static final DEF_MINIMUM_PASSWORD_NUMERIC:I = 0x1

.field static final DEF_MINIMUM_PASSWORD_SYMBOLS:I = 0x1

.field static final DEF_MINIMUM_PASSWORD_UPPER_CASE:I

.field static final DEF_PASSWORD_EXPIRATION_DATE:J

.field static final DEF_PASSWORD_EXPIRATION_TIMEOUT:J

.field static final DEF_PASSWORD_HISTORY_LENGTH:I


# instance fields
.field disableCamera:Z

.field disabledKeyguardFeatures:I

.field encryptionRequested:Z

.field enforceMMAC:Z

.field enforceSELinux:Z

.field globalProxyExclusionList:Ljava/lang/String;

.field globalProxySpec:Ljava/lang/String;

.field final info:Landroid/app/admin/DeviceAdminInfo;

.field isCustomPolicyFile:[Z

.field isMMACadmin:Z

.field isSELinuxAdmin:Z

.field maximumFailedPasswordsForWipe:I

.field maximumTimeToUnlock:J

.field minimumPasswordLength:I

.field minimumPasswordLetters:I

.field minimumPasswordLowerCase:I

.field minimumPasswordNonLetter:I

.field minimumPasswordNumeric:I

.field minimumPasswordSymbols:I

.field minimumPasswordUpperCase:I

.field passwordExpirationDate:J

.field passwordExpirationTimeout:J

.field passwordHistoryLength:I

.field passwordQuality:I

.field sebools:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field specifiesGlobalProxy:Z


# direct methods
.method constructor <init>(Landroid/app/admin/DeviceAdminInfo;)V
    .locals 6
    .parameter "_info"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    iput v2, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    .line 300
    iput v2, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    .line 303
    iput v2, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    .line 306
    iput v2, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    .line 309
    iput v2, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    .line 312
    iput v1, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    .line 315
    iput v1, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    .line 318
    iput v1, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    .line 321
    iput v2, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    .line 324
    iput-wide v4, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    .line 327
    iput v2, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    .line 330
    iput-wide v4, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    .line 333
    iput-wide v4, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    .line 336
    iput v2, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    .line 338
    iput-boolean v2, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    .line 339
    iput-boolean v2, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    .line 342
    iput-boolean v2, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    .line 343
    iput-object v3, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    .line 344
    iput-object v3, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    .line 346
    iput-boolean v2, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->isSELinuxAdmin:Z

    .line 347
    iput-boolean v2, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->enforceSELinux:Z

    .line 348
    iput-object v3, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->sebools:Ljava/util/Map;

    .line 350
    iput-boolean v2, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->isMMACadmin:Z

    .line 351
    iput-boolean v2, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->enforceMMAC:Z

    .line 353
    const/4 v1, 0x5

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->isCustomPolicyFile:[Z

    .line 356
    iput-object p1, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 357
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-nez v1, :cond_0

    .line 358
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->isCustomPolicyFile:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 359
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->isCustomPolicyFile:[Z

    aput-boolean v2, v1, v0

    .line 358
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 362
    .end local v0           #i:I
    :cond_0
    iput-object v3, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->isCustomPolicyFile:[Z

    .line 364
    :cond_1
    return-void
.end method


# virtual methods
.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4
    .parameter "prefix"
    .parameter "pw"

    .prologue
    .line 643
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "uid="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 644
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "policies:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 645
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v1

    .line 646
    .local v1, pols:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo$PolicyInfo;>;"
    if-eqz v1, :cond_0

    .line 647
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 648
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    iget-object v2, v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 647
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 651
    .end local v0           #i:I
    :cond_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "passwordQuality=0x"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 652
    iget v2, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 653
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "minimumPasswordLength="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 654
    iget v2, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 655
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "passwordHistoryLength="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 656
    iget v2, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 657
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "minimumPasswordUpperCase="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 658
    iget v2, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 659
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "minimumPasswordLowerCase="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 660
    iget v2, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 661
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "minimumPasswordLetters="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 662
    iget v2, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 663
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "minimumPasswordNumeric="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 664
    iget v2, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 665
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "minimumPasswordSymbols="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 666
    iget v2, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 667
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "minimumPasswordNonLetter="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 668
    iget v2, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 669
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "maximumTimeToUnlock="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 670
    iget-wide v2, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 671
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "maximumFailedPasswordsForWipe="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 672
    iget v2, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 673
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "specifiesGlobalProxy="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 674
    iget-boolean v2, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 675
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "passwordExpirationTimeout="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 676
    iget-wide v2, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 677
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "passwordExpirationDate="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 678
    iget-wide v2, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 679
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 680
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "globalProxySpec="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 681
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 683
    :cond_1
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 684
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "globalProxyEclusionList="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 685
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 687
    :cond_2
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "encryptionRequested="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 688
    iget-boolean v2, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 689
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "disableCamera="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 690
    iget-boolean v2, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 691
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "disabledKeyguardFeatures="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 692
    iget v2, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 693
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "isSELinuxAdmin="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 694
    iget-boolean v2, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->isSELinuxAdmin:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 695
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "enforceSELinux="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 696
    iget-boolean v2, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->enforceSELinux:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 697
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "sebools="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 698
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->sebools:Ljava/util/Map;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 699
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "customSELinuxPolicy="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 700
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->isCustomPolicyFile:[Z

    const/4 v3, 0x0

    aget-boolean v2, v2, v3

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 701
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "customPropertyContexts="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 702
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->isCustomPolicyFile:[Z

    const/4 v3, 0x1

    aget-boolean v2, v2, v3

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 703
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "customFileContexts="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 704
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->isCustomPolicyFile:[Z

    const/4 v3, 0x2

    aget-boolean v2, v2, v3

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 705
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "customSEappContexts="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 706
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->isCustomPolicyFile:[Z

    const/4 v3, 0x3

    aget-boolean v2, v2, v3

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 707
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "isMMACadmin="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 708
    iget-boolean v2, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->isMMACadmin:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 709
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "enforceMMAC="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 710
    iget-boolean v2, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->enforceMMAC:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 711
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "customMMACpolicy="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 712
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->isCustomPolicyFile:[Z

    const/4 v3, 0x4

    aget-boolean v2, v2, v3

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 714
    return-void
.end method

.method getUid()I
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    return v0
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .locals 2

    .prologue
    .line 369
    new-instance v0, Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 10
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 533
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 536
    .local v0, outerDepth:I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .local v2, type:I
    if-eq v2, v8, :cond_21

    if-ne v2, v7, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_21

    .line 537
    :cond_1
    if-eq v2, v7, :cond_0

    if-eq v2, v9, :cond_0

    .line 540
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 541
    .local v1, tag:Ljava/lang/String;
    const-string v3, "policies"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 542
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3, p1}, Landroid/app/admin/DeviceAdminInfo;->readPoliciesFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 638
    :cond_2
    :goto_1
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 543
    :cond_3
    const-string v3, "password-quality"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 544
    const-string v3, "value"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    goto :goto_1

    .line 546
    :cond_4
    const-string v3, "min-password-length"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 547
    const-string v3, "value"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    goto :goto_1

    .line 549
    :cond_5
    const-string v3, "password-history-length"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 550
    const-string v3, "value"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    goto :goto_1

    .line 552
    :cond_6
    const-string v3, "min-password-uppercase"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 553
    const-string v3, "value"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    goto :goto_1

    .line 555
    :cond_7
    const-string v3, "min-password-lowercase"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 556
    const-string v3, "value"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    goto :goto_1

    .line 558
    :cond_8
    const-string v3, "min-password-letters"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 559
    const-string v3, "value"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    goto/16 :goto_1

    .line 561
    :cond_9
    const-string v3, "min-password-numeric"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 562
    const-string v3, "value"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    goto/16 :goto_1

    .line 564
    :cond_a
    const-string v3, "min-password-symbols"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 565
    const-string v3, "value"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    goto/16 :goto_1

    .line 567
    :cond_b
    const-string v3, "min-password-nonletter"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 568
    const-string v3, "value"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    goto/16 :goto_1

    .line 570
    :cond_c
    const-string v3, "max-time-to-unlock"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 571
    const-string v3, "value"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    goto/16 :goto_1

    .line 573
    :cond_d
    const-string v3, "max-failed-password-wipe"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 574
    const-string v3, "value"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    goto/16 :goto_1

    .line 576
    :cond_e
    const-string v3, "specifies-global-proxy"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 577
    const-string v3, "value"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    goto/16 :goto_1

    .line 579
    :cond_f
    const-string v3, "global-proxy-spec"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 580
    const-string v3, "value"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    goto/16 :goto_1

    .line 582
    :cond_10
    const-string v3, "global-proxy-exclusion-list"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 583
    const-string v3, "value"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    goto/16 :goto_1

    .line 585
    :cond_11
    const-string v3, "password-expiration-timeout"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 586
    const-string v3, "value"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    goto/16 :goto_1

    .line 588
    :cond_12
    const-string v3, "password-expiration-date"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 589
    const-string v3, "value"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    goto/16 :goto_1

    .line 591
    :cond_13
    const-string v3, "encryption-requested"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 592
    const-string v3, "value"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    goto/16 :goto_1

    .line 594
    :cond_14
    const-string v3, "disable-camera"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 595
    const-string v3, "value"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    goto/16 :goto_1

    .line 597
    :cond_15
    const-string v3, "disable-keyguard-features"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 598
    const-string v3, "value"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    goto/16 :goto_1

    .line 600
    :cond_16
    const-string v3, "selinux-admin"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 601
    const-string v3, "value"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->isSELinuxAdmin:Z

    .line 603
    iget-boolean v3, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->isSELinuxAdmin:Z

    if-eqz v3, :cond_2

    .line 604
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->sebools:Ljava/util/Map;

    goto/16 :goto_1

    .line 606
    :cond_17
    const-string v3, "enforce-selinux"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 607
    const-string v3, "value"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->enforceSELinux:Z

    goto/16 :goto_1

    .line 609
    :cond_18
    const-string v3, "selinux-boolean"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 610
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->sebools:Ljava/util/Map;

    const-string v4, "name"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "value"

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 614
    :cond_19
    const-string v3, "selinux-sepolicy"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 615
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->isCustomPolicyFile:[Z

    const/4 v4, 0x0

    const-string v5, "value"

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    aput-boolean v5, v3, v4

    goto/16 :goto_1

    .line 617
    :cond_1a
    const-string v3, "selinux-propctxs"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 618
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->isCustomPolicyFile:[Z

    const-string v4, "value"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    aput-boolean v4, v3, v8

    goto/16 :goto_1

    .line 620
    :cond_1b
    const-string v3, "selinux-filectxs"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 621
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->isCustomPolicyFile:[Z

    const/4 v4, 0x2

    const-string v5, "value"

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    aput-boolean v5, v3, v4

    goto/16 :goto_1

    .line 623
    :cond_1c
    const-string v3, "selinux-seappctxs"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 624
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->isCustomPolicyFile:[Z

    const-string v4, "value"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    aput-boolean v4, v3, v7

    goto/16 :goto_1

    .line 626
    :cond_1d
    const-string v3, "mmac-admin"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 627
    const-string v3, "value"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->isMMACadmin:Z

    goto/16 :goto_1

    .line 629
    :cond_1e
    const-string v3, "enforce-mmac"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 630
    const-string v3, "value"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->enforceMMAC:Z

    goto/16 :goto_1

    .line 632
    :cond_1f
    const-string v3, "mmac-macperms"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 633
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->isCustomPolicyFile:[Z

    const-string v4, "value"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    aput-boolean v4, v3, v9

    goto/16 :goto_1

    .line 636
    :cond_20
    const-string v3, "DevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown admin tag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 640
    .end local v1           #tag:Ljava/lang/String;
    :cond_21
    return-void
.end method

.method writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 12
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 374
    const/4 v8, 0x0

    const-string v9, "policies"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 375
    iget-object v8, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v8, p1}, Landroid/app/admin/DeviceAdminInfo;->writePoliciesToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 376
    const/4 v8, 0x0

    const-string v9, "policies"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 377
    iget v8, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    if-eqz v8, :cond_7

    .line 378
    const/4 v8, 0x0

    const-string v9, "password-quality"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 379
    const/4 v8, 0x0

    const-string v9, "value"

    iget v10, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 380
    const/4 v8, 0x0

    const-string v9, "password-quality"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 381
    iget v8, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    if-eqz v8, :cond_0

    .line 382
    const/4 v8, 0x0

    const-string v9, "min-password-length"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 383
    const/4 v8, 0x0

    const-string v9, "value"

    iget v10, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 384
    const/4 v8, 0x0

    const-string v9, "min-password-length"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 386
    :cond_0
    iget v8, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    if-eqz v8, :cond_1

    .line 387
    const/4 v8, 0x0

    const-string v9, "password-history-length"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 388
    const/4 v8, 0x0

    const-string v9, "value"

    iget v10, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 389
    const/4 v8, 0x0

    const-string v9, "password-history-length"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 391
    :cond_1
    iget v8, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    if-eqz v8, :cond_2

    .line 392
    const/4 v8, 0x0

    const-string v9, "min-password-uppercase"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 393
    const/4 v8, 0x0

    const-string v9, "value"

    iget v10, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 394
    const/4 v8, 0x0

    const-string v9, "min-password-uppercase"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 396
    :cond_2
    iget v8, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    if-eqz v8, :cond_3

    .line 397
    const/4 v8, 0x0

    const-string v9, "min-password-lowercase"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 398
    const/4 v8, 0x0

    const-string v9, "value"

    iget v10, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 399
    const/4 v8, 0x0

    const-string v9, "min-password-lowercase"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 401
    :cond_3
    iget v8, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_4

    .line 402
    const/4 v8, 0x0

    const-string v9, "min-password-letters"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 403
    const/4 v8, 0x0

    const-string v9, "value"

    iget v10, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 404
    const/4 v8, 0x0

    const-string v9, "min-password-letters"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 406
    :cond_4
    iget v8, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_5

    .line 407
    const/4 v8, 0x0

    const-string v9, "min-password-numeric"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 408
    const/4 v8, 0x0

    const-string v9, "value"

    iget v10, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 409
    const/4 v8, 0x0

    const-string v9, "min-password-numeric"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 411
    :cond_5
    iget v8, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_6

    .line 412
    const/4 v8, 0x0

    const-string v9, "min-password-symbols"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 413
    const/4 v8, 0x0

    const-string v9, "value"

    iget v10, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 414
    const/4 v8, 0x0

    const-string v9, "min-password-symbols"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 416
    :cond_6
    iget v8, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    if-lez v8, :cond_7

    .line 417
    const/4 v8, 0x0

    const-string v9, "min-password-nonletter"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 418
    const/4 v8, 0x0

    const-string v9, "value"

    iget v10, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 419
    const/4 v8, 0x0

    const-string v9, "min-password-nonletter"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 422
    :cond_7
    iget-wide v8, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_8

    .line 423
    const/4 v8, 0x0

    const-string v9, "max-time-to-unlock"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 424
    const/4 v8, 0x0

    const-string v9, "value"

    iget-wide v10, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 425
    const/4 v8, 0x0

    const-string v9, "max-time-to-unlock"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 427
    :cond_8
    iget v8, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-eqz v8, :cond_9

    .line 428
    const/4 v8, 0x0

    const-string v9, "max-failed-password-wipe"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 429
    const/4 v8, 0x0

    const-string v9, "value"

    iget v10, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 430
    const/4 v8, 0x0

    const-string v9, "max-failed-password-wipe"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 432
    :cond_9
    iget-boolean v8, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    if-eqz v8, :cond_b

    .line 433
    const/4 v8, 0x0

    const-string v9, "specifies-global-proxy"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 434
    const/4 v8, 0x0

    const-string v9, "value"

    iget-boolean v10, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    invoke-static {v10}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 435
    const/4 v8, 0x0

    const-string v9, "specifies_global_proxy"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 436
    iget-object v8, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    if-eqz v8, :cond_a

    .line 437
    const/4 v8, 0x0

    const-string v9, "global-proxy-spec"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 438
    const/4 v8, 0x0

    const-string v9, "value"

    iget-object v10, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    invoke-interface {p1, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 439
    const/4 v8, 0x0

    const-string v9, "global-proxy-spec"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 441
    :cond_a
    iget-object v8, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    if-eqz v8, :cond_b

    .line 442
    const/4 v8, 0x0

    const-string v9, "global-proxy-exclusion-list"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 443
    const/4 v8, 0x0

    const-string v9, "value"

    iget-object v10, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    invoke-interface {p1, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 444
    const/4 v8, 0x0

    const-string v9, "global-proxy-exclusion-list"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 447
    :cond_b
    iget-wide v8, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_c

    .line 448
    const/4 v8, 0x0

    const-string v9, "password-expiration-timeout"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 449
    const/4 v8, 0x0

    const-string v9, "value"

    iget-wide v10, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 450
    const/4 v8, 0x0

    const-string v9, "password-expiration-timeout"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 452
    :cond_c
    iget-wide v8, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_d

    .line 453
    const/4 v8, 0x0

    const-string v9, "password-expiration-date"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 454
    const/4 v8, 0x0

    const-string v9, "value"

    iget-wide v10, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 455
    const/4 v8, 0x0

    const-string v9, "password-expiration-date"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 457
    :cond_d
    iget-boolean v8, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    if-eqz v8, :cond_e

    .line 458
    const/4 v8, 0x0

    const-string v9, "encryption-requested"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 459
    const/4 v8, 0x0

    const-string v9, "value"

    iget-boolean v10, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    invoke-static {v10}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 460
    const/4 v8, 0x0

    const-string v9, "encryption-requested"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 462
    :cond_e
    iget-boolean v8, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    if-eqz v8, :cond_f

    .line 463
    const/4 v8, 0x0

    const-string v9, "disable-camera"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 464
    const/4 v8, 0x0

    const-string v9, "value"

    iget-boolean v10, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    invoke-static {v10}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 465
    const/4 v8, 0x0

    const-string v9, "disable-camera"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 467
    :cond_f
    iget v8, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    if-eqz v8, :cond_10

    .line 468
    const/4 v8, 0x0

    const-string v9, "disable-keyguard-features"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 469
    const/4 v8, 0x0

    const-string v9, "value"

    iget v10, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 470
    const/4 v8, 0x0

    const-string v9, "disable-keyguard-features"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 472
    :cond_10
    iget-boolean v8, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->isSELinuxAdmin:Z

    if-eqz v8, :cond_16

    .line 473
    const/4 v8, 0x0

    const-string v9, "selinux-admin"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 474
    const/4 v8, 0x0

    const-string v9, "value"

    iget-boolean v10, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->isSELinuxAdmin:Z

    invoke-static {v10}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 475
    const/4 v8, 0x0

    const-string v9, "selinux-admin"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 476
    iget-boolean v8, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->enforceSELinux:Z

    if-eqz v8, :cond_11

    .line 477
    const/4 v8, 0x0

    const-string v9, "enforce-selinux"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 478
    const/4 v8, 0x0

    const-string v9, "value"

    iget-boolean v10, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->enforceSELinux:Z

    invoke-static {v10}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 479
    const/4 v8, 0x0

    const-string v9, "enforce-selinux"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 481
    :cond_11
    iget-object v8, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->sebools:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 482
    .local v0, bools:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 483
    .local v7, s:Ljava/lang/String;
    const/4 v8, 0x0

    const-string v9, "selinux-boolean"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 484
    const/4 v8, 0x0

    const-string v9, "name"

    invoke-interface {p1, v8, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 485
    const/4 v9, 0x0

    const-string v10, "value"

    iget-object v8, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->sebools:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v9, v10, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 486
    const/4 v8, 0x0

    const-string v9, "selinux-boolean"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 488
    .end local v7           #s:Ljava/lang/String;
    :cond_12
    iget-object v8, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->isCustomPolicyFile:[Z

    const/4 v9, 0x0

    aget-boolean v6, v8, v9

    .line 489
    .local v6, isCustomSELinux:Z
    if-eqz v6, :cond_13

    .line 490
    const/4 v8, 0x0

    const-string v9, "selinux-sepolicy"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 491
    const/4 v8, 0x0

    const-string v9, "value"

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 492
    const/4 v8, 0x0

    const-string v9, "selinux-sepolicy"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 494
    :cond_13
    iget-object v8, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->isCustomPolicyFile:[Z

    const/4 v9, 0x1

    aget-boolean v4, v8, v9

    .line 495
    .local v4, isCustomPropCtxs:Z
    if-eqz v4, :cond_14

    .line 496
    const/4 v8, 0x0

    const-string v9, "selinux-propctxs"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 497
    const/4 v8, 0x0

    const-string v9, "value"

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 498
    const/4 v8, 0x0

    const-string v9, "selinux-propctxs"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 500
    :cond_14
    iget-object v8, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->isCustomPolicyFile:[Z

    const/4 v9, 0x2

    aget-boolean v2, v8, v9

    .line 501
    .local v2, isCustomFileCtxs:Z
    if-eqz v2, :cond_15

    .line 502
    const/4 v8, 0x0

    const-string v9, "selinux-filectxs"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 503
    const/4 v8, 0x0

    const-string v9, "value"

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 504
    const/4 v8, 0x0

    const-string v9, "selinux-filectxs"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 506
    :cond_15
    iget-object v8, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->isCustomPolicyFile:[Z

    const/4 v9, 0x3

    aget-boolean v5, v8, v9

    .line 507
    .local v5, isCustomSEAppCtxs:Z
    if-eqz v5, :cond_16

    .line 508
    const/4 v8, 0x0

    const-string v9, "selinux-seappctxs"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 509
    const/4 v8, 0x0

    const-string v9, "value"

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 510
    const/4 v8, 0x0

    const-string v9, "selinux-seappctxs"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 513
    .end local v0           #bools:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #isCustomFileCtxs:Z
    .end local v4           #isCustomPropCtxs:Z
    .end local v5           #isCustomSEAppCtxs:Z
    .end local v6           #isCustomSELinux:Z
    :cond_16
    iget-boolean v8, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->isMMACadmin:Z

    if-eqz v8, :cond_18

    .line 514
    const/4 v8, 0x0

    const-string v9, "mmac-admin"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 515
    const/4 v8, 0x0

    const-string v9, "value"

    iget-boolean v10, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->isMMACadmin:Z

    invoke-static {v10}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 516
    const/4 v8, 0x0

    const-string v9, "mmac-admin"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 517
    iget-boolean v8, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->enforceMMAC:Z

    if-eqz v8, :cond_17

    .line 518
    const/4 v8, 0x0

    const-string v9, "enforce-mmac"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 519
    const/4 v8, 0x0

    const-string v9, "value"

    iget-boolean v10, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->enforceMMAC:Z

    invoke-static {v10}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 520
    const/4 v8, 0x0

    const-string v9, "enforce-mmac"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 522
    :cond_17
    iget-object v8, p0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->isCustomPolicyFile:[Z

    const/4 v9, 0x4

    aget-boolean v3, v8, v9

    .line 523
    .local v3, isCustomMMAC:Z
    if-eqz v3, :cond_18

    .line 524
    const/4 v8, 0x0

    const-string v9, "mmac-macperms"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 525
    const/4 v8, 0x0

    const-string v9, "value"

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 526
    const/4 v8, 0x0

    const-string v9, "mmac-macperms"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 529
    .end local v3           #isCustomMMAC:Z
    :cond_18
    return-void
.end method
