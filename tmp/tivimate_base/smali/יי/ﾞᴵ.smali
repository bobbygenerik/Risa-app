.class public final Lיי/ﾞᴵ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ⁱˊ:Ljava/util/List;

.field public final ﹳٴ:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lיי/ﾞᴵ;->ﹳٴ:I

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lיי/ﾞᴵ;->ⁱˊ:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lיי/ﾞᴵ;->ﹳٴ:I

    iput-object p2, p0, Lיי/ﾞᴵ;->ⁱˊ:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lיי/ﾞᴵ;->ﹳٴ:I

    iput-object p1, p0, Lיי/ﾞᴵ;->ⁱˊ:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public ʽ(I)Z
    .locals 1

    .prologue
    iget v0, p0, Lיי/ﾞᴵ;->ﹳٴ:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public ⁱˊ(Lʻʽ/ʼˎ;)Ljava/util/List;
    .locals 12

    .prologue
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lיי/ﾞᴵ;->ʽ(I)Z

    move-result v0

    iget-object v1, p0, Lיי/ﾞᴵ;->ⁱˊ:Ljava/util/List;

    if-eqz v0, :cond_0

    goto/16 :goto_7

    :cond_0
    :try_start_0
    new-instance v0, Lᐧˎ/ﹳᐧ;

    iget-object p1, p1, Lʻʽ/ʼˎ;->ˑﹳ:Ljava/lang/Object;

    check-cast p1, [B

    invoke-direct {v0, p1}, Lᐧˎ/ﹳᐧ;-><init>([B)V

    move-object p1, v1

    :goto_0
    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v2

    if-lez v2, :cond_7

    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v2

    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v3

    iget v4, v0, Lᐧˎ/ﹳᐧ;->ⁱˊ:I

    add-int/2addr v4, v3

    const/16 v3, 0x86

    if-ne v2, v3, :cond_6

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v2

    and-int/lit8 v2, v2, 0x1f

    const/4 v3, 0x0

    move v5, v3

    :goto_1
    if-ge v5, v2, :cond_6

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v7, 0x3

    invoke-virtual {v0, v7, v6}, Lᐧˎ/ﹳᐧ;->ـˆ(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v7

    and-int/lit16 v8, v7, 0x80

    const/4 v9, 0x1

    if-eqz v8, :cond_1

    move v8, v9

    goto :goto_2

    :cond_1
    move v8, v3

    :goto_2
    if-eqz v8, :cond_2

    const-string v10, "application/cea-708"

    and-int/lit8 v7, v7, 0x3f

    goto :goto_3

    :cond_2
    const-string v10, "application/cea-608"

    move v7, v9

    :goto_3
    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v11

    int-to-byte v11, v11

    invoke-virtual {v0, v9}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    if-eqz v8, :cond_5

    and-int/lit8 v8, v11, 0x40

    if-eqz v8, :cond_3

    move v8, v9

    goto :goto_4

    :cond_3
    move v8, v3

    :goto_4
    sget-object v11, Lᐧˎ/ʽ;->ﹳٴ:[B

    if-eqz v8, :cond_4

    new-array v8, v9, [B

    aput-byte v9, v8, v3

    goto :goto_5

    :cond_4
    new-array v8, v9, [B

    aput-byte v3, v8, v3

    :goto_5
    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    goto :goto_6

    :cond_5
    const/4 v8, 0x0

    :goto_6
    new-instance v9, Lʽⁱ/ᵔﹳ;

    invoke-direct {v9}, Lʽⁱ/ᵔﹳ;-><init>()V

    invoke-static {v10}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lʽⁱ/ᵔﹳ;->ˉʿ:Ljava/lang/String;

    iput-object v6, v9, Lʽⁱ/ᵔﹳ;->ˈ:Ljava/lang/String;

    iput v7, v9, Lʽⁱ/ᵔﹳ;->ٴʼ:I

    iput-object v8, v9, Lʽⁱ/ᵔﹳ;->ʼᐧ:Ljava/util/List;

    new-instance v6, Lʽⁱ/ﹳᐧ;

    invoke-direct {v6, v9}, Lʽⁱ/ﹳᐧ;-><init>(Lʽⁱ/ᵔﹳ;)V

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v0, v4}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_7
    return-object p1

    :catch_0
    :goto_7
    return-object v1
.end method

.method public ﹳٴ(ILʻʽ/ʼˎ;)Lיי/ˉٴ;
    .locals 5

    .prologue
    iget-object v0, p2, Lʻʽ/ʼˎ;->ʽ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "video/mp2t"

    const/4 v2, 0x2

    if-eq p1, v2, :cond_e

    const/4 v3, 0x3

    if-eq p1, v3, :cond_d

    const/4 v3, 0x4

    if-eq p1, v3, :cond_d

    const/16 v4, 0x15

    if-eq p1, v4, :cond_c

    const/16 v4, 0x1b

    if-eq p1, v4, :cond_a

    const/16 v3, 0x24

    if-eq p1, v3, :cond_9

    const/16 v3, 0x2d

    if-eq p1, v3, :cond_8

    const/16 v3, 0x59

    if-eq p1, v3, :cond_7

    const/16 v3, 0xac

    if-eq p1, v3, :cond_6

    const/16 v3, 0x101

    if-eq p1, v3, :cond_5

    const/16 v3, 0x8a

    if-eq p1, v3, :cond_4

    const/16 v3, 0x8b

    if-eq p1, v3, :cond_3

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    goto/16 :goto_0

    :pswitch_0
    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Lיי/ﾞᴵ;->ʽ(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance p1, Lיי/ʽʽ;

    new-instance p2, Lᵢ/ﹳٴ;

    const-string v0, "application/x-scte35"

    const/16 v1, 0xd

    invoke-direct {p2, v1, v0}, Lᵢ/ﹳٴ;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, p2}, Lיי/ʽʽ;-><init>(Lיי/ᴵˊ;)V

    return-object p1

    :pswitch_1
    const/16 p1, 0x40

    invoke-virtual {p0, p1}, Lיי/ﾞᴵ;->ʽ(I)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :pswitch_2
    new-instance p1, Lיי/ʾᵎ;

    new-instance v2, Lיי/ⁱˊ;

    invoke-virtual {p2}, Lʻʽ/ʼˎ;->ⁱˊ()I

    move-result p2

    const/4 v3, 0x0

    invoke-direct {v2, p2, v3, v0, v1}, Lיי/ⁱˊ;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p1, v2}, Lיי/ʾᵎ;-><init>(Lיי/ʼˎ;)V

    return-object p1

    :pswitch_3
    invoke-virtual {p0, v2}, Lיי/ﾞᴵ;->ʽ(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_0

    :cond_1
    new-instance p1, Lיי/ʾᵎ;

    new-instance v1, Lיי/ˏי;

    invoke-virtual {p2}, Lʻʽ/ʼˎ;->ⁱˊ()I

    move-result p2

    invoke-direct {v1, p2, v0}, Lיי/ˏי;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, v1}, Lיי/ʾᵎ;-><init>(Lיי/ʼˎ;)V

    return-object p1

    :pswitch_4
    new-instance p1, Lיי/ʾᵎ;

    new-instance v0, Lיי/ᵔʾ;

    new-instance v1, Lˑי/ʽ;

    invoke-virtual {p0, p2}, Lיי/ﾞᴵ;->ⁱˊ(Lʻʽ/ʼˎ;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v1, p2}, Lˑי/ʽ;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v1}, Lיי/ᵔʾ;-><init>(Lˑי/ʽ;)V

    invoke-direct {p1, v0}, Lיי/ʾᵎ;-><init>(Lיי/ʼˎ;)V

    return-object p1

    :pswitch_5
    invoke-virtual {p0, v2}, Lיי/ﾞᴵ;->ʽ(I)Z

    move-result p1

    if-eqz p1, :cond_2

    goto/16 :goto_0

    :cond_2
    new-instance p1, Lיי/ʾᵎ;

    new-instance v2, Lיי/ˑﹳ;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lʻʽ/ʼˎ;->ⁱˊ()I

    move-result p2

    invoke-direct {v2, p2, v0, v1, v3}, Lיי/ˑﹳ;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p1, v2}, Lיי/ʾᵎ;-><init>(Lיי/ʼˎ;)V

    return-object p1

    :cond_3
    new-instance p1, Lיי/ʾᵎ;

    new-instance v1, Lיי/ᵎﹶ;

    invoke-virtual {p2}, Lʻʽ/ʼˎ;->ⁱˊ()I

    move-result p2

    const/16 v2, 0x1520

    invoke-direct {v1, p2, v2, v0}, Lיי/ᵎﹶ;-><init>(IILjava/lang/String;)V

    invoke-direct {p1, v1}, Lיי/ʾᵎ;-><init>(Lיי/ʼˎ;)V

    return-object p1

    :cond_4
    :pswitch_6
    new-instance p1, Lיי/ʾᵎ;

    new-instance v1, Lיי/ᵎﹶ;

    invoke-virtual {p2}, Lʻʽ/ʼˎ;->ⁱˊ()I

    move-result p2

    const/16 v2, 0x1000

    invoke-direct {v1, p2, v2, v0}, Lיי/ᵎﹶ;-><init>(IILjava/lang/String;)V

    invoke-direct {p1, v1}, Lיי/ʾᵎ;-><init>(Lיי/ʼˎ;)V

    return-object p1

    :cond_5
    new-instance p1, Lיי/ʽʽ;

    new-instance p2, Lᵢ/ﹳٴ;

    const-string v0, "application/vnd.dvb.ait"

    const/16 v1, 0xd

    invoke-direct {p2, v1, v0}, Lᵢ/ﹳٴ;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, p2}, Lיי/ʽʽ;-><init>(Lיי/ᴵˊ;)V

    return-object p1

    :cond_6
    new-instance p1, Lיי/ʾᵎ;

    new-instance v2, Lיי/ⁱˊ;

    invoke-virtual {p2}, Lʻʽ/ʼˎ;->ⁱˊ()I

    move-result p2

    const/4 v3, 0x1

    invoke-direct {v2, p2, v3, v0, v1}, Lיי/ⁱˊ;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p1, v2}, Lיי/ʾᵎ;-><init>(Lיי/ʼˎ;)V

    return-object p1

    :cond_7
    new-instance p1, Lיי/ʾᵎ;

    new-instance v0, Lיי/ᵔᵢ;

    iget-object p2, p2, Lʻʽ/ʼˎ;->ˈ:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    invoke-direct {v0, p2}, Lיי/ᵔᵢ;-><init>(Ljava/util/List;)V

    invoke-direct {p1, v0}, Lיי/ʾᵎ;-><init>(Lיי/ʼˎ;)V

    return-object p1

    :cond_8
    new-instance p1, Lיי/ʾᵎ;

    new-instance p2, Lיי/ʻٴ;

    invoke-direct {p2}, Lיי/ʻٴ;-><init>()V

    invoke-direct {p1, p2}, Lיי/ʾᵎ;-><init>(Lיי/ʼˎ;)V

    return-object p1

    :cond_9
    new-instance p1, Lיי/ʾᵎ;

    new-instance v0, Lיי/יـ;

    new-instance v1, Lcom/parse/ٴʼ;

    invoke-virtual {p0, p2}, Lיי/ﾞᴵ;->ⁱˊ(Lʻʽ/ʼˎ;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v1, p2}, Lcom/parse/ٴʼ;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v1}, Lיי/יـ;-><init>(Lcom/parse/ٴʼ;)V

    invoke-direct {p1, v0}, Lיי/ʾᵎ;-><init>(Lיי/ʼˎ;)V

    return-object p1

    :cond_a
    invoke-virtual {p0, v3}, Lיי/ﾞᴵ;->ʽ(I)Z

    move-result p1

    if-eqz p1, :cond_b

    :goto_0
    const/4 p1, 0x0

    return-object p1

    :cond_b
    new-instance p1, Lיי/ʾᵎ;

    new-instance v0, Lיי/ᵔﹳ;

    new-instance v1, Lcom/parse/ٴʼ;

    invoke-virtual {p0, p2}, Lיי/ﾞᴵ;->ⁱˊ(Lʻʽ/ʼˎ;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v1, p2}, Lcom/parse/ٴʼ;-><init>(Ljava/util/List;)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lיי/ﾞᴵ;->ʽ(I)Z

    move-result p2

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lיי/ﾞᴵ;->ʽ(I)Z

    move-result v2

    invoke-direct {v0, v1, p2, v2}, Lיי/ᵔﹳ;-><init>(Lcom/parse/ٴʼ;ZZ)V

    invoke-direct {p1, v0}, Lיי/ʾᵎ;-><init>(Lיי/ʼˎ;)V

    return-object p1

    :cond_c
    new-instance p1, Lיי/ʾᵎ;

    new-instance p2, Lיי/ᵔᵢ;

    invoke-direct {p2}, Lיי/ᵔᵢ;-><init>()V

    invoke-direct {p1, p2}, Lיי/ʾᵎ;-><init>(Lיי/ʼˎ;)V

    return-object p1

    :cond_d
    new-instance p1, Lיי/ʾᵎ;

    new-instance v2, Lיי/ʽﹳ;

    invoke-virtual {p2}, Lʻʽ/ʼˎ;->ⁱˊ()I

    move-result p2

    invoke-direct {v2, p2, v0, v1}, Lיי/ʽﹳ;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p1, v2}, Lיי/ʾᵎ;-><init>(Lיי/ʼˎ;)V

    return-object p1

    :cond_e
    :pswitch_7
    new-instance p1, Lיי/ʾᵎ;

    new-instance v0, Lיי/ٴﹶ;

    new-instance v2, Lˑי/ʽ;

    invoke-virtual {p0, p2}, Lיי/ﾞᴵ;->ⁱˊ(Lʻʽ/ʼˎ;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v2, p2}, Lˑי/ʽ;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v2, v1}, Lיי/ٴﹶ;-><init>(Lˑי/ʽ;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lיי/ʾᵎ;-><init>(Lיי/ʼˎ;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x80
        :pswitch_7
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x86
        :pswitch_0
        :pswitch_2
        :pswitch_6
    .end packed-switch
.end method
