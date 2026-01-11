.class public final Lיʾ/ˈ;
.super Lיʾ/ﹳٴ;
.source "SourceFile"


# instance fields
.field public final synthetic ˊʻ:Lיʾ/ᵎﹶ;

.field public ᴵᵔ:J


# direct methods
.method public constructor <init>(Lיʾ/ᵎﹶ;Lˎᵢ/ʼᐧ;J)V
    .locals 0

    .prologue
    iput-object p1, p0, Lיʾ/ˈ;->ˊʻ:Lיʾ/ᵎﹶ;

    invoke-direct {p0, p1, p2}, Lיʾ/ﹳٴ;-><init>(Lיʾ/ᵎﹶ;Lˎᵢ/ʼᐧ;)V

    iput-wide p3, p0, Lיʾ/ˈ;->ᴵᵔ:J

    const-wide/16 p1, 0x0

    cmp-long p1, p3, p1

    if-nez p1, :cond_0

    sget-object p1, Lˎᵢ/ˉˆ;->ᴵˊ:Lˎᵢ/ˉˆ;

    invoke-virtual {p0, p1}, Lיʾ/ﹳٴ;->ʽ(Lˎᵢ/ˉˆ;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4

    .prologue
    iget-boolean v0, p0, Lיʾ/ﹳٴ;->ʽʽ:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lיʾ/ˈ;->ᴵᵔ:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/16 v0, 0x64

    :try_start_0
    invoke-static {p0, v0}, Lⁱᐧ/ˑﹳ;->ᵎﹶ(Lˊᐧ/ᴵˊ;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lיʾ/ˈ;->ˊʻ:Lיʾ/ᵎﹶ;

    iget-object v0, v0, Lיʾ/ᵎﹶ;->ⁱˊ:Lʽי/ˈ;

    invoke-interface {v0}, Lʽי/ˈ;->ᵔᵢ()V

    sget-object v0, Lיʾ/ᵎﹶ;->ᵎﹶ:Lˎᵢ/ˉˆ;

    invoke-virtual {p0, v0}, Lיʾ/ﹳٴ;->ʽ(Lˎᵢ/ˉˆ;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lיʾ/ﹳٴ;->ʽʽ:Z

    return-void
.end method

.method public final ٴﹶ(Lˊᐧ/ﾞᴵ;J)J
    .locals 7

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_4

    iget-boolean v2, p0, Lיʾ/ﹳٴ;->ʽʽ:Z

    if-nez v2, :cond_3

    iget-wide v2, p0, Lיʾ/ˈ;->ᴵᵔ:J

    cmp-long v4, v2, v0

    const-wide/16 v5, -0x1

    if-nez v4, :cond_0

    return-wide v5

    :cond_0
    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-super {p0, p1, p2, p3}, Lיʾ/ﹳٴ;->ٴﹶ(Lˊᐧ/ﾞᴵ;J)J

    move-result-wide p1

    cmp-long p3, p1, v5

    if-eqz p3, :cond_2

    iget-wide v2, p0, Lיʾ/ˈ;->ᴵᵔ:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, Lיʾ/ˈ;->ᴵᵔ:J

    cmp-long p3, v2, v0

    if-nez p3, :cond_1

    sget-object p3, Lˎᵢ/ˉˆ;->ᴵˊ:Lˎᵢ/ˉˆ;

    invoke-virtual {p0, p3}, Lיʾ/ﹳٴ;->ʽ(Lˎᵢ/ˉˆ;)V

    :cond_1
    return-wide p1

    :cond_2
    iget-object p1, p0, Lיʾ/ˈ;->ˊʻ:Lיʾ/ᵎﹶ;

    iget-object p1, p1, Lיʾ/ᵎﹶ;->ⁱˊ:Lʽי/ˈ;

    invoke-interface {p1}, Lʽי/ˈ;->ᵔᵢ()V

    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "unexpected end of stream"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    sget-object p2, Lיʾ/ᵎﹶ;->ᵎﹶ:Lˎᵢ/ˉˆ;

    invoke-virtual {p0, p2}, Lיʾ/ﹳٴ;->ʽ(Lˎᵢ/ˉˆ;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const-string p1, "byteCount < 0: "

    invoke-static {p1, p2, p3}, Lᐧـ/ˈ;->ʼᐧ(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
