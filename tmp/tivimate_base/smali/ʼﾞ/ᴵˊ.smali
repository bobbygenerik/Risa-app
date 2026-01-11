.class public final Lʼﾞ/ᴵˊ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:Z

.field public final ˈ:Ljava/lang/Object;

.field public final ˑﹳ:Ljava/lang/Object;

.field public final ᵎﹶ:Ljava/lang/Object;

.field public ᵔᵢ:Ljava/lang/Object;

.field public ⁱˊ:Z

.field public final synthetic ﹳٴ:I

.field public final ﾞᴵ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lʼﾞ/ﹳٴ;Lar/tvplayer/core/domain/ـˆ;)V
    .locals 2

    .prologue
    const/4 p2, 0x0

    iput p2, p0, Lʼﾞ/ᴵˊ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʼﾞ/ᴵˊ;->ˈ:Ljava/lang/Object;

    new-instance p2, Lʼﾞ/ʼʼ;

    const/4 v0, -0x1

    const-string v1, ""

    invoke-direct {p2, v0, v1, v1}, Lʼﾞ/ᵎⁱ;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lʼﾞ/ᴵˊ;->ˑﹳ:Ljava/lang/Object;

    iget-object p1, p1, Lʼﾞ/ﹳٴ;->ˑﹳ:Ljava/util/List;

    sget-object p2, Lﹶˈ/ʼᐧ;->ʾˋ:Lﹶˈ/ʼᐧ;

    if-nez p1, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lʼﾞ/ᴵˊ;->ﾞᴵ:Ljava/lang/Object;

    new-instance v0, Lʼⁱ/ʽⁱ;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lʼⁱ/ʽⁱ;-><init>(ILjava/lang/Object;)V

    if-nez p1, :cond_1

    move-object p1, p2

    :cond_1
    new-instance p2, Lʼﾞ/ʾˋ;

    const/4 v1, 0x0

    invoke-direct {p2, v1, v0}, Lʼﾞ/ʾˋ;-><init>(ILjava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lʻᵢ/ˈ;

    invoke-direct {p1}, Lʻᵢ/ˈ;-><init>()V

    throw p1
.end method

.method public constructor <init>(Lʼﾞ/ﹳٴ;Lʼﾞ/ᵎⁱ;)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lʼﾞ/ᴵˊ;->ﹳٴ:I

    iget v0, p1, Lʼﾞ/ﹳٴ;->ᵎﹶ:I

    iget-object v1, p1, Lʼﾞ/ﹳٴ;->ʽ:Lʼﹶ/ʽ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʼﾞ/ᴵˊ;->ˈ:Ljava/lang/Object;

    iput-object p2, p0, Lʼﾞ/ᴵˊ;->ˑﹳ:Ljava/lang/Object;

    iget-object v2, p1, Lʼﾞ/ﹳٴ;->ˑﹳ:Ljava/util/List;

    if-nez v2, :cond_0

    sget-object v2, Lﹶˈ/ʼᐧ;->ʾˋ:Lﹶˈ/ʼᐧ;

    :cond_0
    iput-object v2, p0, Lʼﾞ/ᴵˊ;->ﾞᴵ:Ljava/lang/Object;

    iget-object v2, p1, Lʼﾞ/ﹳٴ;->ᵔﹳ:Lﹳᴵ/ⁱˊ;

    const/4 v3, 0x1

    if-nez v2, :cond_2

    if-eqz v1, :cond_1

    iget-object v5, p1, Lʼﾞ/ﹳٴ;->ﹳٴ:Landroid/content/Context;

    iget-object v6, p1, Lʼﾞ/ﹳٴ;->ⁱˊ:Ljava/lang/String;

    new-instance v7, Lʼﾞ/ᵢˏ;

    iget p1, p2, Lʼﾞ/ᵎⁱ;->ﹳٴ:I

    invoke-direct {v7, p0, p1}, Lʼﾞ/ᵢˏ;-><init>(Lʼﾞ/ᴵˊ;I)V

    new-instance v4, Lʼﹶ/ⁱˊ;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Lʼﹶ/ⁱˊ;-><init>(Landroid/content/Context;Ljava/lang/String;Lʻᴵ/ﾞᴵ;ZZ)V

    new-instance p1, Lˊˎ/ⁱˊ;

    new-instance p2, Lˉˆ/ʿ;

    invoke-interface {v1, v4}, Lʼﹶ/ʽ;->ˉʿ(Lʼﹶ/ⁱˊ;)Lʼﹶ/ˈ;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {p2, v2, v1}, Lˉˆ/ʿ;-><init>(ILjava/lang/Object;)V

    invoke-direct {p1, p2}, Lˊˎ/ⁱˊ;-><init>(Lˉˆ/ʿ;)V

    iput-object p1, p0, Lʼﾞ/ᴵˊ;->ᵎﹶ:Ljava/lang/Object;

    goto/16 :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "SQLiteManager was constructed with both null driver and open helper factory!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, p1, Lʼﾞ/ﹳٴ;->ⁱˊ:Ljava/lang/String;

    if-nez p1, :cond_3

    new-instance p1, Lﹶﾞ/ⁱי;

    const/16 p2, 0x9

    invoke-direct {p1, p0, p2, v2}, Lﹶﾞ/ⁱי;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    new-instance p2, Lʼˋ/ᵎﹶ;

    invoke-direct {p2, p1}, Lʼˋ/ᵎﹶ;-><init>(Lﹶﾞ/ⁱי;)V

    goto :goto_2

    :cond_3
    new-instance p2, Lﹶﾞ/ⁱי;

    const/16 v1, 0x9

    invoke-direct {p2, p0, v1, v2}, Lﹶﾞ/ⁱי;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {v0}, Lʻٴ/ᵎﹶ;->ˈ(I)I

    move-result v1

    const/16 v2, 0x27

    const/4 v4, 0x2

    if-eq v1, v3, :cond_5

    if-ne v1, v4, :cond_4

    const/4 v1, 0x4

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t get max number of reader for journal mode \'"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/support/v4/media/session/ﹳٴ;->ʻٴ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    move v1, v3

    :goto_0
    invoke-static {v0}, Lʻٴ/ᵎﹶ;->ˈ(I)I

    move-result v5

    if-eq v5, v3, :cond_7

    if-ne v5, v4, :cond_6

    goto :goto_1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t get max number of writers for journal mode \'"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/support/v4/media/session/ﹳٴ;->ʻٴ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_1
    new-instance v2, Lʼˋ/ᵎﹶ;

    invoke-direct {v2, p2, p1, v1}, Lʼˋ/ᵎﹶ;-><init>(Lﹶﾞ/ⁱי;Ljava/lang/String;I)V

    move-object p2, v2

    :goto_2
    iput-object p2, p0, Lʼﾞ/ᴵˊ;->ᵎﹶ:Ljava/lang/Object;

    :goto_3
    const/4 p1, 0x3

    if-ne v0, p1, :cond_8

    goto :goto_4

    :cond_8
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {p0}, Lʼﾞ/ᴵˊ;->ʽ()Lʼﹶ/ˈ;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-interface {p1, v3}, Lʼﹶ/ˈ;->setWriteAheadLoggingEnabled(Z)V

    :cond_9
    return-void
.end method

.method public constructor <init>(ZZLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lʼﾞ/ᴵˊ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lʼﾞ/ᴵˊ;->ⁱˊ:Z

    iput-boolean p2, p0, Lʼﾞ/ᴵˊ;->ʽ:Z

    iput-object p3, p0, Lʼﾞ/ᴵˊ;->ˈ:Ljava/lang/Object;

    iput-object p4, p0, Lʼﾞ/ᴵˊ;->ˑﹳ:Ljava/lang/Object;

    iput-object p5, p0, Lʼﾞ/ᴵˊ;->ﾞᴵ:Ljava/lang/Object;

    iput-object p6, p0, Lʼﾞ/ᴵˊ;->ᵎﹶ:Ljava/lang/Object;

    sget-object p1, Lﹶˈ/ᵔﹳ;->ʾˋ:Lﹶˈ/ᵔﹳ;

    invoke-static {p1}, Lﹶˈ/ˏי;->ᵎᵔ(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lʼﾞ/ᴵˊ;->ᵔᵢ:Ljava/lang/Object;

    return-void
.end method

.method public static ⁱˊ(Lﹳᴵ/ﹳٴ;)V
    .locals 5

    .prologue
    const-string v0, "PRAGMA busy_timeout"

    invoke-interface {p0, v0}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lﹳˋ/ٴﹶ;->ᵔᵢ(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    const-wide/16 v3, 0xbb8

    cmp-long v0, v1, v3

    if-gez v0, :cond_0

    const-string v0, "PRAGMA busy_timeout = 3000"

    invoke-static {p0, v0}, Landroid/support/v4/media/session/ⁱˊ;->ˑﹳ(Lﹳᴵ/ﹳٴ;Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v0, p0}, Lﹳˋ/ٴﹶ;->ᵔᵢ(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static final ﹳٴ(Lʼﾞ/ᴵˊ;Lﹳᴵ/ﹳٴ;)V
    .locals 5

    .prologue
    iget-object v0, p0, Lʼﾞ/ᴵˊ;->ˑﹳ:Ljava/lang/Object;

    check-cast v0, Lʼﾞ/ᵎⁱ;

    const-string v1, "PRAGMA user_version = "

    iget-object v2, p0, Lʼﾞ/ᴵˊ;->ˈ:Ljava/lang/Object;

    check-cast v2, Lʼﾞ/ﹳٴ;

    iget v3, v2, Lʼﾞ/ﹳٴ;->ᵎﹶ:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    const-string v3, "PRAGMA journal_mode = WAL"

    invoke-static {p1, v3}, Landroid/support/v4/media/session/ⁱˊ;->ˑﹳ(Lﹳᴵ/ﹳٴ;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v3, "PRAGMA journal_mode = TRUNCATE"

    invoke-static {p1, v3}, Landroid/support/v4/media/session/ⁱˊ;->ˑﹳ(Lﹳᴵ/ﹳٴ;Ljava/lang/String;)V

    :goto_0
    iget v2, v2, Lʼﾞ/ﹳٴ;->ᵎﹶ:I

    if-ne v2, v4, :cond_1

    const-string v2, "PRAGMA synchronous = NORMAL"

    invoke-static {p1, v2}, Landroid/support/v4/media/session/ⁱˊ;->ˑﹳ(Lﹳᴵ/ﹳٴ;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v2, "PRAGMA synchronous = FULL"

    invoke-static {p1, v2}, Landroid/support/v4/media/session/ⁱˊ;->ˑﹳ(Lﹳᴵ/ﹳٴ;Ljava/lang/String;)V

    :goto_1
    invoke-static {p1}, Lʼﾞ/ᴵˊ;->ⁱˊ(Lﹳᴵ/ﹳٴ;)V

    const-string v2, "PRAGMA user_version"

    invoke-interface {p1, v2}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v2

    :try_start_0
    invoke-interface {v2}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    long-to-int v3, v3

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lﹳˋ/ٴﹶ;->ᵔᵢ(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    iget v0, v0, Lʼﾞ/ᵎⁱ;->ﹳٴ:I

    if-eq v3, v0, :cond_5

    const-string v2, "BEGIN EXCLUSIVE TRANSACTION"

    invoke-static {p1, v2}, Landroid/support/v4/media/session/ⁱˊ;->ˑﹳ(Lﹳᴵ/ﹳٴ;Ljava/lang/String;)V

    if-nez v3, :cond_2

    :try_start_1
    invoke-virtual {p0, p1}, Lʼﾞ/ᴵˊ;->ˈ(Lﹳᴵ/ﹳٴ;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    invoke-virtual {p0, p1, v3, v0}, Lʼﾞ/ᴵˊ;->ˑﹳ(Lﹳᴵ/ﹳٴ;II)V

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v4/media/session/ⁱˊ;->ˑﹳ(Lﹳᴵ/ﹳٴ;Ljava/lang/String;)V

    sget-object v0, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_3
    new-instance v1, Lʻᵢ/ﾞᴵ;

    invoke-direct {v1, v0}, Lʻᵢ/ﾞᴵ;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_4
    nop

    instance-of v1, v0, Lʻᵢ/ﾞᴵ;

    if-nez v1, :cond_3

    move-object v1, v0

    check-cast v1, Lʻᵢ/ʼᐧ;

    const-string v1, "END TRANSACTION"

    invoke-static {p1, v1}, Landroid/support/v4/media/session/ⁱˊ;->ˑﹳ(Lﹳᴵ/ﹳٴ;Ljava/lang/String;)V

    :cond_3
    invoke-static {v0}, Lʻᵢ/ᵎﹶ;->ﹳٴ(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_5

    :cond_4
    const-string p0, "ROLLBACK TRANSACTION"

    invoke-static {p1, p0}, Landroid/support/v4/media/session/ⁱˊ;->ˑﹳ(Lﹳᴵ/ﹳٴ;Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_5
    invoke-virtual {p0, p1}, Lʼﾞ/ᴵˊ;->ﾞᴵ(Lﹳᴵ/ﹳٴ;)V

    return-void

    :catchall_1
    move-exception p0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception p1

    invoke-static {v2, p0}, Lﹳˋ/ٴﹶ;->ᵔᵢ(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 11

    .prologue
    iget v0, p0, Lʼﾞ/ᴵˊ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lʼﾞ/ᴵˊ;->ᵔᵢ:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lʼﾞ/ᴵˊ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    iget-object v2, p0, Lʼﾞ/ᴵˊ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    iget-object v3, p0, Lʼﾞ/ᴵˊ;->ˑﹳ:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    iget-object v4, p0, Lʼﾞ/ᴵˊ;->ˈ:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v6, p0, Lʼﾞ/ᴵˊ;->ⁱˊ:Z

    if-eqz v6, :cond_0

    const-string v6, "isRegularFile"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-boolean v6, p0, Lʼﾞ/ᴵˊ;->ʽ:Z

    if-eqz v6, :cond_1

    const-string v6, "isDirectory"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v4, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "byteCount="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v3, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "createdAt="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v2, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "lastModifiedAt="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v1, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lastAccessedAt="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "extras="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    const/4 v9, 0x0

    const/16 v10, 0x38

    const-string v6, ", "

    const-string v7, "FileMetadata("

    const-string v8, ")"

    invoke-static/range {v5 .. v10}, Lﹶˈ/ˆʾ;->ᵎʻ(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lᴵⁱ/ﾞʻ;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public ʽ()Lʼﹶ/ˈ;
    .locals 3

    .prologue
    iget-object v0, p0, Lʼﾞ/ᴵˊ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v0, Lʼˋ/ⁱˊ;

    instance-of v1, v0, Lˊˎ/ⁱˊ;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lˊˎ/ⁱˊ;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, v0, Lˊˎ/ⁱˊ;->ʾˋ:Lˉˆ/ʿ;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lˉˆ/ʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʼﹶ/ˈ;

    return-object v0

    :cond_1
    return-object v2
.end method

.method public ˈ(Lﹳᴵ/ﹳٴ;)V
    .locals 8

    .prologue
    iget-object v0, p0, Lʼﾞ/ᴵˊ;->ˑﹳ:Ljava/lang/Object;

    check-cast v0, Lʼﾞ/ᵎⁱ;

    const-string v1, "SELECT count(*) FROM sqlite_master WHERE name != \'android_metadata\'"

    invoke-interface {p1, v1}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lﹳˋ/ٴﹶ;->ᵔᵢ(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p1}, Lʼﾞ/ᵎⁱ;->ﹳٴ(Lﹳᴵ/ﹳٴ;)V

    if-nez v3, :cond_2

    invoke-virtual {v0, p1}, Lʼﾞ/ᵎⁱ;->ʻٴ(Lﹳᴵ/ﹳٴ;)Lʼﾞ/ˉٴ;

    move-result-object v1

    iget-boolean v2, v1, Lʼﾞ/ˉٴ;->ʽ:Z

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Pre-packaged database has an invalid schema: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lʼﾞ/ˉٴ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lʼﾞ/ᴵˊ;->ᵎﹶ(Lﹳᴵ/ﹳٴ;)V

    invoke-virtual {v0}, Lʼﾞ/ᵎⁱ;->ﹳᐧ()V

    iget-object p1, p0, Lʼﾞ/ᴵˊ;->ﾞᴵ:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʼﾞ/ʾˋ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_3
    return-void

    :goto_3
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v1, p1}, Lﹳˋ/ٴﹶ;->ᵔᵢ(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public ˑﹳ(Lﹳᴵ/ﹳٴ;II)V
    .locals 16

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v1, Lʼﾞ/ᴵˊ;->ˑﹳ:Ljava/lang/Object;

    check-cast v4, Lʼﾞ/ᵎⁱ;

    iget-object v5, v1, Lʼﾞ/ᴵˊ;->ˈ:Ljava/lang/Object;

    check-cast v5, Lʼﾞ/ﹳٴ;

    iget-object v6, v5, Lʼﾞ/ﹳٴ;->ˈ:Lʼﾞ/ˈٴ;

    iget-object v6, v6, Lʼﾞ/ˈٴ;->ﹳٴ:Ljava/util/LinkedHashMap;

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v2, v3, :cond_0

    sget-object v6, Lﹶˈ/ʼᐧ;->ʾˋ:Lﹶˈ/ʼᐧ;

    goto/16 :goto_7

    :cond_0
    if-le v3, v2, :cond_1

    move v10, v9

    goto :goto_0

    :cond_1
    move v10, v8

    :goto_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move v12, v2

    :cond_2
    if-eqz v10, :cond_3

    if-ge v12, v3, :cond_b

    goto :goto_1

    :cond_3
    if-le v12, v3, :cond_b

    :goto_1
    if-eqz v10, :cond_5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/TreeMap;

    if-nez v13, :cond_4

    :goto_2
    const/4 v15, 0x0

    goto :goto_3

    :cond_4
    invoke-virtual {v13}, Ljava/util/TreeMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object v14

    new-instance v15, Lʻᵢ/ˑﹳ;

    invoke-direct {v15, v13, v14}, Lʻᵢ/ˑﹳ;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/TreeMap;

    if-nez v13, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v13}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v14

    new-instance v15, Lʻᵢ/ˑﹳ;

    invoke-direct {v15, v13, v14}, Lʻᵢ/ˑﹳ;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3
    if-nez v15, :cond_7

    goto :goto_6

    :cond_7
    iget-object v13, v15, Lʻᵢ/ˑﹳ;->ʾˋ:Ljava/lang/Object;

    check-cast v13, Ljava/util/Map;

    iget-object v14, v15, Lʻᵢ/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Iterable;

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_8
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v15

    if-eqz v10, :cond_9

    add-int/lit8 v7, v12, 0x1

    if-gt v7, v15, :cond_8

    if-gt v15, v3, :cond_8

    goto :goto_4

    :cond_9
    if-gt v3, v15, :cond_8

    if-ge v15, v12, :cond_8

    :goto_4
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v13, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v9

    move v12, v15

    goto :goto_5

    :cond_a
    move v7, v8

    :goto_5
    if-nez v7, :cond_2

    :goto_6
    const/4 v6, 0x0

    goto :goto_7

    :cond_b
    move-object v6, v11

    :goto_7
    if-eqz v6, :cond_e

    invoke-virtual {v4, v0}, Lʼﾞ/ᵎⁱ;->ʽﹳ(Lﹳᴵ/ﹳٴ;)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lᵔᴵ/ⁱˊ;

    invoke-virtual {v3, v0}, Lᵔᴵ/ⁱˊ;->ⁱˊ(Lﹳᴵ/ﹳٴ;)V

    goto :goto_8

    :cond_c
    invoke-virtual {v4, v0}, Lʼﾞ/ᵎⁱ;->ʻٴ(Lﹳᴵ/ﹳٴ;)Lʼﾞ/ˉٴ;

    move-result-object v2

    iget-boolean v3, v2, Lʼﾞ/ˉٴ;->ʽ:Z

    if-eqz v3, :cond_d

    invoke-virtual {v4, v0}, Lʼﾞ/ᵎⁱ;->ˏי(Lﹳᴵ/ﹳٴ;)V

    invoke-virtual/range {p0 .. p1}, Lʼﾞ/ᴵˊ;->ᵎﹶ(Lﹳᴵ/ﹳٴ;)V

    return-void

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Migration didn\'t properly handle: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lʼﾞ/ˉٴ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    const/4 v6, 0x0

    if-le v2, v3, :cond_f

    iget-boolean v7, v5, Lʼﾞ/ﹳٴ;->ﾞʻ:Z

    if-eqz v7, :cond_f

    goto :goto_9

    :cond_f
    iget-object v7, v5, Lʼﾞ/ﹳٴ;->ˉʿ:Ljava/util/Set;

    iget-boolean v10, v5, Lʼﾞ/ﹳٴ;->ٴﹶ:Z

    if-eqz v10, :cond_11

    if-eqz v7, :cond_10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    :cond_10
    const/4 v6, 0x1

    :cond_11
    :goto_9
    if-nez v6, :cond_19

    iget-boolean v2, v5, Lʼﾞ/ﹳٴ;->ʼᐧ:Z

    if-eqz v2, :cond_16

    const-string v2, "SELECT name, type FROM sqlite_master WHERE type = \'table\' OR type = \'view\'"

    invoke-interface {v0, v2}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v2

    :try_start_0
    invoke-static {}, Lˈˊ/ᵔʾ;->ᵎﹶ()Lⁱˏ/ʽ;

    move-result-object v3

    :cond_12
    :goto_a
    invoke-interface {v2}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v2, v8}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "sqlite_"

    invoke-static {v5, v6, v8}, Lﹶˑ/ᵔﹳ;->ᵎᵔ(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_12

    const-string v6, "android_metadata"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    goto :goto_a

    :cond_13
    invoke-interface {v2, v9}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "view"

    invoke-static {v6, v7}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    new-instance v7, Lʻᵢ/ˑﹳ;

    invoke-direct {v7, v5, v6}, Lʻᵢ/ˑﹳ;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v7}, Lⁱˏ/ʽ;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :catchall_0
    move-exception v0

    move-object v3, v0

    goto :goto_c

    :cond_14
    invoke-static {v3}, Lˈˊ/ᵔʾ;->ﹳٴ(Lⁱˏ/ʽ;)Lⁱˏ/ʽ;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    invoke-static {v2, v5}, Lﹳˋ/ٴﹶ;->ᵔᵢ(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v8}, Lⁱˏ/ʽ;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    :goto_b
    move-object v3, v2

    check-cast v3, Lⁱˏ/ﹳٴ;

    invoke-virtual {v3}, Lⁱˏ/ﹳٴ;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-virtual {v3}, Lⁱˏ/ﹳٴ;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lʻᵢ/ˑﹳ;

    iget-object v5, v3, Lʻᵢ/ˑﹳ;->ʾˋ:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v3, v3, Lʻᵢ/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_15

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "DROP VIEW IF EXISTS "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/support/v4/media/session/ⁱˊ;->ˑﹳ(Lﹳᴵ/ﹳٴ;Ljava/lang/String;)V

    goto :goto_b

    :cond_15
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "DROP TABLE IF EXISTS "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/support/v4/media/session/ⁱˊ;->ˑﹳ(Lﹳᴵ/ﹳٴ;Ljava/lang/String;)V

    goto :goto_b

    :goto_c
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v2, v3}, Lﹳˋ/ٴﹶ;->ᵔᵢ(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0

    :cond_16
    invoke-virtual {v4, v0}, Lʼﾞ/ᵎⁱ;->ʽ(Lﹳᴵ/ﹳٴ;)V

    :cond_17
    iget-object v2, v1, Lʼﾞ/ᴵˊ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lʼﾞ/ʾˋ;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_d

    :cond_18
    invoke-virtual {v4, v0}, Lʼﾞ/ᵎⁱ;->ﹳٴ(Lﹳᴵ/ﹳٴ;)V

    return-void

    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "A migration from "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* functions."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ᵎﹶ(Lﹳᴵ/ﹳٴ;)V
    .locals 3

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-static {p1, v0}, Landroid/support/v4/media/session/ⁱˊ;->ˑﹳ(Lﹳᴵ/ﹳٴ;Ljava/lang/String;)V

    iget-object v0, p0, Lʼﾞ/ᴵˊ;->ˑﹳ:Ljava/lang/Object;

    check-cast v0, Lʼﾞ/ᵎⁱ;

    iget-object v0, v0, Lʼﾞ/ᵎⁱ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\')"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v4/media/session/ⁱˊ;->ˑﹳ(Lﹳᴵ/ﹳٴ;Ljava/lang/String;)V

    return-void
.end method

.method public ﾞᴵ(Lﹳᴵ/ﹳٴ;)V
    .locals 10

    .prologue
    iget-object v0, p0, Lʼﾞ/ᴵˊ;->ˑﹳ:Ljava/lang/Object;

    check-cast v0, Lʼﾞ/ᵎⁱ;

    const-string v1, "Pre-packaged database has an invalid schema: "

    const-string v2, "SELECT 1 FROM sqlite_master WHERE type = \'table\' AND name = \'room_master_table\'"

    invoke-interface {p1, v2}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v2

    :try_start_0
    invoke-interface {v2}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v2, v5}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :cond_0
    move v3, v5

    :goto_0
    const/4 v6, 0x0

    invoke-static {v2, v6}, Lﹳˋ/ٴﹶ;->ᵔᵢ(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    if-eqz v3, :cond_3

    const-string v1, "SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"

    invoke-interface {p1, v1}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v1

    :try_start_1
    invoke-interface {v1}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1, v5}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_1
    move-object v2, v6

    :goto_1
    invoke-static {v1, v6}, Lﹳˋ/ٴﹶ;->ᵔᵢ(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    iget-object v1, v0, Lʼﾞ/ᵎⁱ;->ⁱˊ:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v0, Lʼﾞ/ᵎⁱ;->ʽ:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_5

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Room cannot verify the data integrity. Looks like you\'ve changed schema but forgot to update the version number. You can simply fix this by increasing the version number. Expected identity hash: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lʼﾞ/ᵎⁱ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", found: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_2
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v0

    invoke-static {v1, p1}, Lﹳˋ/ٴﹶ;->ᵔᵢ(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    const-string v2, "BEGIN EXCLUSIVE TRANSACTION"

    invoke-static {p1, v2}, Landroid/support/v4/media/session/ⁱˊ;->ˑﹳ(Lﹳᴵ/ﹳٴ;Ljava/lang/String;)V

    :try_start_3
    invoke-virtual {v0, p1}, Lʼﾞ/ᵎⁱ;->ʻٴ(Lﹳᴵ/ﹳٴ;)Lʼﾞ/ˉٴ;

    move-result-object v2

    iget-boolean v3, v2, Lʼﾞ/ˉٴ;->ʽ:Z

    if-eqz v3, :cond_4

    invoke-virtual {v0, p1}, Lʼﾞ/ᵎⁱ;->ˏי(Lﹳᴵ/ﹳٴ;)V

    invoke-virtual {p0, p1}, Lʼﾞ/ᴵˊ;->ᵎﹶ(Lﹳᴵ/ﹳٴ;)V

    sget-object v1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    goto :goto_4

    :catchall_3
    move-exception v1

    goto :goto_3

    :cond_4
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v2, Lʼﾞ/ˉٴ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :goto_3
    new-instance v2, Lʻᵢ/ﾞᴵ;

    invoke-direct {v2, v1}, Lʻᵢ/ﾞᴵ;-><init>(Ljava/lang/Throwable;)V

    move-object v1, v2

    :goto_4
    nop

    instance-of v2, v1, Lʻᵢ/ﾞᴵ;

    if-nez v2, :cond_5

    move-object v2, v1

    check-cast v2, Lʻᵢ/ʼᐧ;

    const-string v2, "END TRANSACTION"

    invoke-static {p1, v2}, Landroid/support/v4/media/session/ⁱˊ;->ˑﹳ(Lﹳᴵ/ﹳٴ;Ljava/lang/String;)V

    :cond_5
    invoke-static {v1}, Lʻᵢ/ᵎﹶ;->ﹳٴ(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_9

    :cond_6
    :goto_5
    invoke-virtual {v0, p1}, Lʼﾞ/ᵎⁱ;->יـ(Lﹳᴵ/ﹳٴ;)V

    iget-object v0, p0, Lʼﾞ/ᴵˊ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lʼﾞ/ʾˋ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, p1, Lˊˎ/ﹳٴ;

    if-eqz v2, :cond_7

    move-object v2, p1

    check-cast v2, Lˊˎ/ﹳٴ;

    iget-object v2, v2, Lˊˎ/ﹳٴ;->ʾˋ:Lʼﹶ/ﹳٴ;

    iget v3, v1, Lʼﾞ/ʾˋ;->ﹳٴ:I

    packed-switch v3, :pswitch_data_0

    invoke-interface {v2}, Lʼﹶ/ﹳٴ;->ˆʾ()V

    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (last_enqueue_time + minimum_retention_duration) < "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lʼﾞ/ʾˋ;->ⁱˊ:Ljava/lang/Object;

    check-cast v1, Lᴵˋ/ˆʾ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-wide v7, Lـʾ/ˉʿ;->ﹳٴ:J

    sub-long/2addr v5, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lʼﹶ/ﹳٴ;->ʽﹳ(Ljava/lang/String;)V

    invoke-interface {v2}, Lʼﹶ/ﹳٴ;->ˈⁱ()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    invoke-interface {v2}, Lʼﹶ/ﹳٴ;->ʼˎ()V

    goto :goto_6

    :catchall_4
    move-exception p1

    invoke-interface {v2}, Lʼﹶ/ﹳٴ;->ʼˎ()V

    throw p1

    :pswitch_0
    iget-object v1, v1, Lʼﾞ/ʾˋ;->ⁱˊ:Ljava/lang/Object;

    check-cast v1, Lʼⁱ/ʽⁱ;

    invoke-virtual {v1, v2}, Lʼⁱ/ʽⁱ;->ⁱˊ(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_8
    iput-boolean v4, p0, Lʼﾞ/ᴵˊ;->ⁱˊ:Z

    return-void

    :cond_9
    const-string v0, "ROLLBACK TRANSACTION"

    invoke-static {p1, v0}, Landroid/support/v4/media/session/ⁱˊ;->ˑﹳ(Lﹳᴵ/ﹳٴ;Ljava/lang/String;)V

    throw v1

    :goto_7
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :catchall_5
    move-exception v0

    invoke-static {v2, p1}, Lﹳˋ/ٴﹶ;->ᵔᵢ(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
