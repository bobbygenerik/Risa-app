.class public abstract Lʻʻ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʼˎ:[B

.field public static final ʽ:[B

.field public static final ˆʾ:[B

.field public static final ˈ:[B

.field public static final ˑﹳ:[B

.field public static final ᵎﹶ:[B

.field public static final ᵔᵢ:[B

.field public static final ⁱˊ:[B

.field public static final ﹳٴ:Lﹳˋ/ʼˎ;

.field public static final ﾞᴵ:[B


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Lﹳˋ/ʼˎ;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lﹳˋ/ʼˎ;-><init>(I)V

    sput-object v0, Lʻʻ/ˑﹳ;->ﹳٴ:Lﹳˋ/ʼˎ;

    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lʻʻ/ˑﹳ;->ⁱˊ:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lʻʻ/ˑﹳ;->ʽ:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_2

    sput-object v1, Lʻʻ/ˑﹳ;->ˈ:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_3

    sput-object v1, Lʻʻ/ˑﹳ;->ˑﹳ:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_4

    sput-object v1, Lʻʻ/ˑﹳ;->ﾞᴵ:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_5

    sput-object v1, Lʻʻ/ˑﹳ;->ᵎﹶ:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_6

    sput-object v1, Lʻʻ/ˑﹳ;->ᵔᵢ:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_7

    sput-object v1, Lʻʻ/ˑﹳ;->ʼˎ:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    sput-object v0, Lʻʻ/ˑﹳ;->ˆʾ:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x70t
        0x72t
        0x6ft
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x70t
        0x72t
        0x6dt
        0x0t
    .end array-data

    :array_2
    .array-data 1
        0x30t
        0x31t
        0x35t
        0x0t
    .end array-data

    :array_3
    .array-data 1
        0x30t
        0x31t
        0x30t
        0x0t
    .end array-data

    :array_4
    .array-data 1
        0x30t
        0x30t
        0x39t
        0x0t
    .end array-data

    :array_5
    .array-data 1
        0x30t
        0x30t
        0x35t
        0x0t
    .end array-data

    :array_6
    .array-data 1
        0x30t
        0x30t
        0x31t
        0x0t
    .end array-data

    :array_7
    .array-data 1
        0x30t
        0x30t
        0x31t
        0x0t
    .end array-data

    :array_8
    .array-data 1
        0x30t
        0x30t
        0x32t
        0x0t
    .end array-data
.end method

.method public static ʻٴ(Ljava/io/ByteArrayOutputStream;I)V
    .locals 2

    int-to-long v0, p1

    const/4 p1, 0x2

    invoke-static {p0, v0, v1, p1}, Lʻʻ/ˑﹳ;->ʽﹳ(Ljava/io/ByteArrayOutputStream;JI)V

    return-void
.end method

.method public static ʼˎ(Ljava/io/FileInputStream;[B[B[Lˎʾ/ˑﹳ;)[Lˎʾ/ˑﹳ;
    .locals 6

    .prologue
    sget-object v0, Lʻʻ/ˑﹳ;->ʼˎ:[B

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    const-string v2, "Unsupported meta version"

    const-string v3, "Content found after the end of file"

    const/4 v4, 0x4

    if-eqz v1, :cond_3

    sget-object v1, Lʻʻ/ˑﹳ;->ˈ:[B

    invoke-static {v1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lʻʻ/ˑﹳ;->ˉʿ(Ljava/io/InputStream;I)J

    move-result-wide p1

    long-to-int p1, p1

    invoke-static {p0, v4}, Lʻʻ/ˑﹳ;->ˉʿ(Ljava/io/InputStream;I)J

    move-result-wide v0

    invoke-static {p0, v4}, Lʻʻ/ˑﹳ;->ˉʿ(Ljava/io/InputStream;I)J

    move-result-wide v4

    long-to-int p2, v4

    long-to-int v0, v0

    invoke-static {p0, p2, v0}, Lʻʻ/ˑﹳ;->ᵔᵢ(Ljava/io/FileInputStream;II)[B

    move-result-object p2

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    if-gtz p0, :cond_0

    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_0
    invoke-static {p0, p1, p3}, Lʻʻ/ˑﹳ;->ˆʾ(Ljava/io/ByteArrayInputStream;I[Lˎʾ/ˑﹳ;)[Lˎʾ/ˑﹳ;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Requires new Baseline Profile Metadata. Please rebuild the APK with Android Gradle Plugin 7.2 Canary 7 or higher"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    sget-object v0, Lʻʻ/ˑﹳ;->ˆʾ:[B

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lʻʻ/ˑﹳ;->ˉʿ(Ljava/io/InputStream;I)J

    move-result-wide v0

    long-to-int p1, v0

    invoke-static {p0, v4}, Lʻʻ/ˑﹳ;->ˉʿ(Ljava/io/InputStream;I)J

    move-result-wide v0

    invoke-static {p0, v4}, Lʻʻ/ˑﹳ;->ˉʿ(Ljava/io/InputStream;I)J

    move-result-wide v4

    long-to-int v2, v4

    long-to-int v0, v0

    invoke-static {p0, v2, v0}, Lʻʻ/ˑﹳ;->ᵔᵢ(Ljava/io/FileInputStream;II)[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    if-gtz p0, :cond_4

    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_2
    invoke-static {p0, p2, p1, p3}, Lʻʻ/ˑﹳ;->ٴﹶ(Ljava/io/ByteArrayInputStream;[BI[Lˎʾ/ˑﹳ;)[Lˎʾ/ˑﹳ;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object p1

    :catchall_2
    move-exception p1

    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ʼᐧ(Ljava/io/ByteArrayOutputStream;Lˎʾ/ˑﹳ;)V
    .locals 8

    .prologue
    invoke-static {p0, p1}, Lʻʻ/ˑﹳ;->יـ(Ljava/io/ByteArrayOutputStream;Lˎʾ/ˑﹳ;)V

    iget v0, p1, Lˎʾ/ˑﹳ;->ʼˎ:I

    iget-object v1, p1, Lˎʾ/ˑﹳ;->ˈ:Ljava/lang/Object;

    check-cast v1, [I

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_0

    aget v5, v1, v3

    sub-int v4, v5, v4

    invoke-static {p0, v4}, Lʻʻ/ˑﹳ;->ʻٴ(Ljava/io/ByteArrayOutputStream;I)V

    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x7

    and-int/lit8 v1, v1, -0x8

    div-int/lit8 v1, v1, 0x8

    new-array v1, v1, [B

    iget-object p1, p1, Lˎʾ/ˑﹳ;->ˑﹳ:Ljava/lang/Object;

    check-cast p1, Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v4, v2, 0x2

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    div-int/lit8 v4, v3, 0x8

    aget-byte v6, v1, v4

    rem-int/lit8 v7, v3, 0x8

    shl-int v7, v5, v7

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v1, v4

    :cond_2
    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    add-int/2addr v3, v0

    div-int/lit8 v2, v3, 0x8

    aget-byte v4, v1, v2

    rem-int/lit8 v3, v3, 0x8

    shl-int v3, v5, v3

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public static ʽ(Ljava/io/File;)Z
    .locals 6

    .prologue
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    array-length v2, p0

    move v3, v0

    move v4, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v5, p0, v3

    invoke-static {v5}, Lʻʻ/ˑﹳ;->ʽ(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v4

    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return v1
.end method

.method public static ʽﹳ(Ljava/io/ByteArrayOutputStream;JI)V
    .locals 6

    .prologue
    new-array v0, p3, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_0

    mul-int/lit8 v2, v1, 0x8

    shr-long v2, p1, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public static ˆʾ(Ljava/io/ByteArrayInputStream;I[Lˎʾ/ˑﹳ;)[Lˎʾ/ˑﹳ;
    .locals 8

    .prologue
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p0, v1, [Lˎʾ/ˑﹳ;

    return-object p0

    :cond_0
    array-length v0, p2

    if-ne p1, v0, :cond_4

    new-array v0, p1, [Ljava/lang/String;

    new-array v2, p1, [I

    move v3, v1

    :goto_0
    if-ge v3, p1, :cond_1

    const/4 v4, 0x2

    invoke-static {p0, v4}, Lʻʻ/ˑﹳ;->ˉʿ(Ljava/io/InputStream;I)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-static {p0, v4}, Lʻʻ/ˑﹳ;->ˉʿ(Ljava/io/InputStream;I)J

    move-result-wide v6

    long-to-int v4, v6

    aput v4, v2, v3

    new-instance v4, Ljava/lang/String;

    invoke-static {p0, v5}, Lʻʻ/ˑﹳ;->ﾞᴵ(Ljava/io/InputStream;I)[B

    move-result-object v5

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v1, p1, :cond_3

    aget-object v3, p2, v1

    iget-object v4, v3, Lˎʾ/ˑﹳ;->ʽ:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    aget v4, v2, v1

    iput v4, v3, Lˎʾ/ˑﹳ;->ﾞᴵ:I

    invoke-static {p0, v4}, Lʻʻ/ˑﹳ;->ᵎﹶ(Ljava/io/ByteArrayInputStream;I)[I

    move-result-object v4

    iput-object v4, v3, Lˎʾ/ˑﹳ;->ˈ:Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Order of dexfiles in metadata did not match baseline"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-object p2

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Mismatched number of dex files found in metadata"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ˈ(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 6

    .prologue
    sget-object v0, Lʻʻ/ˑﹳ;->ᵔᵢ:[B

    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    sget-object v2, Lʻʻ/ˑﹳ;->ᵎﹶ:[B

    const-string v3, "!"

    const-string v4, ":"

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    move-object v1, v4

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string v5, "classes.dex"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    return-object p0

    :cond_4
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    const-string v1, ".apk"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    invoke-static {p0}, Lʻٴ/ᵎﹶ;->ⁱˊ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    invoke-static {p2, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-eqz p2, :cond_8

    :goto_2
    move-object v3, v4

    :cond_8
    invoke-static {p0, v3, p1}, Lʼﾞ/ˊˋ;->ʽﹳ(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    :goto_3
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    :goto_4
    return-object p1
.end method

.method public static ˉʿ(Ljava/io/InputStream;I)J
    .locals 6

    .prologue
    invoke-static {p0, p1}, Lʻʻ/ˑﹳ;->ﾞᴵ(Ljava/io/InputStream;I)[B

    move-result-object p0

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    mul-int/lit8 v5, v2, 0x8

    shl-long/2addr v3, v5

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static ˉˆ(Ljava/io/ByteArrayOutputStream;[B[Lˎʾ/ˑﹳ;)Z
    .locals 19

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget-object v3, Lʻʻ/ˑﹳ;->ˈ:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_10

    new-instance v1, Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    array-length v10, v2

    invoke-static {v9, v10}, Lʻʻ/ˑﹳ;->ʻٴ(Ljava/io/ByteArrayOutputStream;I)V

    const/4 v10, 0x2

    move v11, v6

    move v12, v10

    :goto_0
    array-length v13, v2

    if-ge v11, v13, :cond_0

    aget-object v13, v2, v11

    iget-wide v14, v13, Lˎʾ/ˑﹳ;->ᵎﹶ:J

    invoke-static {v9, v14, v15, v5}, Lʻʻ/ˑﹳ;->ʽﹳ(Ljava/io/ByteArrayOutputStream;JI)V

    iget-wide v14, v13, Lˎʾ/ˑﹳ;->ˆʾ:J

    invoke-static {v9, v14, v15, v5}, Lʻʻ/ˑﹳ;->ʽﹳ(Ljava/io/ByteArrayOutputStream;JI)V

    iget v14, v13, Lˎʾ/ˑﹳ;->ʼˎ:I

    int-to-long v14, v14

    invoke-static {v9, v14, v15, v5}, Lʻʻ/ˑﹳ;->ʽﹳ(Ljava/io/ByteArrayOutputStream;JI)V

    iget-object v14, v13, Lˎʾ/ˑﹳ;->ⁱˊ:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    iget-object v13, v13, Lˎʾ/ˑﹳ;->ʽ:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    invoke-static {v14, v13, v3}, Lʻʻ/ˑﹳ;->ˈ(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v12, v12, 0xe

    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v13, v14}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v15

    array-length v15, v15

    invoke-static {v9, v15}, Lʻʻ/ˑﹳ;->ʻٴ(Ljava/io/ByteArrayOutputStream;I)V

    add-int/2addr v12, v15

    invoke-virtual {v13, v14}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :goto_1
    move-object v1, v0

    goto/16 :goto_12

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    array-length v11, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v13, ", does not match actual size "

    const-string v14, "Expected size "

    if-ne v12, v11, :cond_f

    :try_start_1
    new-instance v11, Lʻʻ/ﾞʻ;

    invoke-direct {v11, v7, v6, v3}, Lʻʻ/ﾞʻ;-><init>(IZ[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v9, v6

    move v11, v9

    :goto_2
    :try_start_2
    array-length v12, v2

    if-ge v9, v12, :cond_2

    aget-object v12, v2, v9

    invoke-static {v3, v9}, Lʻʻ/ˑﹳ;->ʻٴ(Ljava/io/ByteArrayOutputStream;I)V

    add-int/lit8 v11, v11, 0x4

    iget v15, v12, Lˎʾ/ˑﹳ;->ﾞᴵ:I

    invoke-static {v3, v15}, Lʻʻ/ˑﹳ;->ʻٴ(Ljava/io/ByteArrayOutputStream;I)V

    iget v15, v12, Lˎʾ/ˑﹳ;->ﾞᴵ:I

    mul-int/2addr v15, v10

    add-int/2addr v11, v15

    iget-object v12, v12, Lˎʾ/ˑﹳ;->ˈ:Ljava/lang/Object;

    check-cast v12, [I

    array-length v15, v12

    move/from16 v16, v6

    move/from16 p1, v10

    move/from16 v10, v16

    :goto_3
    if-ge v10, v15, :cond_1

    aget v17, v12, v10

    sub-int v6, v17, v16

    invoke-static {v3, v6}, Lʻʻ/ˑﹳ;->ʻٴ(Ljava/io/ByteArrayOutputStream;I)V

    add-int/lit8 v10, v10, 0x1

    move/from16 v16, v17

    const/4 v6, 0x0

    goto :goto_3

    :cond_1
    add-int/lit8 v9, v9, 0x1

    move/from16 v10, p1

    const/4 v6, 0x0

    goto :goto_2

    :goto_4
    move-object v1, v0

    goto/16 :goto_10

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_2
    move/from16 p1, v10

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    array-length v9, v6

    if-ne v11, v9, :cond_e

    new-instance v9, Lʻʻ/ﾞʻ;

    invoke-direct {v9, v4, v7, v6}, Lʻʻ/ﾞʻ;-><init>(IZ[B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_5
    :try_start_3
    array-length v9, v2

    if-ge v4, v9, :cond_4

    aget-object v9, v2, v4

    iget-object v10, v9, Lˎʾ/ˑﹳ;->ˑﹳ:Ljava/lang/Object;

    check-cast v10, Ljava/util/TreeMap;

    invoke-virtual {v10}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x0

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    or-int/2addr v11, v12

    goto :goto_6

    :cond_3
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-static {v10, v11, v9}, Lʻʻ/ˑﹳ;->ﹳᐧ(Ljava/io/ByteArrayOutputStream;ILˎʾ/ˑﹳ;)V

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :try_start_5
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V

    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-static {v10, v9}, Lʻʻ/ˑﹳ;->יـ(Ljava/io/ByteArrayOutputStream;Lˎʾ/ˑﹳ;)V

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-static {v3, v4}, Lʻʻ/ˑﹳ;->ʻٴ(Ljava/io/ByteArrayOutputStream;I)V

    array-length v10, v12

    add-int/lit8 v10, v10, 0x2

    array-length v15, v9

    add-int/2addr v10, v15

    add-int/lit8 v6, v6, 0x6

    move-object/from16 v16, v8

    int-to-long v7, v10

    invoke-static {v3, v7, v8, v5}, Lʻʻ/ˑﹳ;->ʽﹳ(Ljava/io/ByteArrayOutputStream;JI)V

    invoke-static {v3, v11}, Lʻʻ/ˑﹳ;->ʻٴ(Ljava/io/ByteArrayOutputStream;I)V

    invoke-virtual {v3, v12}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3, v9}, Ljava/io/OutputStream;->write([B)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    add-int/2addr v6, v10

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v8, v16

    const/4 v7, 0x1

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v1, v0

    goto/16 :goto_e

    :catchall_3
    move-exception v0

    move-object v1, v0

    :try_start_8
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_7

    :catchall_4
    move-exception v0

    :try_start_9
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_5
    move-exception v0

    move-object v1, v0

    :try_start_a
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto :goto_8

    :catchall_6
    move-exception v0

    :try_start_b
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw v1

    :cond_4
    move-object/from16 v16, v8

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    array-length v4, v2

    if-ne v6, v4, :cond_d

    new-instance v4, Lʻʻ/ﾞʻ;

    const/4 v15, 0x1

    invoke-direct {v4, v5, v15, v2}, Lʻʻ/ﾞʻ;-><init>(IZ[B)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    int-to-long v2, v5

    add-long/2addr v2, v2

    const-wide/16 v6, 0x4

    add-long/2addr v2, v6

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x10

    int-to-long v6, v4

    add-long/2addr v2, v6

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-long v6, v4

    invoke-static {v0, v6, v7, v5}, Lʻʻ/ˑﹳ;->ʽﹳ(Ljava/io/ByteArrayOutputStream;JI)V

    const/4 v4, 0x0

    :goto_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_b

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lʻʻ/ﾞʻ;

    iget v7, v6, Lʻʻ/ﾞʻ;->ﹳٴ:I

    iget-object v8, v6, Lʻʻ/ﾞʻ;->ⁱˊ:[B

    const/4 v9, 0x1

    if-eq v7, v9, :cond_9

    const/4 v9, 0x2

    if-eq v7, v9, :cond_8

    const/4 v9, 0x3

    if-eq v7, v9, :cond_7

    const/4 v9, 0x4

    if-eq v7, v9, :cond_6

    const/4 v9, 0x5

    if-ne v7, v9, :cond_5

    const-wide/16 v9, 0x4

    goto :goto_a

    :cond_5
    const/4 v0, 0x0

    throw v0

    :cond_6
    const-wide/16 v9, 0x3

    goto :goto_a

    :cond_7
    const-wide/16 v9, 0x2

    goto :goto_a

    :cond_8
    const-wide/16 v9, 0x1

    goto :goto_a

    :cond_9
    const-wide/16 v9, 0x0

    :goto_a
    invoke-static {v0, v9, v10, v5}, Lʻʻ/ˑﹳ;->ʽﹳ(Ljava/io/ByteArrayOutputStream;JI)V

    invoke-static {v0, v2, v3, v5}, Lʻʻ/ˑﹳ;->ʽﹳ(Ljava/io/ByteArrayOutputStream;JI)V

    iget-boolean v6, v6, Lʻʻ/ﾞʻ;->ʽ:Z

    if-eqz v6, :cond_a

    array-length v6, v8

    int-to-long v6, v6

    invoke-static {v8}, Lʻʻ/ˑﹳ;->ﹳٴ([B)[B

    move-result-object v8

    move-object/from16 v9, v16

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    array-length v10, v8

    int-to-long v10, v10

    invoke-static {v0, v10, v11, v5}, Lʻʻ/ˑﹳ;->ʽﹳ(Ljava/io/ByteArrayOutputStream;JI)V

    invoke-static {v0, v6, v7, v5}, Lʻʻ/ˑﹳ;->ʽﹳ(Ljava/io/ByteArrayOutputStream;JI)V

    array-length v6, v8

    :goto_b
    int-to-long v6, v6

    add-long/2addr v2, v6

    goto :goto_c

    :cond_a
    move-object/from16 v9, v16

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    array-length v6, v8

    int-to-long v6, v6

    invoke-static {v0, v6, v7, v5}, Lʻʻ/ˑﹳ;->ʽﹳ(Ljava/io/ByteArrayOutputStream;JI)V

    const-wide/16 v6, 0x0

    invoke-static {v0, v6, v7, v5}, Lʻʻ/ˑﹳ;->ʽﹳ(Ljava/io/ByteArrayOutputStream;JI)V

    array-length v6, v8

    goto :goto_b

    :goto_c
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v16, v9

    goto :goto_9

    :cond_b
    move-object/from16 v9, v16

    const/4 v6, 0x0

    :goto_d
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v6, v1, :cond_c

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_c
    const/4 v15, 0x1

    goto/16 :goto_1a

    :cond_d
    :try_start_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :goto_e
    :try_start_d
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto :goto_f

    :catchall_7
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_f
    throw v1

    :cond_e
    :try_start_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :goto_10
    :try_start_f
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    goto :goto_11

    :catchall_8
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_11
    throw v1

    :cond_f
    :try_start_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :goto_12
    :try_start_11
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    goto :goto_13

    :catchall_9
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_13
    throw v1

    :cond_10
    sget-object v3, Lʻʻ/ˑﹳ;->ˑﹳ:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-static {v2, v3}, Lʻʻ/ˑﹳ;->ⁱˊ([Lˎʾ/ˑﹳ;[B)[B

    move-result-object v1

    array-length v2, v2

    int-to-long v2, v2

    const/4 v15, 0x1

    invoke-static {v0, v2, v3, v15}, Lʻʻ/ˑﹳ;->ʽﹳ(Ljava/io/ByteArrayOutputStream;JI)V

    array-length v2, v1

    int-to-long v2, v2

    invoke-static {v0, v2, v3, v5}, Lʻʻ/ˑﹳ;->ʽﹳ(Ljava/io/ByteArrayOutputStream;JI)V

    invoke-static {v1}, Lʻʻ/ˑﹳ;->ﹳٴ([B)[B

    move-result-object v1

    array-length v2, v1

    int-to-long v2, v2

    invoke-static {v0, v2, v3, v5}, Lʻʻ/ˑﹳ;->ʽﹳ(Ljava/io/ByteArrayOutputStream;JI)V

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    return v15

    :cond_11
    const/4 v15, 0x1

    sget-object v3, Lʻʻ/ˑﹳ;->ᵎﹶ:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_14

    array-length v1, v2

    int-to-long v6, v1

    invoke-static {v0, v6, v7, v15}, Lʻʻ/ˑﹳ;->ʽﹳ(Ljava/io/ByteArrayOutputStream;JI)V

    array-length v1, v2

    const/4 v4, 0x0

    :goto_14
    if-ge v4, v1, :cond_c

    aget-object v6, v2, v4

    iget-object v7, v6, Lˎʾ/ˑﹳ;->ˑﹳ:Ljava/lang/Object;

    check-cast v7, Ljava/util/TreeMap;

    invoke-virtual {v7}, Ljava/util/TreeMap;->size()I

    move-result v7

    mul-int/2addr v7, v5

    iget-object v8, v6, Lˎʾ/ˑﹳ;->ⁱˊ:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v9, v6, Lˎʾ/ˑﹳ;->ʽ:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-static {v8, v9, v3}, Lʻʻ/ˑﹳ;->ˈ(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    array-length v10, v10

    invoke-static {v0, v10}, Lʻʻ/ˑﹳ;->ʻٴ(Ljava/io/ByteArrayOutputStream;I)V

    iget-object v10, v6, Lˎʾ/ˑﹳ;->ˈ:Ljava/lang/Object;

    check-cast v10, [I

    array-length v10, v10

    invoke-static {v0, v10}, Lʻʻ/ˑﹳ;->ʻٴ(Ljava/io/ByteArrayOutputStream;I)V

    int-to-long v10, v7

    invoke-static {v0, v10, v11, v5}, Lʻʻ/ˑﹳ;->ʽﹳ(Ljava/io/ByteArrayOutputStream;JI)V

    iget-wide v10, v6, Lˎʾ/ˑﹳ;->ᵎﹶ:J

    invoke-static {v0, v10, v11, v5}, Lʻʻ/ˑﹳ;->ʽﹳ(Ljava/io/ByteArrayOutputStream;JI)V

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/OutputStream;->write([B)V

    iget-object v7, v6, Lˎʾ/ˑﹳ;->ˑﹳ:Ljava/lang/Object;

    check-cast v7, Ljava/util/TreeMap;

    invoke-virtual {v7}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_15
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v0, v8}, Lʻʻ/ˑﹳ;->ʻٴ(Ljava/io/ByteArrayOutputStream;I)V

    const/4 v8, 0x0

    invoke-static {v0, v8}, Lʻʻ/ˑﹳ;->ʻٴ(Ljava/io/ByteArrayOutputStream;I)V

    goto :goto_15

    :cond_12
    iget-object v6, v6, Lˎʾ/ˑﹳ;->ˈ:Ljava/lang/Object;

    check-cast v6, [I

    array-length v7, v6

    const/4 v8, 0x0

    :goto_16
    if-ge v8, v7, :cond_13

    aget v9, v6, v8

    invoke-static {v0, v9}, Lʻʻ/ˑﹳ;->ʻٴ(Ljava/io/ByteArrayOutputStream;I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_16

    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_14
    sget-object v3, Lʻʻ/ˑﹳ;->ﾞᴵ:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-static {v2, v3}, Lʻʻ/ˑﹳ;->ⁱˊ([Lˎʾ/ˑﹳ;[B)[B

    move-result-object v1

    array-length v2, v2

    int-to-long v2, v2

    const/4 v15, 0x1

    invoke-static {v0, v2, v3, v15}, Lʻʻ/ˑﹳ;->ʽﹳ(Ljava/io/ByteArrayOutputStream;JI)V

    array-length v2, v1

    int-to-long v2, v2

    invoke-static {v0, v2, v3, v5}, Lʻʻ/ˑﹳ;->ʽﹳ(Ljava/io/ByteArrayOutputStream;JI)V

    invoke-static {v1}, Lʻʻ/ˑﹳ;->ﹳٴ([B)[B

    move-result-object v1

    array-length v2, v1

    int-to-long v2, v2

    invoke-static {v0, v2, v3, v5}, Lʻʻ/ˑﹳ;->ʽﹳ(Ljava/io/ByteArrayOutputStream;JI)V

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    return v15

    :cond_15
    sget-object v3, Lʻʻ/ˑﹳ;->ᵔᵢ:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_18

    array-length v1, v2

    invoke-static {v0, v1}, Lʻʻ/ˑﹳ;->ʻٴ(Ljava/io/ByteArrayOutputStream;I)V

    array-length v1, v2

    const/4 v8, 0x0

    :goto_17
    if-ge v8, v1, :cond_c

    aget-object v4, v2, v8

    iget-object v6, v4, Lˎʾ/ˑﹳ;->ⁱˊ:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v4, Lˎʾ/ˑﹳ;->ˑﹳ:Ljava/lang/Object;

    check-cast v7, Ljava/util/TreeMap;

    iget-object v9, v4, Lˎʾ/ˑﹳ;->ʽ:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-static {v6, v9, v3}, Lʻʻ/ˑﹳ;->ˈ(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v6

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    array-length v10, v10

    invoke-static {v0, v10}, Lʻʻ/ˑﹳ;->ʻٴ(Ljava/io/ByteArrayOutputStream;I)V

    invoke-virtual {v7}, Ljava/util/TreeMap;->size()I

    move-result v10

    invoke-static {v0, v10}, Lʻʻ/ˑﹳ;->ʻٴ(Ljava/io/ByteArrayOutputStream;I)V

    iget-object v10, v4, Lˎʾ/ˑﹳ;->ˈ:Ljava/lang/Object;

    check-cast v10, [I

    array-length v10, v10

    invoke-static {v0, v10}, Lʻʻ/ˑﹳ;->ʻٴ(Ljava/io/ByteArrayOutputStream;I)V

    iget-wide v10, v4, Lˎʾ/ˑﹳ;->ᵎﹶ:J

    invoke-static {v0, v10, v11, v5}, Lʻʻ/ˑﹳ;->ʽﹳ(Ljava/io/ByteArrayOutputStream;JI)V

    invoke-virtual {v6, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v7}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_18
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v0, v7}, Lʻʻ/ˑﹳ;->ʻٴ(Ljava/io/ByteArrayOutputStream;I)V

    goto :goto_18

    :cond_16
    iget-object v4, v4, Lˎʾ/ˑﹳ;->ˈ:Ljava/lang/Object;

    check-cast v4, [I

    array-length v6, v4

    const/4 v7, 0x0

    :goto_19
    if-ge v7, v6, :cond_17

    aget v9, v4, v7

    invoke-static {v0, v9}, Lʻʻ/ˑﹳ;->ʻٴ(Ljava/io/ByteArrayOutputStream;I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_19

    :cond_17
    add-int/lit8 v8, v8, 0x1

    goto :goto_17

    :goto_1a
    return v15

    :cond_18
    const/16 v18, 0x0

    return v18
.end method

.method public static ˏי(Landroid/content/Context;Ljava/util/concurrent/Executor;Lʻʻ/ˈ;Z)V
    .locals 18

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v5, p2

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    new-instance v0, Ljava/io/File;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v8, 0x7

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v0, v2, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_12

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v11

    const-string v3, "ProfileInstaller"

    const/4 v12, 0x0

    if-nez p3, :cond_4

    new-instance v0, Ljava/io/File;

    const-string v7, "profileinstaller_profileWrittenFor_lastUpdateTime.dat"

    invoke-direct {v0, v11, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    :catch_0
    move v0, v9

    goto :goto_2

    :cond_0
    :try_start_1
    new-instance v7, Ljava/io/DataInputStream;

    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v14}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-wide/from16 v16, v14

    iget-wide v13, v10, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v0, v16, v13

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v9

    :goto_0
    if-eqz v0, :cond_2

    const/4 v7, 0x2

    invoke-interface {v5, v7, v12}, Lʻʻ/ˈ;->ˏי(ILjava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v13, v0

    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {v13, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v13
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :cond_2
    :goto_2
    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Skipping profile installation for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    invoke-static {v1, v9}, Lʻʻ/ٴﹶ;->ʽ(Landroid/content/Context;Z)V

    goto/16 :goto_39

    :cond_4
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "Installing profile for "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    new-instance v7, Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v3, "/data/misc/profiles/cur/0"

    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "primary.prof"

    invoke-direct {v7, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Lʻʻ/ʽ;

    const-string v0, "dexopt/baseline.prof"

    move-object v3, v4

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lʻʻ/ʽ;-><init>(Landroid/content/res/AssetManager;Ljava/util/concurrent/Executor;Lʻʻ/ˈ;Ljava/lang/String;Ljava/io/File;)V

    iget-object v4, v2, Lʻʻ/ʽ;->ˑﹳ:Ljava/io/Serializable;

    check-cast v4, [B

    if-nez v4, :cond_5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0}, Lʻʻ/ʽ;->ˉʿ(ILjava/io/Serializable;)V

    :goto_4
    const/4 v7, 0x1

    goto/16 :goto_36

    :cond_5
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6

    const/4 v13, 0x4

    if-eqz v6, :cond_7

    invoke-virtual {v7}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v2, v13, v12}, Lʻʻ/ʽ;->ˉʿ(ILjava/io/Serializable;)V

    goto :goto_4

    :cond_6
    const/4 v6, 0x1

    goto :goto_5

    :cond_7
    :try_start_6
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v2, v13, v12}, Lʻʻ/ʽ;->ˉʿ(ILjava/io/Serializable;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_4

    :catch_1
    const/4 v7, 0x1

    goto/16 :goto_35

    :goto_5
    iput-boolean v6, v2, Lʻʻ/ʽ;->ﹳٴ:Z

    const/4 v6, 0x6

    :try_start_7
    invoke-virtual {v2, v3, v0}, Lʻʻ/ʽ;->ﾞʻ(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    move-object v7, v0

    goto :goto_7

    :catch_2
    move-exception v0

    invoke-interface {v5, v8, v0}, Lʻʻ/ˈ;->ˏי(ILjava/lang/Object;)V

    goto :goto_6

    :catch_3
    move-exception v0

    invoke-interface {v5, v6, v0}, Lʻʻ/ˈ;->ˏי(ILjava/lang/Object;)V

    :goto_6
    move-object v7, v12

    :goto_7
    const-string v14, "Invalid magic"

    sget-object v15, Lʻʻ/ˑﹳ;->ⁱˊ:[B

    const/16 v6, 0x8

    if-eqz v7, :cond_9

    :try_start_8
    invoke-static {v7, v13}, Lʻʻ/ˑﹳ;->ﾞᴵ(Ljava/io/InputStream;I)[B

    move-result-object v0

    invoke-static {v15, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {v7, v13}, Lʻʻ/ˑﹳ;->ﾞᴵ(Ljava/io/InputStream;I)[B

    move-result-object v0

    iget-object v9, v2, Lʻʻ/ʽ;->ⁱˊ:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-static {v7, v0, v9}, Lʻʻ/ˑﹳ;->ﾞʻ(Ljava/io/FileInputStream;[BLjava/lang/String;)[Lˎʾ/ˑﹳ;

    move-result-object v9
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_c

    :catch_4
    move-exception v0

    invoke-interface {v5, v8, v0}, Lʻʻ/ˈ;->ˏי(ILjava/lang/Object;)V

    goto :goto_c

    :catchall_2
    move-exception v0

    move-object v1, v0

    goto :goto_d

    :catch_5
    move-exception v0

    goto :goto_8

    :catch_6
    move-exception v0

    goto :goto_a

    :cond_8
    :try_start_a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :goto_8
    :try_start_b
    invoke-interface {v5, v6, v0}, Lʻʻ/ˈ;->ˏי(ILjava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :goto_9
    :try_start_c
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_b

    :catch_7
    move-exception v0

    invoke-interface {v5, v8, v0}, Lʻʻ/ˈ;->ˏי(ILjava/lang/Object;)V

    goto :goto_b

    :goto_a
    :try_start_d
    invoke-interface {v5, v8, v0}, Lʻʻ/ˈ;->ˏי(ILjava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_9

    :goto_b
    move-object v9, v12

    :goto_c
    iput-object v9, v2, Lʻʻ/ʽ;->ᵔᵢ:Ljava/lang/Object;

    goto :goto_f

    :goto_d
    :try_start_e
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    goto :goto_e

    :catch_8
    move-exception v0

    invoke-interface {v5, v8, v0}, Lʻʻ/ˈ;->ˏי(ILjava/lang/Object;)V

    :goto_e
    throw v1

    :cond_9
    :goto_f
    iget-object v0, v2, Lʻʻ/ʽ;->ᵔᵢ:Ljava/lang/Object;

    check-cast v0, [Lˎʾ/ˑﹳ;

    if-eqz v0, :cond_10

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x18

    if-ge v7, v9, :cond_a

    goto/16 :goto_18

    :cond_a
    const/16 v8, 0x1f

    if-lt v7, v8, :cond_b

    goto :goto_10

    :cond_b
    if-eq v7, v9, :cond_c

    const/16 v8, 0x19

    if-eq v7, v8, :cond_c

    goto :goto_18

    :cond_c
    :goto_10
    :try_start_f
    const-string v7, "dexopt/baseline.profm"

    invoke-virtual {v2, v3, v7}, Lʻʻ/ʽ;->ﾞʻ(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_b
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_f} :catch_9

    if-eqz v3, :cond_e

    :try_start_10
    sget-object v7, Lʻʻ/ˑﹳ;->ʽ:[B

    invoke-static {v3, v13}, Lʻʻ/ˑﹳ;->ﾞᴵ(Ljava/io/InputStream;I)[B

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-static {v3, v13}, Lʻʻ/ˑﹳ;->ﾞᴵ(Ljava/io/InputStream;I)[B

    move-result-object v7

    invoke-static {v3, v7, v4, v0}, Lʻʻ/ˑﹳ;->ʼˎ(Ljava/io/FileInputStream;[B[B[Lˎʾ/ˑﹳ;)[Lˎʾ/ˑﹳ;

    move-result-object v0

    iput-object v0, v2, Lʻʻ/ʽ;->ᵔᵢ:Ljava/lang/Object;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :try_start_11
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_b
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_11} :catch_9

    move-object v0, v2

    goto :goto_17

    :catch_9
    move-exception v0

    goto :goto_13

    :catch_a
    move-exception v0

    const/4 v3, 0x7

    goto :goto_14

    :catch_b
    move-exception v0

    goto :goto_15

    :catchall_3
    move-exception v0

    move-object v4, v0

    goto :goto_11

    :cond_d
    :try_start_12
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    :goto_11
    :try_start_13
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    goto :goto_12

    :catchall_4
    move-exception v0

    :try_start_14
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_12
    throw v4

    :cond_e
    if-eqz v3, :cond_f

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_b
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_14} :catch_9

    goto :goto_16

    :goto_13
    iput-object v12, v2, Lʻʻ/ʽ;->ᵔᵢ:Ljava/lang/Object;

    invoke-interface {v5, v6, v0}, Lʻʻ/ˈ;->ˏי(ILjava/lang/Object;)V

    goto :goto_16

    :goto_14
    invoke-interface {v5, v3, v0}, Lʻʻ/ˈ;->ˏי(ILjava/lang/Object;)V

    goto :goto_16

    :goto_15
    const/16 v3, 0x9

    invoke-interface {v5, v3, v0}, Lʻʻ/ˈ;->ˏי(ILjava/lang/Object;)V

    :cond_f
    :goto_16
    move-object v0, v12

    :goto_17
    if-eqz v0, :cond_10

    move-object v2, v0

    :cond_10
    :goto_18
    iget-object v0, v2, Lʻʻ/ʽ;->ˈ:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lʻʻ/ˈ;

    iget-object v0, v2, Lʻʻ/ʽ;->ᵔᵢ:Ljava/lang/Object;

    check-cast v0, [Lˎʾ/ˑﹳ;

    iget-object v4, v2, Lʻʻ/ʽ;->ˑﹳ:Ljava/io/Serializable;

    check-cast v4, [B

    const-string v5, "This device doesn\'t support aot. Did you call deviceSupportsAotProfile()?"

    if-eqz v0, :cond_14

    if-nez v4, :cond_11

    goto :goto_1e

    :cond_11
    iget-boolean v7, v2, Lʻʻ/ʽ;->ﹳٴ:Z

    if-eqz v7, :cond_13

    :try_start_15
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_15 .. :try_end_15} :catch_c

    :try_start_16
    invoke-virtual {v7, v15}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v7, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v7, v4, v0}, Lʻʻ/ˑﹳ;->ˉˆ(Ljava/io/ByteArrayOutputStream;[B[Lˎʾ/ˑﹳ;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x5

    invoke-interface {v3, v0, v12}, Lʻʻ/ˈ;->ˏי(ILjava/lang/Object;)V

    iput-object v12, v2, Lʻʻ/ʽ;->ᵔᵢ:Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    :try_start_17
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_17 .. :try_end_17} :catch_c

    goto :goto_1e

    :catch_c
    move-exception v0

    goto :goto_1b

    :catch_d
    move-exception v0

    const/4 v4, 0x7

    goto :goto_1c

    :catchall_5
    move-exception v0

    move-object v4, v0

    goto :goto_19

    :cond_12
    :try_start_18
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, v2, Lʻʻ/ʽ;->ﾞᴵ:Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    :try_start_19
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_19 .. :try_end_19} :catch_c

    goto :goto_1d

    :goto_19
    :try_start_1a
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    goto :goto_1a

    :catchall_6
    move-exception v0

    :try_start_1b
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1a
    throw v4
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_1b .. :try_end_1b} :catch_c

    :goto_1b
    invoke-interface {v3, v6, v0}, Lʻʻ/ˈ;->ˏי(ILjava/lang/Object;)V

    goto :goto_1d

    :goto_1c
    invoke-interface {v3, v4, v0}, Lʻʻ/ˈ;->ˏי(ILjava/lang/Object;)V

    :goto_1d
    iput-object v12, v2, Lʻʻ/ʽ;->ᵔᵢ:Ljava/lang/Object;

    goto :goto_1e

    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    :goto_1e
    iget-object v0, v2, Lʻʻ/ʽ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v0, [B

    if-nez v0, :cond_15

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto/16 :goto_33

    :cond_15
    iget-boolean v3, v2, Lʻʻ/ʽ;->ﹳٴ:Z

    if-eqz v3, :cond_1b

    :try_start_1c
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_1c} :catch_11
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_10
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    :try_start_1d
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v0, v2, Lʻʻ/ʽ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_12

    :try_start_1e
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_10

    :try_start_1f
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v6
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_e

    if-eqz v6, :cond_17

    :try_start_20
    invoke-virtual {v6}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 v0, 0x200

    new-array v0, v0, [B

    :goto_1f
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_16

    const/4 v8, 0x0

    invoke-virtual {v4, v0, v8, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_c

    goto :goto_1f

    :cond_16
    const/4 v7, 0x1

    :try_start_21
    invoke-virtual {v2, v7, v12}, Lʻʻ/ʽ;->ˉʿ(ILjava/io/Serializable;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_b

    :try_start_22
    invoke-virtual {v6}, Ljava/nio/channels/FileLock;->close()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_a

    :try_start_23
    invoke-virtual {v5}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_9

    :try_start_24
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_8

    :try_start_25
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_25} :catch_f
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_e
    .catchall {:try_start_25 .. :try_end_25} :catchall_7

    iput-object v12, v2, Lʻʻ/ʽ;->ﾞᴵ:Ljava/lang/Object;

    iput-object v12, v2, Lʻʻ/ʽ;->ᵔᵢ:Ljava/lang/Object;

    move v6, v7

    goto/16 :goto_33

    :catchall_7
    move-exception v0

    goto/16 :goto_34

    :catch_e
    move-exception v0

    :goto_20
    const/4 v3, 0x7

    goto/16 :goto_2f

    :catch_f
    move-exception v0

    :goto_21
    const/4 v3, 0x6

    goto/16 :goto_31

    :catchall_8
    move-exception v0

    :goto_22
    move-object v4, v0

    goto :goto_2d

    :catchall_9
    move-exception v0

    :goto_23
    move-object v5, v0

    goto :goto_2b

    :catchall_a
    move-exception v0

    :goto_24
    move-object v6, v0

    goto :goto_29

    :catchall_b
    move-exception v0

    :goto_25
    move-object v8, v0

    goto :goto_27

    :cond_17
    const/4 v7, 0x1

    goto :goto_26

    :catchall_c
    move-exception v0

    const/4 v7, 0x1

    goto :goto_25

    :goto_26
    :try_start_26
    new-instance v0, Ljava/io/IOException;

    const-string v8, "Unable to acquire a lock on the underlying file channel."

    invoke-direct {v0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_b

    :goto_27
    if-eqz v6, :cond_18

    :try_start_27
    invoke-virtual {v6}, Ljava/nio/channels/FileLock;->close()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_d

    goto :goto_28

    :catchall_d
    move-exception v0

    :try_start_28
    invoke-virtual {v8, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_18
    :goto_28
    throw v8
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_a

    :catchall_e
    move-exception v0

    const/4 v7, 0x1

    goto :goto_24

    :goto_29
    if-eqz v5, :cond_19

    :try_start_29
    invoke-virtual {v5}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_f

    goto :goto_2a

    :catchall_f
    move-exception v0

    :try_start_2a
    invoke-virtual {v6, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_19
    :goto_2a
    throw v6
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_9

    :catchall_10
    move-exception v0

    const/4 v7, 0x1

    goto :goto_23

    :goto_2b
    :try_start_2b
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_11

    goto :goto_2c

    :catchall_11
    move-exception v0

    :try_start_2c
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2c
    throw v5
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_8

    :catchall_12
    move-exception v0

    const/4 v7, 0x1

    goto :goto_22

    :goto_2d
    :try_start_2d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_13

    goto :goto_2e

    :catchall_13
    move-exception v0

    :try_start_2e
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2e
    throw v4
    :try_end_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_2e .. :try_end_2e} :catch_f
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_7

    :catch_10
    move-exception v0

    const/4 v7, 0x1

    goto :goto_20

    :catch_11
    move-exception v0

    const/4 v7, 0x1

    goto :goto_21

    :goto_2f
    :try_start_2f
    invoke-virtual {v2, v3, v0}, Lʻʻ/ʽ;->ˉʿ(ILjava/io/Serializable;)V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_7

    :goto_30
    iput-object v12, v2, Lʻʻ/ʽ;->ﾞᴵ:Ljava/lang/Object;

    iput-object v12, v2, Lʻʻ/ʽ;->ᵔᵢ:Ljava/lang/Object;

    goto :goto_32

    :goto_31
    :try_start_30
    invoke-virtual {v2, v3, v0}, Lʻʻ/ʽ;->ˉʿ(ILjava/io/Serializable;)V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_7

    goto :goto_30

    :goto_32
    const/4 v6, 0x0

    :goto_33
    if-eqz v6, :cond_1a

    invoke-static {v10, v11}, Lʻʻ/ˑﹳ;->ˑﹳ(Landroid/content/pm/PackageInfo;Ljava/io/File;)V

    :cond_1a
    move v8, v6

    goto :goto_37

    :goto_34
    iput-object v12, v2, Lʻʻ/ʽ;->ﾞᴵ:Ljava/lang/Object;

    iput-object v12, v2, Lʻʻ/ʽ;->ᵔᵢ:Ljava/lang/Object;

    throw v0

    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_35
    invoke-virtual {v2, v13, v12}, Lʻʻ/ʽ;->ˉʿ(ILjava/io/Serializable;)V

    :goto_36
    const/4 v8, 0x0

    :goto_37
    if-eqz v8, :cond_1c

    if-eqz p3, :cond_1c

    move v9, v7

    goto :goto_38

    :cond_1c
    const/4 v9, 0x0

    :goto_38
    invoke-static {v1, v9}, Lʻʻ/ٴﹶ;->ʽ(Landroid/content/Context;Z)V

    :goto_39
    return-void

    :catch_12
    move-exception v0

    const/4 v3, 0x7

    invoke-interface {v5, v3, v0}, Lʻʻ/ˈ;->ˏי(ILjava/lang/Object;)V

    const/4 v8, 0x0

    invoke-static {v1, v8}, Lʻʻ/ٴﹶ;->ʽ(Landroid/content/Context;Z)V

    return-void
.end method

.method public static ˑﹳ(Landroid/content/pm/PackageInfo;Ljava/io/File;)V
    .locals 2

    .prologue
    new-instance v0, Ljava/io/File;

    const-string v1, "profileinstaller_profileWrittenFor_lastUpdateTime.dat"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance p1, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-wide v0, p0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return-void
.end method

.method public static יـ(Ljava/io/ByteArrayOutputStream;Lˎʾ/ˑﹳ;)V
    .locals 4

    .prologue
    iget-object p1, p1, Lˎʾ/ˑﹳ;->ˑﹳ:Ljava/lang/Object;

    check-cast p1, Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    sub-int v1, v3, v1

    invoke-static {p0, v1}, Lʻʻ/ˑﹳ;->ʻٴ(Ljava/io/ByteArrayOutputStream;I)V

    invoke-static {p0, v0}, Lʻʻ/ˑﹳ;->ʻٴ(Ljava/io/ByteArrayOutputStream;I)V

    move v1, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static ٴﹶ(Ljava/io/ByteArrayInputStream;[BI[Lˎʾ/ˑﹳ;)[Lˎʾ/ˑﹳ;
    .locals 10

    .prologue
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p0, v1, [Lˎʾ/ˑﹳ;

    return-object p0

    :cond_0
    array-length v0, p3

    if-ne p2, v0, :cond_9

    move v0, v1

    :goto_0
    if-ge v0, p2, :cond_8

    const/4 v2, 0x2

    invoke-static {p0, v2}, Lʻʻ/ˑﹳ;->ˉʿ(Ljava/io/InputStream;I)J

    invoke-static {p0, v2}, Lʻʻ/ˑﹳ;->ˉʿ(Ljava/io/InputStream;I)J

    move-result-wide v3

    long-to-int v3, v3

    new-instance v4, Ljava/lang/String;

    invoke-static {p0, v3}, Lʻʻ/ˑﹳ;->ﾞᴵ(Ljava/io/InputStream;I)[B

    move-result-object v3

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/4 v3, 0x4

    invoke-static {p0, v3}, Lʻʻ/ˑﹳ;->ˉʿ(Ljava/io/InputStream;I)J

    move-result-wide v5

    invoke-static {p0, v2}, Lʻʻ/ˑﹳ;->ˉʿ(Ljava/io/InputStream;I)J

    move-result-wide v2

    long-to-int v2, v2

    array-length v3, p3

    const/4 v7, 0x0

    if-gtz v3, :cond_1

    goto :goto_3

    :cond_1
    const-string v3, "!"

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_2

    const-string v3, ":"

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    :cond_2
    if-lez v3, :cond_3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    move-object v3, v4

    :goto_1
    move v8, v1

    :goto_2
    array-length v9, p3

    if-ge v8, v9, :cond_5

    aget-object v9, p3, v8

    iget-object v9, v9, Lˎʾ/ˑﹳ;->ʽ:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    aget-object v7, p3, v8

    goto :goto_3

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    if-eqz v7, :cond_7

    iput-wide v5, v7, Lˎʾ/ˑﹳ;->ˆʾ:J

    invoke-static {p0, v2}, Lʻʻ/ˑﹳ;->ᵎﹶ(Ljava/io/ByteArrayInputStream;I)[I

    move-result-object v3

    sget-object v4, Lʻʻ/ˑﹳ;->ᵔᵢ:[B

    invoke-static {p1, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_6

    iput v2, v7, Lˎʾ/ˑﹳ;->ﾞᴵ:I

    iput-object v3, v7, Lˎʾ/ˑﹳ;->ˈ:Ljava/lang/Object;

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    const-string p0, "Missing profile key: "

    invoke-virtual {p0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    return-object p3

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Mismatched number of dex files found in metadata"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ᵎﹶ(Ljava/io/ByteArrayInputStream;I)[I
    .locals 5

    .prologue
    new-array v0, p1, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, p1, :cond_0

    const/4 v3, 0x2

    invoke-static {p0, v3}, Lʻʻ/ˑﹳ;->ˉʿ(Ljava/io/InputStream;I)J

    move-result-wide v3

    long-to-int v3, v3

    add-int/2addr v2, v3

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static ᵔʾ(Ljava/io/ByteArrayInputStream;Ljava/lang/String;I)[Lˎʾ/ˑﹳ;
    .locals 19

    .prologue
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    new-array v0, v3, [Lˎʾ/ˑﹳ;

    return-object v0

    :cond_0
    new-array v2, v1, [Lˎʾ/ˑﹳ;

    move v4, v3

    :goto_0
    const/4 v5, 0x2

    if-ge v4, v1, :cond_1

    invoke-static {v0, v5}, Lʻʻ/ˑﹳ;->ˉʿ(Ljava/io/InputStream;I)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-static {v0, v5}, Lʻʻ/ˑﹳ;->ˉʿ(Ljava/io/InputStream;I)J

    move-result-wide v7

    long-to-int v14, v7

    const/4 v5, 0x4

    invoke-static {v0, v5}, Lʻʻ/ˑﹳ;->ˉʿ(Ljava/io/InputStream;I)J

    move-result-wide v7

    invoke-static {v0, v5}, Lʻʻ/ˑﹳ;->ˉʿ(Ljava/io/InputStream;I)J

    move-result-wide v12

    invoke-static {v0, v5}, Lʻʻ/ˑﹳ;->ˉʿ(Ljava/io/InputStream;I)J

    move-result-wide v9

    new-instance v5, Lˎʾ/ˑﹳ;

    new-instance v11, Ljava/lang/String;

    invoke-static {v0, v6}, Lʻʻ/ˑﹳ;->ﾞᴵ(Ljava/io/InputStream;I)[B

    move-result-object v6

    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v11, v6, v15}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    long-to-int v15, v7

    long-to-int v6, v9

    new-array v7, v14, [I

    new-instance v18, Ljava/util/TreeMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/TreeMap;-><init>()V

    move-object/from16 v10, p1

    move-object v9, v5

    move/from16 v16, v6

    move-object/from16 v17, v7

    invoke-direct/range {v9 .. v18}, Lˎʾ/ˑﹳ;-><init>(Ljava/lang/String;Ljava/lang/String;JIII[ILjava/util/TreeMap;)V

    aput-object v9, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_1
    if-ge v4, v1, :cond_e

    aget-object v6, v2, v4

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v7

    iget v8, v6, Lˎʾ/ˑﹳ;->ᵔᵢ:I

    iget v9, v6, Lˎʾ/ˑﹳ;->ʼˎ:I

    iget-object v10, v6, Lˎʾ/ˑﹳ;->ˑﹳ:Ljava/lang/Object;

    check-cast v10, Ljava/util/TreeMap;

    sub-int/2addr v7, v8

    move v8, v3

    :cond_2
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v11

    const/4 v12, 0x7

    if-le v11, v7, :cond_7

    invoke-static {v0, v5}, Lʻʻ/ˑﹳ;->ˉʿ(Ljava/io/InputStream;I)J

    move-result-wide v13

    long-to-int v11, v13

    add-int/2addr v8, v11

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v11, v14}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v5}, Lʻʻ/ˑﹳ;->ˉʿ(Ljava/io/InputStream;I)J

    move-result-wide v14

    long-to-int v11, v14

    :goto_2
    if-lez v11, :cond_2

    invoke-static {v0, v5}, Lʻʻ/ˑﹳ;->ˉʿ(Ljava/io/InputStream;I)J

    invoke-static {v0, v13}, Lʻʻ/ˑﹳ;->ˉʿ(Ljava/io/InputStream;I)J

    move-result-wide v14

    long-to-int v14, v14

    const/4 v15, 0x6

    if-ne v14, v15, :cond_4

    :cond_3
    :goto_3
    move v15, v3

    move/from16 v16, v4

    goto :goto_6

    :cond_4
    if-ne v14, v12, :cond_5

    goto :goto_3

    :cond_5
    :goto_4
    if-lez v14, :cond_3

    invoke-static {v0, v13}, Lʻʻ/ˑﹳ;->ˉʿ(Ljava/io/InputStream;I)J

    move v15, v3

    move/from16 v16, v4

    invoke-static {v0, v13}, Lʻʻ/ˑﹳ;->ˉʿ(Ljava/io/InputStream;I)J

    move-result-wide v3

    long-to-int v3, v3

    :goto_5
    if-lez v3, :cond_6

    invoke-static {v0, v5}, Lʻʻ/ˑﹳ;->ˉʿ(Ljava/io/InputStream;I)J

    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v14, v14, -0x1

    move v3, v15

    move/from16 v4, v16

    goto :goto_4

    :goto_6
    add-int/lit8 v11, v11, -0x1

    move v3, v15

    move/from16 v4, v16

    goto :goto_2

    :cond_7
    move v15, v3

    move/from16 v16, v4

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v3

    if-ne v3, v7, :cond_d

    iget v3, v6, Lˎʾ/ˑﹳ;->ﾞᴵ:I

    invoke-static {v0, v3}, Lʻʻ/ˑﹳ;->ᵎﹶ(Ljava/io/ByteArrayInputStream;I)[I

    move-result-object v3

    iput-object v3, v6, Lˎʾ/ˑﹳ;->ˈ:Ljava/lang/Object;

    mul-int/lit8 v3, v9, 0x2

    add-int/2addr v3, v12

    and-int/lit8 v3, v3, -0x8

    div-int/lit8 v3, v3, 0x8

    invoke-static {v0, v3}, Lʻʻ/ˑﹳ;->ﾞᴵ(Ljava/io/InputStream;I)[B

    move-result-object v3

    invoke-static {v3}, Ljava/util/BitSet;->valueOf([B)Ljava/util/BitSet;

    move-result-object v3

    move v4, v15

    :goto_7
    if-ge v4, v9, :cond_c

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_8

    move v6, v5

    goto :goto_8

    :cond_8
    move v6, v15

    :goto_8
    add-int v7, v4, v9

    invoke-virtual {v3, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-eqz v7, :cond_9

    or-int/lit8 v6, v6, 0x4

    :cond_9
    if-eqz v6, :cond_b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-nez v7, :cond_a

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :cond_a
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    or-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v10, v8, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_c
    add-int/lit8 v4, v16, 0x1

    move v3, v15

    goto/16 :goto_1

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Read too much data during profile line parse"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    return-object v2
.end method

.method public static ᵔᵢ(Ljava/io/FileInputStream;II)[B
    .locals 8

    .prologue
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    :try_start_0
    new-array v1, p2, [B

    const/16 v2, 0x800

    new-array v2, v2, [B

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v6

    if-nez v6, :cond_1

    if-ge v4, p1, :cond_1

    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-ltz v6, :cond_0

    invoke-virtual {v0, v2, v3, v6}, Ljava/util/zip/Inflater;->setInput([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int v7, p2, v5

    :try_start_1
    invoke-virtual {v0, v1, v5, v7}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v7
    :try_end_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/2addr v5, v7

    add-int/2addr v4, v6

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid zip data. Stream ended after $totalBytesRead bytes. Expected "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-ne v4, p1, :cond_3

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    return-object v1

    :cond_2
    :try_start_3
    const-string p0, "Inflater did not finish"

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Didn\'t read enough bytes during decompression. expected="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " actual="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    throw p0
.end method

.method public static ᵔﹳ(Ljava/io/ByteArrayOutputStream;Lˎʾ/ˑﹳ;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    array-length v1, v1

    invoke-static {p0, v1}, Lʻʻ/ˑﹳ;->ʻٴ(Ljava/io/ByteArrayOutputStream;I)V

    iget v1, p1, Lˎʾ/ˑﹳ;->ﾞᴵ:I

    invoke-static {p0, v1}, Lʻʻ/ˑﹳ;->ʻٴ(Ljava/io/ByteArrayOutputStream;I)V

    iget v1, p1, Lˎʾ/ˑﹳ;->ᵔᵢ:I

    int-to-long v1, v1

    const/4 v3, 0x4

    invoke-static {p0, v1, v2, v3}, Lʻʻ/ˑﹳ;->ʽﹳ(Ljava/io/ByteArrayOutputStream;JI)V

    iget-wide v1, p1, Lˎʾ/ˑﹳ;->ᵎﹶ:J

    invoke-static {p0, v1, v2, v3}, Lʻʻ/ˑﹳ;->ʽﹳ(Ljava/io/ByteArrayOutputStream;JI)V

    iget p1, p1, Lˎʾ/ˑﹳ;->ʼˎ:I

    int-to-long v1, p1

    invoke-static {p0, v1, v2, v3}, Lʻʻ/ˑﹳ;->ʽﹳ(Ljava/io/ByteArrayOutputStream;JI)V

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public static ⁱˊ([Lˎʾ/ˑﹳ;[B)[B
    .locals 8

    .prologue
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v4, p0, v2

    iget-object v5, v4, Lˎʾ/ˑﹳ;->ⁱˊ:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v4, Lˎʾ/ˑﹳ;->ʽ:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-static {v5, v6, p1}, Lʻʻ/ˑﹳ;->ˈ(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, 0x10

    iget v6, v4, Lˎʾ/ˑﹳ;->ﾞᴵ:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    iget v5, v4, Lˎʾ/ˑﹳ;->ᵔᵢ:I

    add-int/2addr v6, v5

    iget v4, v4, Lˎʾ/ˑﹳ;->ʼˎ:I

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x7

    and-int/lit8 v4, v4, -0x8

    div-int/lit8 v4, v4, 0x8

    add-int/2addr v4, v6

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    sget-object v2, Lʻʻ/ˑﹳ;->ﾞᴵ:[B

    invoke-static {p1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    array-length v2, p0

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v4, p0, v1

    iget-object v5, v4, Lˎʾ/ˑﹳ;->ⁱˊ:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v4, Lˎʾ/ˑﹳ;->ʽ:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-static {v5, v6, p1}, Lʻʻ/ˑﹳ;->ˈ(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lʻʻ/ˑﹳ;->ᵔﹳ(Ljava/io/ByteArrayOutputStream;Lˎʾ/ˑﹳ;Ljava/lang/String;)V

    invoke-static {v0, v4}, Lʻʻ/ˑﹳ;->ʼᐧ(Ljava/io/ByteArrayOutputStream;Lˎʾ/ˑﹳ;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    array-length v2, p0

    move v4, v1

    :goto_2
    if-ge v4, v2, :cond_2

    aget-object v5, p0, v4

    iget-object v6, v5, Lˎʾ/ˑﹳ;->ⁱˊ:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v5, Lˎʾ/ˑﹳ;->ʽ:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-static {v6, v7, p1}, Lʻʻ/ˑﹳ;->ˈ(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v5, v6}, Lʻʻ/ˑﹳ;->ᵔﹳ(Ljava/io/ByteArrayOutputStream;Lˎʾ/ˑﹳ;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    array-length p1, p0

    :goto_3
    if-ge v1, p1, :cond_3

    aget-object v2, p0, v1

    invoke-static {v0, v2}, Lʻʻ/ˑﹳ;->ʼᐧ(Ljava/io/ByteArrayOutputStream;Lˎʾ/ˑﹳ;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p0

    if-ne p0, v3, :cond_4

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "The bytes saved do not match expectation. actual="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " expected="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static ﹳٴ([B)[B
    .locals 3

    .prologue
    new-instance v0, Ljava/util/zip/Deflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Deflater;-><init>(I)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    new-instance v2, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v2, v1, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_3
    invoke-virtual {v2}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    :try_start_4
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    throw p0
.end method

.method public static ﹳᐧ(Ljava/io/ByteArrayOutputStream;ILˎʾ/ˑﹳ;)V
    .locals 10

    .prologue
    iget v0, p2, Lˎʾ/ˑﹳ;->ʼˎ:I

    and-int/lit8 v1, p1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    mul-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x7

    and-int/lit8 v1, v1, -0x8

    div-int/lit8 v1, v1, 0x8

    new-array v1, v1, [B

    iget-object p2, p2, Lˎʾ/ˑﹳ;->ˑﹳ:Ljava/lang/Object;

    check-cast p2, Ljava/util/TreeMap;

    invoke-virtual {p2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v6, v4

    :goto_0
    const/4 v7, 0x4

    if-gt v6, v7, :cond_0

    if-ne v6, v4, :cond_1

    :goto_1
    shl-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    and-int v7, v6, p1

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    and-int v7, v6, v2

    if-ne v7, v6, :cond_3

    mul-int v7, v5, v0

    add-int/2addr v7, v3

    div-int/lit8 v8, v7, 0x8

    aget-byte v9, v1, v8

    rem-int/lit8 v7, v7, 0x8

    shl-int v7, v4, v7

    or-int/2addr v7, v9

    int-to-byte v7, v7

    aput-byte v7, v1, v8

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public static ﾞʻ(Ljava/io/FileInputStream;[BLjava/lang/String;)[Lˎʾ/ˑﹳ;
    .locals 5

    .prologue
    sget-object v0, Lʻʻ/ˑﹳ;->ˑﹳ:[B

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lʻʻ/ˑﹳ;->ˉʿ(Ljava/io/InputStream;I)J

    move-result-wide v0

    long-to-int p1, v0

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lʻʻ/ˑﹳ;->ˉʿ(Ljava/io/InputStream;I)J

    move-result-wide v1

    invoke-static {p0, v0}, Lʻʻ/ˑﹳ;->ˉʿ(Ljava/io/InputStream;I)J

    move-result-wide v3

    long-to-int v0, v3

    long-to-int v1, v1

    invoke-static {p0, v0, v1}, Lʻʻ/ˑﹳ;->ᵔᵢ(Ljava/io/FileInputStream;II)[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    if-gtz p0, :cond_0

    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_0
    invoke-static {p0, p2, p1}, Lʻʻ/ˑﹳ;->ᵔʾ(Ljava/io/ByteArrayInputStream;Ljava/lang/String;I)[Lˎʾ/ˑﹳ;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Content found after the end of file"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unsupported version"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ﾞᴵ(Ljava/io/InputStream;I)[B
    .locals 3

    .prologue
    new-array v0, p1, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    sub-int v2, p1, v1

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ltz v2, :cond_0

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    const-string p0, "Not enough bytes to read: "

    invoke-static {p1, p0}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-object v0
.end method
