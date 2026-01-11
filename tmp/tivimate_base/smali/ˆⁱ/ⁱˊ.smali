.class public final Lˆⁱ/ⁱˊ;
.super Lʽⁱ/ᵎﹶ;
.source "SourceFile"


# instance fields
.field public final synthetic ᴵˊ:I


# direct methods
.method public synthetic constructor <init>(Lᵔﹶ/ˊʻ;I)V
    .locals 0

    iput p2, p0, Lˆⁱ/ⁱˊ;->ᴵˊ:I

    invoke-direct {p0, p1}, Lʽⁱ/ᵎﹶ;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static ﹶˎ(Lˆⁱ/ᵎﹶ;)V
    .locals 7

    .prologue
    iget-object v0, p0, Lˆⁱ/ᵎﹶ;->ʽʽ:Ljava/lang/String;

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "."

    invoke-direct {v2, v0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit8 v0, v0, 0x28

    add-int/2addr v0, v3

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    const/16 v4, 0x7f

    if-lez v3, :cond_1

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    if-ge v3, v4, :cond_1

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    div-int/lit8 v3, v3, 0x7

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    rem-int/lit8 v5, v5, 0x7

    const/4 v6, 0x1

    if-lez v5, :cond_2

    move v5, v6

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    add-int/2addr v3, v5

    sub-int/2addr v3, v6

    :goto_2
    if-ltz v3, :cond_0

    mul-int/lit8 v5, v3, 0x7

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Number;->byteValue()B

    move-result v5

    and-int/2addr v5, v4

    int-to-byte v5, v5

    if-lez v3, :cond_3

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    :cond_3
    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lˆⁱ/ᵔᵢ;->ᴵˊ:[B

    return-void
.end method


# virtual methods
.method public final ʻʿ(Lˎᵔ/ⁱˊ;Lﾞʽ/ⁱˊ;)V
    .locals 1

    .prologue
    iget v0, p0, Lˆⁱ/ⁱˊ;->ᴵˊ:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lˑᐧ/ⁱˊ;

    iget-object p1, p1, Lˑᐧ/ʽ;->ᴵˊ:[B

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    return-void

    :pswitch_0
    check-cast p1, Lˑᐧ/ﹳٴ;

    iget v0, p1, Lˑᐧ/ﹳٴ;->ʽʽ:I

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    iget-object p1, p1, Lˑᐧ/ʽ;->ᴵˊ:[B

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    return-void

    :pswitch_1
    check-cast p1, Lˈˑ/ʽ;

    iget-object v0, p1, Lˈˑ/ʽ;->ʽʽ:[B

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lˆⁱ/ⁱˊ;->ʽˑ(Lˈˑ/ʽ;)V

    :cond_0
    iget-object p1, p1, Lˈˑ/ʽ;->ʽʽ:[B

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    return-void

    :pswitch_2
    check-cast p1, Lˈˑ/ⁱˊ;

    iget-object v0, p1, Lˈˑ/ⁱˊ;->ʽʽ:[B

    if-eqz v0, :cond_1

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lˈˑ/ⁱˊ;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˎᵔ/ⁱˊ;

    invoke-virtual {p2, v0}, Lﾞʽ/ⁱˊ;->ʽ(Lˎᵔ/ⁱˊ;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    :pswitch_3
    check-cast p1, Lˈˑ/ﹳٴ;

    iget-object v0, p1, Lˈˑ/ﹳٴ;->ʽʽ:[B

    if-eqz v0, :cond_3

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lˈˑ/ﹳٴ;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˎᵔ/ⁱˊ;

    invoke-virtual {p2, v0}, Lﾞʽ/ⁱˊ;->ʽ(Lˎᵔ/ⁱˊ;)V

    goto :goto_2

    :cond_4
    :goto_3
    return-void

    :pswitch_4
    check-cast p1, Lˆⁱ/ᵎﹶ;

    iget-object v0, p1, Lˆⁱ/ᵔᵢ;->ᴵˊ:[B

    if-nez v0, :cond_5

    invoke-static {p1}, Lˆⁱ/ⁱˊ;->ﹶˎ(Lˆⁱ/ᵎﹶ;)V

    :cond_5
    iget-object p1, p1, Lˆⁱ/ᵔᵢ;->ᴵˊ:[B

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    return-void

    :pswitch_5
    check-cast p1, Lˆⁱ/ﾞᴵ;

    return-void

    :pswitch_6
    check-cast p1, Lˆⁱ/ˑﹳ;

    iget-object p1, p1, Lˆⁱ/ᵔᵢ;->ᴵˊ:[B

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    return-void

    :pswitch_7
    check-cast p1, Lˆⁱ/ˈ;

    iget-object v0, p1, Lˆⁱ/ᵔᵢ;->ᴵˊ:[B

    if-nez v0, :cond_6

    iget-object v0, p1, Lˆⁱ/ˈ;->ʽʽ:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p1, Lˆⁱ/ᵔᵢ;->ᴵˊ:[B

    :cond_6
    iget-object p1, p1, Lˆⁱ/ᵔᵢ;->ᴵˊ:[B

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    return-void

    :pswitch_8
    check-cast p1, Lˆⁱ/ʽ;

    iget-boolean p1, p1, Lˆⁱ/ʽ;->ʽʽ:Z

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public ʽˑ(Lˈˑ/ʽ;)V
    .locals 5

    .prologue
    iget-object v0, p1, Lˈˑ/ʽ;->ᴵˊ:Lˎᵔ/ⁱˊ;

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Lﾞʽ/ⁱˊ;

    iget-object v3, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v3, Lᵔﹶ/ˊʻ;

    invoke-direct {v2, v3, v1}, Lﾞʽ/ⁱˊ;-><init>(Lᵔﹶ/ˊʻ;Ljava/io/ByteArrayOutputStream;)V

    :try_start_0
    iget-boolean v4, p1, Lˈˑ/ʽ;->ᴵᵔ:Z

    if-eqz v4, :cond_0

    invoke-virtual {v2, v0}, Lﾞʽ/ⁱˊ;->ʽ(Lˎᵔ/ⁱˊ;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v4, v0, Lˎᵔ/ⁱˊ;->ʾˋ:Lˎᵔ/ﾞᴵ;

    invoke-virtual {v4, v3}, Lˎᵔ/ﾞᴵ;->ˈ(Lᵔﹶ/ˊʻ;)Lʽⁱ/ᵎﹶ;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lʽⁱ/ᵎﹶ;->ʻʿ(Lˎᵔ/ⁱˊ;Lﾞʽ/ⁱˊ;)V

    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p1, Lˈˑ/ʽ;->ʽʽ:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    return-void

    :goto_1
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v0
.end method

.method public final ﹶ(Lˎᵔ/ⁱˊ;)I
    .locals 4

    .prologue
    iget v0, p0, Lˆⁱ/ⁱˊ;->ᴵˊ:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lˑᐧ/ⁱˊ;

    iget-object p1, p1, Lˑᐧ/ʽ;->ᴵˊ:[B

    array-length p1, p1

    return p1

    :pswitch_0
    check-cast p1, Lˑᐧ/ﹳٴ;

    iget-object p1, p1, Lˑᐧ/ʽ;->ᴵˊ:[B

    array-length p1, p1

    add-int/lit8 p1, p1, 0x1

    return p1

    :pswitch_1
    check-cast p1, Lˈˑ/ʽ;

    iget-object v0, p1, Lˈˑ/ʽ;->ʽʽ:[B

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lˆⁱ/ⁱˊ;->ʽˑ(Lˈˑ/ʽ;)V

    :cond_0
    iget-object p1, p1, Lˈˑ/ʽ;->ʽʽ:[B

    array-length p1, p1

    return p1

    :pswitch_2
    check-cast p1, Lˈˑ/ⁱˊ;

    iget-object v0, p1, Lˈˑ/ⁱˊ;->ʽʽ:[B

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Lﾞʽ/ⁱˊ;

    iget-object v2, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Lᵔﹶ/ˊʻ;

    invoke-direct {v1, v2, v0}, Lﾞʽ/ⁱˊ;-><init>(Lᵔﹶ/ˊʻ;Ljava/io/ByteArrayOutputStream;)V

    invoke-virtual {p1}, Lˈˑ/ⁱˊ;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lˎᵔ/ⁱˊ;

    invoke-virtual {v1, v3}, Lﾞʽ/ⁱˊ;->ʽ(Lˎᵔ/ⁱˊ;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p1, Lˈˑ/ⁱˊ;->ʽʽ:[B

    :cond_2
    iget-object p1, p1, Lˈˑ/ⁱˊ;->ʽʽ:[B

    array-length p1, p1

    return p1

    :pswitch_3
    check-cast p1, Lˈˑ/ﹳٴ;

    iget-object v0, p1, Lˈˑ/ﹳٴ;->ʽʽ:[B

    if-nez v0, :cond_4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Lﾞʽ/ⁱˊ;

    iget-object v2, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Lᵔﹶ/ˊʻ;

    invoke-direct {v1, v2, v0}, Lﾞʽ/ⁱˊ;-><init>(Lᵔﹶ/ˊʻ;Ljava/io/ByteArrayOutputStream;)V

    invoke-virtual {p1}, Lˈˑ/ﹳٴ;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lˎᵔ/ⁱˊ;

    invoke-virtual {v1, v3}, Lﾞʽ/ⁱˊ;->ʽ(Lˎᵔ/ⁱˊ;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p1, Lˈˑ/ﹳٴ;->ʽʽ:[B

    :cond_4
    iget-object p1, p1, Lˈˑ/ﹳٴ;->ʽʽ:[B

    array-length p1, p1

    return p1

    :pswitch_4
    check-cast p1, Lˆⁱ/ᵎﹶ;

    iget-object v0, p1, Lˆⁱ/ᵔᵢ;->ᴵˊ:[B

    if-nez v0, :cond_5

    invoke-static {p1}, Lˆⁱ/ⁱˊ;->ﹶˎ(Lˆⁱ/ᵎﹶ;)V

    :cond_5
    iget-object p1, p1, Lˆⁱ/ᵔᵢ;->ᴵˊ:[B

    array-length p1, p1

    return p1

    :pswitch_5
    check-cast p1, Lˆⁱ/ﾞᴵ;

    const/4 p1, 0x0

    return p1

    :pswitch_6
    check-cast p1, Lˆⁱ/ˑﹳ;

    iget-object p1, p1, Lˆⁱ/ᵔᵢ;->ᴵˊ:[B

    array-length p1, p1

    return p1

    :pswitch_7
    check-cast p1, Lˆⁱ/ˈ;

    iget-object v0, p1, Lˆⁱ/ᵔᵢ;->ᴵˊ:[B

    if-nez v0, :cond_6

    iget-object v0, p1, Lˆⁱ/ˈ;->ʽʽ:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p1, Lˆⁱ/ᵔᵢ;->ᴵˊ:[B

    :cond_6
    iget-object p1, p1, Lˆⁱ/ᵔᵢ;->ᴵˊ:[B

    array-length p1, p1

    return p1

    :pswitch_8
    check-cast p1, Lˆⁱ/ʽ;

    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
