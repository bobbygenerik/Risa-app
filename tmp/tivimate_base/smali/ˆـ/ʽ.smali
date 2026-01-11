.class public final Lˆـ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﹳٴ:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lˆـ/ʽ;->ﹳٴ:Ljava/lang/Object;

    return-void
.end method

.method public static ﹳٴ(Ljava/lang/String;)Z
    .locals 3

    .prologue
    sget-object v0, Lˆـ/ʽ;->ﹳٴ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lﹶˆ/ˉˆ;->ⁱˊ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "AndroidKeyStore"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1, p0}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lˈˊ/ᵔʾ;->ٴﹶ(Ljava/lang/String;)V

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/security/GeneralSecurityException;

    invoke-direct {v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method


# virtual methods
.method public final ⁱˊ(Ljava/lang/String;)Lˆـ/ⁱˊ;
    .locals 4

    .prologue
    :try_start_0
    sget-object v0, Lˆـ/ʽ;->ﹳٴ:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Lˆـ/ⁱˊ;

    invoke-static {p1}, Lﹶˆ/ˉˆ;->ⁱˊ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lˆـ/ⁱˊ;-><init>(Ljava/lang/String;)V

    const/16 p1, 0xa

    invoke-static {p1}, Lﹳʽ/ٴᵢ;->ﹳٴ(I)[B

    move-result-object p1

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-virtual {v1, p1, v2}, Lˆـ/ⁱˊ;->ﹳٴ([B[B)[B

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lˆـ/ⁱˊ;->ⁱˊ([B[B)[B

    move-result-object v2

    invoke-static {p1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/security/KeyStoreException;

    const-string v1, "cannot use Android Keystore: encryption/decryption of non-empty message and empty aad returns an incorrect result"

    invoke-direct {p1, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
