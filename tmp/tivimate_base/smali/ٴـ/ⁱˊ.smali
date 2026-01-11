.class public abstract Lٴـ/ⁱˊ;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public final ʽʽ:[B

.field public final ʾˋ:Lٴـ/ˆʾ;

.field public final ˈٴ:[B

.field public final ᴵˊ:Lˊⁱ/ʽ;


# direct methods
.method public constructor <init>(Lٴـ/ˆʾ;Lـʽ/ﾞᴵ;[CIZ)V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lٴـ/ⁱˊ;->ˈٴ:[B

    iput-object p1, p0, Lٴـ/ⁱˊ;->ʾˋ:Lٴـ/ˆʾ;

    invoke-virtual {p0, p2, p3, p5}, Lٴـ/ⁱˊ;->ᵎﹶ(Lـʽ/ﾞᴵ;[CZ)Lˊⁱ/ʽ;

    move-result-object p1

    iput-object p1, p0, Lٴـ/ⁱˊ;->ᴵˊ:Lˊⁱ/ʽ;

    invoke-static {p2}, Lᴵﾞ/ﹳٴ;->ˑﹳ(Lـʽ/ⁱˊ;)I

    move-result p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lʻٴ/ᵎﹶ;->ﹳٴ(II)Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, p4, [B

    iput-object p1, p0, Lٴـ/ⁱˊ;->ʽʽ:[B

    :cond_0
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lٴـ/ⁱˊ;->ʾˋ:Lٴـ/ˆʾ;

    invoke-virtual {v0}, Lٴـ/ˆʾ;->close()V

    return-void
.end method

.method public read()I
    .locals 3

    .prologue
    iget-object v0, p0, Lٴـ/ⁱˊ;->ˈٴ:[B

    invoke-virtual {p0, v0}, Lٴـ/ⁱˊ;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lٴـ/ⁱˊ;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 2

    .prologue
    iget-object v0, p0, Lٴـ/ⁱˊ;->ʾˋ:Lٴـ/ˆʾ;

    invoke-static {v0, p1, p2, p3}, Lᴵﾞ/ﹳٴ;->ʼˎ(Ljava/io/InputStream;[BII)I

    move-result p3

    if-lez p3, :cond_1

    iget-object v0, p0, Lٴـ/ⁱˊ;->ʽʽ:[B

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v0, p0, Lٴـ/ⁱˊ;->ᴵˊ:Lˊⁱ/ʽ;

    invoke-interface {v0, p1, p2, p3}, Lˊⁱ/ʽ;->ᵔʾ([BII)I

    :cond_1
    return p3
.end method

.method public ʽ(Ljava/io/InputStream;I)V
    .locals 0

    return-void
.end method

.method public final ˉˆ([B)V
    .locals 7

    .prologue
    iget-object v0, p0, Lٴـ/ⁱˊ;->ʾˋ:Lٴـ/ˆʾ;

    iget-object v0, v0, Lٴـ/ˆʾ;->ʾˋ:Ljava/io/PushbackInputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    array-length v3, p1

    if-eq v1, v3, :cond_3

    array-length v3, p1

    sub-int/2addr v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    array-length v6, p1

    if-ge v1, v6, :cond_1

    if-eq v4, v2, :cond_1

    const/16 v6, 0xf

    if-ge v5, v6, :cond_1

    invoke-virtual {v0, p1, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    add-int/2addr v4, v6

    if-lez v4, :cond_0

    add-int/2addr v1, v4

    sub-int/2addr v3, v4

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    array-length p1, p1

    if-ne v1, p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Cannot read fully into byte buffer"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void

    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unexpected EOF reached when trying to read stream"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract ᵎﹶ(Lـʽ/ﾞᴵ;[CZ)Lˊⁱ/ʽ;
.end method
