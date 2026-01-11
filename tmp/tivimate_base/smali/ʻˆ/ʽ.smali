.class public final Lʻˆ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˏʻ/ﾞᴵ;


# instance fields
.field public ʽʽ:Ljava/lang/Object;

.field public ʾˋ:J

.field public ˈٴ:Ljava/lang/Object;

.field public ᴵˊ:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lʻˆ/ʽ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lᵔⁱ/ﹳٴ;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iput-wide p2, p0, Lʻˆ/ʽ;->ʾˋ:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lʻˆ/ʽ;->ᴵˊ:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʻˆ/ʽ;->ʽʽ:Ljava/lang/Object;

    iput-object p2, p0, Lʻˆ/ʽ;->ˈٴ:Ljava/lang/Object;

    iput-wide p3, p0, Lʻˆ/ʽ;->ʾˋ:J

    iput-wide p5, p0, Lʻˆ/ʽ;->ᴵˊ:J

    return-void
.end method


# virtual methods
.method public ʽ()Lˊﾞ/ʾˋ;
    .locals 5

    .prologue
    iget-wide v0, p0, Lʻˆ/ʽ;->ʾˋ:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    new-instance v0, Lˊﾞ/יـ;

    iget-object v1, p0, Lʻˆ/ʽ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lˊﾞ/ˏי;

    iget-wide v2, p0, Lʻˆ/ʽ;->ʾˋ:J

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lˊﾞ/יـ;-><init>(Ljava/lang/Object;JI)V

    return-object v0
.end method

.method public ٴﹶ(Lˊﾞ/ʼᐧ;)J
    .locals 6

    .prologue
    iget-wide v0, p0, Lʻˆ/ʽ;->ᴵˊ:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    const-wide/16 v2, -0x1

    if-ltz p1, :cond_0

    const-wide/16 v4, 0x2

    add-long/2addr v0, v4

    neg-long v0, v0

    iput-wide v2, p0, Lʻˆ/ʽ;->ᴵˊ:J

    return-wide v0

    :cond_0
    return-wide v2
.end method

.method public ᵔʾ(J)V
    .locals 2

    iget-object v0, p0, Lʻˆ/ʽ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ⁱי;

    iget-object v0, v0, Lﹶﾞ/ⁱי;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, [J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Lᐧˎ/ʼʼ;->ˑﹳ([JJZ)I

    move-result p1

    aget-wide p1, v0, p1

    iput-wide p1, p0, Lʻˆ/ʽ;->ᴵˊ:J

    return-void
.end method

.method public ﹳٴ(JZZ)Z
    .locals 7

    .prologue
    iget-object v0, p0, Lʻˆ/ʽ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ˉʽ;

    invoke-virtual {v0}, Lﹶﾞ/ʾᵎ;->ⁱᴵ()V

    invoke-virtual {v0}, Lﹶﾞ/ٴᵢ;->ﹶˎ()V

    iget-object v0, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    invoke-virtual {v0}, Lﹶﾞ/ᵎʻ;->ﹳٴ()Z

    move-result v1

    iget-object v2, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lﹶﾞ/ᵎʻ;->ᴵᵔ:Lﹶﾞ/ᐧᴵ;

    invoke-static {v1}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    iget-object v1, v1, Lﹶﾞ/ᐧᴵ;->ˑٴ:Lⁱי/ʻᵎ;

    iget-object v3, v0, Lﹶﾞ/ᵎʻ;->ᵎˊ:Lᵎᴵ/ﹳٴ;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lⁱי/ʻᵎ;->ᵔᵢ(J)V

    :cond_0
    iget-wide v3, p0, Lʻˆ/ʽ;->ʾˋ:J

    sub-long v3, p1, v3

    if-nez p3, :cond_2

    const-wide/16 v5, 0x3e8

    cmp-long p3, v3, v5

    if-ltz p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object p1, v2, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string p2, "Screen exposed for less than 1000 ms. Event not sent. time"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    if-nez p4, :cond_3

    iget-wide v3, p0, Lʻˆ/ʽ;->ᴵˊ:J

    sub-long v3, p1, v3

    iput-wide p1, p0, Lʻˆ/ʽ;->ᴵˊ:J

    :cond_3
    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object p3, v2, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v1, "Recording user engagement, ms"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p3, v2, v1}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v1, "_et"

    invoke-virtual {p3, v1, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, v0, Lﹶﾞ/ᵎʻ;->ˈٴ:Lﹶﾞ/ᵎﹶ;

    invoke-virtual {v1}, Lﹶﾞ/ᵎﹶ;->ﹶʽ()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iget-object v3, v0, Lﹶﾞ/ᵎʻ;->ᵔי:Lﹶﾞ/ﾞˏ;

    invoke-static {v3}, Lﹶﾞ/ᵎʻ;->ᵔᵢ(Lﹶﾞ/ٴᵢ;)V

    invoke-virtual {v3, v1}, Lﹶﾞ/ﾞˏ;->ﾞˋ(Z)Lﹶﾞ/ﹶʽ;

    move-result-object v1

    invoke-static {v1, p3, v2}, Lﹶﾞ/ᵢﹳ;->ʾˏ(Lﹶﾞ/ﹶʽ;Landroid/os/Bundle;Z)V

    if-nez p4, :cond_4

    iget-object p4, v0, Lﹶﾞ/ᵎʻ;->ˆﾞ:Lﹶﾞ/ˈـ;

    invoke-static {p4}, Lﹶﾞ/ᵎʻ;->ᵔᵢ(Lﹶﾞ/ٴᵢ;)V

    const-string v0, "auto"

    const-string v1, "_e"

    invoke-virtual {p4, v0, v1, p3}, Lﹶﾞ/ˈـ;->ˈـ(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_4
    iput-wide p1, p0, Lʻˆ/ʽ;->ʾˋ:J

    iget-object p1, p0, Lʻˆ/ʽ;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Lﹶﾞ/ˆʻ;

    invoke-virtual {p1}, Lﹶﾞ/ᵔʾ;->ʽ()V

    sget-object p2, Lﹶﾞ/ᴵᵔ;->ᐧﹶ:Lﹶﾞ/ˈٴ;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lﹶﾞ/ˈٴ;->ﹳٴ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lﹶﾞ/ᵔʾ;->ⁱˊ(J)V

    return v2
.end method
