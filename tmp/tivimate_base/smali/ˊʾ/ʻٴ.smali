.class public final Lˊʾ/ʻٴ;
.super Lʼﹳ/ˉˆ;
.source "SourceFile"


# instance fields
.field public ˊʻ:B

.field public ٴᵢ:Ljava/util/EnumSet;


# virtual methods
.method public final ˋˊ(Lˋʼ/ﹳٴ;)V
    .locals 4

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lˎʿ/ⁱˊ;->ˉˆ(I)V

    invoke-virtual {p1}, Lˎʿ/ⁱˊ;->ʼˎ()B

    move-result v0

    iput-byte v0, p0, Lˊʾ/ʻٴ;->ˊʻ:B

    invoke-virtual {p1}, Lˎʿ/ⁱˊ;->ʼˎ()B

    iget-object v0, p1, Lˎʿ/ⁱˊ;->ⁱˊ:Lˎʿ/ʽ;

    invoke-virtual {v0, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    invoke-virtual {v0, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    move-result-wide v1

    const-class v3, Lʼﹳ/ﹳᐧ;

    invoke-static {v1, v2, v3}, Lᴵʿ/ﹳٴ;->ˈ(JLjava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, p0, Lˊʾ/ʻٴ;->ٴᵢ:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    move-result-wide v0

    const-class p1, Lﾞʾ/ﹳٴ;

    invoke-static {v0, v1, p1}, Lᴵʿ/ﹳٴ;->ˈ(JLjava/lang/Class;)Ljava/util/EnumSet;

    return-void
.end method
