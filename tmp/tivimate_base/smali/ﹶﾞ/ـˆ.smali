.class public final Lﹶﾞ/ـˆ;
.super Lﹶﾞ/ʾᵎ;
.source "SourceFile"


# instance fields
.field public final ʽʽ:Lיـ/ˑﹳ;

.field public ˈٴ:J

.field public final ᴵˊ:Lיـ/ˑﹳ;


# direct methods
.method public constructor <init>(Lﹶﾞ/ᵎʻ;)V
    .locals 1

    invoke-direct {p0, p1}, Lʽⁱ/ᵎﹶ;-><init>(Lﹶﾞ/ᵎʻ;)V

    new-instance p1, Lיـ/ˑﹳ;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lיـ/ﹳᐧ;-><init>(I)V

    iput-object p1, p0, Lﹶﾞ/ـˆ;->ʽʽ:Lיـ/ˑﹳ;

    new-instance p1, Lיـ/ˑﹳ;

    invoke-direct {p1, v0}, Lיـ/ﹳᐧ;-><init>(I)V

    iput-object p1, p0, Lﹶﾞ/ـˆ;->ᴵˊ:Lיـ/ˑﹳ;

    return-void
.end method


# virtual methods
.method public final ʼᵢ(JLﹶﾞ/ﹶʽ;)V
    .locals 3

    .prologue
    iget-object v0, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    if-nez p3, :cond_0

    iget-object p1, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {p1}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object p1, p1, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string p2, "Not logging ad exposure. No active activity"

    invoke-virtual {p1, p2}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    return-void

    :cond_0
    const-wide/16 v1, 0x3e8

    cmp-long v1, p1, v1

    if-gez v1, :cond_1

    iget-object p3, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {p3}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object p3, p3, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v0, "Not logging ad exposure. Less than 1000 ms. exposure"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1, v0}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "_xt"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const/4 p1, 0x1

    invoke-static {p3, v1, p1}, Lﹶﾞ/ᵢﹳ;->ʾˏ(Lﹶﾞ/ﹶʽ;Landroid/os/Bundle;Z)V

    iget-object p1, v0, Lﹶﾞ/ᵎʻ;->ˆﾞ:Lﹶﾞ/ˈـ;

    invoke-static {p1}, Lﹶﾞ/ᵎʻ;->ᵔᵢ(Lﹶﾞ/ٴᵢ;)V

    const-string p2, "am"

    const-string p3, "_xa"

    invoke-virtual {p1, p2, p3, v1}, Lﹶﾞ/ˈـ;->ˈـ(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final ʽˑ(Ljava/lang/String;J)V
    .locals 7

    .prologue
    iget-object v0, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    new-instance v1, Lﹶﾞ/ﹳٴ;

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lﹶﾞ/ﹳٴ;-><init>(Lﹶﾞ/ـˆ;Ljava/lang/String;JI)V

    invoke-virtual {v0, v1}, Lﹶﾞ/ʻˋ;->ˑˆ(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    iget-object p1, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {p1}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object p1, p1, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string p2, "Ad unit id must be a non-empty string"

    invoke-virtual {p1, p2}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    return-void
.end method

.method public final ˋˊ(J)V
    .locals 6

    .prologue
    iget-object v0, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ᵔי:Lﹶﾞ/ﾞˏ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ᵔᵢ(Lﹶﾞ/ٴᵢ;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lﹶﾞ/ﾞˏ;->ﾞˋ(Z)Lﹶﾞ/ﹶʽ;

    move-result-object v0

    iget-object v1, p0, Lﹶﾞ/ـˆ;->ᴵˊ:Lיـ/ˑﹳ;

    invoke-virtual {v1}, Lיـ/ˑﹳ;->keySet()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Lיـ/ⁱˊ;

    invoke-virtual {v2}, Lיـ/ⁱˊ;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, p1, v4

    invoke-virtual {p0, v3, v4, v5, v0}, Lﹶﾞ/ـˆ;->יˉ(Ljava/lang/String;JLﹶﾞ/ﹶʽ;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lיـ/ﹳᐧ;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lﹶﾞ/ـˆ;->ˈٴ:J

    sub-long v1, p1, v1

    invoke-virtual {p0, v1, v2, v0}, Lﹶﾞ/ـˆ;->ʼᵢ(JLﹶﾞ/ﹶʽ;)V

    :cond_1
    invoke-virtual {p0, p1, p2}, Lﹶﾞ/ـˆ;->ﾞˋ(J)V

    return-void
.end method

.method public final יˉ(Ljava/lang/String;JLﹶﾞ/ﹶʽ;)V
    .locals 3

    .prologue
    iget-object v0, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    if-nez p4, :cond_0

    iget-object p1, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {p1}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object p1, p1, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string p2, "Not logging ad unit exposure. No active activity"

    invoke-virtual {p1, p2}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    return-void

    :cond_0
    const-wide/16 v1, 0x3e8

    cmp-long v1, p2, v1

    if-gez v1, :cond_1

    iget-object p1, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {p1}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object p1, p1, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string p4, "Not logging ad unit exposure. Less than 1000 ms. exposure"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2, p4}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "_ai"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "_xt"

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const/4 p1, 0x1

    invoke-static {p4, v1, p1}, Lﹶﾞ/ᵢﹳ;->ʾˏ(Lﹶﾞ/ﹶʽ;Landroid/os/Bundle;Z)V

    iget-object p1, v0, Lﹶﾞ/ᵎʻ;->ˆﾞ:Lﹶﾞ/ˈـ;

    invoke-static {p1}, Lﹶﾞ/ᵎʻ;->ᵔᵢ(Lﹶﾞ/ٴᵢ;)V

    const-string p2, "am"

    const-string p3, "_xu"

    invoke-virtual {p1, p2, p3, v1}, Lﹶﾞ/ˈـ;->ˈـ(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final ﹶˎ(Ljava/lang/String;J)V
    .locals 7

    .prologue
    iget-object v0, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    new-instance v1, Lﹶﾞ/ﹳٴ;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lﹶﾞ/ﹳٴ;-><init>(Lﹶﾞ/ـˆ;Ljava/lang/String;JI)V

    invoke-virtual {v0, v1}, Lﹶﾞ/ʻˋ;->ˑˆ(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    iget-object p1, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {p1}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object p1, p1, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string p2, "Ad unit id must be a non-empty string"

    invoke-virtual {p1, p2}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    return-void
.end method

.method public final ﾞˋ(J)V
    .locals 4

    .prologue
    iget-object v0, p0, Lﹶﾞ/ـˆ;->ᴵˊ:Lיـ/ˑﹳ;

    invoke-virtual {v0}, Lיـ/ˑﹳ;->keySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Lיـ/ⁱˊ;

    invoke-virtual {v1}, Lיـ/ⁱˊ;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lיـ/ﹳᐧ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lיـ/ﹳᐧ;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iput-wide p1, p0, Lﹶﾞ/ـˆ;->ˈٴ:J

    :cond_1
    return-void
.end method
