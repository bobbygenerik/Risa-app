.class public final Lˊʾ/ʼᐧ;
.super Lʼﹳ/ᵔʾ;
.source "SourceFile"


# instance fields
.field public final ˉٴ:Lʼﹳ/ᵔᵢ;

.field public final ٴᵢ:J


# direct methods
.method public constructor <init>(Lʼﹳ/ʽ;Lʼﹳ/ᵔᵢ;JJJI)V
    .locals 9

    const/16 v1, 0x31

    sget-object v3, Lʼﹳ/ﾞʻ;->ᵎⁱ:Lʼﹳ/ﾞʻ;

    move-object v0, p0

    move-object v2, p1

    move-wide v4, p3

    move-wide v6, p5

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lʼﹳ/ᵔʾ;-><init>(ILʼﹳ/ʽ;Lʼﹳ/ﾞʻ;JJI)V

    iput-object p2, p0, Lˊʾ/ʼᐧ;->ˉٴ:Lʼﹳ/ᵔᵢ;

    move-wide/from16 p1, p7

    iput-wide p1, p0, Lˊʾ/ʼᐧ;->ٴᵢ:J

    return-void
.end method


# virtual methods
.method public final יˉ(Lˋʼ/ﹳٴ;)V
    .locals 4

    iget v0, p0, Lʼﹳ/ˉˆ;->ᴵˊ:I

    invoke-virtual {p1, v0}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lˎʿ/ⁱˊ;->ˈ(B)Lˎʿ/ⁱˊ;

    invoke-virtual {p1, v0}, Lˎʿ/ⁱˊ;->ˈ(B)Lˎʿ/ⁱˊ;

    iget-object v1, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v1, Lˋʼ/ⁱˊ;

    check-cast v1, Lʼﹳ/ٴﹶ;

    iget v1, v1, Lʼﹳ/ٴﹶ;->ⁱˊ:I

    const/high16 v2, 0x10000

    mul-int/2addr v1, v2

    iget v2, p0, Lʼﹳ/ᵔʾ;->ˊʻ:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    iget-wide v1, p0, Lˊʾ/ʼᐧ;->ٴᵢ:J

    iget-object v3, p1, Lˎʿ/ⁱˊ;->ⁱˊ:Lˎʿ/ʽ;

    invoke-virtual {v3, p1, v1, v2}, Lˎʿ/ʽ;->ᵔᵢ(Lˎʿ/ⁱˊ;J)V

    iget-object v1, p0, Lˊʾ/ʼᐧ;->ˉٴ:Lʼﹳ/ᵔᵢ;

    invoke-virtual {v1, p1}, Lʼﹳ/ᵔᵢ;->ﹳٴ(Lˋʼ/ﹳٴ;)V

    const-wide/16 v1, 0x1

    invoke-virtual {p1, v1, v2}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    invoke-virtual {p1, v1, v2}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    invoke-virtual {p1, v0}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    invoke-virtual {p1, v0}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    invoke-virtual {p1, v0}, Lˎʿ/ⁱˊ;->ˈ(B)Lˎʿ/ⁱˊ;

    return-void
.end method
