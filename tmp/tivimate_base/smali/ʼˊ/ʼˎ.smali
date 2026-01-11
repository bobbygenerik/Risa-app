.class public final Lʼˊ/ʼˎ;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public ʽʽ:Ljava/io/IOException;

.field public ʾˋ:Ljava/io/InputStream;

.field public final ˈٴ:[B

.field public final ᴵˊ:Lˆי/ﾞʻ;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lʼˊ/ʼˎ;->ʽʽ:Ljava/io/IOException;

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lʼˊ/ʼˎ;->ˈٴ:[B

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lʼˊ/ʼˎ;->ʾˋ:Ljava/io/InputStream;

    new-instance p1, Lˆי/ﾞʻ;

    invoke-direct {p1, p2}, Lˆי/ﾞʻ;-><init>(I)V

    iput-object p1, p0, Lʼˊ/ʼˎ;->ᴵˊ:Lˆי/ﾞʻ;

    return-void
.end method


# virtual methods
.method public final available()I
    .locals 2

    .prologue
    iget-object v0, p0, Lʼˊ/ʼˎ;->ʾˋ:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lʼˊ/ʼˎ;->ʽʽ:Ljava/io/IOException;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0

    :cond_0
    throw v1

    :cond_1
    new-instance v0, Lorg/tukaani/xz/XZIOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final close()V
    .locals 2

    .prologue
    iget-object v0, p0, Lʼˊ/ʼˎ;->ʾˋ:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lʼˊ/ʼˎ;->ʾˋ:Ljava/io/InputStream;

    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lʼˊ/ʼˎ;->ʾˋ:Ljava/io/InputStream;

    throw v0

    :cond_0
    return-void
.end method

.method public final read()I
    .locals 4

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Lʼˊ/ʼˎ;->ˈٴ:[B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lʼˊ/ʼˎ;->read([BII)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    return v3

    :cond_0
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final read([BII)I
    .locals 8

    .prologue
    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lʼˊ/ʼˎ;->ʾˋ:Ljava/io/InputStream;

    if-eqz v1, :cond_6

    iget-object v2, p0, Lʼˊ/ʼˎ;->ʽʽ:Ljava/io/IOException;

    if-nez v2, :cond_5

    :try_start_0
    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, -0x1

    if-ne p3, v1, :cond_1

    return v1

    :cond_1
    iget-object v1, p0, Lʼˊ/ʼˎ;->ᴵˊ:Lˆי/ﾞʻ;

    iget-object v2, v1, Lˆי/ﾞʻ;->ⁱˊ:[B

    iget v1, v1, Lˆי/ﾞʻ;->ﹳٴ:I

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_2

    add-int v5, p2, v4

    aget-byte v6, p1, v5

    aget-byte v7, v2, v4

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ge v4, p3, :cond_3

    add-int v3, p2, v4

    aget-byte v5, p1, v3

    sub-int v6, v3, v1

    aget-byte v6, p1, v6

    add-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    if-lt p3, v1, :cond_4

    add-int/2addr p2, p3

    sub-int/2addr p2, v1

    invoke-static {p1, p2, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return p3

    :cond_4
    sub-int/2addr v1, v4

    invoke-static {v2, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, p2, v2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return p3

    :catch_0
    move-exception p1

    iput-object p1, p0, Lʼˊ/ʼˎ;->ʽʽ:Ljava/io/IOException;

    throw p1

    :cond_5
    throw v2

    :cond_6
    new-instance p1, Lorg/tukaani/xz/XZIOException;

    const-string p2, "Stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
