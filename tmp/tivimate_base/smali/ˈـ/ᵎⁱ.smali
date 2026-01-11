.class public final Lˈـ/ᵎⁱ;
.super Lـˊ/ⁱˊ;
.source "SourceFile"

# interfaces
.implements Lˈـ/ˑﹳ;


# instance fields
.field public ˉٴ:I

.field public final ˊʻ:J

.field public ٴᵢ:[B

.field public final ᴵᵔ:Ljava/util/concurrent/LinkedBlockingQueue;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lـˊ/ⁱˊ;-><init>(Z)V

    const-wide/16 v0, 0x1f40

    iput-wide v0, p0, Lˈـ/ᵎⁱ;->ˊʻ:J

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lˈـ/ᵎⁱ;->ᴵᵔ:Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lˈـ/ᵎⁱ;->ٴᵢ:[B

    const/4 v0, -0x1

    iput v0, p0, Lˈـ/ᵎⁱ;->ˉٴ:I

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    return-void
.end method

.method public final read([BII)I
    .locals 7

    .prologue
    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lˈـ/ᵎⁱ;->ٴᵢ:[B

    array-length v1, v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lˈـ/ᵎⁱ;->ٴᵢ:[B

    invoke-static {v2, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lˈـ/ᵎⁱ;->ٴᵢ:[B

    array-length v3, v2

    invoke-static {v2, v1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    iput-object v2, p0, Lˈـ/ᵎⁱ;->ٴᵢ:[B

    if-ne v1, p3, :cond_1

    return v1

    :cond_1
    const/4 v2, -0x1

    :try_start_0
    iget-object v3, p0, Lˈـ/ᵎⁱ;->ᴵᵔ:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-wide v4, p0, Lˈـ/ᵎⁱ;->ˊʻ:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_2

    return v2

    :cond_2
    sub-int/2addr p3, v1

    array-length v2, v3

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result p3

    add-int/2addr p2, v1

    invoke-static {v3, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, v3

    if-ge p3, p1, :cond_3

    array-length p1, v3

    invoke-static {v3, p3, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    iput-object p1, p0, Lˈـ/ᵎⁱ;->ٴᵢ:[B

    :cond_3
    add-int/2addr v1, p3

    return v1

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    return v2
.end method

.method public final ʼˎ()I
    .locals 1

    iget v0, p0, Lˈـ/ᵎⁱ;->ˉٴ:I

    return v0
.end method

.method public final ʼᐧ()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final ʽʽ(Lـˊ/ᵔᵢ;)J
    .locals 2

    iget-object p1, p1, Lـˊ/ᵔᵢ;->ﹳٴ:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result p1

    iput p1, p0, Lˈـ/ᵎⁱ;->ˉٴ:I

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final יـ()Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final ᵢˏ()Lˈـ/ᵎⁱ;
    .locals 0

    return-object p0
.end method

.method public final ⁱˊ()Ljava/lang/String;
    .locals 4

    .prologue
    iget v0, p0, Lˈـ/ᵎⁱ;->ˉٴ:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iget v0, p0, Lˈـ/ᵎⁱ;->ˉٴ:I

    iget v1, p0, Lˈـ/ᵎⁱ;->ˉٴ:I

    add-int/2addr v1, v2

    sget-object v2, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "RTP/AVP/TCP;unicast;interleaved="

    const-string v3, "-"

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/media/session/ﹳٴ;->ٴﹶ(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
