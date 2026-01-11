.class public final Lˊʾ/ʽﹳ;
.super Lʼﹳ/ˉˆ;
.source "SourceFile"


# instance fields
.field public final ˉٴ:I

.field public final ˊʻ:Lʼﹳ/ᵔᵢ;

.field public final ٴᵢ:I

.field public final ᵎⁱ:[B


# direct methods
.method public constructor <init>(Lʼﹳ/ʽ;JJLʼﹳ/ᵔᵢ;I[B)V
    .locals 8

    const/16 v1, 0x21

    sget-object v3, Lʼﹳ/ﾞʻ;->ˈʿ:Lʼﹳ/ﾞʻ;

    move-object v0, p0

    move-object v2, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v0 .. v7}, Lʼﹳ/ˉˆ;-><init>(ILʼﹳ/ʽ;Lʼﹳ/ﾞʻ;JJ)V

    iput-object p6, p0, Lˊʾ/ʽﹳ;->ˊʻ:Lʼﹳ/ᵔᵢ;

    const/4 p1, 0x1

    iput p1, p0, Lˊʾ/ʽﹳ;->ٴᵢ:I

    iput p7, p0, Lˊʾ/ʽﹳ;->ˉٴ:I

    move-object/from16 p1, p8

    iput-object p1, p0, Lˊʾ/ʽﹳ;->ᵎⁱ:[B

    return-void
.end method


# virtual methods
.method public final יˉ(Lˋʼ/ﹳٴ;)V
    .locals 3

    .prologue
    iget v0, p0, Lʼﹳ/ˉˆ;->ᴵˊ:I

    invoke-virtual {p1, v0}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    const/4 v0, 0x1

    iget v1, p0, Lˊʾ/ʽﹳ;->ٴᵢ:I

    if-eq v1, v0, :cond_3

    const/4 v0, 0x2

    if-eq v1, v0, :cond_2

    const/4 v0, 0x3

    if-eq v1, v0, :cond_1

    const/4 v0, 0x4

    if-ne v1, v0, :cond_0

    const-wide/16 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    const-wide/16 v0, 0x3

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x2

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x1

    :goto_0
    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Lˎʿ/ⁱˊ;->ˈ(B)Lˎʿ/ⁱˊ;

    iget v0, p0, Lˊʾ/ʽﹳ;->ˉٴ:I

    if-nez v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    invoke-static {v0}, Lﹳˎ/ˆʾ;->ⁱˊ(I)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-byte v0, v0

    :goto_1
    invoke-virtual {p1, v0}, Lˎʿ/ⁱˊ;->ˈ(B)Lˎʿ/ⁱˊ;

    iget-object v0, p0, Lˊʾ/ʽﹳ;->ᵎⁱ:[B

    array-length v1, v0

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    const/16 v1, 0x60

    invoke-virtual {p1, v1}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    invoke-virtual {p1}, Lˋʼ/ﹳٴ;->ᵔﹳ()V

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    iget-object v1, p0, Lˊʾ/ʽﹳ;->ˊʻ:Lʼﹳ/ᵔᵢ;

    invoke-virtual {v1, p1}, Lʼﹳ/ᵔᵢ;->ﹳٴ(Lˋʼ/ﹳٴ;)V

    array-length v1, v0

    invoke-virtual {p1, v1, v0}, Lˎʿ/ⁱˊ;->ˑﹳ(I[B)Lˎʿ/ⁱˊ;

    return-void
.end method
