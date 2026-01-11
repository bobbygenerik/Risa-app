.class public final Lˊʾ/ⁱˊ;
.super Lʼﹳ/ˉˆ;
.source "SourceFile"


# instance fields
.field public final synthetic ˊʻ:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lˊʾ/ⁱˊ;->ˊʻ:I

    invoke-direct {p0}, Lʼﹳ/ˉˆ;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILʼﹳ/ʽ;Lʼﹳ/ﾞʻ;JJ)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lˊʾ/ⁱˊ;->ˊʻ:I

    invoke-direct/range {p0 .. p7}, Lʼﹳ/ˉˆ;-><init>(ILʼﹳ/ʽ;Lʼﹳ/ﾞʻ;JJ)V

    return-void
.end method


# virtual methods
.method public final ˋˊ(Lˋʼ/ﹳٴ;)V
    .locals 12

    .prologue
    iget v0, p0, Lˊʾ/ⁱˊ;->ˊʻ:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Lˎʿ/ⁱˊ;->ˉʿ()V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lˎʿ/ⁱˊ;->ˉˆ(I)V

    return-void

    :pswitch_0
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lˎʿ/ⁱˊ;->ˉˆ(I)V

    return-void

    :pswitch_1
    invoke-virtual {p1}, Lˎʿ/ⁱˊ;->ˉʿ()V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lˎʿ/ⁱˊ;->ˉˆ(I)V

    return-void

    :pswitch_2
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lˎʿ/ⁱˊ;->ˉˆ(I)V

    return-void

    :pswitch_3
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lˎʿ/ⁱˊ;->ˉˆ(I)V

    iget-object v1, p1, Lˎʿ/ⁱˊ;->ⁱˊ:Lˎʿ/ʽ;

    invoke-virtual {v1, p1}, Lˎʿ/ʽ;->ⁱˊ(Lˎʿ/ⁱˊ;)I

    move-result v2

    invoke-virtual {p1}, Lˎʿ/ⁱˊ;->ᵔʾ()I

    move-result v3

    if-lez v2, :cond_2

    if-lez v3, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v5, Lˋʼ/ⁱˊ;

    check-cast v5, Lʼﹳ/ٴﹶ;

    iget v5, v5, Lʼﹳ/ٴﹶ;->ᵔʾ:I

    add-int/2addr v5, v2

    iput v5, p1, Lˎʿ/ⁱˊ;->ʽ:I

    :cond_0
    invoke-virtual {v1, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {v1, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    move-result-wide v7

    const-class v9, Lﹶᵢ/ⁱˊ;

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Lᴵʿ/ﹳٴ;->ﾞᴵ(JLjava/lang/Class;Lٴˎ/ﹳٴ;)Lᴵʿ/ʽ;

    move-result-object v7

    check-cast v7, Lﹶᵢ/ⁱˊ;

    invoke-virtual {v1, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    move-result-wide v8

    sget-object v10, Lᴵʿ/ⁱˊ;->ʽ:Ljava/nio/charset/Charset;

    long-to-int v8, v8

    div-int/2addr v8, v0

    invoke-virtual {p1, v8, v10}, Lˎʿ/ⁱˊ;->ﾞʻ(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lﹶﾞ/ⁱי;

    const/16 v10, 0x15

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lﹶﾞ/ⁱי;-><init>(IZ)V

    iput-object v7, v9, Lﹶﾞ/ⁱי;->ᴵˊ:Ljava/lang/Object;

    iput-object v8, v9, Lﹶﾞ/ⁱי;->ʽʽ:Ljava/lang/Object;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v6, :cond_1

    add-int/2addr v5, v6

    iput v5, p1, Lˎʿ/ⁱˊ;->ʽ:I

    :cond_1
    if-nez v6, :cond_0

    :cond_2
    iget-object v0, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lˋʼ/ⁱˊ;

    check-cast v0, Lʼﹳ/ٴﹶ;

    iget v0, v0, Lʼﹳ/ٴﹶ;->ᵔʾ:I

    add-int/2addr v0, v2

    add-int/2addr v0, v3

    iput v0, p1, Lˎʿ/ⁱˊ;->ʽ:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public יˉ(Lˋʼ/ﹳٴ;)V
    .locals 1

    .prologue
    iget v0, p0, Lˊʾ/ⁱˊ;->ˊʻ:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Lʼﹳ/ˉˆ;->יˉ(Lˋʼ/ﹳٴ;)V

    return-void

    :pswitch_1
    iget v0, p0, Lʼﹳ/ˉˆ;->ᴵˊ:I

    invoke-virtual {p1, v0}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lˋʼ/ﹳٴ;->ʼᐧ(I)V

    return-void

    :pswitch_2
    iget v0, p0, Lʼﹳ/ˉˆ;->ᴵˊ:I

    invoke-virtual {p1, v0}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    invoke-virtual {p1}, Lˋʼ/ﹳٴ;->ᵔﹳ()V

    invoke-virtual {p1}, Lˋʼ/ﹳٴ;->ﹳᐧ()V

    const/4 p1, 0x0

    throw p1

    :pswitch_3
    iget v0, p0, Lʼﹳ/ˉˆ;->ᴵˊ:I

    invoke-virtual {p1, v0}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
