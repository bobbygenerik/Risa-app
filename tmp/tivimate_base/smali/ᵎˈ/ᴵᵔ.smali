.class public final Lᵎˈ/ᴵᵔ;
.super Lʿᵔ/ʽ;
.source "SourceFile"


# instance fields
.field public ⁱˊ:Lᴵי/ٴﹶ;

.field public ﹳٴ:J


# virtual methods
.method public final ⁱˊ(Lʿᵔ/ﹳٴ;)[Lˈי/ˈ;
    .locals 4

    check-cast p1, Lᵎˈ/ʽʽ;

    iget-wide v0, p0, Lᵎˈ/ᴵᵔ;->ﹳٴ:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lᵎˈ/ᴵᵔ;->ﹳٴ:J

    const/4 v2, 0x0

    iput-object v2, p0, Lᵎˈ/ᴵᵔ;->ⁱˊ:Lᴵי/ٴﹶ;

    invoke-virtual {p1, v0, v1}, Lᵎˈ/ʽʽ;->ˏי(J)[Lˈי/ˈ;

    move-result-object p1

    return-object p1
.end method

.method public final ﹳٴ(Lʿᵔ/ﹳٴ;)Z
    .locals 4

    .prologue
    check-cast p1, Lᵎˈ/ʽʽ;

    iget-wide v0, p0, Lᵎˈ/ᴵᵔ;->ﹳٴ:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-wide v0, p1, Lᵎˈ/ʽʽ;->ˊʻ:J

    iget-wide v2, p1, Lᵎˈ/ʽʽ;->ٴᵢ:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    iput-wide v0, p1, Lᵎˈ/ʽʽ;->ٴᵢ:J

    :cond_1
    iput-wide v0, p0, Lᵎˈ/ᴵᵔ;->ﹳٴ:J

    const/4 p1, 0x1

    return p1
.end method
