.class public final Lcom/google/crypto/tink/shaded/protobuf/ﾞᴵ;
.super Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;
.source "SourceFile"


# instance fields
.field public final ˊʻ:I

.field public final ᴵᵔ:I


# direct methods
.method public constructor <init>([BII)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;-><init>([B)V

    add-int v0, p2, p3

    array-length p1, p1

    invoke-static {p2, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->ⁱˊ(III)I

    iput p2, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞᴵ;->ᴵᵔ:I

    iput p3, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞᴵ;->ˊʻ:I

    return-void
.end method


# virtual methods
.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞᴵ;->ˊʻ:I

    return v0
.end method

.method public final ˑﹳ(I[B)V
    .locals 3

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;->ˈٴ:[B

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞᴵ;->ᴵᵔ:I

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final ᵎﹶ()I
    .locals 1

    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞᴵ;->ᴵᵔ:I

    return v0
.end method

.method public final ᵔᵢ(I)B
    .locals 1

    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞᴵ;->ᴵᵔ:I

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;->ˈٴ:[B

    aget-byte p1, p1, v0

    return p1
.end method

.method public final ﹳٴ(I)B
    .locals 4

    .prologue
    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞᴵ;->ˊʻ:I

    sub-int v0, v1, v0

    or-int/2addr v0, p1

    if-gez v0, :cond_1

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Index < 0: "

    invoke-static {p1, v1}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v2, "Index > length: "

    const-string v3, ", "

    invoke-static {p1, v1, v2, v3}, Landroid/support/v4/media/session/ﹳٴ;->ٴﹶ(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ﾞᴵ;->ᴵᵔ:I

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;->ˈٴ:[B

    aget-byte p1, p1, v0

    return p1
.end method
