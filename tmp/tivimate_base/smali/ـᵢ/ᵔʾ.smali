.class public final Lـᵢ/ᵔʾ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˊﾞ/ٴᵢ;


# instance fields
.field public final ʽ:Lˆﹳ/ﹳٴ;

.field public ˈ:J

.field public final synthetic ˑﹳ:Lـᵢ/ˉˆ;

.field public final ⁱˊ:Lـʾ/ᵔﹳ;

.field public final ﹳٴ:Lﹳᵢ/ᴵˑ;


# direct methods
.method public constructor <init>(Lـᵢ/ˉˆ;Lᵔⁱ/ˑﹳ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lـᵢ/ᵔʾ;->ˑﹳ:Lـᵢ/ˉˆ;

    new-instance p1, Lﹳᵢ/ᴵˑ;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0, v0}, Lﹳᵢ/ᴵˑ;-><init>(Lᵔⁱ/ˑﹳ;Lⁱᴵ/ﾞʻ;Lⁱᴵ/ʼˎ;)V

    iput-object p1, p0, Lـᵢ/ᵔʾ;->ﹳٴ:Lﹳᵢ/ᴵˑ;

    new-instance p1, Lـʾ/ᵔﹳ;

    const/16 p2, 0xe

    invoke-direct {p1, p2}, Lـʾ/ᵔﹳ;-><init>(I)V

    iput-object p1, p0, Lـᵢ/ᵔʾ;->ⁱˊ:Lـʾ/ᵔﹳ;

    new-instance p1, Lˆﹳ/ﹳٴ;

    invoke-direct {p1}, Lˆﹳ/ﹳٴ;-><init>()V

    iput-object p1, p0, Lـᵢ/ᵔʾ;->ʽ:Lˆﹳ/ﹳٴ;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lـᵢ/ᵔʾ;->ˈ:J

    return-void
.end method


# virtual methods
.method public final ʽ(Lʽⁱ/ˆʾ;IZ)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lـᵢ/ᵔʾ;->ﾞᴵ(Lʽⁱ/ˆʾ;IZ)I

    move-result p1

    return p1
.end method

.method public final ˈ(Lʽⁱ/ﹳᐧ;)V
    .locals 1

    iget-object v0, p0, Lـᵢ/ᵔʾ;->ﹳٴ:Lﹳᵢ/ᴵˑ;

    invoke-virtual {v0, p1}, Lﹳᵢ/ᴵˑ;->ˈ(Lʽⁱ/ﹳᐧ;)V

    return-void
.end method

.method public final ˑﹳ(ILᐧˎ/ﹳᐧ;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lـᵢ/ᵔʾ;->ⁱˊ(Lᐧˎ/ﹳᐧ;II)V

    return-void
.end method

.method public final ⁱˊ(Lᐧˎ/ﹳᐧ;II)V
    .locals 1

    iget-object p3, p0, Lـᵢ/ᵔʾ;->ﹳٴ:Lﹳᵢ/ᴵˑ;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, p2, v0}, Lﹳᵢ/ᴵˑ;->ⁱˊ(Lᐧˎ/ﹳᐧ;II)V

    return-void
.end method

.method public final ﹳٴ(JIIILˊﾞ/ˊʻ;)V
    .locals 7

    .prologue
    iget-object v0, p0, Lـᵢ/ᵔʾ;->ﹳٴ:Lﹳᵢ/ᴵˑ;

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lﹳᵢ/ᴵˑ;->ﹳٴ(JIIILˊﾞ/ˊʻ;)V

    :cond_0
    :goto_0
    iget-object p1, p0, Lـᵢ/ᵔʾ;->ﹳٴ:Lﹳᵢ/ᴵˑ;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lﹳᵢ/ᴵˑ;->ʾᵎ(Z)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lـᵢ/ᵔʾ;->ʽ:Lˆﹳ/ﹳٴ;

    invoke-virtual {p1}, Lﹳⁱ/ˑﹳ;->ˏי()V

    iget-object p3, p0, Lـᵢ/ᵔʾ;->ﹳٴ:Lﹳᵢ/ᴵˑ;

    iget-object p4, p0, Lـᵢ/ᵔʾ;->ⁱˊ:Lـʾ/ᵔﹳ;

    invoke-virtual {p3, p4, p1, p2, p2}, Lﹳᵢ/ᴵˑ;->ʽʽ(Lـʾ/ᵔﹳ;Lﹳⁱ/ˑﹳ;IZ)I

    move-result p3

    const/4 p4, -0x4

    if-ne p3, p4, :cond_1

    invoke-virtual {p1}, Lﹳⁱ/ˑﹳ;->ـˆ()V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-wide p3, p1, Lﹳⁱ/ˑﹳ;->ٴᵢ:J

    iget-object p5, p0, Lـᵢ/ᵔʾ;->ˑﹳ:Lـᵢ/ˉˆ;

    iget-object p5, p5, Lـᵢ/ˉˆ;->ʽʽ:Lʻʼ/ⁱˊ;

    invoke-virtual {p5, p1}, Lˈˋ/ʾˊ;->ﾞʻ(Lˆﹳ/ﹳٴ;)Lʽⁱ/ٴᵢ;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p1, Lʽⁱ/ٴᵢ;->ﹳٴ:[Lʽⁱ/ˊʻ;

    aget-object p1, p1, p2

    check-cast p1, Lʻʼ/ﹳٴ;

    iget-object p2, p1, Lʻʼ/ﹳٴ;->ﹳٴ:Ljava/lang/String;

    iget-object p5, p1, Lʻʼ/ﹳٴ;->ⁱˊ:Ljava/lang/String;

    const-string p6, "urn:mpeg:dash:event:2012"

    invoke-virtual {p6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "1"

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "2"

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "3"

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    :cond_4
    const-wide p5, -0x7fffffffffffffffL    # -4.9E-324

    :try_start_0
    iget-object p1, p1, Lʻʼ/ﹳٴ;->ˑﹳ:[B

    invoke-static {p1}, Lᐧˎ/ʼʼ;->ᵔﹳ([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lᐧˎ/ʼʼ;->ˈⁱ(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catch Landroidx/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-wide p1, p5

    :goto_2
    cmp-long p5, p1, p5

    if-nez p5, :cond_5

    goto :goto_0

    :cond_5
    new-instance p5, Lـᵢ/ˉʿ;

    invoke-direct {p5, p3, p4, p1, p2}, Lـᵢ/ˉʿ;-><init>(JJ)V

    iget-object p1, p0, Lـᵢ/ᵔʾ;->ˑﹳ:Lـᵢ/ˉˆ;

    iget-object p1, p1, Lـᵢ/ˉˆ;->ˈٴ:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lـᵢ/ᵔʾ;->ﹳٴ:Lﹳᵢ/ᴵˑ;

    iget-object p2, p1, Lﹳᵢ/ᴵˑ;->ﹳٴ:Lﹳᵢ/ـˏ;

    monitor-enter p1

    :try_start_1
    iget p3, p1, Lﹳᵢ/ᴵˑ;->יـ:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p3, :cond_7

    monitor-exit p1

    const-wide/16 p3, -0x1

    goto :goto_3

    :cond_7
    :try_start_2
    invoke-virtual {p1, p3}, Lﹳᵢ/ᴵˑ;->ʼˎ(I)J

    move-result-wide p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p1

    :goto_3
    invoke-virtual {p2, p3, p4}, Lﹳᵢ/ـˏ;->ⁱˊ(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p2, v0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p2
.end method

.method public final ﾞᴵ(Lʽⁱ/ˆʾ;IZ)I
    .locals 1

    iget-object v0, p0, Lـᵢ/ᵔʾ;->ﹳٴ:Lﹳᵢ/ᴵˑ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1, p2, p3}, Lﹳᵢ/ᴵˑ;->ﾞᴵ(Lʽⁱ/ˆʾ;IZ)I

    move-result p1

    return p1
.end method
