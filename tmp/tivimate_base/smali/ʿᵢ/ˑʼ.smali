.class public final Lʿᵢ/ˑʼ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˈי/ᵎﹶ;


# static fields
.field public static final ʾˋ:Lʿᵢ/ˑʼ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lʿᵢ/ˑʼ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lʿᵢ/ˑʼ;->ʾˋ:Lʿᵢ/ˑʼ;

    return-void
.end method

.method public static final ﹳٴ(Ljava/io/FileOutputStream;Lᴵʾ/ʽ;)Ljava/lang/Object;
    .locals 11

    .prologue
    instance-of v0, p1, Lʿᵢ/ˊˋ;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lʿᵢ/ˊˋ;

    iget v1, v0, Lʿᵢ/ˊˋ;->ٴᵢ:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lʿᵢ/ˊˋ;->ٴᵢ:I

    goto :goto_0

    :cond_0
    new-instance v0, Lʿᵢ/ˊˋ;

    invoke-direct {v0, p1}, Lᴵʾ/ʽ;-><init>(Lˈי/ˈ;)V

    :goto_0
    iget-object p1, v0, Lʿᵢ/ˊˋ;->ˊʻ:Ljava/lang/Object;

    iget v1, v0, Lʿᵢ/ˊˋ;->ٴᵢ:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-wide v3, v0, Lʿᵢ/ˊˋ;->ᴵᵔ:J

    iget-object p0, v0, Lʿᵢ/ˊˋ;->ˈٴ:Ljava/io/FileOutputStream;

    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    move-object p1, v0

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    const-wide/16 v3, 0xa

    move-object p1, v0

    :goto_1
    const-wide/32 v0, 0xea60

    cmp-long v0, v3, v0

    if-gtz v0, :cond_5

    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    const-wide v8, 0x7fffffffffffffffL

    const/4 v10, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v5 .. v10}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v5, "Resource deadlock would occur"

    const/4 v6, 0x0

    invoke-static {v1, v5, v6}, Lﹶˑ/ˆʾ;->ˏᵢ(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-ne v1, v2, :cond_4

    iput-object p0, p1, Lʿᵢ/ˊˋ;->ˈٴ:Ljava/io/FileOutputStream;

    iput-wide v3, p1, Lʿᵢ/ˊˋ;->ᴵᵔ:J

    iput v2, p1, Lʿᵢ/ˊˋ;->ٴᵢ:I

    invoke-static {v3, v4, p1}, Lᴵי/ʾᵎ;->ﾞᴵ(JLˈי/ˈ;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne v0, v1, :cond_3

    move-object p0, v1

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x2

    int-to-long v0, v0

    mul-long/2addr v3, v0

    goto :goto_1

    :cond_4
    throw v0

    :cond_5
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    const-wide v8, 0x7fffffffffffffffL

    const/4 v10, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v5 .. v10}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object p0

    :goto_3
    return-object p0
.end method
