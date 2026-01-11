.class public final Lﹶﾞ/ˆˎ;
.super Lﹶﾞ/ˎᵎ;
.source "SourceFile"


# instance fields
.field public final ˈٴ:Ljava/util/HashMap;

.field public final ˉٴ:Lⁱי/ʻᵎ;

.field public final ˊʻ:Lⁱי/ʻᵎ;

.field public final ٴʼ:Lⁱי/ʻᵎ;

.field public final ٴᵢ:Lⁱי/ʻᵎ;

.field public final ᴵᵔ:Lⁱי/ʻᵎ;

.field public final ᵎⁱ:Lⁱי/ʻᵎ;


# direct methods
.method public constructor <init>(Lﹶﾞ/ᵢי;)V
    .locals 4

    invoke-direct {p0, p1}, Lﹶﾞ/ˎᵎ;-><init>(Lﹶﾞ/ᵢי;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lﹶﾞ/ˆˎ;->ˈٴ:Ljava/util/HashMap;

    new-instance p1, Lⁱי/ʻᵎ;

    iget-object v0, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ᴵᵔ:Lﹶﾞ/ᐧᴵ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    const-string v1, "last_delete_stale"

    const-wide/16 v2, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Lⁱי/ʻᵎ;-><init>(Lﹶﾞ/ᐧᴵ;Ljava/lang/String;J)V

    iput-object p1, p0, Lﹶﾞ/ˆˎ;->ᴵᵔ:Lⁱי/ʻᵎ;

    new-instance p1, Lⁱי/ʻᵎ;

    iget-object v0, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ᴵᵔ:Lﹶﾞ/ᐧᴵ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    const-string v1, "last_delete_stale_batch"

    invoke-direct {p1, v0, v1, v2, v3}, Lⁱי/ʻᵎ;-><init>(Lﹶﾞ/ᐧᴵ;Ljava/lang/String;J)V

    iput-object p1, p0, Lﹶﾞ/ˆˎ;->ˊʻ:Lⁱי/ʻᵎ;

    new-instance p1, Lⁱי/ʻᵎ;

    iget-object v0, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ᴵᵔ:Lﹶﾞ/ᐧᴵ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    const-string v1, "backoff"

    invoke-direct {p1, v0, v1, v2, v3}, Lⁱי/ʻᵎ;-><init>(Lﹶﾞ/ᐧᴵ;Ljava/lang/String;J)V

    iput-object p1, p0, Lﹶﾞ/ˆˎ;->ٴᵢ:Lⁱי/ʻᵎ;

    new-instance p1, Lⁱי/ʻᵎ;

    iget-object v0, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ᴵᵔ:Lﹶﾞ/ᐧᴵ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    const-string v1, "last_upload"

    invoke-direct {p1, v0, v1, v2, v3}, Lⁱי/ʻᵎ;-><init>(Lﹶﾞ/ᐧᴵ;Ljava/lang/String;J)V

    iput-object p1, p0, Lﹶﾞ/ˆˎ;->ˉٴ:Lⁱי/ʻᵎ;

    new-instance p1, Lⁱי/ʻᵎ;

    iget-object v0, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ᴵᵔ:Lﹶﾞ/ᐧᴵ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    const-string v1, "last_upload_attempt"

    invoke-direct {p1, v0, v1, v2, v3}, Lⁱי/ʻᵎ;-><init>(Lﹶﾞ/ᐧᴵ;Ljava/lang/String;J)V

    iput-object p1, p0, Lﹶﾞ/ˆˎ;->ᵎⁱ:Lⁱי/ʻᵎ;

    new-instance p1, Lⁱי/ʻᵎ;

    iget-object v0, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ᴵᵔ:Lﹶﾞ/ᐧᴵ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    const-string v1, "midnight_offset"

    invoke-direct {p1, v0, v1, v2, v3}, Lⁱי/ʻᵎ;-><init>(Lﹶﾞ/ᐧᴵ;Ljava/lang/String;J)V

    iput-object p1, p0, Lﹶﾞ/ˆˎ;->ٴʼ:Lⁱי/ʻᵎ;

    return-void
.end method


# virtual methods
.method public final ʼᵢ(Ljava/lang/String;)Landroid/util/Pair;
    .locals 14

    .prologue
    const-string v0, ""

    invoke-virtual {p0}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    iget-object v1, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v1, Lﹶﾞ/ᵎʻ;

    iget-object v2, v1, Lﹶﾞ/ᵎʻ;->ᵎˊ:Lᵎᴵ/ﹳٴ;

    iget-object v3, v1, Lﹶﾞ/ᵎʻ;->ˈٴ:Lﹶﾞ/ᵎﹶ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v2, p0, Lﹶﾞ/ˆˎ;->ˈٴ:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lﹶﾞ/ˆﹳ;

    if-eqz v6, :cond_1

    iget-wide v7, v6, Lﹶﾞ/ˆﹳ;->ʽ:J

    cmp-long v7, v4, v7

    if-ltz v7, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, v6, Lﹶﾞ/ˆﹳ;->ﹳٴ:Ljava/lang/String;

    iget-boolean v0, v6, Lﹶﾞ/ˆﹳ;->ⁱˊ:Z

    new-instance v1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_1
    :goto_0
    sget-object v7, Lﹶﾞ/ᴵᵔ;->ⁱˊ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v3, p1, v7}, Lﹶﾞ/ᵎﹶ;->ˈـ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)J

    move-result-wide v7

    add-long/2addr v7, v4

    :try_start_0
    iget-object v9, v1, Lﹶﾞ/ᵎʻ;->ʾˋ:Landroid/content/Context;

    invoke-static {v9}, Lﹶﹶ/ﹳٴ;->ﹳٴ(Landroid/content/Context;)Lʼﾞ/ˉٴ;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_2

    :catch_1
    const/4 v9, 0x0

    if-eqz v6, :cond_2

    :try_start_1
    iget-wide v10, v6, Lﹶﾞ/ˆﹳ;->ʽ:J

    sget-object v12, Lﹶﾞ/ᴵᵔ;->ʽ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v3, p1, v12}, Lﹶﾞ/ᵎﹶ;->ˈـ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)J

    move-result-wide v12

    add-long/2addr v10, v12

    cmp-long v3, v4, v10

    if-gez v3, :cond_2

    new-instance v3, Landroid/util/Pair;

    iget-object v4, v6, Lﹶﾞ/ˆﹳ;->ﹳٴ:Ljava/lang/String;

    iget-boolean v5, v6, Lﹶﾞ/ˆﹳ;->ⁱˊ:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    :cond_2
    move-object v3, v9

    :goto_1
    if-nez v3, :cond_3

    new-instance v3, Landroid/util/Pair;

    const-string v4, "00000000-0000-0000-0000-000000000000"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    :cond_3
    iget-object v4, v3, Lʼﾞ/ˉٴ;->ⁱˊ:Ljava/lang/String;

    if-eqz v4, :cond_4

    new-instance v5, Lﹶﾞ/ˆﹳ;

    iget-boolean v3, v3, Lʼﾞ/ˉٴ;->ʽ:Z

    invoke-direct {v5, v7, v8, v4, v3}, Lﹶﾞ/ˆﹳ;-><init>(JLjava/lang/String;Z)V

    goto :goto_3

    :cond_4
    new-instance v5, Lﹶﾞ/ˆﹳ;

    iget-boolean v3, v3, Lʼﾞ/ˉٴ;->ʽ:Z

    invoke-direct {v5, v7, v8, v0, v3}, Lﹶﾞ/ˆﹳ;-><init>(JLjava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :goto_2
    iget-object v1, v1, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v1}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v1, v1, Lﹶﾞ/ﹳـ;->ˆﾞ:Lﹶﾞ/ʼˈ;

    const-string v4, "Unable to get advertising id"

    invoke-virtual {v1, v3, v4}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lﹶﾞ/ˆﹳ;

    const/4 v1, 0x0

    invoke-direct {v5, v7, v8, v0, v1}, Lﹶﾞ/ˆﹳ;-><init>(JLjava/lang/String;Z)V

    :goto_3
    invoke-virtual {v2, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Landroid/util/Pair;

    iget-boolean v0, v5, Lﹶﾞ/ˆﹳ;->ⁱˊ:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, v5, Lﹶﾞ/ˆﹳ;->ﹳٴ:Ljava/lang/String;

    invoke-direct {p1, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final ˋˊ()V
    .locals 0

    return-void
.end method

.method public final יˉ(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .prologue
    invoke-virtual {p0}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lﹶﾞ/ˆˎ;->ʼᵢ(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "00000000-0000-0000-0000-000000000000"

    :goto_0
    invoke-static {}, Lﹶﾞ/ᵢﹳ;->ﾞˏ()Ljava/security/MessageDigest;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {v1, p2, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object v1, p1, p2

    const-string p2, "%032X"

    invoke-static {v0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
