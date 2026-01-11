.class public final Lʻʼ/ⁱˊ;
.super Lˈˋ/ʾˊ;
.source "SourceFile"


# instance fields
.field public final synthetic ʽ:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lʻʼ/ⁱˊ;->ʽ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ٴʼ(Lᐧˎ/ﹳᐧ;)Lʻʼ/ﹳٴ;
    .locals 8

    invoke-virtual {p0}, Lᐧˎ/ﹳᐧ;->ˏי()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lᐧˎ/ﹳᐧ;->ˏי()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lᐧˎ/ﹳᐧ;->יـ()J

    move-result-wide v3

    invoke-virtual {p0}, Lᐧˎ/ﹳᐧ;->יـ()J

    move-result-wide v5

    iget-object v0, p0, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    iget v7, p0, Lᐧˎ/ﹳᐧ;->ⁱˊ:I

    iget p0, p0, Lᐧˎ/ﹳᐧ;->ʽ:I

    invoke-static {v0, v7, p0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    new-instance v0, Lʻʼ/ﹳٴ;

    invoke-direct/range {v0 .. v7}, Lʻʼ/ﹳٴ;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    return-object v0
.end method


# virtual methods
.method public final ˉʿ(Lˆﹳ/ﹳٴ;Ljava/nio/ByteBuffer;)Lʽⁱ/ٴᵢ;
    .locals 17

    .prologue
    move-object/from16 v0, p0

    iget v1, v0, Lʻʼ/ⁱˊ;->ʽ:I

    packed-switch v1, :pswitch_data_0

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    const/16 v3, 0x74

    const/4 v4, 0x0

    if-ne v1, v3, :cond_7

    new-instance v1, Lʻᴵ/ʻٴ;

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Ljava/nio/Buffer;->limit()I

    move-result v5

    invoke-direct {v1, v5, v3}, Lʻᴵ/ʻٴ;-><init>(I[B)V

    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    invoke-virtual {v1, v3}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v5

    invoke-virtual {v1}, Lʻᴵ/ʻٴ;->ᵔᵢ()I

    move-result v6

    add-int/2addr v6, v5

    const/4 v5, 0x4

    sub-int/2addr v6, v5

    const/16 v7, 0x2c

    invoke-virtual {v1, v7}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    invoke-virtual {v1, v3}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v7

    invoke-virtual {v1, v7}, Lʻᴵ/ʻٴ;->ʼʼ(I)V

    const/16 v7, 0x10

    invoke-virtual {v1, v7}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v1}, Lʻᴵ/ʻٴ;->ᵔᵢ()I

    move-result v9

    if-ge v9, v6, :cond_5

    const/16 v9, 0x30

    invoke-virtual {v1, v9}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v10

    invoke-virtual {v1, v5}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    invoke-virtual {v1, v3}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v11

    invoke-virtual {v1}, Lʻᴵ/ʻٴ;->ᵔᵢ()I

    move-result v12

    add-int/2addr v12, v11

    move-object v11, v4

    move-object v13, v11

    :goto_1
    invoke-virtual {v1}, Lʻᴵ/ʻٴ;->ᵔᵢ()I

    move-result v14

    if-ge v14, v12, :cond_3

    invoke-virtual {v1, v9}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v14

    invoke-virtual {v1, v9}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v15

    invoke-virtual {v1}, Lʻᴵ/ʻٴ;->ᵔᵢ()I

    move-result v16

    const/16 p1, 0x0

    add-int v2, v16, v15

    const/4 v3, 0x2

    if-ne v14, v3, :cond_1

    invoke-virtual {v1, v7}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v3

    invoke-virtual {v1, v9}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    const/4 v14, 0x3

    if-ne v3, v14, :cond_2

    :goto_2
    invoke-virtual {v1}, Lʻᴵ/ʻٴ;->ᵔᵢ()I

    move-result v3

    if-ge v3, v2, :cond_2

    invoke-virtual {v1, v9}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v3

    sget-object v11, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    new-array v14, v3, [B

    invoke-virtual {v1, v3, v14}, Lʻᴵ/ʻٴ;->ʼᐧ(I[B)V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v14, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1, v9}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v11

    move/from16 v14, p1

    :goto_3
    if-ge v14, v11, :cond_0

    invoke-virtual {v1, v9}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v15

    invoke-virtual {v1, v15}, Lʻᴵ/ʻٴ;->ʼʼ(I)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_0
    move-object v11, v3

    goto :goto_2

    :cond_1
    const/16 v3, 0x15

    if-ne v14, v3, :cond_2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    new-array v13, v15, [B

    invoke-virtual {v1, v15, v13}, Lʻᴵ/ʻٴ;->ʼᐧ(I[B)V

    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v13, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v13, v14

    :cond_2
    mul-int/lit8 v2, v2, 0x8

    invoke-virtual {v1, v2}, Lʻᴵ/ʻٴ;->ʽﹳ(I)V

    const/16 v3, 0xc

    goto :goto_1

    :cond_3
    const/16 p1, 0x0

    mul-int/lit8 v12, v12, 0x8

    invoke-virtual {v1, v12}, Lʻᴵ/ʻٴ;->ʽﹳ(I)V

    if-eqz v11, :cond_4

    if-eqz v13, :cond_4

    new-instance v2, Lˆˎ/ﹳٴ;

    invoke-virtual {v11, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v10, v3}, Lˆˎ/ﹳٴ;-><init>(ILjava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const/16 v3, 0xc

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    new-instance v4, Lʽⁱ/ٴᵢ;

    invoke-direct {v4, v8}, Lʽⁱ/ٴᵢ;-><init>(Ljava/util/List;)V

    :cond_7
    :goto_4
    return-object v4

    :pswitch_0
    const/16 p1, 0x0

    new-instance v1, Lʽⁱ/ٴᵢ;

    new-instance v2, Lᐧˎ/ﹳᐧ;

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Ljava/nio/Buffer;->limit()I

    move-result v4

    invoke-direct {v2, v4, v3}, Lᐧˎ/ﹳᐧ;-><init>(I[B)V

    invoke-static {v2}, Lʻʼ/ⁱˊ;->ٴʼ(Lᐧˎ/ﹳᐧ;)Lʻʼ/ﹳٴ;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lʽⁱ/ˊʻ;

    aput-object v2, v3, p1

    invoke-direct {v1, v3}, Lʽⁱ/ٴᵢ;-><init>([Lʽⁱ/ˊʻ;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
