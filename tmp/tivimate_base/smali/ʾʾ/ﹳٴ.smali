.class public final Lʾʾ/ﹳٴ;
.super Lʽⁱ/ᵎﹶ;
.source "SourceFile"


# instance fields
.field public ᴵˊ:Ljava/util/EnumSet;


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "SMB_COM_NEGOTIATE"

    return-object v0
.end method

.method public final ˈٴ(Lˋʼ/ﹳٴ;)V
    .locals 12

    .prologue
    iget-object v0, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lˋʼ/ⁱˊ;

    check-cast v0, Lˎʻ/ﹳٴ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    invoke-virtual {p1, v0, v1}, Lˎʿ/ⁱˊ;->ˑﹳ(I[B)Lˎʿ/ⁱˊ;

    const/16 v0, 0x72

    invoke-virtual {p1, v0}, Lˎʿ/ⁱˊ;->ˈ(B)Lˎʿ/ⁱˊ;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    const/16 v2, 0x18

    invoke-virtual {p1, v2}, Lˎʿ/ⁱˊ;->ˈ(B)Lˎʿ/ⁱˊ;

    const v2, 0xc853

    invoke-virtual {p1, v2}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    iget-object v3, p1, Lˎʿ/ⁱˊ;->ⁱˊ:Lˎʿ/ʽ;

    invoke-virtual {v3, p1, v0, v1}, Lˎʿ/ʽ;->ᵔᵢ(Lˎʿ/ⁱˊ;J)V

    invoke-virtual {p1}, Lˋʼ/ﹳٴ;->ᵔﹳ()V

    invoke-virtual {p1, v2}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    invoke-virtual {p1, v2}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    invoke-virtual {p1, v2}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    invoke-virtual {p1, v2}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    invoke-virtual {p1, v2}, Lˎʿ/ⁱˊ;->ˈ(B)Lˎʿ/ⁱˊ;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "SMB 2.002"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lʾʾ/ﹳٴ;->ᴵˊ:Ljava/util/EnumSet;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_0

    sget-object v3, Lʼﹳ/ʽ;->ʽʽ:Lʼﹳ/ʽ;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "SMB 2.???"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    move v5, v3

    :goto_0
    const/4 v6, 0x2

    if-ge v5, v1, :cond_2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v5, v5, 0x1

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v6

    add-int/2addr v3, v7

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v3}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_7

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v6}, Lˎʿ/ⁱˊ;->ˈ(B)Lˎʿ/ⁱˊ;

    sget-object v7, Lᴵʿ/ⁱˊ;->ﹳٴ:Ljava/nio/charset/Charset;

    iget-object v8, p1, Lˎʿ/ⁱˊ;->ⁱˊ:Lˎʿ/ʽ;

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/4 v11, -0x1

    sparse-switch v10, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v10, "UTF-16LE"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_2

    :cond_3
    const/4 v11, 0x3

    goto :goto_2

    :sswitch_1
    const-string v10, "UTF-16BE"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_2

    :cond_4
    move v11, v6

    goto :goto_2

    :sswitch_2
    const-string v10, "UTF-8"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_2

    :cond_5
    move v11, v4

    goto :goto_2

    :sswitch_3
    const-string v10, "UTF-16"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    goto :goto_2

    :cond_6
    move v11, v2

    :goto_2
    sget-object v9, Lˎʿ/ʽ;->ⁱˊ:[B

    packed-switch v11, :pswitch_data_0

    new-instance p1, Ljava/nio/charset/UnsupportedCharsetException;

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/nio/charset/UnsupportedCharsetException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    sget-object v7, Lˎʿ/ʽ;->ʽ:Lˎʿ/ʽ;

    invoke-virtual {v7, p1, v5}, Lˎʿ/ʽ;->ʼˎ(Lˎʿ/ⁱˊ;Ljava/lang/String;)V

    invoke-virtual {p1, v6, v9}, Lˎʿ/ⁱˊ;->ˑﹳ(I[B)Lˎʿ/ⁱˊ;

    goto :goto_1

    :pswitch_1
    sget-object v7, Lˎʿ/ʽ;->ˈ:Lˎʿ/ʽ;

    invoke-virtual {v7, p1, v5}, Lˎʿ/ʽ;->ʼˎ(Lˎʿ/ⁱˊ;Ljava/lang/String;)V

    invoke-virtual {p1, v6, v9}, Lˎʿ/ⁱˊ;->ˑﹳ(I[B)Lˎʿ/ⁱˊ;

    goto :goto_1

    :pswitch_2
    invoke-virtual {v5, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    array-length v7, v5

    invoke-virtual {p1, v7, v5}, Lˎʿ/ⁱˊ;->ˑﹳ(I[B)Lˎʿ/ⁱˊ;

    invoke-virtual {p1, v2}, Lˎʿ/ⁱˊ;->ˈ(B)Lˎʿ/ⁱˊ;

    goto :goto_1

    :pswitch_3
    invoke-virtual {v8, p1, v5}, Lˎʿ/ʽ;->ʼˎ(Lˎʿ/ⁱˊ;Ljava/lang/String;)V

    invoke-virtual {p1, v6, v9}, Lˎʿ/ⁱˊ;->ˑﹳ(I[B)Lˎʿ/ⁱˊ;

    goto :goto_1

    :cond_7
    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        0x53t
        0x4dt
        0x42t
    .end array-data

    :sswitch_data_0
    .sparse-switch
        -0x6a33dbd5 -> :sswitch_3
        0x4d50972 -> :sswitch_2
        0x5353cdae -> :sswitch_1
        0x5353cee4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
