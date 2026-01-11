.class public abstract Lˆﹶ/ʼˎ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﹳٴ:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xf

    const/16 v1, 0xe

    const/16 v2, 0xd

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lˆﹶ/ʼˎ;->ﹳٴ:[I

    return-void
.end method

.method public static final ⁱˊ(Landroidx/work/impl/WorkDatabase;Lᴵˋ/ⁱˊ;Lـʾ/ﾞʻ;)V
    .locals 6

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [Lـʾ/ﾞʻ;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v1}, Lﹶˈ/ٴﹶ;->ʿᵢ([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p2

    move v1, v2

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {p2}, Lﹶˈ/ˆʾ;->ʾˊ(Ljava/util/AbstractList;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lـʾ/ﾞʻ;

    iget-object v3, v3, Lـʾ/ﾞʻ;->ˋᵔ:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_2

    :cond_1
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v2

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lᴵˋ/ˉٴ;

    iget-object v5, v5, Lᴵˋ/ˉٴ;->ⁱˊ:Lˑᵎ/ﹳᐧ;

    iget-object v5, v5, Lˑᵎ/ﹳᐧ;->ˆʾ:Lᴵˋ/ˑﹳ;

    invoke-virtual {v5}, Lᴵˋ/ˑﹳ;->ⁱˊ()Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    if-ltz v4, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "Count overflow has happened."

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_2
    add-int/2addr v1, v4

    goto :goto_0

    :cond_5
    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->ʾᵎ()Lˑᵎ/ʾᵎ;

    move-result-object p0

    iget-object p0, p0, Lˑᵎ/ʾᵎ;->ﹳٴ:Lʼﾞ/ˊʻ;

    new-instance p2, Lar/tvplayer/core/domain/ـˆ;

    const/16 v3, 0x1c

    invoke-direct {p2, v3}, Lar/tvplayer/core/domain/ـˆ;-><init>(I)V

    invoke-static {p0, v0, v2, p2}, Lٴˑ/ﾞᴵ;->ٴﹶ(Lʼﾞ/ˊʻ;ZZLᴵⁱ/ﾞʻ;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    iget p1, p1, Lᴵˋ/ⁱˊ;->ˆʾ:I

    add-int p2, p0, v1

    if-gt p2, p1, :cond_7

    :goto_3
    return-void

    :cond_7
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, ";\nalready enqueued count: "

    const-string v2, ";\ncurrent enqueue operation count: "

    const-string v3, "Too many workers with contentUriTriggers are enqueued:\ncontentUriTrigger workers limit: "

    invoke-static {v3, p1, v0, p0, v2}, Lᐧـ/ˈ;->ﹳᐧ(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ".\nTo address this issue you can: \n1. enqueue less workers or batch some of workers with content uri triggers together;\n2. increase limit via Configuration.Builder.setContentUriTriggerWorkersLimit;\nPlease beware that workers with content uri triggers immediately occupy slots in JobScheduler so no updates to content uris are missed."

    invoke-static {p0, v1, p1}, Lʼﾞ/ˊˋ;->ˏי(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static final ﹳٴ(Lـʾ/ﹳᐧ;Ljava/lang/String;)V
    .locals 8

    .prologue
    iget-object v0, p0, Lـʾ/ﹳᐧ;->ˑﹳ:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->ʾᵎ()Lˑᵎ/ʾᵎ;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->יـ()Lˑᵎ/ˑﹳ;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lﹶˈ/ٴﹶ;->ʿᵢ([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    invoke-static {v2}, Lﹶˈ/ˆʾ;->ʾˊ(Ljava/util/AbstractList;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lˑᵎ/ʾᵎ;->ʽ(Ljava/lang/String;)Lᴵˋ/ˈٴ;

    move-result-object v5

    sget-object v6, Lᴵˋ/ˈٴ;->ʽʽ:Lᴵˋ/ˈٴ;

    if-eq v5, v6, :cond_0

    sget-object v6, Lᴵˋ/ˈٴ;->ˈٴ:Lᴵˋ/ˈٴ;

    if-eq v5, v6, :cond_0

    iget-object v5, v1, Lˑᵎ/ʾᵎ;->ﹳٴ:Lʼﾞ/ˊʻ;

    new-instance v6, Lˑᵎ/ʽ;

    const/16 v7, 0xb

    invoke-direct {v6, v7, v3}, Lˑᵎ/ʽ;-><init>(ILjava/lang/String;)V

    const/4 v7, 0x0

    invoke-static {v5, v7, v4, v6}, Lٴˑ/ﾞᴵ;->ٴﹶ(Lʼﾞ/ˊʻ;ZZLᴵⁱ/ﾞʻ;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    :cond_0
    invoke-virtual {v0, v3}, Lˑᵎ/ˑﹳ;->ﹳٴ(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lـʾ/ﹳᐧ;->ᵔᵢ:Lـʾ/ʽ;

    const-string v1, "Processor cancelling "

    iget-object v2, v0, Lـʾ/ʽ;->ٴﹶ:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v3

    sget-object v5, Lـʾ/ʽ;->ﾞʻ:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v5, v1}, Lᴵˋ/ˏי;->ﹳٴ(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lـʾ/ʽ;->ʼˎ:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p1}, Lـʾ/ʽ;->ⁱˊ(Ljava/lang/String;)Lـʾ/ʾˋ;

    move-result-object v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1, v0, v4}, Lـʾ/ʽ;->ˑﹳ(Ljava/lang/String;Lـʾ/ʾˋ;I)Z

    iget-object p0, p0, Lـʾ/ﹳᐧ;->ᵎﹶ:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lـʾ/ˑﹳ;

    invoke-interface {v0, p1}, Lـʾ/ˑﹳ;->ⁱˊ(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
