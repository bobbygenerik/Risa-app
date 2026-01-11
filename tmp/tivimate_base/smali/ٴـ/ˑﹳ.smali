.class public final Lٴـ/ˑﹳ;
.super Lٴـ/ⁱˊ;
.source "SourceFile"


# instance fields
.field public final synthetic ᴵᵔ:I


# direct methods
.method public synthetic constructor <init>(Lٴـ/ˆʾ;Lـʽ/ﾞᴵ;[CIZI)V
    .locals 0

    iput p6, p0, Lٴـ/ˑﹳ;->ᴵᵔ:I

    invoke-direct/range {p0 .. p5}, Lٴـ/ⁱˊ;-><init>(Lٴـ/ˆʾ;Lـʽ/ﾞᴵ;[CIZ)V

    return-void
.end method


# virtual methods
.method public final ᵎﹶ(Lـʽ/ﾞᴵ;[CZ)Lˊⁱ/ʽ;
    .locals 11

    .prologue
    iget v0, p0, Lٴـ/ˑﹳ;->ᴵᵔ:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lˊⁱ/ˑﹳ;

    iget-wide v1, p1, Lـʽ/ⁱˊ;->ٴᵢ:J

    iget-wide v3, p1, Lـʽ/ⁱˊ;->ˊʻ:J

    const/16 p1, 0xc

    new-array v5, p1, [B

    invoke-virtual {p0, v5}, Lٴـ/ⁱˊ;->ˉˆ([B)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v0, v6, v7}, Lˊⁱ/ˑﹳ;-><init>(IZ)V

    new-instance v6, Lﹶᵎ/ⁱˊ;

    invoke-direct {v6}, Lﹶᵎ/ⁱˊ;-><init>()V

    iput-object v6, v0, Lˊⁱ/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    const-string v7, "Wrong password!"

    if-eqz p2, :cond_4

    array-length v8, p2

    if-lez v8, :cond_4

    invoke-virtual {v6, p2, p3}, Lﹶᵎ/ⁱˊ;->ⁱˊ([CZ)V

    const/4 p2, 0x0

    aget-byte p3, v5, p2

    :cond_0
    :goto_0
    if-ge p2, p1, :cond_3

    add-int/lit8 p2, p2, 0x1

    if-ne p2, p1, :cond_2

    invoke-virtual {v6}, Lﹶᵎ/ⁱˊ;->ﹳٴ()B

    move-result v8

    xor-int/2addr v8, p3

    int-to-byte v8, v8

    const/16 v9, 0x18

    shr-long v9, v1, v9

    long-to-int v9, v9

    int-to-byte v9, v9

    if-eq v8, v9, :cond_2

    const/16 v9, 0x8

    shr-long v9, v3, v9

    long-to-int v9, v9

    int-to-byte v9, v9

    if-ne v8, v9, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p1, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    invoke-virtual {v6}, Lﹶᵎ/ⁱˊ;->ﹳٴ()B

    move-result v8

    xor-int/2addr v8, p3

    int-to-byte v8, v8

    invoke-virtual {v6, v8}, Lﹶᵎ/ⁱˊ;->ʽ(B)V

    if-eq p2, p1, :cond_0

    aget-byte p3, v5, p2

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p1, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    new-instance p1, Lˋⁱ/ﾞᴵ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
