.class public final Lﹶˆ/ﾞᴵ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lٴʻ/ﹳٴ;


# instance fields
.field public final ʽ:I

.field public final ˈ:[B

.field public final ⁱˊ:Lﹶˆ/ᵔʾ;

.field public final ﹳٴ:Lﹶˆ/ﹳٴ;


# direct methods
.method public constructor <init>(Lﹶˆ/ﹳٴ;Lﹶˆ/ᵔʾ;I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹶˆ/ﾞᴵ;->ﹳٴ:Lﹶˆ/ﹳٴ;

    iput-object p2, p0, Lﹶˆ/ﾞᴵ;->ⁱˊ:Lﹶˆ/ᵔʾ;

    iput p3, p0, Lﹶˆ/ﾞᴵ;->ʽ:I

    iput-object p4, p0, Lﹶˆ/ﾞᴵ;->ˈ:[B

    return-void
.end method


# virtual methods
.method public final ⁱˊ([B[B)[B
    .locals 12

    .prologue
    array-length v0, p1

    iget-object v1, p0, Lﹶˆ/ﾞᴵ;->ˈ:[B

    array-length v2, v1

    iget v3, p0, Lﹶˆ/ﾞᴵ;->ʽ:I

    add-int/2addr v2, v3

    if-lt v0, v2, :cond_4

    invoke-static {v1, p1}, Lﹳʽ/ᵔי;->ⁱˊ([B[B)Z

    move-result v0

    if-eqz v0, :cond_3

    array-length v0, v1

    array-length v1, p1

    sub-int/2addr v1, v3

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    array-length v0, p1

    sub-int/2addr v0, v3

    array-length v1, p1

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    new-array p2, v0, [B

    :cond_0
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    array-length v3, p2

    int-to-long v3, v3

    const-wide/16 v6, 0x8

    mul-long/2addr v3, v6

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [[B

    aput-object p2, v2, v0

    const/4 p2, 0x1

    aput-object v5, v2, p2

    const/4 p2, 0x2

    aput-object v1, v2, p2

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/י;->ﾞʻ([[B)[B

    move-result-object p2

    iget-object v1, p0, Lﹶˆ/ﾞᴵ;->ⁱˊ:Lﹶˆ/ᵔʾ;

    invoke-virtual {v1, p2}, Lﹶˆ/ᵔʾ;->ﹳٴ([B)[B

    move-result-object p2

    invoke-static {p2, p1}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result p1

    if-eqz p1, :cond_2

    array-length p1, v5

    iget-object v4, p0, Lﹶˆ/ﾞᴵ;->ﹳٴ:Lﹶˆ/ﹳٴ;

    iget p2, v4, Lﹶˆ/ﹳٴ;->ⁱˊ:I

    if-lt p1, p2, :cond_1

    new-array v10, p2, [B

    invoke-static {v5, v0, v10, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, v5

    iget v6, v4, Lﹶˆ/ﹳٴ;->ⁱˊ:I

    sub-int/2addr p1, v6

    new-array v8, p1, [B

    array-length p1, v5

    sub-int v7, p1, v6

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Lﹶˆ/ﹳٴ;->ﹳٴ([BII[BI[BZ)V

    return-object v8

    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "ciphertext too short"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "invalid MAC"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Decryption failed (OutputPrefix mismatch)."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Decryption failed (ciphertext too short)."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ﹳٴ([B[B)[B
    .locals 9

    .prologue
    array-length v0, p1

    iget-object v1, p0, Lﹶˆ/ﾞᴵ;->ﹳٴ:Lﹶˆ/ﹳٴ;

    iget v2, v1, Lﹶˆ/ﹳٴ;->ⁱˊ:I

    const v3, 0x7fffffff

    sub-int/2addr v3, v2

    if-gt v0, v3, :cond_1

    array-length v0, p1

    add-int/2addr v0, v2

    new-array v5, v0, [B

    invoke-static {v2}, Lﹳʽ/ٴᵢ;->ﹳٴ(I)[B

    move-result-object v7

    const/4 v0, 0x0

    invoke-static {v7, v0, v5, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, p1

    iget v6, v1, Lﹶˆ/ﹳٴ;->ⁱˊ:I

    const/4 v8, 0x1

    const/4 v3, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lﹶˆ/ﹳٴ;->ﹳٴ([BII[BI[BZ)V

    if-nez p2, :cond_0

    new-array p2, v0, [B

    :cond_0
    const/16 p1, 0x8

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    array-length v2, p2

    int-to-long v2, v2

    const-wide/16 v6, 0x8

    mul-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const/4 v1, 0x3

    new-array v2, v1, [[B

    aput-object p2, v2, v0

    const/4 p2, 0x1

    aput-object v5, v2, p2

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/י;->ﾞʻ([[B)[B

    move-result-object p1

    iget-object v2, p0, Lﹶˆ/ﾞᴵ;->ⁱˊ:Lﹶˆ/ᵔʾ;

    invoke-virtual {v2, p1}, Lﹶˆ/ᵔʾ;->ﹳٴ([B)[B

    move-result-object p1

    new-array v1, v1, [[B

    iget-object v2, p0, Lﹶˆ/ﾞᴵ;->ˈ:[B

    aput-object v2, v1, v0

    aput-object v5, v1, p2

    aput-object p1, v1, v3

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/י;->ﾞʻ([[B)[B

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "plaintext length can not exceed "

    invoke-static {v3, p2}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
