.class public final Lיٴ/ٴﹶ;
.super Landroidx/datastore/preferences/protobuf/ˆʾ;
.source "SourceFile"


# instance fields
.field public final synthetic ʽ:I


# direct methods
.method public constructor <init>([BII)V
    .locals 1

    .prologue
    iput p3, p0, Lיٴ/ٴﹶ;->ʽ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length p3, p1

    const/16 v0, 0x20

    if-ne p3, v0, :cond_0

    invoke-static {p1}, Lיٴ/ˆʾ;->ˑﹳ([B)[I

    move-result-object p1

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/ˆʾ;->ⁱˊ:Ljava/lang/Object;

    iput p2, p0, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﹳٴ:I

    return-void

    :cond_0
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "The key length in bytes must be 32."

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final ʼˎ()I
    .locals 1

    .prologue
    iget v0, p0, Lיٴ/ٴﹶ;->ʽ:I

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x18

    return v0

    :pswitch_0
    const/16 v0, 0xc

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ʽ([II)[I
    .locals 8

    .prologue
    iget v0, p0, Lיٴ/ٴﹶ;->ʽ:I

    const/4 v1, 0x1

    const/16 v2, 0xd

    const/16 v3, 0xc

    const/16 v4, 0x8

    const/16 v5, 0x10

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_0

    array-length v0, p1

    const/4 v7, 0x6

    if-ne v0, v7, :cond_0

    new-array v0, v5, [I

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/ˆʾ;->ⁱˊ:Ljava/lang/Object;

    check-cast v1, [I

    invoke-static {v1, p1}, Lיٴ/ˆʾ;->ⁱˊ([I[I)[I

    move-result-object v1

    sget-object v5, Lיٴ/ˆʾ;->ﹳٴ:[I

    array-length v7, v5

    invoke-static {v5, v6, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v5

    invoke-static {v1, v6, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput p2, v0, v3

    aput v6, v0, v2

    const/4 p2, 0x4

    aget p2, p1, p2

    const/16 v1, 0xe

    aput p2, v0, v1

    const/4 p2, 0x5

    aget p1, p1, p2

    const/16 p2, 0xf

    aput p1, v0, p2

    return-object v0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x20

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v6

    const-string p1, "XChaCha20 uses 192-bit nonces, but got a %d-bit nonce"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    array-length v0, p1

    const/4 v7, 0x3

    if-ne v0, v7, :cond_1

    new-array v0, v5, [I

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/ˆʾ;->ⁱˊ:Ljava/lang/Object;

    check-cast v1, [I

    sget-object v5, Lיٴ/ˆʾ;->ﹳٴ:[I

    array-length v7, v5

    invoke-static {v5, v6, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v5

    invoke-static {v1, v6, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput p2, v0, v3

    array-length p2, p1

    invoke-static {p1, v6, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x20

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v6

    const-string p1, "ChaCha20 uses 96-bit nonces, but got a %d-bit nonce"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
