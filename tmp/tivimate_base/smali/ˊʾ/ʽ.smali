.class public final Lˊʾ/ʽ;
.super Lʼﹳ/ˉˆ;
.source "SourceFile"


# instance fields
.field public final synthetic ˊʻ:I

.field public ٴᵢ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lˊʾ/ʽ;->ˊʻ:I

    invoke-direct {p0}, Lʼﹳ/ˉˆ;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILʼﹳ/ʽ;Lʼﹳ/ﾞʻ;JJI)V
    .locals 0

    iput p8, p0, Lˊʾ/ʽ;->ˊʻ:I

    invoke-direct/range {p0 .. p7}, Lʼﹳ/ˉˆ;-><init>(ILʼﹳ/ʽ;Lʼﹳ/ﾞʻ;JJ)V

    return-void
.end method


# virtual methods
.method public ˋˊ(Lˋʼ/ﹳٴ;)V
    .locals 2

    .prologue
    iget v0, p0, Lˊʾ/ʽ;->ˊʻ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lʼﹳ/ˉˆ;->ˋˊ(Lˋʼ/ﹳٴ;)V

    return-void

    :pswitch_0
    invoke-virtual {p1}, Lˎʿ/ⁱˊ;->ˉʿ()V

    invoke-virtual {p1}, Lˎʿ/ⁱˊ;->ˉʿ()V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lˎʿ/ⁱˊ;->ˉˆ(I)V

    invoke-static {p1}, Lﹳٴ/ﹳٴ;->ٴʼ(Lˎʿ/ⁱˊ;)Lﾞʾ/ⁱˊ;

    invoke-static {p1}, Lﹳٴ/ﹳٴ;->ٴʼ(Lˎʿ/ⁱˊ;)Lﾞʾ/ⁱˊ;

    invoke-static {p1}, Lﹳٴ/ﹳٴ;->ٴʼ(Lˎʿ/ⁱˊ;)Lﾞʾ/ⁱˊ;

    invoke-static {p1}, Lﹳٴ/ﹳٴ;->ٴʼ(Lˎʿ/ⁱˊ;)Lﾞʾ/ⁱˊ;

    iget-object v1, p1, Lˎʿ/ⁱˊ;->ⁱˊ:Lˎʿ/ʽ;

    invoke-virtual {v1, p1}, Lˎʿ/ʽ;->ˈ(Lˎʿ/ⁱˊ;)J

    invoke-virtual {v1, p1}, Lˎʿ/ʽ;->ˈ(Lˎʿ/ⁱˊ;)J

    invoke-virtual {p1, v0}, Lˎʿ/ⁱˊ;->ٴﹶ(I)[B

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final יˉ(Lˋʼ/ﹳٴ;)V
    .locals 3

    .prologue
    iget v0, p0, Lˊʾ/ʽ;->ˊʻ:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lʼﹳ/ˉˆ;->ᴵˊ:I

    invoke-virtual {p1, v0}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    invoke-virtual {p1}, Lˋʼ/ﹳٴ;->ᵔﹳ()V

    const/16 v0, 0x48

    invoke-virtual {p1, v0}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    iget-object v0, p0, Lˊʾ/ʽ;->ٴᵢ:Ljava/lang/Object;

    check-cast v0, Lˎᴵ/ﹳٴ;

    invoke-virtual {v0}, Lˎᴵ/ﹳٴ;->ⁱˊ()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lˎʿ/ⁱˊ;->ⁱˊ:Lˎʿ/ʽ;

    if-nez v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lˎʿ/ʽ;->ᵎﹶ(Lˎʿ/ⁱˊ;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, p1, v2}, Lˎʿ/ʽ;->ᵎﹶ(Lˎʿ/ⁱˊ;I)V

    :goto_0
    sget-object v1, Lᴵʿ/ⁱˊ;->ˈ:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0, v1}, Lˎʿ/ⁱˊ;->ﾞᴵ(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-void

    :pswitch_0
    iget v0, p0, Lʼﹳ/ˉˆ;->ᴵˊ:I

    invoke-virtual {p1, v0}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    invoke-virtual {p1}, Lˋʼ/ﹳٴ;->ﹳᐧ()V

    iget-object v0, p0, Lˊʾ/ʽ;->ٴᵢ:Ljava/lang/Object;

    check-cast v0, Lʼﹳ/ᵔᵢ;

    invoke-virtual {v0, p1}, Lʼﹳ/ᵔᵢ;->ﹳٴ(Lˋʼ/ﹳٴ;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
