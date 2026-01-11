.class public final Lˊʾ/ﾞʻ;
.super Lʼﹳ/ᵔʾ;
.source "SourceFile"


# instance fields
.field public final ˉٴ:Ljava/util/Set;

.field public final ٴʼ:Ljava/lang/String;

.field public final ٴᵢ:I

.field public final ᵎⁱ:Lʼﹳ/ᵔᵢ;


# direct methods
.method public constructor <init>(Lʼﹳ/ʽ;JJLʼﹳ/ᵔᵢ;ILjava/util/EnumSet;Ljava/lang/String;I)V
    .locals 9

    .prologue
    const/16 v1, 0x21

    sget-object v3, Lʼﹳ/ﾞʻ;->ˆﾞ:Lʼﹳ/ﾞʻ;

    move-object v0, p0

    move-object v2, p1

    move-wide v4, p2

    move-wide v6, p4

    move/from16 v8, p10

    invoke-direct/range {v0 .. v8}, Lʼﹳ/ᵔʾ;-><init>(ILʼﹳ/ʽ;Lʼﹳ/ﾞʻ;JJI)V

    move/from16 p1, p7

    iput p1, p0, Lˊʾ/ﾞʻ;->ٴᵢ:I

    move-object/from16 p1, p8

    iput-object p1, p0, Lˊʾ/ﾞʻ;->ˉٴ:Ljava/util/Set;

    iput-object p6, p0, Lˊʾ/ﾞʻ;->ᵎⁱ:Lʼﹳ/ᵔᵢ;

    if-nez p9, :cond_0

    const-string p1, "*"

    goto :goto_0

    :cond_0
    move-object/from16 p1, p9

    :goto_0
    iput-object p1, p0, Lˊʾ/ﾞʻ;->ٴʼ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final יˉ(Lˋʼ/ﹳٴ;)V
    .locals 3

    iget v0, p0, Lʼﹳ/ˉˆ;->ᴵˊ:I

    invoke-virtual {p1, v0}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    iget v0, p0, Lˊʾ/ﾞʻ;->ٴᵢ:I

    invoke-static {v0}, Lﹳˎ/ˆʾ;->ⁱˊ(I)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Lˎʿ/ⁱˊ;->ˈ(B)Lˎʿ/ⁱˊ;

    iget-object v0, p0, Lˊʾ/ﾞʻ;->ˉٴ:Ljava/util/Set;

    invoke-static {v0}, Lᴵʿ/ﹳٴ;->ˑﹳ(Ljava/util/Collection;)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Lˎʿ/ⁱˊ;->ˈ(B)Lˎʿ/ⁱˊ;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    iget-object v0, p0, Lˊʾ/ﾞʻ;->ᵎⁱ:Lʼﹳ/ᵔᵢ;

    invoke-virtual {v0, p1}, Lʼﹳ/ᵔᵢ;->ﹳٴ(Lˋʼ/ﹳٴ;)V

    const/16 v0, 0x60

    invoke-virtual {p1, v0}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    iget-object v0, p0, Lˊʾ/ﾞʻ;->ٴʼ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v1}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

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

    sget-object v1, Lᴵʿ/ⁱˊ;->ˈ:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0, v1}, Lˎʿ/ⁱˊ;->ﾞᴵ(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-void
.end method
