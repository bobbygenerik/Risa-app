.class public final Lﹳᵢ/ﾞᴵ;
.super Lﹳᵢ/ˊᵔ;
.source "SourceFile"


# instance fields
.field public ʼˈ:J

.field public final ˆﾞ:Z

.field public final ˈʿ:Lʽⁱ/ˊˋ;

.field public ˊˋ:J

.field public ˋᵔ:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

.field public ˑٴ:Lﹳᵢ/ˑﹳ;

.field public final ᵔי:J

.field public final ᵔٴ:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lﹳᵢ/ˈ;)V
    .locals 2

    iget-object v0, p1, Lﹳᵢ/ˈ;->ﹳٴ:Lﹳᵢ/ᴵˊ;

    invoke-direct {p0, v0}, Lﹳᵢ/ˊᵔ;-><init>(Lﹳᵢ/ᴵˊ;)V

    iget-wide v0, p1, Lﹳᵢ/ˈ;->ⁱˊ:J

    iput-wide v0, p0, Lﹳᵢ/ﾞᴵ;->ᵔי:J

    iget-boolean p1, p1, Lﹳᵢ/ˈ;->ʽ:Z

    iput-boolean p1, p0, Lﹳᵢ/ﾞᴵ;->ˆﾞ:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lﹳᵢ/ﾞᴵ;->ᵔٴ:Ljava/util/ArrayList;

    new-instance p1, Lʽⁱ/ˊˋ;

    invoke-direct {p1}, Lʽⁱ/ˊˋ;-><init>()V

    iput-object p1, p0, Lﹳᵢ/ﾞᴵ;->ˈʿ:Lʽⁱ/ˊˋ;

    return-void
.end method


# virtual methods
.method public final ʾᵎ()V
    .locals 1

    invoke-super {p0}, Lﹳᵢ/ˆʾ;->ʾᵎ()V

    const/4 v0, 0x0

    iput-object v0, p0, Lﹳᵢ/ﾞᴵ;->ˋᵔ:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    iput-object v0, p0, Lﹳᵢ/ﾞᴵ;->ˑٴ:Lﹳᵢ/ˑﹳ;

    return-void
.end method

.method public final ˈ()V
    .locals 1

    .prologue
    iget-object v0, p0, Lﹳᵢ/ﾞᴵ;->ˋᵔ:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    if-nez v0, :cond_0

    invoke-super {p0}, Lﹳᵢ/ˆʾ;->ˈ()V

    return-void

    :cond_0
    throw v0
.end method

.method public final ˊʻ(Lʽⁱ/ʼˈ;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lﹳᵢ/ﾞᴵ;->ˋᵔ:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lﹳᵢ/ﾞᴵ;->ᵎⁱ(Lʽⁱ/ʼˈ;)V

    return-void
.end method

.method public final ˑﹳ(Lﹳᵢ/ʾᵎ;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lﹳᵢ/ﾞᴵ;->ᵔٴ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    check-cast p1, Lﹳᵢ/ʽ;

    iget-object p1, p1, Lﹳᵢ/ʽ;->ʾˋ:Lﹳᵢ/ʾᵎ;

    iget-object v1, p0, Lﹳᵢ/ˊᵔ;->ᵎˊ:Lﹳᵢ/ᴵˊ;

    invoke-interface {v1, p1}, Lﹳᵢ/ᴵˊ;->ˑﹳ(Lﹳᵢ/ʾᵎ;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lﹳᵢ/ﾞᴵ;->ˑٴ:Lﹳᵢ/ˑﹳ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lﹳᵢ/ʼᐧ;->ⁱˊ:Lʽⁱ/ʼˈ;

    invoke-virtual {p0, p1}, Lﹳᵢ/ﾞᴵ;->ᵎⁱ(Lʽⁱ/ʼˈ;)V

    :cond_0
    return-void
.end method

.method public final ᵎⁱ(Lʽⁱ/ʼˈ;)V
    .locals 13

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lﹳᵢ/ﾞᴵ;->ˈʿ:Lʽⁱ/ˊˋ;

    invoke-virtual {p1, v1, v0}, Lʽⁱ/ʼˈ;->ᵔʾ(ILʽⁱ/ˊˋ;)V

    iget-wide v4, v0, Lʽⁱ/ˊˋ;->ʼᐧ:J

    iget-object v0, p0, Lﹳᵢ/ﾞᴵ;->ˑٴ:Lﹳᵢ/ˑﹳ;

    iget-wide v6, p0, Lﹳᵢ/ﾞᴵ;->ᵔי:J

    const-wide/high16 v8, -0x8000000000000000L

    iget-object v10, p0, Lﹳᵢ/ﾞᴵ;->ᵔٴ:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v11, p0, Lﹳᵢ/ﾞᴵ;->ˊˋ:J

    sub-long/2addr v11, v4

    cmp-long v0, v6, v8

    if-nez v0, :cond_0

    move-wide v6, v8

    goto :goto_0

    :cond_0
    iget-wide v6, p0, Lﹳᵢ/ﾞᴵ;->ʼˈ:J

    sub-long/2addr v6, v4

    :goto_0
    move-wide v4, v11

    goto :goto_3

    :cond_1
    iput-wide v4, p0, Lﹳᵢ/ﾞᴵ;->ˊˋ:J

    cmp-long v0, v6, v8

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    add-long v8, v4, v6

    :goto_1
    iput-wide v8, p0, Lﹳᵢ/ﾞᴵ;->ʼˈ:J

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_3

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lﹳᵢ/ʽ;

    iget-wide v8, p0, Lﹳᵢ/ﾞᴵ;->ˊˋ:J

    iget-wide v11, p0, Lﹳᵢ/ﾞᴵ;->ʼˈ:J

    iput-wide v8, v4, Lﹳᵢ/ʽ;->ᴵᵔ:J

    iput-wide v11, v4, Lﹳᵢ/ʽ;->ˊʻ:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    const-wide/16 v11, 0x0

    goto :goto_0

    :goto_3
    :try_start_0
    new-instance v2, Lﹳᵢ/ˑﹳ;

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lﹳᵢ/ˑﹳ;-><init>(Lʽⁱ/ʼˈ;JJ)V

    iput-object v2, p0, Lﹳᵢ/ﾞᴵ;->ˑٴ:Lﹳᵢ/ˑﹳ;
    :try_end_0
    .catch Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, v2}, Lﹳᵢ/ﹳٴ;->ʻٴ(Lʽⁱ/ʼˈ;)V

    return-void

    :catch_0
    move-exception v0

    iput-object v0, p0, Lﹳᵢ/ﾞᴵ;->ˋᵔ:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    :goto_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lﹳᵢ/ʽ;

    iget-object v2, p0, Lﹳᵢ/ﾞᴵ;->ˋᵔ:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    iput-object v2, v0, Lﹳᵢ/ʽ;->ٴᵢ:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method

.method public final ⁱˊ(Lﹳᵢ/ᵢˏ;Lᵔⁱ/ˑﹳ;J)Lﹳᵢ/ʾᵎ;
    .locals 7

    new-instance v0, Lﹳᵢ/ʽ;

    iget-object v1, p0, Lﹳᵢ/ˊᵔ;->ᵎˊ:Lﹳᵢ/ᴵˊ;

    invoke-interface {v1, p1, p2, p3, p4}, Lﹳᵢ/ᴵˊ;->ⁱˊ(Lﹳᵢ/ᵢˏ;Lᵔⁱ/ˑﹳ;J)Lﹳᵢ/ʾᵎ;

    move-result-object v1

    iget-wide v3, p0, Lﹳᵢ/ﾞᴵ;->ˊˋ:J

    iget-wide v5, p0, Lﹳᵢ/ﾞᴵ;->ʼˈ:J

    iget-boolean v2, p0, Lﹳᵢ/ﾞᴵ;->ˆﾞ:Z

    invoke-direct/range {v0 .. v6}, Lﹳᵢ/ʽ;-><init>(Lﹳᵢ/ʾᵎ;ZJJ)V

    iget-object p1, p0, Lﹳᵢ/ﾞᴵ;->ᵔٴ:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
