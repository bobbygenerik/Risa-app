.class public final Landroidx/work/impl/workers/DiagnosticsWorker;
.super Landroidx/work/Worker;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method


# virtual methods
.method public final ˑﹳ()Lᴵˋ/ᵔﹳ;
    .locals 10

    .prologue
    iget-object v0, p0, Lᴵˋ/יـ;->ﹳٴ:Landroid/content/Context;

    invoke-static {v0}, Lـʾ/ﹳᐧ;->ﹳـ(Landroid/content/Context;)Lـʾ/ﹳᐧ;

    move-result-object v0

    iget-object v1, v0, Lـʾ/ﹳᐧ;->ˑﹳ:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->ʾᵎ()Lˑᵎ/ʾᵎ;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->ʻٴ()Lˑᵎ/ᵔʾ;

    move-result-object v3

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->ʼʼ()Lˑᵎ/ᵢˏ;

    move-result-object v4

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->ʽﹳ()Lˑᵎ/ٴﹶ;

    move-result-object v1

    iget-object v0, v0, Lـʾ/ﹳᐧ;->ˈ:Lᴵˋ/ⁱˊ;

    iget-object v0, v0, Lᴵˋ/ⁱˊ;->ˈ:Lᴵˋ/ˆʾ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x1

    invoke-virtual {v0, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    sub-long/2addr v5, v7

    iget-object v0, v2, Lˑᵎ/ʾᵎ;->ﹳٴ:Lʼﾞ/ˊʻ;

    new-instance v7, Lʿי/ˈˏ;

    const/4 v8, 0x1

    invoke-direct {v7, v8, v5, v6}, Lʿי/ˈˏ;-><init>(IJ)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v0, v5, v6, v7}, Lٴˑ/ﾞᴵ;->ٴﹶ(Lʼﾞ/ˊʻ;ZZLᴵⁱ/ﾞʻ;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v7, v2, Lˑᵎ/ʾᵎ;->ﹳٴ:Lʼﾞ/ˊʻ;

    new-instance v8, Lar/tvplayer/core/domain/ـˆ;

    const/16 v9, 0x1a

    invoke-direct {v8, v9}, Lar/tvplayer/core/domain/ـˆ;-><init>(I)V

    invoke-static {v7, v5, v6, v8}, Lٴˑ/ﾞᴵ;->ٴﹶ(Lʼﾞ/ˊʻ;ZZLᴵⁱ/ﾞʻ;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    iget-object v2, v2, Lˑᵎ/ʾᵎ;->ﹳٴ:Lʼﾞ/ˊʻ;

    new-instance v8, Lˑᵎ/ʻٴ;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lˑᵎ/ʻٴ;-><init>(I)V

    invoke-static {v2, v5, v6, v8}, Lٴˑ/ﾞᴵ;->ٴﹶ(Lʼﾞ/ˊʻ;ZZLᴵⁱ/ﾞʻ;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v5

    sget-object v6, Lﹶﹳ/ᵎﹶ;->ﹳٴ:Ljava/lang/String;

    const-string v8, "Recently completed work:\n\n"

    invoke-virtual {v5, v6, v8}, Lᴵˋ/ˏי;->ﾞᴵ(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v5

    invoke-static {v3, v4, v1, v0}, Lﹶﹳ/ᵎﹶ;->ﹳٴ(Lˑᵎ/ᵔʾ;Lˑᵎ/ᵢˏ;Lˑᵎ/ٴﹶ;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Lᴵˋ/ˏי;->ﾞᴵ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v0

    sget-object v5, Lﹶﹳ/ᵎﹶ;->ﹳٴ:Ljava/lang/String;

    const-string v6, "Running work:\n\n"

    invoke-virtual {v0, v5, v6}, Lᴵˋ/ˏי;->ﾞᴵ(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v0

    invoke-static {v3, v4, v1, v7}, Lﹶﹳ/ᵎﹶ;->ﹳٴ(Lˑᵎ/ᵔʾ;Lˑᵎ/ᵢˏ;Lˑᵎ/ٴﹶ;Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lᴵˋ/ˏי;->ﾞᴵ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v0

    sget-object v5, Lﹶﹳ/ᵎﹶ;->ﹳٴ:Ljava/lang/String;

    const-string v6, "Enqueued work:\n\n"

    invoke-virtual {v0, v5, v6}, Lᴵˋ/ˏי;->ﾞᴵ(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v0

    invoke-static {v3, v4, v1, v2}, Lﹶﹳ/ᵎﹶ;->ﹳٴ(Lˑᵎ/ᵔʾ;Lˑᵎ/ᵢˏ;Lˑᵎ/ٴﹶ;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lᴵˋ/ˏי;->ﾞᴵ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v0, Lᴵˋ/ᵔﹳ;

    invoke-direct {v0}, Lᴵˋ/ᵔﹳ;-><init>()V

    return-object v0
.end method
