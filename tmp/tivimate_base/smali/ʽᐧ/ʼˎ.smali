.class public abstract Lʽᐧ/ʼˎ;
.super Lﹳⁱ/ﾞᴵ;
.source "SourceFile"

# interfaces
.implements Lʽᐧ/ˈ;


# instance fields
.field public ˊʻ:Lʽᐧ/ˈ;

.field public ٴᵢ:J


# virtual methods
.method public final ˏי()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lʻᴵ/ﾞᴵ;->ᴵˊ:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lﹳⁱ/ﾞᴵ;->ʽʽ:J

    iput v0, p0, Lﹳⁱ/ﾞᴵ;->ˈٴ:I

    iput-boolean v0, p0, Lﹳⁱ/ﾞᴵ;->ᴵᵔ:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lʽᐧ/ʼˎ;->ˊʻ:Lʽᐧ/ˈ;

    return-void
.end method

.method public final ᵔʾ()I
    .locals 1

    iget-object v0, p0, Lʽᐧ/ʼˎ;->ˊʻ:Lʽᐧ/ˈ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lʽᐧ/ˈ;->ᵔʾ()I

    move-result v0

    return v0
.end method

.method public final ﹳٴ(J)I
    .locals 3

    iget-object v0, p0, Lʽᐧ/ʼˎ;->ˊʻ:Lʽᐧ/ˈ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v1, p0, Lʽᐧ/ʼˎ;->ٴᵢ:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lʽᐧ/ˈ;->ﹳٴ(J)I

    move-result p1

    return p1
.end method

.method public final ﾞʻ(J)Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lʽᐧ/ʼˎ;->ˊʻ:Lʽᐧ/ˈ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v1, p0, Lʽᐧ/ʼˎ;->ٴᵢ:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lʽᐧ/ˈ;->ﾞʻ(J)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final ﾞᴵ(I)J
    .locals 4

    iget-object v0, p0, Lʽᐧ/ʼˎ;->ˊʻ:Lʽᐧ/ˈ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p1}, Lʽᐧ/ˈ;->ﾞᴵ(I)J

    move-result-wide v0

    iget-wide v2, p0, Lʽᐧ/ʼˎ;->ٴᵢ:J

    add-long/2addr v0, v2

    return-wide v0
.end method
