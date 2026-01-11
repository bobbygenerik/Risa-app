.class public final Lٴᴵ/ٴﹶ;
.super Lٴᴵ/ˉʿ;
.source "SourceFile"

# interfaces
.implements Lـᵢ/ʼˎ;


# instance fields
.field public final ˊʻ:Lٴᴵ/ᵔʾ;


# direct methods
.method public constructor <init>(Lʽⁱ/ﹳᐧ;Lʼʻ/ᵎⁱ;Lٴᴵ/ᵔʾ;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lٴᴵ/ˉʿ;-><init>(Lʽⁱ/ﹳᐧ;Ljava/util/List;Lٴᴵ/יـ;Ljava/util/List;)V

    iput-object p3, p0, Lٴᴵ/ٴﹶ;->ˊʻ:Lٴᴵ/ᵔʾ;

    return-void
.end method


# virtual methods
.method public final ʼʼ()J
    .locals 2

    iget-object v0, p0, Lٴᴵ/ٴﹶ;->ˊʻ:Lٴᴵ/ᵔʾ;

    iget-wide v0, v0, Lٴᴵ/ᵔʾ;->ˈ:J

    return-wide v0
.end method

.method public final ʽ(J)J
    .locals 1

    iget-object v0, p0, Lٴᴵ/ٴﹶ;->ˊʻ:Lٴᴵ/ᵔʾ;

    invoke-virtual {v0, p1, p2}, Lٴᴵ/ᵔʾ;->ᵎﹶ(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final ʽﹳ(J)Lٴᴵ/ˆʾ;
    .locals 1

    iget-object v0, p0, Lٴᴵ/ٴﹶ;->ˊʻ:Lٴᴵ/ᵔʾ;

    invoke-virtual {v0, p0, p1, p2}, Lٴᴵ/ᵔʾ;->ᵔᵢ(Lٴᴵ/ٴﹶ;J)Lٴᴵ/ˆʾ;

    move-result-object p1

    return-object p1
.end method

.method public final ˈ()Lـᵢ/ʼˎ;
    .locals 0

    return-object p0
.end method

.method public final ˉˆ(JJ)J
    .locals 1

    iget-object v0, p0, Lٴᴵ/ٴﹶ;->ˊʻ:Lٴᴵ/ᵔʾ;

    invoke-virtual {v0, p1, p2, p3, p4}, Lٴᴵ/ᵔʾ;->ʽ(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final ˏי(JJ)J
    .locals 3

    .prologue
    iget-object v0, p0, Lٴᴵ/ٴﹶ;->ˊʻ:Lٴᴵ/ᵔʾ;

    iget-object v1, v0, Lٴᴵ/ᵔʾ;->ﾞᴵ:Ljava/util/List;

    if-eqz v1, :cond_0

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p1

    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lٴᴵ/ᵔʾ;->ʽ(JJ)J

    move-result-wide v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lٴᴵ/ᵔʾ;->ⁱˊ(JJ)J

    move-result-wide p3

    add-long/2addr p3, v1

    invoke-virtual {v0, p3, p4}, Lٴᴵ/ᵔʾ;->ᵎﹶ(J)J

    move-result-wide v1

    invoke-virtual {v0, p3, p4, p1, p2}, Lٴᴵ/ᵔʾ;->ˑﹳ(JJ)J

    move-result-wide p1

    add-long/2addr p1, v1

    iget-wide p3, v0, Lٴᴵ/ᵔʾ;->ʼˎ:J

    sub-long/2addr p1, p3

    return-wide p1
.end method

.method public final ˑﹳ()Lٴᴵ/ˆʾ;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final ـˆ()Z
    .locals 1

    iget-object v0, p0, Lٴᴵ/ٴﹶ;->ˊʻ:Lٴᴵ/ᵔʾ;

    invoke-virtual {v0}, Lٴᴵ/ᵔʾ;->ʼˎ()Z

    move-result v0

    return v0
.end method

.method public final ٴᵢ(JJ)J
    .locals 1

    iget-object v0, p0, Lٴᴵ/ٴﹶ;->ˊʻ:Lٴᴵ/ᵔʾ;

    invoke-virtual {v0, p1, p2, p3, p4}, Lٴᴵ/ᵔʾ;->ⁱˊ(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final ᴵᵔ(J)J
    .locals 1

    iget-object v0, p0, Lٴᴵ/ٴﹶ;->ˊʻ:Lٴᴵ/ᵔʾ;

    invoke-virtual {v0, p1, p2}, Lٴᴵ/ᵔʾ;->ˈ(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final ᵎﹶ(JJ)J
    .locals 1

    iget-object v0, p0, Lٴᴵ/ٴﹶ;->ˊʻ:Lٴᴵ/ᵔʾ;

    invoke-virtual {v0, p1, p2, p3, p4}, Lٴᴵ/ᵔʾ;->ˑﹳ(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final ⁱˊ()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final ﹳٴ(JJ)J
    .locals 1

    iget-object v0, p0, Lٴᴵ/ٴﹶ;->ˊʻ:Lٴᴵ/ᵔʾ;

    invoke-virtual {v0, p1, p2, p3, p4}, Lٴᴵ/ᵔʾ;->ﾞᴵ(JJ)J

    move-result-wide p1

    return-wide p1
.end method
