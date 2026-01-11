.class public abstract Lᴵˈ/ᵔﹳ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile ʽ:Lٴﾞ/ʽﹳ;

.field public static final ˈ:Ljava/lang/Object;

.field public static ˑﹳ:Landroid/content/Context;

.field public static final ⁱˊ:Lᴵˈ/ˉʿ;

.field public static final ﹳٴ:Lᴵˈ/ˉʿ;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lᴵˈ/ˉʿ;

    const-string v1, "0\u0082\u0005\u00c80\u0082\u0003\u00b0\u00a0\u0003\u0002\u0001\u0002\u0002\u0014\u0010\u008ae\u0008s\u00f9/\u008eQ\u00ed"

    invoke-static {v1}, Lᴵˈ/ᵔʾ;->ˆﾞ(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lᴵˈ/ˉʿ;-><init>(I[B)V

    new-instance v0, Lᴵˈ/ˉʿ;

    const-string v1, "0\u0082\u0006\u00040\u0082\u0003\u00ec\u00a0\u0003\u0002\u0001\u0002\u0002\u0014\u0003\u00a3\u00b2\u00ad\u00d7\u00e1r\u00cak\u00ec"

    invoke-static {v1}, Lᴵˈ/ᵔʾ;->ˆﾞ(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lᴵˈ/ˉʿ;-><init>(I[B)V

    new-instance v0, Lᴵˈ/ˉʿ;

    const-string v1, "0\u0082\u0004C0\u0082\u0003+\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00c2\u00e0\u0087FdJ0\u008d0"

    invoke-static {v1}, Lᴵˈ/ᵔʾ;->ˆﾞ(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Lᴵˈ/ˉʿ;-><init>(I[B)V

    sput-object v0, Lᴵˈ/ᵔﹳ;->ﹳٴ:Lᴵˈ/ˉʿ;

    new-instance v0, Lᴵˈ/ˉʿ;

    const-string v1, "0\u0082\u0004\u00a80\u0082\u0003\u0090\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00d5\u0085\u00b8l}\u00d3N\u00f50"

    invoke-static {v1}, Lᴵˈ/ᵔʾ;->ˆﾞ(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Lᴵˈ/ˉʿ;-><init>(I[B)V

    sput-object v0, Lᴵˈ/ᵔﹳ;->ⁱˊ:Lᴵˈ/ˉʿ;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lᴵˈ/ᵔﹳ;->ˈ:Ljava/lang/Object;

    return-void
.end method

.method public static ʽ()V
    .locals 5

    .prologue
    sget-object v0, Lᴵˈ/ᵔﹳ;->ʽ:Lٴﾞ/ʽﹳ;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lᴵˈ/ᵔﹳ;->ˑﹳ:Landroid/content/Context;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    sget-object v0, Lᴵˈ/ᵔﹳ;->ˈ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lᴵˈ/ᵔﹳ;->ʽ:Lٴﾞ/ʽﹳ;

    if-nez v1, :cond_3

    sget-object v1, Lᴵˈ/ᵔﹳ;->ˑﹳ:Landroid/content/Context;

    sget-object v2, Lˈˆ/ˈ;->ˈ:Lˋⁱ/ﾞᴵ;

    const-string v3, "com.google.android.gms.googlecertificates"

    invoke-static {v1, v2, v3}, Lˈˆ/ˈ;->ʽ(Landroid/content/Context;Lˈˆ/ʽ;Ljava/lang/String;)Lˈˆ/ˈ;

    move-result-object v1

    const-string v2, "com.google.android.gms.common.GoogleCertificatesImpl"

    invoke-virtual {v1, v2}, Lˈˆ/ˈ;->ⁱˊ(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    sget v2, Lٴﾞ/ˏי;->ˑﹳ:I

    const-string v2, "com.google.android.gms.common.internal.IGoogleCertificatesApi"

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    instance-of v4, v3, Lٴﾞ/ʽﹳ;

    if-eqz v4, :cond_2

    move-object v1, v3

    check-cast v1, Lٴﾞ/ʽﹳ;

    goto :goto_0

    :cond_2
    new-instance v3, Lٴﾞ/יـ;

    const/4 v4, 0x2

    invoke-direct {v3, v1, v2, v4}, Lcom/google/android/gms/internal/measurement/ʾᵎ;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    move-object v1, v3

    :goto_0
    sput-object v1, Lᴵˈ/ᵔﹳ;->ʽ:Lٴﾞ/ʽﹳ;

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static ⁱˊ(Ljava/lang/String;Lᴵˈ/ˉˆ;ZZ)Lᴵˈ/ˏי;
    .locals 10

    .prologue
    const-string v0, "Failed to get Google certificates from remote"

    const-string v1, "GoogleCertificates"

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lᴵˈ/ᵔﹳ;->ʽ()V
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_0 .. :try_end_0} :catch_1

    sget-object v3, Lᴵˈ/ᵔﹳ;->ˑﹳ:Landroid/content/Context;

    invoke-static {v3}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    :try_start_1
    sget-object v3, Lᴵˈ/ᵔﹳ;->ʽ:Lٴﾞ/ʽﹳ;

    sget-object v4, Lᴵˈ/ᵔﹳ;->ˑﹳ:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v5, Lʿᵎ/ⁱˊ;

    invoke-direct {v5, v4}, Lʿᵎ/ⁱˊ;-><init>(Ljava/lang/Object;)V

    check-cast v3, Lٴﾞ/יـ;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ˑﹳ()Landroid/os/Parcel;

    move-result-object v4

    sget v6, Lˎʽ/ﹳٴ;->ﹳٴ:I

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v7, 0x4f45

    invoke-static {v4, v7}, Lˈˊ/ᵔʾ;->ᵔٴ(Landroid/os/Parcel;I)I

    move-result v7

    invoke-static {v4, v6, p0}, Lˈˊ/ᵔʾ;->ᵎˊ(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v8, 0x2

    invoke-static {v4, v8, p1}, Lˈˊ/ᵔʾ;->ᵎⁱ(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    const/4 v8, 0x3

    const/4 v9, 0x4

    invoke-static {v4, v8, v9}, Lˈˊ/ᵔʾ;->ˊˋ(Landroid/os/Parcel;II)V

    invoke-virtual {v4, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v4, v9, v9}, Lˈˊ/ᵔʾ;->ˊˋ(Landroid/os/Parcel;II)V

    invoke-virtual {v4, p3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v4, v7}, Lˈˊ/ᵔʾ;->ˑٴ(Landroid/os/Parcel;I)V

    invoke-static {v4, v5}, Lˎʽ/ﹳٴ;->ʽ(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p3, 0x5

    invoke-virtual {v3, v4, p3}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ʽ(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v6, v2

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->recycle()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v6, :cond_1

    sget-object p0, Lᴵˈ/ˏי;->ˈ:Lᴵˈ/ˏי;

    return-object p0

    :cond_1
    new-instance p3, Lᴵˈ/ﾞʻ;

    invoke-direct {p3, p2, p0, p1}, Lᴵˈ/ﾞʻ;-><init>(ZLjava/lang/String;Lᴵˈ/ˉˆ;)V

    new-instance p0, Lᴵˈ/יـ;

    invoke-direct {p0, p3}, Lᴵˈ/יـ;-><init>(Lᴵˈ/ﾞʻ;)V

    return-object p0

    :catch_0
    move-exception p0

    nop

    new-instance p1, Lᴵˈ/ˏי;

    const-string p2, "module call"

    invoke-direct {p1, v2, p2, p0}, Lᴵˈ/ˏי;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    return-object p1

    :catch_1
    move-exception p0

    nop

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "module init: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lᴵˈ/ˏי;

    invoke-direct {p2, v2, p1, p0}, Lᴵˈ/ˏי;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    return-object p2
.end method

.method public static declared-synchronized ﹳٴ(Landroid/content/Context;)V
    .locals 2

    .prologue
    const-class v0, Lᴵˈ/ᵔﹳ;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lᴵˈ/ᵔﹳ;->ˑﹳ:Landroid/content/Context;

    if-nez v1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lᴵˈ/ᵔﹳ;->ˑﹳ:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    const-string p0, "GoogleCertificates"

    const-string v1, "GoogleCertificates has been initialized already"

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
