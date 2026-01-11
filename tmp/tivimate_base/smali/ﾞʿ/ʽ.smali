.class public final Lﾞʿ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ٴﹶ:Ljava/util/logging/Logger;

.field public static final ﾞʻ:Lﾞʿ/ʽ;


# instance fields
.field public final ʼˎ:Ljava/util/ArrayList;

.field public ʽ:I

.field public final ˆʾ:Lﹳˊ/יـ;

.field public ˈ:Z

.field public ˑﹳ:J

.field public ᵎﹶ:I

.field public final ᵔᵢ:Ljava/util/ArrayList;

.field public final ⁱˊ:Ljava/util/logging/Logger;

.field public final ﹳٴ:Lᐧﹳ/ʽ;

.field public ﾞᴵ:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v0, Lﾞʿ/ʽ;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lﾞʿ/ʽ;->ٴﹶ:Ljava/util/logging/Logger;

    new-instance v0, Lﾞʿ/ʽ;

    new-instance v1, Lᐧﹳ/ʽ;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lⁱᐧ/ˑﹳ;->ⁱˊ:Ljava/lang/String;

    const-string v4, " TaskRunner"

    invoke-static {v2, v3, v4}, Lʼﾞ/ˊˋ;->ʽﹳ(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lⁱᐧ/ˈ;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Lⁱᐧ/ˈ;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v1, v3}, Lᐧﹳ/ʽ;-><init>(Lⁱᐧ/ˈ;)V

    invoke-direct {v0, v1}, Lﾞʿ/ʽ;-><init>(Lᐧﹳ/ʽ;)V

    sput-object v0, Lﾞʿ/ʽ;->ﾞʻ:Lﾞʿ/ʽ;

    return-void
.end method

.method public constructor <init>(Lᐧﹳ/ʽ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﾞʿ/ʽ;->ﹳٴ:Lᐧﹳ/ʽ;

    sget-object p1, Lﾞʿ/ʽ;->ٴﹶ:Ljava/util/logging/Logger;

    iput-object p1, p0, Lﾞʿ/ʽ;->ⁱˊ:Ljava/util/logging/Logger;

    const/16 p1, 0x2710

    iput p1, p0, Lﾞʿ/ʽ;->ʽ:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lﾞʿ/ʽ;->ᵔᵢ:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lﾞʿ/ʽ;->ʼˎ:Ljava/util/ArrayList;

    new-instance p1, Lﹳˊ/יـ;

    const/16 v0, 0xa

    invoke-direct {p1, v0, p0}, Lﹳˊ/יـ;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lﾞʿ/ʽ;->ˆʾ:Lﹳˊ/יـ;

    return-void
.end method

.method public static final ﹳٴ(Lﾞʿ/ʽ;Lﾞʿ/ﹳٴ;JZ)V
    .locals 4

    .prologue
    sget-object v0, Lⁱᐧ/ˑﹳ;->ﹳٴ:Ljava/util/TimeZone;

    iget-object v0, p1, Lﾞʿ/ﹳٴ;->ʽ:Lﾞʿ/ⁱˊ;

    iget-object v1, v0, Lﾞʿ/ⁱˊ;->ˈ:Lﾞʿ/ﹳٴ;

    if-ne v1, p1, :cond_2

    iget-boolean v1, v0, Lﾞʿ/ⁱˊ;->ﾞᴵ:Z

    const/4 v2, 0x0

    iput-boolean v2, v0, Lﾞʿ/ⁱˊ;->ﾞᴵ:Z

    const/4 v2, 0x0

    iput-object v2, v0, Lﾞʿ/ⁱˊ;->ˈ:Lﾞʿ/ﹳٴ;

    iget-object v2, p0, Lﾞʿ/ʽ;->ᵔᵢ:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lﾞʿ/ⁱˊ;->ʽ:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lﾞʿ/ⁱˊ;->ˑﹳ(Lﾞʿ/ﹳٴ;JZ)Z

    :cond_0
    iget-object p1, v0, Lﾞʿ/ⁱˊ;->ˑﹳ:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lﾞʿ/ʽ;->ʼˎ:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p4, :cond_1

    invoke-virtual {p0}, Lﾞʿ/ʽ;->ˑﹳ()V

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final ʽ(Lﾞʿ/ⁱˊ;)V
    .locals 2

    .prologue
    sget-object v0, Lⁱᐧ/ˑﹳ;->ﹳٴ:Ljava/util/TimeZone;

    iget-object v0, p1, Lﾞʿ/ⁱˊ;->ˈ:Lﾞʿ/ﹳٴ;

    if-nez v0, :cond_1

    iget-object v0, p1, Lﾞʿ/ⁱˊ;->ˑﹳ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lﾞʿ/ʽ;->ʼˎ:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    sget-object v0, Lⁱᐧ/ʽ;->ﹳٴ:[B

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-boolean p1, p0, Lﾞʿ/ʽ;->ˈ:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lﾞʿ/ʽ;->ˑﹳ()V

    return-void
.end method

.method public final ˈ()Lﾞʿ/ⁱˊ;
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lﾞʿ/ʽ;->ʽ:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lﾞʿ/ʽ;->ʽ:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    new-instance v1, Lﾞʿ/ⁱˊ;

    const-string v2, "Q"

    invoke-static {v0, v2}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lﾞʿ/ⁱˊ;-><init>(Lﾞʿ/ʽ;Ljava/lang/String;)V

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final ˑﹳ()V
    .locals 2

    .prologue
    sget-object v0, Lⁱᐧ/ˑﹳ;->ﹳٴ:Ljava/util/TimeZone;

    iget v0, p0, Lﾞʿ/ʽ;->ﾞᴵ:I

    iget v1, p0, Lﾞʿ/ʽ;->ᵎﹶ:I

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lﾞʿ/ʽ;->ﾞᴵ:I

    iget-object v0, p0, Lﾞʿ/ʽ;->ﹳٴ:Lᐧﹳ/ʽ;

    iget-object v0, v0, Lᐧﹳ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lﾞʿ/ʽ;->ˆʾ:Lﹳˊ/יـ;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final ⁱˊ()Lﾞʿ/ﹳٴ;
    .locals 18

    .prologue
    move-object/from16 v1, p0

    sget-object v0, Lⁱᐧ/ˑﹳ;->ﹳٴ:Ljava/util/TimeZone;

    :goto_0
    iget-object v0, v1, Lﾞʿ/ʽ;->ʼˎ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v15, 0x0

    goto/16 :goto_4

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v6, 0x0

    const-wide v7, 0x7fffffffffffffffL

    move v10, v6

    const/4 v9, 0x0

    :goto_1
    const-wide/16 v11, 0x0

    const/4 v13, 0x1

    if-ge v10, v2, :cond_3

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v10, v10, 0x1

    check-cast v14, Lﾞʿ/ⁱˊ;

    iget-object v14, v14, Lﾞʿ/ⁱˊ;->ˑﹳ:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lﾞʿ/ﹳٴ;

    move-wide/from16 v16, v4

    const/4 v15, 0x0

    iget-wide v3, v14, Lﾞʿ/ﹳٴ;->ˈ:J

    sub-long v3, v3, v16

    invoke-static {v11, v12, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    cmp-long v5, v3, v11

    if-lez v5, :cond_1

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    :goto_2
    move-wide/from16 v4, v16

    goto :goto_1

    :cond_1
    if-eqz v9, :cond_2

    move v2, v13

    goto :goto_3

    :cond_2
    move-object v9, v14

    goto :goto_2

    :cond_3
    move-wide/from16 v16, v4

    const/4 v15, 0x0

    move v2, v6

    :goto_3
    iget-object v3, v1, Lﾞʿ/ʽ;->ᵔᵢ:Ljava/util/ArrayList;

    if-eqz v9, :cond_6

    sget-object v4, Lⁱᐧ/ˑﹳ;->ﹳٴ:Ljava/util/TimeZone;

    const-wide/16 v4, -0x1

    iput-wide v4, v9, Lﾞʿ/ﹳٴ;->ˈ:J

    iget-object v4, v9, Lﾞʿ/ﹳٴ;->ʽ:Lﾞʿ/ⁱˊ;

    iget-object v5, v4, Lﾞʿ/ⁱˊ;->ˑﹳ:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iput-object v9, v4, Lﾞʿ/ⁱˊ;->ˈ:Lﾞʿ/ﹳٴ;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v2, :cond_4

    iget-boolean v2, v1, Lﾞʿ/ʽ;->ˈ:Z

    if-nez v2, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    invoke-virtual {v1}, Lﾞʿ/ʽ;->ˑﹳ()V

    :cond_5
    return-object v9

    :cond_6
    iget-boolean v2, v1, Lﾞʿ/ʽ;->ˈ:Z

    if-eqz v2, :cond_8

    iget-wide v2, v1, Lﾞʿ/ʽ;->ˑﹳ:J

    sub-long v2, v2, v16

    cmp-long v0, v7, v2

    if-gez v0, :cond_7

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    :cond_7
    :goto_4
    return-object v15

    :cond_8
    iput-boolean v13, v1, Lﾞʿ/ʽ;->ˈ:Z

    add-long v4, v16, v7

    iput-wide v4, v1, Lﾞʿ/ʽ;->ˑﹳ:J

    :try_start_0
    sget-object v2, Lⁱᐧ/ˑﹳ;->ﹳٴ:Ljava/util/TimeZone;

    cmp-long v2, v7, v11

    if-lez v2, :cond_a

    const-wide/32 v4, 0xf4240

    div-long v9, v7, v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v9, v10}, Ljava/lang/Long;->signum(J)I

    mul-long/2addr v4, v9

    sub-long/2addr v7, v4

    cmp-long v4, v9, v11

    if-gtz v4, :cond_9

    if-lez v2, :cond_a

    :cond_9
    long-to-int v2, v7

    :try_start_1
    invoke-virtual {v1, v9, v10, v2}, Ljava/lang/Object;->wait(JI)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_8

    :cond_a
    :goto_5
    iput-boolean v6, v1, Lﾞʿ/ʽ;->ˈ:Z

    goto/16 :goto_0

    :catch_0
    :try_start_2
    sget-object v2, Lⁱᐧ/ˑﹳ;->ﹳٴ:Ljava/util/TimeZone;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v13

    :goto_6
    const/4 v4, -0x1

    if-ge v4, v2, :cond_b

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lﾞʿ/ⁱˊ;

    invoke-virtual {v4}, Lﾞʿ/ⁱˊ;->ⁱˊ()Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    :cond_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v13

    :goto_7
    if-ge v4, v2, :cond_a

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lﾞʿ/ⁱˊ;

    invoke-virtual {v3}, Lﾞʿ/ⁱˊ;->ⁱˊ()Z

    iget-object v3, v3, Lﾞʿ/ⁱˊ;->ˑﹳ:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_c
    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    :goto_8
    iput-boolean v6, v1, Lﾞʿ/ʽ;->ˈ:Z

    throw v0
.end method
