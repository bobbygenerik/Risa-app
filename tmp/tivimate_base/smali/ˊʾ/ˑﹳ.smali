.class public final Lˊʾ/ˑﹳ;
.super Lʼﹳ/ˉˆ;
.source "SourceFile"


# instance fields
.field public ˊʻ:Ljava/util/EnumSet;

.field public ٴᵢ:Lʼﹳ/ᵔᵢ;


# virtual methods
.method public final ˋˊ(Lˋʼ/ﹳٴ;)V
    .locals 5

    invoke-virtual {p1}, Lˎʿ/ⁱˊ;->ˉʿ()V

    invoke-virtual {p1}, Lˎʿ/ⁱˊ;->ʼˎ()B

    invoke-virtual {p1}, Lˎʿ/ⁱˊ;->ʼˎ()B

    iget-object v0, p1, Lˎʿ/ⁱˊ;->ⁱˊ:Lˎʿ/ʽ;

    invoke-virtual {v0, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    move-result-wide v1

    const-class v3, Lʼﹳ/ﹳٴ;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lᴵʿ/ﹳٴ;->ﾞᴵ(JLjava/lang/Class;Lٴˎ/ﹳٴ;)Lᴵʿ/ʽ;

    move-result-object v1

    check-cast v1, Lʼﹳ/ﹳٴ;

    invoke-static {p1}, Lﹳٴ/ﹳٴ;->ٴʼ(Lˎʿ/ⁱˊ;)Lﾞʾ/ⁱˊ;

    invoke-static {p1}, Lﹳٴ/ﹳٴ;->ٴʼ(Lˎʿ/ⁱˊ;)Lﾞʾ/ⁱˊ;

    invoke-static {p1}, Lﹳٴ/ﹳٴ;->ٴʼ(Lˎʿ/ⁱˊ;)Lﾞʾ/ⁱˊ;

    invoke-static {p1}, Lﹳٴ/ﹳٴ;->ٴʼ(Lˎʿ/ⁱˊ;)Lﾞʾ/ⁱˊ;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lˎʿ/ⁱˊ;->ٴﹶ(I)[B

    invoke-virtual {p1, v1}, Lˎʿ/ⁱˊ;->ٴﹶ(I)[B

    invoke-virtual {v0, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    move-result-wide v2

    const-class v4, Lﹶᵢ/ﹳٴ;

    invoke-static {v2, v3, v4}, Lᴵʿ/ﹳٴ;->ˈ(JLjava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    iput-object v2, p0, Lˊʾ/ˑﹳ;->ˊʻ:Ljava/util/EnumSet;

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lˎʿ/ⁱˊ;->ˉˆ(I)V

    new-instance v2, Lʼﹳ/ᵔᵢ;

    new-array v3, v1, [B

    invoke-virtual {p1, v1, v3}, Lˎʿ/ⁱˊ;->ˆʾ(I[B)V

    new-array v4, v1, [B

    invoke-virtual {p1, v1, v4}, Lˎʿ/ⁱˊ;->ˆʾ(I[B)V

    invoke-direct {v2, v3, v4}, Lʼﹳ/ᵔᵢ;-><init>([B[B)V

    iput-object v2, p0, Lˊʾ/ˑﹳ;->ٴᵢ:Lʼﹳ/ᵔᵢ;

    invoke-virtual {v0, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    invoke-virtual {v0, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    return-void
.end method
