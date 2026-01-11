.class public Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;
.super Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;
.source "SourceFile"


# instance fields
.field public final ˈٴ:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->ʾˋ:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;->ˈٴ:[B

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    if-ne p1, p0, :cond_0

    goto :goto_2

    :cond_0
    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;->size()I

    move-result v0

    move-object v1, p1

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->size()I

    move-result v1

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;->size()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    if-eqz v0, :cond_9

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->ʾˋ:I

    iget v1, p1, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->ʾˋ:I

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    if-eq v0, v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;->size()I

    move-result v1

    if-gt v0, v1, :cond_8

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;->size()I

    move-result v1

    if-gt v0, v1, :cond_7

    iget-object v1, p1, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;->ˈٴ:[B

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;->ᵎﹶ()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;->ᵎﹶ()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;->ᵎﹶ()I

    move-result p1

    :goto_0
    if-ge v0, v2, :cond_6

    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;->ˈٴ:[B

    aget-byte v3, v3, v0

    aget-byte v4, v1, p1

    if-eq v3, v4, :cond_5

    :goto_1
    const/4 p1, 0x0

    return p1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    const/4 p1, 0x1

    return p1

    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Ran off end of other: 0, "

    const-string v3, ", "

    invoke-static {v0, v2, v3}, Landroid/support/v4/media/session/ﹳٴ;->ᵔʾ(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Length too large: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Landroidx/datastore/preferences/protobuf/ˈ;

    invoke-direct {v0, p0}, Landroidx/datastore/preferences/protobuf/ˈ;-><init>(Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;->ˈٴ:[B

    array-length v0, v0

    return v0
.end method

.method public ˑﹳ(I[B)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;->ˈٴ:[B

    invoke-static {v1, v0, p2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public ᵎﹶ()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ᵔᵢ(I)B
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;->ˈٴ:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public ﹳٴ(I)B
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;->ˈٴ:[B

    aget-byte p1, v0, p1

    return p1
.end method
