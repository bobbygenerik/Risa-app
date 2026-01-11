.class public final Lʾᐧ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ﹳٴ:[B


# direct methods
.method public constructor <init>(I[B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [B

    iput-object v0, p0, Lʾᐧ/ﹳٴ;->ﹳٴ:[B

    const/4 v1, 0x0

    invoke-static {p2, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static ﹳٴ([B)Lʾᐧ/ﹳٴ;
    .locals 2

    .prologue
    if-eqz p0, :cond_1

    array-length v0, p0

    array-length v1, p0

    if-le v0, v1, :cond_0

    array-length v0, p0

    :cond_0
    new-instance v1, Lʾᐧ/ﹳٴ;

    invoke-direct {v1, v0, p0}, Lʾᐧ/ﹳٴ;-><init>(I[B)V

    return-object v1

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "data must be non-null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    instance-of v0, p1, Lʾᐧ/ﹳٴ;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lʾᐧ/ﹳٴ;

    iget-object p1, p1, Lʾᐧ/ﹳٴ;->ﹳٴ:[B

    iget-object v0, p0, Lʾᐧ/ﹳٴ;->ﹳٴ:[B

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lʾᐧ/ﹳٴ;->ﹳٴ:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bytes("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lʾᐧ/ﹳٴ;->ﹳٴ:[B

    invoke-static {v1}, Lʼ/ᵎﹶ;->ﹳᐧ([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ⁱˊ()[B
    .locals 4

    iget-object v0, p0, Lʾᐧ/ﹳٴ;->ﹳٴ:[B

    array-length v1, v0

    new-array v1, v1, [B

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method
