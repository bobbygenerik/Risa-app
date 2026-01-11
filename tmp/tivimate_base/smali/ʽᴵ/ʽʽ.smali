.class public final Lʽᴵ/ʽʽ;
.super Lʽᴵ/ﾞʻ;
.source "SourceFile"


# instance fields
.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lʽᴵ/ʽʽ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    iget v0, p0, Lʽᴵ/ʽʽ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "JsonAdapter(Short)"

    return-object v0

    :pswitch_0
    const-string v0, "JsonAdapter(Long)"

    return-object v0

    :pswitch_1
    const-string v0, "JsonAdapter(Integer)"

    return-object v0

    :pswitch_2
    const-string v0, "JsonAdapter(Float)"

    return-object v0

    :pswitch_3
    const-string v0, "JsonAdapter(Double)"

    return-object v0

    :pswitch_4
    const-string v0, "JsonAdapter(Character)"

    return-object v0

    :pswitch_5
    const-string v0, "JsonAdapter(Byte)"

    return-object v0

    :pswitch_6
    const-string v0, "JsonAdapter(Boolean)"

    return-object v0

    :pswitch_7
    const-string v0, "JsonAdapter(String)"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final ˑﹳ(Lʽᴵ/ﹳᐧ;Ljava/lang/Object;)V
    .locals 3

    .prologue
    iget v0, p0, Lʽᴵ/ʽʽ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->intValue()I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Lʽᴵ/ﹳᐧ;->ᵎˊ(J)Lʽᴵ/ᵔﹳ;

    return-void

    :pswitch_0
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lʽᴵ/ﹳᐧ;->ᵎˊ(J)Lʽᴵ/ᵔﹳ;

    return-void

    :pswitch_1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Lʽᴵ/ﹳᐧ;->ᵎˊ(J)Lʽᴵ/ᵔﹳ;

    return-void

    :pswitch_2
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p2}, Lʽᴵ/ﹳᐧ;->ˈʿ(Ljava/lang/Number;)Lʽᴵ/ᵔﹳ;

    return-void

    :pswitch_3
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    check-cast p1, Lʽᴵ/ᵔﹳ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p2

    if-nez p2, :cond_1

    iget-boolean p2, p1, Lʽᴵ/ﹳᐧ;->ᴵᵔ:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    iput-boolean p2, p1, Lʽᴵ/ﹳᐧ;->ᴵᵔ:Z

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lʽᴵ/ᵔﹳ;->ـˆ(Ljava/lang/String;)Lʽᴵ/ᵔﹳ;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lʽᴵ/ᵔﹳ;->ـᵎ()V

    invoke-virtual {p1}, Lʽᴵ/ᵔﹳ;->ʿᵢ()V

    iget-object p2, p1, Lʽᴵ/ᵔﹳ;->ٴᵢ:Lˊᐧ/ᵎﹶ;

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lˊᐧ/ᵎﹶ;->ᐧᴵ(Ljava/lang/String;)Lˊᐧ/ᵎﹶ;

    iget-object p2, p1, Lʽᴵ/ﹳᐧ;->ˈٴ:[I

    iget p1, p1, Lʽᴵ/ﹳᐧ;->ʾˋ:I

    add-int/lit8 p1, p1, -0x1

    aget v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    aput v0, p2, p1

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Numeric values must be finite, but was "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_4
    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lʽᴵ/ﹳᐧ;->ᴵˑ(Ljava/lang/String;)Lʽᴵ/ᵔﹳ;

    return-void

    :pswitch_5
    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->intValue()I

    move-result p2

    and-int/lit16 p2, p2, 0xff

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Lʽᴵ/ﹳᐧ;->ᵎˊ(J)Lʽᴵ/ᵔﹳ;

    return-void

    :pswitch_6
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p1, Lʽᴵ/ᵔﹳ;

    iget-boolean v0, p1, Lʽᴵ/ﹳᐧ;->ᴵᵔ:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lʽᴵ/ᵔﹳ;->ـᵎ()V

    invoke-virtual {p1}, Lʽᴵ/ᵔﹳ;->ʿᵢ()V

    iget-object v0, p1, Lʽᴵ/ᵔﹳ;->ٴᵢ:Lˊᐧ/ᵎﹶ;

    if-eqz p2, :cond_2

    const-string p2, "true"

    goto :goto_1

    :cond_2
    const-string p2, "false"

    :goto_1
    invoke-interface {v0, p2}, Lˊᐧ/ᵎﹶ;->ᐧᴵ(Ljava/lang/String;)Lˊᐧ/ᵎﹶ;

    iget-object p2, p1, Lʽᴵ/ﹳᐧ;->ˈٴ:[I

    iget p1, p1, Lʽᴵ/ﹳᐧ;->ʾˋ:I

    add-int/lit8 p1, p1, -0x1

    aget v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    aput v0, p2, p1

    return-void

    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Boolean cannot be used as a map key in JSON at path "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lʽᴵ/ﹳᐧ;->ﹳᐧ()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_7
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lʽᴵ/ﹳᐧ;->ᴵˑ(Ljava/lang/String;)Lʽᴵ/ᵔﹳ;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final ⁱˊ(Lʽᴵ/ˉˆ;)Ljava/lang/Object;
    .locals 9

    .prologue
    iget v0, p0, Lʽᴵ/ʽʽ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    const/16 v0, -0x8000

    const/16 v1, 0x7fff

    const-string v2, "a short"

    invoke-static {p1, v2, v0, v1}, Lʽᴵ/ˊʻ;->ᵔᵢ(Lʽᴵ/ˉˆ;Ljava/lang/String;II)I

    move-result p1

    int-to-short p1, p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast p1, Lʽᴵ/ʼᐧ;

    iget v0, p1, Lʽᴵ/ʼᐧ;->ٴᵢ:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lʽᴵ/ʼᐧ;->י()I

    move-result v0

    :cond_0
    const/16 v1, 0x10

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iput v2, p1, Lʽᴵ/ʼᐧ;->ٴᵢ:I

    iget-object v0, p1, Lʽᴵ/ˉˆ;->ˈٴ:[I

    iget v1, p1, Lʽᴵ/ˉˆ;->ʾˋ:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-wide v0, p1, Lʽᴵ/ʼᐧ;->ˉٴ:J

    goto/16 :goto_3

    :cond_1
    const/16 v1, 0x11

    const-string v3, " at path "

    const-string v4, "Expected a long but was "

    const/16 v5, 0xb

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Lʽᴵ/ʼᐧ;->ˊʻ:Lˊᐧ/ﾞᴵ;

    iget v1, p1, Lʽᴵ/ʼᐧ;->ᵎⁱ:I

    int-to-long v6, v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lﹶˑ/ﹳٴ;->ﹳٴ:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v6, v7, v1}, Lˊᐧ/ﾞᴵ;->ˊᵔ(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lʽᴵ/ʼᐧ;->ٴʼ:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const/16 v1, 0x9

    if-eq v0, v1, :cond_5

    const/16 v6, 0x8

    if-ne v0, v6, :cond_3

    goto :goto_0

    :cond_3
    if-ne v0, v5, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/squareup/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lʽᴵ/ʼᐧ;->ʿᵢ()I

    move-result v2

    invoke-static {v2}, Lʼﾞ/ˊˋ;->ʾˋ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lʽᴵ/ˉˆ;->ـˆ()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_0
    if-ne v0, v1, :cond_6

    sget-object v0, Lʽᴵ/ʼᐧ;->ᵔי:Lˊᐧ/ʼˎ;

    invoke-virtual {p1, v0}, Lʽᴵ/ʼᐧ;->ʽⁱ(Lˊᐧ/ʼˎ;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    sget-object v0, Lʽᴵ/ʼᐧ;->ᵎˊ:Lˊᐧ/ʼˎ;

    invoke-virtual {p1, v0}, Lʽᴵ/ʼᐧ;->ʽⁱ(Lˊᐧ/ʼˎ;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p1, Lʽᴵ/ʼᐧ;->ٴʼ:Ljava/lang/String;

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput v2, p1, Lʽᴵ/ʼᐧ;->ٴᵢ:I

    iget-object v6, p1, Lʽᴵ/ˉˆ;->ˈٴ:[I

    iget v7, p1, Lʽᴵ/ˉˆ;->ʾˋ:I

    add-int/lit8 v7, v7, -0x1

    aget v8, v6, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, v6, v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    :goto_2
    iput v5, p1, Lʽᴵ/ʼᐧ;->ٴᵢ:I

    :try_start_1
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p1, Lʽᴵ/ʼᐧ;->ٴʼ:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v3, 0x0

    iput-object v3, p1, Lʽᴵ/ʼᐧ;->ٴʼ:Ljava/lang/String;

    iput v2, p1, Lʽᴵ/ʼᐧ;->ٴᵢ:I

    iget-object v2, p1, Lʽᴵ/ˉˆ;->ˈٴ:[I

    iget p1, p1, Lʽᴵ/ˉˆ;->ʾˋ:I

    add-int/lit8 p1, p1, -0x1

    aget v3, v2, p1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, p1

    :goto_3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :catch_1
    new-instance v0, Lcom/squareup/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lʽᴵ/ʼᐧ;->ٴʼ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lʽᴵ/ˉˆ;->ـˆ()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    invoke-virtual {p1}, Lʽᴵ/ˉˆ;->ᵎˊ()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-virtual {p1}, Lʽᴵ/ˉˆ;->ˈٴ()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_7
    new-instance v1, Lcom/squareup/moshi/JsonDataException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "JSON forbids NaN and infinities: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " at path "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lʽᴵ/ˉˆ;->ـˆ()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_3
    invoke-virtual {p1}, Lʽᴵ/ˉˆ;->ˈٴ()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-virtual {p1}, Lʽᴵ/ˉˆ;->ᴵˑ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_8

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    return-object p1

    :cond_8
    new-instance v1, Lcom/squareup/moshi/JsonDataException;

    const-string v2, "\""

    const/16 v3, 0x22

    invoke-static {v3, v2, v0}, Lʼﾞ/ˊˋ;->ˉˆ(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lʽᴵ/ˉˆ;->ـˆ()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected a char but was "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " at path "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_5
    const/16 v0, -0x80

    const/16 v1, 0xff

    const-string v2, "a byte"

    invoke-static {p1, v2, v0, v1}, Lʽᴵ/ˊʻ;->ᵔᵢ(Lʽᴵ/ˉˆ;Ljava/lang/String;II)I

    move-result p1

    int-to-byte p1, p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_6
    check-cast p1, Lʽᴵ/ʼᐧ;

    iget v0, p1, Lʽᴵ/ʼᐧ;->ٴᵢ:I

    if-nez v0, :cond_9

    invoke-virtual {p1}, Lʽᴵ/ʼᐧ;->י()I

    move-result v0

    :cond_9
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_a

    iput v2, p1, Lʽᴵ/ʼᐧ;->ٴᵢ:I

    iget-object v0, p1, Lʽᴵ/ˉˆ;->ˈٴ:[I

    iget p1, p1, Lʽᴵ/ˉˆ;->ʾˋ:I

    sub-int/2addr p1, v3

    aget v1, v0, p1

    add-int/2addr v1, v3

    aput v1, v0, p1

    move v2, v3

    goto :goto_4

    :cond_a
    const/4 v1, 0x6

    if-ne v0, v1, :cond_b

    iput v2, p1, Lʽᴵ/ʼᐧ;->ٴᵢ:I

    iget-object v0, p1, Lʽᴵ/ˉˆ;->ˈٴ:[I

    iget p1, p1, Lʽᴵ/ˉˆ;->ʾˋ:I

    sub-int/2addr p1, v3

    aget v1, v0, p1

    add-int/2addr v1, v3

    aput v1, v0, p1

    :goto_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_b
    new-instance v0, Lcom/squareup/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a boolean but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lʽᴵ/ʼᐧ;->ʿᵢ()I

    move-result v2

    invoke-static {v2}, Lʼﾞ/ˊˋ;->ʾˋ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lʽᴵ/ˉˆ;->ـˆ()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_7
    invoke-virtual {p1}, Lʽᴵ/ˉˆ;->ᴵˑ()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
