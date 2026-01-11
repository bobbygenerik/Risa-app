.class public final Lﹳˋ/יـ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﹳˋ/ʼᐧ;
.implements Lﹳˋ/ˉˆ;


# instance fields
.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lﹳˋ/יـ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ʽ(Lˎʿ/ⁱˊ;)Lﹳˋ/ᵔﹳ;
    .locals 8

    .prologue
    iget v0, p0, Lﹳˋ/יـ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p1}, Lﹳٴ/ﹳٴ;->ٴʼ(Lˎʿ/ⁱˊ;)Lﾞʾ/ⁱˊ;

    move-result-object v2

    invoke-static {p1}, Lﹳٴ/ﹳٴ;->ٴʼ(Lˎʿ/ⁱˊ;)Lﾞʾ/ⁱˊ;

    move-result-object v3

    invoke-static {p1}, Lﹳٴ/ﹳٴ;->ٴʼ(Lˎʿ/ⁱˊ;)Lﾞʾ/ⁱˊ;

    move-result-object v4

    invoke-static {p1}, Lﹳٴ/ﹳٴ;->ٴʼ(Lˎʿ/ⁱˊ;)Lﾞʾ/ⁱˊ;

    move-result-object v5

    iget-object v0, p1, Lˎʿ/ⁱˊ;->ⁱˊ:Lˎʿ/ʽ;

    invoke-virtual {v0, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    move-result-wide v6

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lˎʿ/ⁱˊ;->ˉˆ(I)V

    new-instance v1, Lﹳˋ/ˑﹳ;

    invoke-direct/range {v1 .. v7}, Lﹳˋ/ˑﹳ;-><init>(Lﾞʾ/ⁱˊ;Lﾞʾ/ⁱˊ;Lﾞʾ/ⁱˊ;Lﾞʾ/ⁱˊ;J)V

    return-object v1

    :pswitch_0
    iget-object v0, p1, Lˎʿ/ⁱˊ;->ⁱˊ:Lˎʿ/ʽ;

    invoke-virtual {v0, p1}, Lˎʿ/ʽ;->ﹳٴ(Lˎʿ/ⁱˊ;)J

    move-result-wide v0

    new-instance p1, Lﹳˋ/ˈ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p1, Lﹳˋ/ˈ;->ʾˋ:J

    return-object p1

    :pswitch_1
    iget-object v0, p1, Lˎʿ/ⁱˊ;->ⁱˊ:Lˎʿ/ʽ;

    invoke-virtual {v0, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    move-result-wide v0

    long-to-int p1, v0

    new-instance v0, Lﹳˋ/ʼʼ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput p1, v0, Lﹳˋ/ʼʼ;->ʾˋ:I

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ⁱˊ(Lﹳˋ/ʼˎ;Lˋʼ/ﹳٴ;)V
    .locals 4

    .prologue
    iget v0, p0, Lﹳˋ/יـ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lﹳˋ/ˑﹳ;

    iget-object v0, p1, Lﹳˋ/ˑﹳ;->ʾˋ:Lﾞʾ/ⁱˊ;

    invoke-static {v0, p2}, Lﹳٴ/ﹳٴ;->ˊʻ(Lﾞʾ/ⁱˊ;Lˋʼ/ﹳٴ;)V

    iget-object v0, p1, Lﹳˋ/ˑﹳ;->ᴵˊ:Lﾞʾ/ⁱˊ;

    invoke-static {v0, p2}, Lﹳٴ/ﹳٴ;->ˊʻ(Lﾞʾ/ⁱˊ;Lˋʼ/ﹳٴ;)V

    iget-object v0, p1, Lﹳˋ/ˑﹳ;->ʽʽ:Lﾞʾ/ⁱˊ;

    invoke-static {v0, p2}, Lﹳٴ/ﹳٴ;->ˊʻ(Lﾞʾ/ⁱˊ;Lˋʼ/ﹳٴ;)V

    iget-object v0, p1, Lﹳˋ/ˑﹳ;->ˈٴ:Lﾞʾ/ⁱˊ;

    invoke-static {v0, p2}, Lﹳٴ/ﹳٴ;->ˊʻ(Lﾞʾ/ⁱˊ;Lˋʼ/ﹳٴ;)V

    iget-wide v0, p1, Lﹳˋ/ˑﹳ;->ᴵᵔ:J

    invoke-virtual {p2, v0, v1}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    const-wide/16 v0, 0x0

    invoke-virtual {p2, v0, v1}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    return-void

    :pswitch_0
    check-cast p1, Lﹳˋ/ˈ;

    iget-wide v0, p1, Lﹳˋ/ˈ;->ʾˋ:J

    iget-object p1, p2, Lˎʿ/ⁱˊ;->ⁱˊ:Lˎʿ/ʽ;

    invoke-virtual {p1, p2, v0, v1}, Lˎʿ/ʽ;->ﾞᴵ(Lˎʿ/ⁱˊ;J)V

    return-void

    :pswitch_1
    check-cast p1, Lﹳˋ/ʼʼ;

    iget p1, p1, Lﹳˋ/ʼʼ;->ʾˋ:I

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ﹳٴ()I
    .locals 1

    .prologue
    iget v0, p0, Lﹳˋ/יـ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x4

    return v0

    :pswitch_0
    const/16 v0, 0x13

    return v0

    :pswitch_1
    const/16 v0, 0x10

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
