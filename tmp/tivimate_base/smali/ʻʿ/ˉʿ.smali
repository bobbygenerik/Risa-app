.class public final Lʻʿ/ˉʿ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʼˎ:Ljava/util/Random;

.field public static final ᵔᵢ:Lʻʿ/ٴﹶ;


# instance fields
.field public final ʽ:Ljava/util/HashMap;

.field public ˈ:Lʻʿ/ʼᐧ;

.field public ˑﹳ:Lʽⁱ/ʼˈ;

.field public ᵎﹶ:J

.field public final ⁱˊ:Lʽⁱ/ˋᵔ;

.field public final ﹳٴ:Lʽⁱ/ˊˋ;

.field public ﾞᴵ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lʻʿ/ٴﹶ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lʻʿ/ٴﹶ;-><init>(I)V

    sput-object v0, Lʻʿ/ˉʿ;->ᵔᵢ:Lʻʿ/ٴﹶ;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lʻʿ/ˉʿ;->ʼˎ:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lʽⁱ/ˊˋ;

    invoke-direct {v0}, Lʽⁱ/ˊˋ;-><init>()V

    iput-object v0, p0, Lʻʿ/ˉʿ;->ﹳٴ:Lʽⁱ/ˊˋ;

    new-instance v0, Lʽⁱ/ˋᵔ;

    invoke-direct {v0}, Lʽⁱ/ˋᵔ;-><init>()V

    iput-object v0, p0, Lʻʿ/ˉʿ;->ⁱˊ:Lʽⁱ/ˋᵔ;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lʻʿ/ˉʿ;->ʽ:Ljava/util/HashMap;

    sget-object v0, Lʽⁱ/ʼˈ;->ﹳٴ:Lʽⁱ/ˑٴ;

    iput-object v0, p0, Lʻʿ/ˉʿ;->ˑﹳ:Lʽⁱ/ʼˈ;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lʻʿ/ˉʿ;->ᵎﹶ:J

    return-void
.end method


# virtual methods
.method public final ʽ(ILﹳᵢ/ᵢˏ;)Lʻʿ/ﾞʻ;
    .locals 18

    .prologue
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lʻʿ/ˉʿ;->ʽ:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    const-wide v6, 0x7fffffffffffffffL

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lʻʿ/ﾞʻ;

    iget-wide v9, v8, Lʻʿ/ﾞʻ;->ʽ:J

    iget-object v11, v8, Lʻʿ/ﾞʻ;->ˈ:Lﹳᵢ/ᵢˏ;

    const-wide/16 v12, -0x1

    cmp-long v9, v9, v12

    if-nez v9, :cond_2

    iget v9, v8, Lʻʿ/ﾞʻ;->ⁱˊ:I

    if-ne v1, v9, :cond_2

    if-eqz v2, :cond_2

    iget-wide v9, v2, Lﹳᵢ/ᵢˏ;->ˈ:J

    iget-object v14, v8, Lʻʿ/ﾞʻ;->ᵎﹶ:Lʻʿ/ˉʿ;

    iget-object v15, v14, Lʻʿ/ˉʿ;->ʽ:Ljava/util/HashMap;

    move-wide/from16 v16, v12

    iget-object v12, v14, Lʻʿ/ˉʿ;->ﾞᴵ:Ljava/lang/String;

    invoke-virtual {v15, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lʻʿ/ﾞʻ;

    if-eqz v12, :cond_1

    iget-wide v12, v12, Lʻʿ/ﾞʻ;->ʽ:J

    cmp-long v15, v12, v16

    if-eqz v15, :cond_1

    goto :goto_1

    :cond_1
    iget-wide v12, v14, Lʻʿ/ˉʿ;->ᵎﹶ:J

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    :goto_1
    cmp-long v12, v9, v12

    if-ltz v12, :cond_3

    iput-wide v9, v8, Lʻʿ/ﾞʻ;->ʽ:J

    goto :goto_2

    :cond_2
    move-wide/from16 v16, v12

    :cond_3
    :goto_2
    if-nez v2, :cond_4

    iget v9, v8, Lʻʿ/ﾞʻ;->ⁱˊ:I

    if-ne v1, v9, :cond_0

    goto :goto_3

    :cond_4
    iget-wide v9, v2, Lﹳᵢ/ᵢˏ;->ˈ:J

    if-nez v11, :cond_5

    invoke-virtual {v2}, Lﹳᵢ/ᵢˏ;->ⁱˊ()Z

    move-result v12

    if-nez v12, :cond_0

    iget-wide v12, v8, Lʻʿ/ﾞʻ;->ʽ:J

    cmp-long v9, v9, v12

    if-nez v9, :cond_0

    goto :goto_3

    :cond_5
    iget-wide v12, v11, Lﹳᵢ/ᵢˏ;->ˈ:J

    cmp-long v9, v9, v12

    if-nez v9, :cond_0

    iget v9, v2, Lﹳᵢ/ᵢˏ;->ⁱˊ:I

    iget v10, v11, Lﹳᵢ/ᵢˏ;->ⁱˊ:I

    if-ne v9, v10, :cond_0

    iget v9, v2, Lﹳᵢ/ᵢˏ;->ʽ:I

    iget v10, v11, Lﹳᵢ/ᵢˏ;->ʽ:I

    if-ne v9, v10, :cond_0

    :goto_3
    iget-wide v9, v8, Lʻʿ/ﾞʻ;->ʽ:J

    cmp-long v12, v9, v16

    if-eqz v12, :cond_7

    cmp-long v12, v9, v6

    if-gez v12, :cond_6

    goto :goto_4

    :cond_6
    if-nez v12, :cond_0

    sget-object v9, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    iget-object v9, v5, Lʻʿ/ﾞʻ;->ˈ:Lﹳᵢ/ᵢˏ;

    if-eqz v9, :cond_0

    if-eqz v11, :cond_0

    move-object v5, v8

    goto/16 :goto_0

    :cond_7
    :goto_4
    move-object v5, v8

    move-wide v6, v9

    goto/16 :goto_0

    :cond_8
    if-nez v5, :cond_9

    sget-object v4, Lʻʿ/ˉʿ;->ᵔᵢ:Lʻʿ/ٴﹶ;

    invoke-virtual {v4}, Lʻʿ/ٴﹶ;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Lʻʿ/ﾞʻ;

    invoke-direct {v5, v0, v4, v1, v2}, Lʻʿ/ﾞʻ;-><init>(Lʻʿ/ˉʿ;Ljava/lang/String;ILﹳᵢ/ᵢˏ;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-object v5
.end method

.method public final declared-synchronized ˈ(Lʽⁱ/ʼˈ;Lﹳᵢ/ᵢˏ;)Ljava/lang/String;
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p2, Lﹳᵢ/ᵢˏ;->ﹳٴ:Ljava/lang/Object;

    iget-object v1, p0, Lʻʿ/ˉʿ;->ⁱˊ:Lʽⁱ/ˋᵔ;

    invoke-virtual {p1, v0, v1}, Lʽⁱ/ʼˈ;->ᵎﹶ(Ljava/lang/Object;Lʽⁱ/ˋᵔ;)Lʽⁱ/ˋᵔ;

    move-result-object p1

    iget p1, p1, Lʽⁱ/ˋᵔ;->ʽ:I

    invoke-virtual {p0, p1, p2}, Lʻʿ/ˉʿ;->ʽ(ILﹳᵢ/ᵢˏ;)Lʻʿ/ﾞʻ;

    move-result-object p1

    iget-object p1, p1, Lʻʿ/ﾞʻ;->ﹳٴ:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ˑﹳ(Lʻʿ/ﹳٴ;)V
    .locals 7

    .prologue
    iget-object v0, p1, Lʻʿ/ﹳٴ;->ⁱˊ:Lʽⁱ/ʼˈ;

    iget v1, p1, Lʻʿ/ﹳٴ;->ʽ:I

    iget-object v2, p1, Lʻʿ/ﹳٴ;->ˈ:Lﹳᵢ/ᵢˏ;

    invoke-virtual {v0}, Lʽⁱ/ʼˈ;->ʼᐧ()Z

    move-result v0

    iget-object v3, p0, Lʻʿ/ˉʿ;->ʽ:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lʻʿ/ˉʿ;->ﾞᴵ:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lʻʿ/ﾞʻ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lʻʿ/ˉʿ;->ﹳٴ(Lʻʿ/ﾞʻ;)V

    return-void

    :cond_0
    iget-object v0, p0, Lʻʿ/ˉʿ;->ﾞᴵ:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʻʿ/ﾞʻ;

    invoke-virtual {p0, v1, v2}, Lʻʿ/ˉʿ;->ʽ(ILﹳᵢ/ᵢˏ;)Lʻʿ/ﾞʻ;

    move-result-object v3

    iget-object v3, v3, Lʻʿ/ﾞʻ;->ﹳٴ:Ljava/lang/String;

    iput-object v3, p0, Lʻʿ/ˉʿ;->ﾞᴵ:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lʻʿ/ˉʿ;->ﾞᴵ(Lʻʿ/ﹳٴ;)V

    if-eqz v2, :cond_2

    iget-wide v3, v2, Lﹳᵢ/ᵢˏ;->ˈ:J

    invoke-virtual {v2}, Lﹳᵢ/ᵢˏ;->ⁱˊ()Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz v0, :cond_1

    iget-wide v5, v0, Lʻʿ/ﾞʻ;->ʽ:J

    cmp-long p1, v5, v3

    if-nez p1, :cond_1

    iget-object p1, v0, Lʻʿ/ﾞʻ;->ˈ:Lﹳᵢ/ᵢˏ;

    if-eqz p1, :cond_1

    iget v0, p1, Lﹳᵢ/ᵢˏ;->ⁱˊ:I

    iget v5, v2, Lﹳᵢ/ᵢˏ;->ⁱˊ:I

    if-ne v0, v5, :cond_1

    iget p1, p1, Lﹳᵢ/ᵢˏ;->ʽ:I

    iget v0, v2, Lﹳᵢ/ᵢˏ;->ʽ:I

    if-eq p1, v0, :cond_2

    :cond_1
    new-instance p1, Lﹳᵢ/ᵢˏ;

    iget-object v0, v2, Lﹳᵢ/ᵢˏ;->ﹳٴ:Ljava/lang/Object;

    invoke-direct {p1, v3, v4, v0}, Lﹳᵢ/ᵢˏ;-><init>(JLjava/lang/Object;)V

    invoke-virtual {p0, v1, p1}, Lʻʿ/ˉʿ;->ʽ(ILﹳᵢ/ᵢˏ;)Lʻʿ/ﾞʻ;

    iget-object p1, p0, Lʻʿ/ˉʿ;->ˈ:Lʻʿ/ʼᐧ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    return-void
.end method

.method public final declared-synchronized ᵎﹶ(Lʻʿ/ﹳٴ;I)V
    .locals 4

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lʻʿ/ˉʿ;->ˈ:Lʻʿ/ʼᐧ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lʻʿ/ˉʿ;->ʽ:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lʻʿ/ﾞʻ;

    invoke-virtual {v1, p1}, Lʻʿ/ﾞʻ;->ﹳٴ(Lʻʿ/ﹳٴ;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-boolean v2, v1, Lʻʿ/ﾞʻ;->ˑﹳ:Z

    if-eqz v2, :cond_1

    iget-object v2, v1, Lʻʿ/ﾞʻ;->ﹳٴ:Ljava/lang/String;

    iget-object v3, p0, Lʻʿ/ˉʿ;->ﾞᴵ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz p2, :cond_2

    if-eqz v2, :cond_2

    iget-boolean v3, v1, Lʻʿ/ﾞʻ;->ﾞᴵ:Z

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_2
    if-eqz v2, :cond_3

    invoke-virtual {p0, v1}, Lʻʿ/ˉʿ;->ﹳٴ(Lʻʿ/ﾞʻ;)V

    :cond_3
    iget-object v2, p0, Lʻʿ/ˉʿ;->ˈ:Lʻʿ/ʼᐧ;

    iget-object v1, v1, Lʻʿ/ﾞʻ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v2, p1, v1}, Lʻʿ/ʼᐧ;->ˉʿ(Lʻʿ/ﹳٴ;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Lʻʿ/ˉʿ;->ˑﹳ(Lʻʿ/ﹳٴ;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized ⁱˊ(Lʻʿ/ﹳٴ;)V
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lʻʿ/ˉʿ;->ﾞᴵ:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lʻʿ/ˉʿ;->ʽ:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʻʿ/ﾞʻ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lʻʿ/ˉʿ;->ﹳٴ(Lʻʿ/ﾞʻ;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lʻʿ/ˉʿ;->ʽ:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lʻʿ/ﾞʻ;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-boolean v2, v1, Lʻʿ/ﾞʻ;->ˑﹳ:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lʻʿ/ˉʿ;->ˈ:Lʻʿ/ʼᐧ;

    if-eqz v2, :cond_1

    iget-object v1, v1, Lʻʿ/ﾞʻ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v2, p1, v1}, Lʻʿ/ʼᐧ;->ˉʿ(Lʻʿ/ﹳٴ;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ﹳٴ(Lʻʿ/ﾞʻ;)V
    .locals 4

    .prologue
    iget-wide v0, p1, Lʻʿ/ﾞʻ;->ʽ:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    iput-wide v0, p0, Lʻʿ/ˉʿ;->ᵎﹶ:J

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lʻʿ/ˉʿ;->ﾞᴵ:Ljava/lang/String;

    return-void
.end method

.method public final declared-synchronized ﾞᴵ(Lʻʿ/ﹳٴ;)V
    .locals 9

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lʻʿ/ˉʿ;->ˈ:Lʻʿ/ʼᐧ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lʻʿ/ﹳٴ;->ⁱˊ:Lʽⁱ/ʼˈ;

    invoke-virtual {v0}, Lʽⁱ/ʼˈ;->ʼᐧ()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p1, Lʻʿ/ﹳٴ;->ˈ:Lﹳᵢ/ᵢˏ;

    if-eqz v0, :cond_3

    iget-wide v0, v0, Lﹳᵢ/ᵢˏ;->ˈ:J

    iget-object v2, p0, Lʻʿ/ˉʿ;->ʽ:Ljava/util/HashMap;

    iget-object v3, p0, Lʻʿ/ˉʿ;->ﾞᴵ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lʻʿ/ﾞʻ;

    const-wide/16 v3, -0x1

    if-eqz v2, :cond_1

    iget-wide v5, v2, Lʻʿ/ﾞʻ;->ʽ:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v5, p0, Lʻʿ/ˉʿ;->ᵎﹶ:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    :goto_0
    cmp-long v0, v0, v5

    if-gez v0, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    iget-object v0, p0, Lʻʿ/ˉʿ;->ʽ:Ljava/util/HashMap;

    iget-object v1, p0, Lʻʿ/ˉʿ;->ﾞᴵ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʻʿ/ﾞʻ;

    if-eqz v0, :cond_3

    iget-wide v1, v0, Lʻʿ/ﾞʻ;->ʽ:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    iget v0, v0, Lʻʿ/ﾞʻ;->ⁱˊ:I

    iget v1, p1, Lʻʿ/ﹳٴ;->ʽ:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eq v0, v1, :cond_3

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :cond_3
    :try_start_3
    iget v0, p1, Lʻʿ/ﹳٴ;->ʽ:I

    iget-object v1, p1, Lʻʿ/ﹳٴ;->ˈ:Lﹳᵢ/ᵢˏ;

    invoke-virtual {p0, v0, v1}, Lʻʿ/ˉʿ;->ʽ(ILﹳᵢ/ᵢˏ;)Lʻʿ/ﾞʻ;

    move-result-object v0

    iget-object v1, p0, Lʻʿ/ˉʿ;->ﾞᴵ:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, v0, Lʻʿ/ﾞʻ;->ﹳٴ:Ljava/lang/String;

    iput-object v1, p0, Lʻʿ/ˉʿ;->ﾞᴵ:Ljava/lang/String;

    :cond_4
    iget-object v1, p1, Lʻʿ/ﹳٴ;->ˈ:Lﹳᵢ/ᵢˏ;

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lﹳᵢ/ᵢˏ;->ⁱˊ()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lﹳᵢ/ᵢˏ;

    iget-object v3, p1, Lʻʿ/ﹳٴ;->ˈ:Lﹳᵢ/ᵢˏ;

    iget-object v4, v3, Lﹳᵢ/ᵢˏ;->ﹳٴ:Ljava/lang/Object;

    iget-wide v5, v3, Lﹳᵢ/ᵢˏ;->ˈ:J

    iget v3, v3, Lﹳᵢ/ᵢˏ;->ⁱˊ:I

    invoke-direct {v1, v4, v5, v6, v3}, Lﹳᵢ/ᵢˏ;-><init>(Ljava/lang/Object;JI)V

    iget v3, p1, Lʻʿ/ﹳٴ;->ʽ:I

    invoke-virtual {p0, v3, v1}, Lʻʿ/ˉʿ;->ʽ(ILﹳᵢ/ᵢˏ;)Lʻʿ/ﾞʻ;

    move-result-object v1

    iget-boolean v3, v1, Lʻʿ/ﾞʻ;->ˑﹳ:Z

    if-nez v3, :cond_5

    iput-boolean v2, v1, Lʻʿ/ﾞʻ;->ˑﹳ:Z

    iget-object v1, p1, Lʻʿ/ﹳٴ;->ⁱˊ:Lʽⁱ/ʼˈ;

    iget-object v3, p1, Lʻʿ/ﹳٴ;->ˈ:Lﹳᵢ/ᵢˏ;

    iget-object v3, v3, Lﹳᵢ/ᵢˏ;->ﹳٴ:Ljava/lang/Object;

    iget-object v4, p0, Lʻʿ/ˉʿ;->ⁱˊ:Lʽⁱ/ˋᵔ;

    invoke-virtual {v1, v3, v4}, Lʽⁱ/ʼˈ;->ᵎﹶ(Ljava/lang/Object;Lʽⁱ/ˋᵔ;)Lʽⁱ/ˋᵔ;

    iget-object v1, p0, Lʻʿ/ˉʿ;->ⁱˊ:Lʽⁱ/ˋᵔ;

    iget-object v3, p1, Lʻʿ/ﹳٴ;->ˈ:Lﹳᵢ/ᵢˏ;

    iget v3, v3, Lﹳᵢ/ᵢˏ;->ⁱˊ:I

    invoke-virtual {v1, v3}, Lʽⁱ/ˋᵔ;->ˈ(I)J

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Lᐧˎ/ʼʼ;->ʻᵎ(J)J

    move-result-wide v5

    iget-object v1, p0, Lʻʿ/ˉʿ;->ⁱˊ:Lʽⁱ/ˋᵔ;

    iget-wide v7, v1, Lʽⁱ/ˋᵔ;->ˑﹳ:J

    invoke-static {v7, v8}, Lᐧˎ/ʼʼ;->ʻᵎ(J)J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    iget-object v1, p0, Lʻʿ/ˉʿ;->ˈ:Lʻʿ/ʼᐧ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_5
    iget-boolean v1, v0, Lʻʿ/ﾞʻ;->ˑﹳ:Z

    if-nez v1, :cond_6

    iput-boolean v2, v0, Lʻʿ/ﾞʻ;->ˑﹳ:Z

    iget-object v1, p0, Lʻʿ/ˉʿ;->ˈ:Lʻʿ/ʼᐧ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_6
    iget-object v1, v0, Lʻʿ/ﾞʻ;->ﹳٴ:Ljava/lang/String;

    iget-object v3, p0, Lʻʿ/ˉʿ;->ﾞᴵ:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, v0, Lʻʿ/ﾞʻ;->ﾞᴵ:Z

    if-nez v1, :cond_7

    iput-boolean v2, v0, Lʻʿ/ﾞʻ;->ﾞᴵ:Z

    iget-object v1, p0, Lʻʿ/ˉʿ;->ˈ:Lʻʿ/ʼᐧ;

    iget-object v0, v0, Lʻʿ/ﾞʻ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Lʻʿ/ʼᐧ;->ﾞʻ(Lʻʿ/ﹳٴ;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_7
    monitor-exit p0

    return-void

    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method
