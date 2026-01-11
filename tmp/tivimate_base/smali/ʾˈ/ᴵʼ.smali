.class public final Lʾˈ/ᴵʼ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʼˎ:Z

.field public final ʽ:Lʾˈ/ˋᵔ;

.field public ˆʾ:Ljava/lang/String;

.field public final ˈ:Lʾˈ/ˈˏ;

.field public final ˑﹳ:Lʿᵢ/ᵎﹶ;

.field public final ᵎﹶ:Lˈי/ᵔᵢ;

.field public ᵔᵢ:Lʾˈ/ᵎⁱ;

.field public final ⁱˊ:Lʾˈ/ﹳـ;

.field public final ﹳٴ:Lᵎʽ/ˆʾ;

.field public final ﾞᴵ:Lʾˈ/ʽʽ;


# direct methods
.method public constructor <init>(Lᵎʽ/ˆʾ;Lʾˈ/ﹳـ;Lʾˈ/ˋᵔ;Lʾˈ/ˈˏ;Lʿᵢ/ᵎﹶ;Lʾˈ/ʽʽ;Lˈי/ᵔᵢ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʾˈ/ᴵʼ;->ﹳٴ:Lᵎʽ/ˆʾ;

    iput-object p2, p0, Lʾˈ/ᴵʼ;->ⁱˊ:Lʾˈ/ﹳـ;

    iput-object p3, p0, Lʾˈ/ᴵʼ;->ʽ:Lʾˈ/ˋᵔ;

    iput-object p4, p0, Lʾˈ/ᴵʼ;->ˈ:Lʾˈ/ˈˏ;

    iput-object p5, p0, Lʾˈ/ᴵʼ;->ˑﹳ:Lʿᵢ/ᵎﹶ;

    iput-object p6, p0, Lʾˈ/ᴵʼ;->ﾞᴵ:Lʾˈ/ʽʽ;

    iput-object p7, p0, Lʾˈ/ᴵʼ;->ᵎﹶ:Lˈי/ᵔᵢ;

    const-string p1, ""

    iput-object p1, p0, Lʾˈ/ᴵʼ;->ˆʾ:Ljava/lang/String;

    invoke-static {p7}, Lᴵי/ʾᵎ;->ⁱˊ(Lˈי/ᵔᵢ;)Lˊʽ/ˈ;

    move-result-object p1

    new-instance p2, Lʾˈ/ᵎᵔ;

    const/4 p3, 0x0

    const/4 p4, 0x0

    invoke-direct {p2, p0, p4, p3}, Lʾˈ/ᵎᵔ;-><init>(Lʾˈ/ᴵʼ;Lˈי/ˈ;I)V

    const/4 p3, 0x3

    invoke-static {p1, p4, p2, p3}, Lᴵי/ʾᵎ;->ˉˆ(Lᴵי/ـˆ;Lˈי/ᵔᵢ;Lᴵⁱ/ʼᐧ;I)Lᴵי/ˈˏ;

    return-void
.end method

.method public static final ﹳٴ(Lʾˈ/ᴵʼ;Ljava/lang/String;Lʾˈ/ᐧﾞ;Lˈי/ˈ;)Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p3, Lʾˈ/ˏᵢ;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lʾˈ/ˏᵢ;

    iget v1, v0, Lʾˈ/ˏᵢ;->ˉٴ:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lʾˈ/ˏᵢ;->ˉٴ:I

    goto :goto_0

    :cond_0
    new-instance v0, Lʾˈ/ˏᵢ;

    invoke-direct {v0, p0, p3}, Lʾˈ/ˏᵢ;-><init>(Lʾˈ/ᴵʼ;Lˈי/ˈ;)V

    :goto_0
    iget-object p3, v0, Lʾˈ/ˏᵢ;->ˊʻ:Ljava/lang/Object;

    sget-object v1, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    iget v2, v0, Lʾˈ/ˏᵢ;->ˉٴ:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p2, v0, Lʾˈ/ˏᵢ;->ᴵᵔ:Lʾˈ/ᐧﾞ;

    iget-object p1, v0, Lʾˈ/ˏᵢ;->ˈٴ:Ljava/lang/String;

    invoke-static {p3}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iget-object p3, p0, Lʾˈ/ᴵʼ;->ˆʾ:Ljava/lang/String;

    invoke-static {p3, p1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    sget-object p0, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object p0

    :cond_3
    iput-object p1, p0, Lʾˈ/ᴵʼ;->ˆʾ:Ljava/lang/String;

    sget-object p0, Lˉᴵ/ʽ;->ﹳٴ:Lˉᴵ/ʽ;

    iput-object p1, v0, Lʾˈ/ˏᵢ;->ˈٴ:Ljava/lang/String;

    iput-object p2, v0, Lʾˈ/ˏᵢ;->ᴵᵔ:Lʾˈ/ᐧﾞ;

    iput v3, v0, Lʾˈ/ˏᵢ;->ˉٴ:I

    invoke-virtual {p0, v0}, Lˉᴵ/ʽ;->ⁱˊ(Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p3, Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lﹳˎ/ʼˎ;

    new-instance v0, Lˉᴵ/ˑﹳ;

    invoke-direct {v0, p1}, Lˉᴵ/ˑﹳ;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "App Quality Sessions session changed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "FirebaseCrashlytics"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "FirebaseCrashlytics"

    const/4 v2, 0x0

    nop

    :cond_5
    iget-object p3, p3, Lﹳˎ/ʼˎ;->ⁱˊ:Lﹳˎ/ᵔᵢ;

    monitor-enter p3

    :try_start_0
    iget-object v0, p3, Lﹳˎ/ᵔᵢ;->ʽ:Ljava/lang/String;

    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p3, Lﹳˎ/ᵔᵢ;->ﹳٴ:Lˑˋ/ˈ;

    iget-object v1, p3, Lﹳˎ/ᵔᵢ;->ⁱˊ:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lﹳˎ/ᵔᵢ;->ﹳٴ(Lˑˋ/ˈ;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p3, Lﹳˎ/ᵔᵢ;->ʽ:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_6
    :goto_3
    monitor-exit p3

    const-string p3, "FirebaseSessions"

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_8

    if-ne v0, v3, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Notified "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lˉᴵ/ˈ;->ʾˋ:Lˉᴵ/ˈ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " of new fallback session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_7
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Notified "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lˉᴵ/ˈ;->ʾˋ:Lˉᴵ/ˈ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " of new session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    nop

    goto/16 :goto_2

    :goto_5
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_9
    sget-object p0, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object p0
.end method


# virtual methods
.method public final ʽ(Lʾˈ/ᵎⁱ;)Z
    .locals 5

    .prologue
    iget-object p1, p1, Lʾˈ/ᵎⁱ;->ʽ:Ljava/util/Map;

    const-string v0, "FirebaseSessions"

    const/4 v1, 0x1

    iget-object v2, p0, Lʾˈ/ᴵʼ;->ﾞᴵ:Lʾˈ/ʽʽ;

    if-eqz p1, :cond_4

    invoke-virtual {v2}, Lʾˈ/ʽʽ;->ﹳٴ()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lʾˈ/ʾˋ;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget v3, p1, Lʾˈ/ʾˋ;->ﹳٴ:I

    iget v4, v2, Lʾˈ/ʽʽ;->ʽ:I

    if-ne v3, v4, :cond_2

    iget-object p1, p1, Lʾˈ/ʾˋ;->ⁱˊ:Ljava/lang/String;

    iget-object v3, v2, Lʾˈ/ʽʽ;->ˈ:Lʻᵢ/ʼˎ;

    invoke-virtual {v3}, Lʻᵢ/ʼˎ;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p1, v3}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "Process "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lʾˈ/ʽʽ;->ﹳٴ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is stale"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    :cond_3
    return v1

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "No process data for "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lʾˈ/ʽʽ;->ﹳٴ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    return v1
.end method

.method public final ˈ(Lʾˈ/ᵎⁱ;)Z
    .locals 11

    .prologue
    iget-object v0, p1, Lʾˈ/ᵎⁱ;->ⁱˊ:Lʾˈ/ـﹶ;

    iget-object p1, p1, Lʾˈ/ᵎⁱ;->ﹳٴ:Lʾˈ/ᵔٴ;

    const-string v1, "Session "

    const-string v2, "FirebaseSessions"

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    iget-object v4, p0, Lʾˈ/ᴵʼ;->ˈ:Lʾˈ/ˈˏ;

    invoke-virtual {v4}, Lʾˈ/ˈˏ;->ﹳٴ()Lʾˈ/ـﹶ;

    move-result-object v4

    sget v5, Lᐧˊ/ﹳٴ;->ˈٴ:I

    iget-wide v4, v4, Lʾˈ/ـﹶ;->ﹳٴ:J

    iget-wide v6, v0, Lʾˈ/ـﹶ;->ﹳٴ:J

    sub-long/2addr v4, v6

    sget-object v0, Lᐧˊ/ʽ;->ʽʽ:Lᐧˊ/ʽ;

    invoke-static {v4, v5, v0}, Lﹳٴ/ﹳٴ;->ˈⁱ(JLᐧˊ/ʽ;)J

    move-result-wide v4

    iget-object v0, p0, Lʾˈ/ᴵʼ;->ﹳٴ:Lᵎʽ/ˆʾ;

    iget-object v6, v0, Lᵎʽ/ˆʾ;->ﹳٴ:Lᵎʽ/ˉˆ;

    invoke-interface {v6}, Lᵎʽ/ˉˆ;->ˈ()Lᐧˊ/ﹳٴ;

    move-result-object v6

    const-wide/16 v7, 0x0

    if-eqz v6, :cond_0

    iget-wide v9, v6, Lᐧˊ/ﹳٴ;->ʾˋ:J

    cmp-long v6, v9, v7

    if-lez v6, :cond_0

    invoke-static {v9, v10}, Lᐧˊ/ﹳٴ;->ˈ(J)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lᵎʽ/ˆʾ;->ⁱˊ:Lᵎʽ/ˉˆ;

    invoke-interface {v0}, Lᵎʽ/ˉˆ;->ˈ()Lᐧˊ/ﹳٴ;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-wide v9, v0, Lᐧˊ/ﹳٴ;->ʾˋ:J

    cmp-long v0, v9, v7

    if-lez v0, :cond_1

    invoke-static {v9, v10}, Lᐧˊ/ﹳٴ;->ˈ(J)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x1e

    sget-object v6, Lᐧˊ/ʽ;->ᴵᵔ:Lᐧˊ/ʽ;

    invoke-static {v0, v6}, Lﹳٴ/ﹳٴ;->ﹳـ(ILᐧˊ/ʽ;)J

    move-result-wide v9

    :goto_0
    invoke-static {v4, v5, v9, v10}, Lᐧˊ/ﹳٴ;->ʽ(JJ)I

    move-result v0

    if-lez v0, :cond_2

    const/4 v3, 0x1

    :cond_2
    if-eqz v3, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lʾˈ/ᵔٴ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is expired"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    :cond_3
    return v3

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lʾˈ/ᵔٴ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has not backgrounded yet"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    return v3
.end method

.method public final ⁱˊ()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lʾˈ/ᴵʼ;->ʼˎ:Z

    iget-object v0, p0, Lʾˈ/ᴵʼ;->ᵔᵢ:Lʾˈ/ᵎⁱ;

    const-string v1, "FirebaseSessions"

    if-nez v0, :cond_0

    const-string v0, "App backgrounded, but local SessionData not initialized"

    nop

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "App backgrounded on "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lʾˈ/ᴵʼ;->ﾞᴵ:Lʾˈ/ʽʽ;

    invoke-virtual {v2}, Lʾˈ/ʽʽ;->ﹳٴ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    iget-object v0, p0, Lʾˈ/ᴵʼ;->ᵎﹶ:Lˈי/ᵔᵢ;

    invoke-static {v0}, Lᴵי/ʾᵎ;->ⁱˊ(Lˈי/ᵔᵢ;)Lˊʽ/ˈ;

    move-result-object v0

    new-instance v1, Lʾˈ/ᵎᵔ;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3, v2}, Lʾˈ/ᵎᵔ;-><init>(Lʾˈ/ᴵʼ;Lˈי/ˈ;I)V

    const/4 v2, 0x3

    invoke-static {v0, v3, v1, v2}, Lᴵי/ʾᵎ;->ˉˆ(Lᴵי/ـˆ;Lˈי/ᵔᵢ;Lᴵⁱ/ʼᐧ;I)Lᴵי/ˈˏ;

    return-void
.end method
