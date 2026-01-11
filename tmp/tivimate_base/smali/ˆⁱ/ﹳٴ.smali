.class public final Lˆⁱ/ﹳٴ;
.super Lʽⁱ/ᵎﹶ;
.source "SourceFile"


# instance fields
.field public final synthetic ᴵˊ:I


# direct methods
.method public synthetic constructor <init>(Lﹳˋ/ʼˎ;I)V
    .locals 0

    iput p2, p0, Lˆⁱ/ﹳٴ;->ᴵˊ:I

    invoke-direct {p0, p1}, Lʽⁱ/ᵎﹶ;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final ᐧˎ(Lˎᵔ/ﾞᴵ;[B)Lˎᵔ/ⁱˊ;
    .locals 9

    .prologue
    iget v0, p0, Lˆⁱ/ﹳٴ;->ᴵˊ:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lˑᐧ/ⁱˊ;

    invoke-direct {v0, p1, p2}, Lˑᐧ/ʽ;-><init>(Lˎᵔ/ﾞᴵ;[B)V

    return-object v0

    :pswitch_0
    iget-object v0, p1, Lˎᵔ/ﾞᴵ;->ˈ:Lˎᵔ/ﹳٴ;

    sget-object v3, Lˎᵔ/ﹳٴ;->ʽʽ:Lˎᵔ/ﹳٴ;

    if-ne v0, v3, :cond_4

    :try_start_0
    new-instance v0, Lﾞʽ/ﹳٴ;

    iget-object v3, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v3, Lﹳˋ/ʼˎ;

    invoke-direct {v0, v3, p2}, Lﾞʽ/ﹳٴ;-><init>(Lﹳˋ/ʼˎ;[B)V

    iget-object p2, v0, Lﾞʽ/ﹳٴ;->ʾˋ:Lﹳˋ/ʼˎ;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v4, v1

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v5

    if-lez v5, :cond_3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lﹳˋ/ʼˎ;->ـˏ(Lﾞʽ/ﹳٴ;)Lˎᵔ/ﾞᴵ;

    move-result-object v5

    iget v6, v5, Lˎᵔ/ﾞᴵ;->ⁱˊ:I

    iget v7, p1, Lˎᵔ/ﾞᴵ;->ⁱˊ:I

    if-ne v6, v7, :cond_1

    move v6, v2

    goto :goto_1

    :cond_1
    move v6, v1

    :goto_1
    const-string v7, "Expected an ASN.1 BIT STRING as Constructed object, got: %s"

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v5, v8, v1

    if-eqz v6, :cond_2

    invoke-static {v0}, Lﹳˋ/ʼˎ;->ʼˈ(Lﾞʽ/ﹳٴ;)I

    move-result v5

    invoke-static {v5, v0}, Lﹳˋ/ʼˎ;->ﹳـ(ILﾞʽ/ﹳٴ;)[B

    move-result-object v5

    array-length v6, v5

    sub-int/2addr v6, v2

    invoke-virtual {v3, v5, v2, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v6

    if-gtz v6, :cond_0

    aget-byte v4, v5, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p2, Lˑᐧ/ﹳٴ;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {p2, p1, v2, v4}, Lˑᐧ/ﹳٴ;-><init>(Lˎᵔ/ﾞᴵ;[BI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    goto :goto_4

    :goto_2
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_4
    new-instance p2, Lcom/hierynomus/asn1/ASN1ParseException;

    const-string v0, "Unable to parse Constructed ASN.1 BIT STRING"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p2, p1, v0, v1}, Lcom/hierynomus/asn1/ASN1ParseException;-><init>(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    :cond_4
    aget-byte v0, p2, v1

    array-length v1, p2

    invoke-static {p2, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    new-instance v1, Lˑᐧ/ﹳٴ;

    invoke-direct {v1, p1, p2, v0}, Lˑᐧ/ﹳٴ;-><init>(Lˎᵔ/ﾞᴵ;[BI)V

    move-object p2, v1

    :goto_5
    return-object p2

    :pswitch_1
    new-instance v0, Lˈˑ/ʽ;

    iget-object v1, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v1, Lﹳˋ/ʼˎ;

    invoke-direct {v0, p1, p2, v1}, Lˈˑ/ʽ;-><init>(Lˎᵔ/ﾞᴵ;[BLﹳˋ/ʼˎ;)V

    return-object v0

    :pswitch_2
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    :try_start_6
    new-instance v0, Lﾞʽ/ﹳٴ;

    iget-object v3, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v3, Lﹳˋ/ʼˎ;

    invoke-direct {v0, v3, p2}, Lﾞʽ/ﹳٴ;-><init>(Lﹳˋ/ʼˎ;[B)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :goto_6
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v3
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-lez v3, :cond_5

    move v3, v2

    goto :goto_7

    :catch_1
    :cond_5
    move v3, v1

    goto :goto_7

    :catchall_3
    move-exception p1

    goto :goto_8

    :goto_7
    if-eqz v3, :cond_6

    :try_start_8
    invoke-virtual {v0}, Lﾞʽ/ﹳٴ;->ᵎﹶ()Lˎᵔ/ⁱˊ;

    move-result-object v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    invoke-virtual {p1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :catch_2
    move-exception p1

    new-instance p2, Ljava/util/NoSuchElementException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :goto_8
    :try_start_a
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception p2

    :try_start_b
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_9

    :catchall_5
    move-exception v0

    :try_start_c
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9
    throw p2

    :catch_3
    move-exception p1

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    new-instance v0, Lˈˑ/ⁱˊ;

    invoke-direct {v0, p1, p2}, Lˈˑ/ⁱˊ;-><init>(Ljava/util/HashSet;[B)V

    return-object v0

    :goto_a
    new-instance p2, Lcom/hierynomus/asn1/ASN1ParseException;

    const-string v0, "Could not parse ASN.1 SET contents."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p2, p1, v0, v1}, Lcom/hierynomus/asn1/ASN1ParseException;-><init>(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    :pswitch_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :try_start_d
    new-instance v0, Lﾞʽ/ﹳٴ;

    iget-object v3, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v3, Lﹳˋ/ʼˎ;

    invoke-direct {v0, v3, p2}, Lﾞʽ/ﹳٴ;-><init>(Lﹳˋ/ʼˎ;[B)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    :goto_b
    :try_start_e
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v3
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    if-lez v3, :cond_7

    move v3, v2

    goto :goto_c

    :catch_4
    :cond_7
    move v3, v1

    goto :goto_c

    :catchall_6
    move-exception p1

    goto :goto_d

    :goto_c
    if-eqz v3, :cond_8

    :try_start_f
    invoke-virtual {v0}, Lﾞʽ/ﹳٴ;->ᵎﹶ()Lˎᵔ/ⁱˊ;

    move-result-object v3
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    :try_start_10
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :catch_5
    move-exception p1

    new-instance p2, Ljava/util/NoSuchElementException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :goto_d
    :try_start_11
    throw p1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    :catchall_7
    move-exception p2

    :try_start_12
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    goto :goto_e

    :catchall_8
    move-exception v0

    :try_start_13
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_e
    throw p2

    :catch_6
    move-exception p1

    goto :goto_f

    :cond_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_6

    new-instance v0, Lˈˑ/ﹳٴ;

    invoke-direct {v0, p1, p2}, Lˈˑ/ﹳٴ;-><init>(Ljava/util/ArrayList;[B)V

    return-object v0

    :goto_f
    new-instance p2, Lcom/hierynomus/asn1/ASN1ParseException;

    const-string v0, "Unable to parse the ASN.1 SEQUENCE contents."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p2, p1, v0, v1}, Lcom/hierynomus/asn1/ASN1ParseException;-><init>(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    :pswitch_4
    array-length p1, p2

    if-lez p1, :cond_c

    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    div-int/lit8 v2, v1, 0x28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-int/lit8 v1, v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_10
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    if-lez v1, :cond_b

    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    const/16 v3, 0x7f

    if-ge v1, v3, :cond_9

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_10

    :cond_9
    and-int/lit8 v1, v1, 0x7f

    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    :cond_a
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    const/4 v5, 0x7

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    and-int/lit8 v5, v4, 0x7f

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    if-gt v4, v3, :cond_a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_10

    :cond_b
    new-instance p1, Lˆⁱ/ᵎﹶ;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lˎᵔ/ﾞᴵ;->ˆʾ:Lˎᵔ/ˑﹳ;

    invoke-direct {p1, v1, p2}, Lˆⁱ/ᵔᵢ;-><init>(Lˎᵔ/ﾞᴵ;[B)V

    iput-object v0, p1, Lˆⁱ/ᵎﹶ;->ʽʽ:Ljava/lang/String;

    return-object p1

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An ASN.1 OBJECT IDENTIFIER should have at least a one byte value"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_5
    array-length p1, p2

    if-nez p1, :cond_d

    move v1, v2

    :cond_d
    if-eqz v1, :cond_e

    new-instance p1, Lˆⁱ/ﾞᴵ;

    sget-object p2, Lˎᵔ/ﾞᴵ;->ʼˎ:Lˎᵔ/ˑﹳ;

    sget-object v0, Lˆⁱ/ﾞᴵ;->ʽʽ:[B

    invoke-direct {p1, p2, v0}, Lˆⁱ/ᵔᵢ;-><init>(Lˎᵔ/ﾞᴵ;[B)V

    return-object p1

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ASN.1 NULL can not have a value"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_6
    new-instance p1, Lˆⁱ/ˑﹳ;

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p2}, Ljava/math/BigInteger;-><init>([B)V

    sget-object v1, Lˎᵔ/ﾞᴵ;->ᵎﹶ:Lˎᵔ/ˑﹳ;

    invoke-direct {p1, v1, p2}, Lˆⁱ/ᵔᵢ;-><init>(Lˎᵔ/ﾞᴵ;[B)V

    iput-object v0, p1, Lˆⁱ/ˑﹳ;->ʽʽ:Ljava/math/BigInteger;

    return-object p1

    :pswitch_7
    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, p2}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v0, Lˆⁱ/ˈ;

    invoke-direct {v0, p1, p2}, Lˆⁱ/ˈ;-><init>(Ljava/math/BigInteger;[B)V

    return-object v0

    :pswitch_8
    array-length p1, p2

    if-ne p1, v2, :cond_f

    move p1, v2

    goto :goto_11

    :cond_f
    move p1, v1

    :goto_11
    array-length v0, p2

    if-eqz p1, :cond_11

    new-instance p1, Lˆⁱ/ʽ;

    aget-byte v0, p2, v1

    if-eqz v0, :cond_10

    move v1, v2

    :cond_10
    sget-object v0, Lˎᵔ/ﾞᴵ;->ﾞᴵ:Lˎᵔ/ˑﹳ;

    invoke-direct {p1, v0, p2}, Lˆⁱ/ᵔᵢ;-><init>(Lˎᵔ/ﾞᴵ;[B)V

    iput-boolean v1, p1, Lˆⁱ/ʽ;->ʽʽ:Z

    return-object p1

    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Value of ASN1Boolean should have length 1, but was "

    invoke-static {v0, p2}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

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
