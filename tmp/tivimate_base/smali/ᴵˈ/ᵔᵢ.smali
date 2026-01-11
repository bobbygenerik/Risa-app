.class public final Lᴵˈ/ᵔᵢ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʿٴ/ᵎﹶ;


# static fields
.field public static ʽʽ:Lᴵˈ/ᵔᵢ;


# instance fields
.field public final ʾˋ:Ljava/lang/Object;

.field public volatile ᴵˊ:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lᴵˈ/ᵔᵢ;->ʾˋ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lᴵˈ/ᵔᵢ;->ʾˋ:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lᴵˈ/ᵔᵢ;->ʾˋ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final varargs ˈ(Landroid/content/pm/PackageInfo;[Lᴵˈ/ᵔʾ;)Lᴵˈ/ᵔʾ;
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    array-length v0, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const-string p0, "GoogleSignatureVerifier"

    const-string p1, "Package has more than one signature."

    nop

    return-object v1

    :cond_1
    new-instance v0, Lᴵˈ/ˉˆ;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object p0, p0, v2

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lᴵˈ/ˉˆ;-><init>([B)V

    :goto_0
    array-length p0, p1

    if-ge v2, p0, :cond_3

    aget-object p0, p1, v2

    invoke-virtual {p0, v0}, Lᴵˈ/ᵔʾ;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    aget-object p0, p1, v2

    return-object p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v1
.end method

.method public static final ˑﹳ(Landroid/content/pm/PackageInfo;Z)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-eqz p0, :cond_4

    const-string v2, "com.android.vending"

    iget-object v3, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.google.android.gms"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    iget-object p1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez p1, :cond_2

    :cond_1
    move p1, v1

    goto :goto_0

    :cond_2
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 p1, p1, 0x81

    if-eqz p1, :cond_1

    move p1, v0

    :cond_3
    :goto_0
    move-object v2, p0

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    if-eqz p0, :cond_6

    iget-object p0, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p0, :cond_6

    if-eqz p1, :cond_5

    sget-object p0, Lᴵˈ/ʼᐧ;->ﹳٴ:[Lᴵˈ/ᵔʾ;

    invoke-static {v2, p0}, Lᴵˈ/ᵔᵢ;->ˈ(Landroid/content/pm/PackageInfo;[Lᴵˈ/ᵔʾ;)Lᴵˈ/ᵔʾ;

    move-result-object p0

    goto :goto_2

    :cond_5
    sget-object p0, Lᴵˈ/ʼᐧ;->ﹳٴ:[Lᴵˈ/ᵔʾ;

    aget-object p0, p0, v1

    new-array p1, v0, [Lᴵˈ/ᵔʾ;

    aput-object p0, p1, v1

    invoke-static {v2, p1}, Lᴵˈ/ᵔᵢ;->ˈ(Landroid/content/pm/PackageInfo;[Lᴵˈ/ᵔʾ;)Lᴵˈ/ᵔʾ;

    move-result-object p0

    :goto_2
    if-eqz p0, :cond_6

    return v0

    :cond_6
    return v1
.end method

.method public static ⁱˊ(Landroid/content/Context;)Lᴵˈ/ᵔᵢ;
    .locals 2

    .prologue
    invoke-static {p0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    const-class v0, Lᴵˈ/ᵔᵢ;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lᴵˈ/ᵔᵢ;->ʽʽ:Lᴵˈ/ᵔᵢ;

    if-nez v1, :cond_0

    invoke-static {p0}, Lᴵˈ/ᵔﹳ;->ﹳٴ(Landroid/content/Context;)V

    new-instance v1, Lᴵˈ/ᵔᵢ;

    invoke-direct {v1, p0}, Lᴵˈ/ᵔᵢ;-><init>(Landroid/content/Context;)V

    sput-object v1, Lᴵˈ/ᵔᵢ;->ʽʽ:Lᴵˈ/ᵔᵢ;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lᴵˈ/ᵔᵢ;->ʽʽ:Lᴵˈ/ᵔᵢ;

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2

    .prologue
    iget-object v0, p0, Lᴵˈ/ᵔᵢ;->ᴵˊ:Ljava/lang/Object;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lᴵˈ/ᵔᵢ;->ᴵˊ:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lᴵˈ/ᵔᵢ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lʿٴ/ᵎﹶ;

    invoke-interface {v0}, Lʿٴ/ᵎﹶ;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Argument must not be null"

    invoke-static {v0, v1}, Lʿٴ/ﾞᴵ;->ʽ(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lᴵˈ/ᵔᵢ;->ᴵˊ:Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    iget-object v0, p0, Lᴵˈ/ᵔᵢ;->ᴵˊ:Ljava/lang/Object;

    return-object v0
.end method

.method public ʽ(I)Z
    .locals 17

    .prologue
    move-object/from16 v1, p0

    iget-object v0, v1, Lᴵˈ/ᵔᵢ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move/from16 v2, p1

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_e

    array-length v6, v2

    if-nez v6, :cond_0

    goto/16 :goto_b

    :cond_0
    move-object v0, v4

    move v7, v5

    :goto_0
    if-ge v7, v6, :cond_d

    aget-object v8, v2, v7

    const-string v9, "Failed to get Google certificates from remote"

    const-string v10, "GoogleCertificates"

    const-string v11, "null pkg"

    if-nez v8, :cond_1

    new-instance v0, Lᴵˈ/ˏי;

    invoke-direct {v0, v5, v11, v4}, Lᴵˈ/ˏי;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_a

    :cond_1
    iget-object v0, v1, Lᴵˈ/ᵔᵢ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lᴵˈ/ᵔﹳ;->ﹳٴ:Lᴵˈ/ˉʿ;

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v12

    :try_start_0
    invoke-static {}, Lᴵˈ/ᵔﹳ;->ʽ()V

    sget-object v0, Lᴵˈ/ᵔﹳ;->ʽ:Lٴﾞ/ʽﹳ;

    check-cast v0, Lٴﾞ/יـ;

    invoke-virtual {v0}, Lٴﾞ/יـ;->ˑٴ()Z

    move-result v0
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_1
    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v5

    :goto_2
    invoke-static {v12}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eqz v0, :cond_5

    iget-object v0, v1, Lᴵˈ/ᵔᵢ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lᴵˈ/ᵎﹶ;->ﹳٴ(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v11

    :try_start_2
    sget-object v14, Lᴵˈ/ᵔﹳ;->ˑﹳ:Landroid/content/Context;

    invoke-static {v14}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {}, Lᴵˈ/ᵔﹳ;->ʽ()V
    :try_end_3
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    sget-object v14, Lᴵˈ/ᵔﹳ;->ˑﹳ:Landroid/content/Context;

    new-instance v15, Lʿᵎ/ⁱˊ;

    invoke-direct {v15, v14}, Lʿᵎ/ⁱˊ;-><init>(Ljava/lang/Object;)V

    invoke-static {v15}, Lʿᵎ/ⁱˊ;->ˆﾞ(Landroid/os/IBinder;)Lʿᵎ/ﹳٴ;

    move-result-object v14

    invoke-static {v14}, Lʿᵎ/ⁱˊ;->ᵔٴ(Lʿᵎ/ﹳٴ;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/Context;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    sget-object v15, Lᴵˈ/ᵔﹳ;->ʽ:Lٴﾞ/ʽﹳ;

    check-cast v15, Lٴﾞ/יـ;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ˑﹳ()Landroid/os/Parcel;

    move-result-object v4

    sget v16, Lˎʽ/ﹳٴ;->ﹳٴ:I

    invoke-virtual {v4, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v5, 0x4f45

    invoke-static {v4, v5}, Lˈˊ/ᵔʾ;->ᵔٴ(Landroid/os/Parcel;I)I

    move-result v5

    invoke-static {v4, v13, v8}, Lˈˊ/ᵔʾ;->ᵎˊ(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v13, 0x4

    invoke-static {v4, v12, v13}, Lˈˊ/ᵔʾ;->ˊˋ(Landroid/os/Parcel;II)V

    invoke-virtual {v4, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v4, v3, v13}, Lˈˊ/ᵔʾ;->ˊˋ(Landroid/os/Parcel;II)V

    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Landroid/os/Parcel;->writeInt(I)V

    new-instance v0, Lʿᵎ/ⁱˊ;

    invoke-direct {v0, v14}, Lʿᵎ/ⁱˊ;-><init>(Ljava/lang/Object;)V

    invoke-static {v4, v13, v0}, Lˈˊ/ᵔʾ;->ᵎⁱ(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    const/4 v0, 0x5

    invoke-static {v4, v0, v13}, Lˈˊ/ᵔʾ;->ˊˋ(Landroid/os/Parcel;II)V

    invoke-virtual {v4, v12}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x6

    invoke-static {v4, v0, v13}, Lˈˊ/ᵔʾ;->ˊˋ(Landroid/os/Parcel;II)V

    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v4, v5}, Lˈˊ/ᵔʾ;->ˑٴ(Landroid/os/Parcel;I)V

    invoke-virtual {v15, v4, v0}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ʽ(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object v0

    sget-object v4, Lᴵˈ/ﹳᐧ;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v4}, Lˎʽ/ﹳٴ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lᴵˈ/ﹳᐧ;

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-boolean v0, v4, Lᴵˈ/ﹳᐧ;->ʾˋ:Z

    if-eqz v0, :cond_2

    iget v0, v4, Lᴵˈ/ﹳᐧ;->ˈٴ:I

    invoke-static {v0}, Lﹳٴ/ﹳٴ;->ʿ(I)I

    new-instance v0, Lᴵˈ/ˏי;

    const/4 v4, 0x0

    const/4 v12, 0x1

    invoke-direct {v0, v12, v4, v4}, Lᴵˈ/ˏי;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_5

    :cond_2
    iget-object v0, v4, Lᴵˈ/ﹳᐧ;->ᴵˊ:Ljava/lang/String;

    iget v5, v4, Lᴵˈ/ﹳᐧ;->ʽʽ:I

    invoke-static {v5}, Landroid/support/v4/media/session/ⁱˊ;->ʾᵎ(I)I

    move-result v5

    if-ne v5, v13, :cond_3

    new-instance v5, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_6

    :cond_3
    const/4 v5, 0x0

    :goto_3
    const-string v9, "error checking package certificate"

    if-nez v0, :cond_4

    move-object v0, v9

    :cond_4
    iget v9, v4, Lᴵˈ/ﹳᐧ;->ˈٴ:I

    invoke-static {v9}, Lﹳٴ/ﹳٴ;->ʿ(I)I

    iget v4, v4, Lᴵˈ/ﹳᐧ;->ʽʽ:I

    invoke-static {v4}, Landroid/support/v4/media/session/ⁱˊ;->ʾᵎ(I)I

    new-instance v4, Lᴵˈ/ˏי;

    const/4 v12, 0x0

    invoke-direct {v4, v12, v0, v5}, Lᴵˈ/ˏי;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    move-object v0, v4

    goto :goto_5

    :catch_2
    move-exception v0

    nop

    const-string v4, "module call"

    new-instance v5, Lᴵˈ/ˏי;

    const/4 v12, 0x0

    invoke-direct {v5, v12, v4, v0}, Lᴵˈ/ˏי;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    :goto_4
    move-object v0, v5

    goto :goto_5

    :catch_3
    move-exception v0

    nop

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "module init: "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lᴵˈ/ˏי;

    const/4 v12, 0x0

    invoke-direct {v5, v12, v4, v0}, Lᴵˈ/ˏי;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    :goto_5
    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto/16 :goto_8

    :goto_6
    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0

    :cond_5
    :try_start_7
    iget-object v0, v1, Lᴵˈ/ᵔᵢ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v4, 0x40

    invoke-virtual {v0, v8, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_4

    iget-object v4, v1, Lᴵˈ/ᵔᵢ;->ʾˋ:Ljava/lang/Object;

    check-cast v4, Landroid/content/Context;

    invoke-static {v4}, Lᴵˈ/ᵎﹶ;->ﹳٴ(Landroid/content/Context;)Z

    move-result v4

    if-nez v0, :cond_6

    new-instance v0, Lᴵˈ/ˏי;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v0, v5, v11, v4}, Lᴵˈ/ˏי;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_8

    :cond_6
    const/4 v5, 0x0

    iget-object v9, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v9, :cond_9

    array-length v9, v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_7

    goto :goto_7

    :cond_7
    new-instance v9, Lᴵˈ/ˉˆ;

    iget-object v10, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v10, v10, v5

    invoke-virtual {v10}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v10

    invoke-direct {v9, v10}, Lᴵˈ/ˉˆ;-><init>([B)V

    iget-object v10, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v11

    :try_start_8
    invoke-static {v10, v9, v4, v5}, Lᴵˈ/ᵔﹳ;->ⁱˊ(Ljava/lang/String;Lᴵˈ/ˉˆ;ZZ)Lᴵˈ/ˏי;

    move-result-object v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    iget-boolean v5, v4, Lᴵˈ/ˏי;->ﹳٴ:Z

    if-eqz v5, :cond_8

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_8

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v12

    if-eqz v0, :cond_8

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v5

    const/4 v11, 0x0

    const/4 v12, 0x1

    :try_start_9
    invoke-static {v10, v9, v11, v12}, Lᴵˈ/ᵔﹳ;->ⁱˊ(Ljava/lang/String;Lᴵˈ/ˉˆ;ZZ)Lᴵˈ/ˏי;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    iget-boolean v0, v0, Lᴵˈ/ˏי;->ﹳٴ:Z

    if-eqz v0, :cond_8

    new-instance v0, Lᴵˈ/ˏי;

    const-string v4, "debuggable release cert app rejected"

    const/4 v5, 0x0

    invoke-direct {v0, v11, v4, v5}, Lᴵˈ/ˏי;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_8

    :catchall_2
    move-exception v0

    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0

    :cond_8
    move-object v0, v4

    goto :goto_8

    :catchall_3
    move-exception v0

    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0

    :cond_9
    :goto_7
    new-instance v0, Lᴵˈ/ˏי;

    const-string v4, "single cert required"

    const/4 v5, 0x0

    const/4 v12, 0x0

    invoke-direct {v0, v12, v4, v5}, Lᴵˈ/ˏי;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    :goto_8
    iget-boolean v4, v0, Lᴵˈ/ˏי;->ﹳٴ:Z

    if-eqz v4, :cond_b

    iput-object v8, v1, Lᴵˈ/ᵔᵢ;->ᴵˊ:Ljava/lang/Object;

    goto :goto_a

    :catch_4
    move-exception v0

    const-string v4, "no pkg "

    invoke-virtual {v4, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lᴵˈ/ˏי;

    const/4 v12, 0x0

    invoke-direct {v5, v12, v4, v0}, Lᴵˈ/ˏי;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    move-object v0, v5

    goto :goto_a

    :goto_9
    invoke-static {v12}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0

    :cond_a
    sget-object v0, Lᴵˈ/ˏי;->ˈ:Lᴵˈ/ˏי;

    :cond_b
    :goto_a
    iget-boolean v4, v0, Lᴵˈ/ˏי;->ﹳٴ:Z

    if-eqz v4, :cond_c

    goto :goto_c

    :cond_c
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_d
    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    goto :goto_c

    :cond_e
    :goto_b
    new-instance v0, Lᴵˈ/ˏי;

    const-string v2, "no pkgs"

    const/4 v4, 0x0

    const/4 v12, 0x0

    invoke-direct {v0, v12, v2, v4}, Lᴵˈ/ˏי;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    :goto_c
    iget-object v2, v0, Lᴵˈ/ˏי;->ʽ:Ljava/lang/Throwable;

    iget-boolean v4, v0, Lᴵˈ/ˏי;->ﹳٴ:Z

    if-nez v4, :cond_10

    const-string v4, "GoogleCertificatesRslt"

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_10

    if-eqz v2, :cond_f

    invoke-virtual {v0}, Lᴵˈ/ˏי;->ﹳٴ()Ljava/lang/String;

    move-result-object v3

    nop

    goto :goto_d

    :cond_f
    invoke-virtual {v0}, Lᴵˈ/ˏי;->ﹳٴ()Ljava/lang/String;

    move-result-object v2

    nop

    :cond_10
    :goto_d
    iget-boolean v0, v0, Lᴵˈ/ˏי;->ﹳٴ:Z

    return v0
.end method

.method public ﹳٴ()Lʾⁱ/ﹳٴ;
    .locals 4

    .prologue
    iget-object v0, p0, Lᴵˈ/ᵔᵢ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʾⁱ/ﹳٴ;

    if-nez v0, :cond_6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lᴵˈ/ᵔᵢ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʾⁱ/ﹳٴ;

    if-nez v0, :cond_4

    iget-object v0, p0, Lᴵˈ/ᵔᵢ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹳי/ʽ;

    iget-object v0, v0, Lﹳי/ʽ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lʾⁱ/ˑﹳ;

    const-string v1, "image_manager_disk_cache"

    iget-object v0, v0, Lʾⁱ/ˑﹳ;->ﹳٴ:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    new-instance v2, Lʾⁱ/ˈ;

    invoke-direct {v2, v3}, Lʾⁱ/ˈ;-><init>(Ljava/io/File;)V

    :cond_3
    :goto_1
    iput-object v2, p0, Lᴵˈ/ᵔᵢ;->ᴵˊ:Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_4
    :goto_2
    iget-object v0, p0, Lᴵˈ/ᵔᵢ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʾⁱ/ﹳٴ;

    if-nez v0, :cond_5

    new-instance v0, Lـˎ/ˈ;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lـˎ/ˈ;-><init>(I)V

    iput-object v0, p0, Lᴵˈ/ᵔᵢ;->ᴵˊ:Ljava/lang/Object;

    :cond_5
    monitor-exit p0

    goto :goto_4

    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_6
    :goto_4
    iget-object v0, p0, Lᴵˈ/ᵔᵢ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʾⁱ/ﹳٴ;

    return-object v0
.end method
