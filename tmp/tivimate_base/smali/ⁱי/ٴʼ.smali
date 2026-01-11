.class public final Lⁱי/ٴʼ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʼˎ:[Z

.field public ʼᐧ:J

.field public final ʽ:[Lﹳᵢ/ˉـ;

.field public final ˆʾ:[Lⁱי/ˑﹳ;

.field public ˈ:Z

.field public ˉʿ:Lⁱי/ٴʼ;

.field public ˉˆ:Lﹶʽ/ʼʼ;

.field public ˑﹳ:Z

.field public final ٴﹶ:Lﹶʽ/ـˆ;

.field public ᵎﹶ:Lⁱי/ᵎˊ;

.field public ᵔʾ:Lﹳᵢ/ʻᵎ;

.field public ᵔᵢ:Z

.field public final ⁱˊ:Ljava/lang/Object;

.field public final ﹳٴ:Ljava/lang/Object;

.field public final ﾞʻ:Lˋⁱ/ʼᐧ;

.field public ﾞᴵ:Z


# direct methods
.method public constructor <init>([Lⁱי/ˑﹳ;JLﹶʽ/ـˆ;Lᵔⁱ/ˑﹳ;Lˋⁱ/ʼᐧ;Lⁱי/ᵎˊ;Lﹶʽ/ʼʼ;)V
    .locals 7

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lⁱי/ٴʼ;->ˆʾ:[Lⁱי/ˑﹳ;

    iput-wide p2, p0, Lⁱי/ٴʼ;->ʼᐧ:J

    iput-object p4, p0, Lⁱי/ٴʼ;->ٴﹶ:Lﹶʽ/ـˆ;

    iput-object p6, p0, Lⁱי/ٴʼ;->ﾞʻ:Lˋⁱ/ʼᐧ;

    iget-object p2, p7, Lⁱי/ᵎˊ;->ﹳٴ:Lﹳᵢ/ᵢˏ;

    iget-object p3, p2, Lﹳᵢ/ᵢˏ;->ﹳٴ:Ljava/lang/Object;

    iput-object p3, p0, Lⁱי/ٴʼ;->ⁱˊ:Ljava/lang/Object;

    iput-object p7, p0, Lⁱי/ٴʼ;->ᵎﹶ:Lⁱי/ᵎˊ;

    sget-object p3, Lﹳᵢ/ʻᵎ;->ˈ:Lﹳᵢ/ʻᵎ;

    iput-object p3, p0, Lⁱי/ٴʼ;->ᵔʾ:Lﹳᵢ/ʻᵎ;

    iput-object p8, p0, Lⁱי/ٴʼ;->ˉˆ:Lﹶʽ/ʼʼ;

    array-length p3, p1

    new-array p3, p3, [Lﹳᵢ/ˉـ;

    iput-object p3, p0, Lⁱי/ٴʼ;->ʽ:[Lﹳᵢ/ˉـ;

    array-length p1, p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lⁱי/ٴʼ;->ʼˎ:[Z

    iget-wide p3, p7, Lⁱי/ᵎˊ;->ⁱˊ:J

    iget-wide v5, p7, Lⁱי/ᵎˊ;->ˈ:J

    iget-boolean p1, p7, Lⁱי/ᵎˊ;->ﾞᴵ:Z

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p7, p2, Lﹳᵢ/ᵢˏ;->ﹳٴ:Ljava/lang/Object;

    sget p8, Lⁱי/ᐧﾞ;->ٴﹶ:I

    check-cast p7, Landroid/util/Pair;

    iget-object p8, p7, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object p7, p7, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p2, p7}, Lﹳᵢ/ᵢˏ;->ﹳٴ(Ljava/lang/Object;)Lﹳᵢ/ᵢˏ;

    move-result-object p2

    iget-object p7, p6, Lˋⁱ/ʼᐧ;->ˑﹳ:Ljava/lang/Object;

    check-cast p7, Ljava/util/HashMap;

    invoke-virtual {p7, p8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Lⁱי/ˈⁱ;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p8, p6, Lˋⁱ/ʼᐧ;->ᵔᵢ:Ljava/lang/Object;

    check-cast p8, Ljava/util/HashSet;

    invoke-virtual {p8, p7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p8, p6, Lˋⁱ/ʼᐧ;->ᵎﹶ:Ljava/lang/Object;

    check-cast p8, Ljava/util/HashMap;

    invoke-virtual {p8, p7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p8

    check-cast p8, Lⁱי/ﹳـ;

    if-eqz p8, :cond_0

    iget-object v0, p8, Lⁱי/ﹳـ;->ﹳٴ:Lﹳᵢ/ᴵˊ;

    iget-object p8, p8, Lⁱי/ﹳـ;->ⁱˊ:Lⁱי/ᵔٴ;

    invoke-interface {v0, p8}, Lﹳᵢ/ᴵˊ;->ʽ(Lﹳᵢ/ʾˋ;)V

    :cond_0
    iget-object p8, p7, Lⁱי/ˈⁱ;->ʽ:Ljava/util/ArrayList;

    invoke-virtual {p8, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p8, p7, Lⁱי/ˈⁱ;->ﹳٴ:Lﹳᵢ/ʻٴ;

    invoke-virtual {p8, p2, p5, p3, p4}, Lﹳᵢ/ʻٴ;->ᵎⁱ(Lﹳᵢ/ᵢˏ;Lᵔⁱ/ˑﹳ;J)Lﹳᵢ/יـ;

    move-result-object v1

    iget-object p2, p6, Lˋⁱ/ʼᐧ;->ˈ:Ljava/lang/Object;

    check-cast p2, Ljava/util/IdentityHashMap;

    invoke-virtual {p2, v1, p7}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p6}, Lˋⁱ/ʼᐧ;->ˈ()V

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v5, p2

    if-eqz p2, :cond_1

    new-instance v0, Lﹳᵢ/ʽ;

    xor-int/lit8 v2, p1, 0x1

    const-wide/16 v3, 0x0

    invoke-direct/range {v0 .. v6}, Lﹳᵢ/ʽ;-><init>(Lﹳᵢ/ʾᵎ;ZJJ)V

    move-object v1, v0

    :cond_1
    iput-object v1, p0, Lⁱי/ٴʼ;->ﹳٴ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final ʼˎ()V
    .locals 3

    .prologue
    invoke-virtual {p0}, Lⁱי/ٴʼ;->ⁱˊ()V

    iget-object v0, p0, Lⁱי/ٴʼ;->ﹳٴ:Ljava/lang/Object;

    :try_start_0
    instance-of v1, v0, Lﹳᵢ/ʽ;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lⁱי/ٴʼ;->ﾞʻ:Lˋⁱ/ʼᐧ;

    if-eqz v1, :cond_0

    :try_start_1
    check-cast v0, Lﹳᵢ/ʽ;

    iget-object v0, v0, Lﹳᵢ/ʽ;->ʾˋ:Lﹳᵢ/ʾᵎ;

    invoke-virtual {v2, v0}, Lˋⁱ/ʼᐧ;->ᵔᵢ(Lﹳᵢ/ʾᵎ;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0}, Lˋⁱ/ʼᐧ;->ᵔᵢ(Lﹳᵢ/ʾᵎ;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :goto_0
    const-string v1, "MediaPeriodHolder"

    const-string v2, "Period release failed."

    invoke-static {v1, v2, v0}, Lᐧˎ/ﹳٴ;->ᵔﹳ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final ʽ()V
    .locals 3

    .prologue
    iget-object v0, p0, Lⁱי/ٴʼ;->ˉʿ:Lⁱי/ٴʼ;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lⁱי/ٴʼ;->ˉˆ:Lﹶʽ/ʼʼ;

    iget v2, v1, Lﹶʽ/ʼʼ;->ﹳٴ:I

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Lﹶʽ/ʼʼ;->ⁱˊ(I)Z

    move-result v1

    iget-object v2, p0, Lⁱי/ٴʼ;->ˉˆ:Lﹶʽ/ʼʼ;

    iget-object v2, v2, Lﹶʽ/ʼʼ;->ʽ:[Lﹶʽ/ˏי;

    aget-object v2, v2, v0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lﹶʽ/ˏי;->ˑﹳ()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final ˆʾ(FLʽⁱ/ʼˈ;Z)Lﹶʽ/ʼʼ;
    .locals 34

    .prologue
    move-object/from16 v1, p0

    iget-object v0, v1, Lⁱי/ٴʼ;->ٴﹶ:Lﹶʽ/ـˆ;

    iget-object v2, v1, Lⁱי/ٴʼ;->ˆʾ:[Lⁱי/ˑﹳ;

    iget-object v3, v1, Lⁱי/ٴʼ;->ᵔʾ:Lﹳᵢ/ʻᵎ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v4, v2

    const/4 v5, 0x1

    add-int/2addr v4, v5

    new-array v4, v4, [I

    array-length v6, v2

    add-int/2addr v6, v5

    new-array v7, v6, [[Lʽⁱ/ـˏ;

    array-length v8, v2

    add-int/2addr v8, v5

    new-array v13, v8, [[[I

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v6, :cond_0

    iget v10, v3, Lﹳᵢ/ʻᵎ;->ﹳٴ:I

    new-array v11, v10, [Lʽⁱ/ـˏ;

    aput-object v11, v7, v9

    new-array v10, v10, [[I

    aput-object v10, v13, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    array-length v6, v2

    new-array v12, v6, [I

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v6, :cond_1

    aget-object v10, v2, v9

    invoke-virtual {v10}, Lⁱי/ˑﹳ;->ᴵˊ()I

    move-result v10

    aput v10, v12, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_2
    iget v9, v3, Lﹳᵢ/ʻᵎ;->ﹳٴ:I

    if-ge v6, v9, :cond_a

    invoke-virtual {v3, v6}, Lﹳᵢ/ʻᵎ;->ﹳٴ(I)Lʽⁱ/ـˏ;

    move-result-object v9

    iget v10, v9, Lʽⁱ/ـˏ;->ʽ:I

    const/4 v11, 0x5

    if-ne v10, v11, :cond_2

    move v10, v5

    goto :goto_3

    :cond_2
    const/4 v10, 0x0

    :goto_3
    array-length v11, v2

    move/from16 v16, v5

    const/16 p2, 0x0

    const/4 v8, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x7

    :goto_4
    array-length v15, v2

    if-ge v14, v15, :cond_7

    aget-object v15, v2, v14

    move-object/from16 v19, v0

    move-object/from16 v20, v3

    move/from16 v18, v5

    move/from16 v0, p2

    move v5, v0

    :goto_5
    iget v3, v9, Lʽⁱ/ـˏ;->ﹳٴ:I

    if-ge v5, v3, :cond_3

    iget-object v3, v9, Lʽⁱ/ـˏ;->ˈ:[Lʽⁱ/ﹳᐧ;

    aget-object v3, v3, v5

    invoke-virtual {v15, v3}, Lⁱי/ˑﹳ;->ʾˋ(Lʽⁱ/ﹳᐧ;)I

    move-result v3

    and-int/lit8 v3, v3, 0x7

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_3
    aget v3, v4, v14

    if-nez v3, :cond_4

    move/from16 v3, v18

    goto :goto_6

    :cond_4
    move/from16 v3, p2

    :goto_6
    if-gt v0, v8, :cond_5

    if-ne v0, v8, :cond_6

    if-eqz v10, :cond_6

    if-nez v16, :cond_6

    if-eqz v3, :cond_6

    :cond_5
    move v8, v0

    move/from16 v16, v3

    move v11, v14

    :cond_6
    add-int/lit8 v14, v14, 0x1

    move/from16 v5, v18

    move-object/from16 v0, v19

    move-object/from16 v3, v20

    goto :goto_4

    :cond_7
    move-object/from16 v19, v0

    move-object/from16 v20, v3

    move/from16 v18, v5

    array-length v0, v2

    if-ne v11, v0, :cond_8

    iget v0, v9, Lʽⁱ/ـˏ;->ﹳٴ:I

    new-array v0, v0, [I

    goto :goto_8

    :cond_8
    aget-object v0, v2, v11

    iget v3, v9, Lʽⁱ/ـˏ;->ﹳٴ:I

    new-array v3, v3, [I

    move/from16 v5, p2

    :goto_7
    iget v8, v9, Lʽⁱ/ـˏ;->ﹳٴ:I

    if-ge v5, v8, :cond_9

    iget-object v8, v9, Lʽⁱ/ـˏ;->ˈ:[Lʽⁱ/ﹳᐧ;

    aget-object v8, v8, v5

    invoke-virtual {v0, v8}, Lⁱי/ˑﹳ;->ʾˋ(Lʽⁱ/ﹳᐧ;)I

    move-result v8

    aput v8, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_9
    move-object v0, v3

    :goto_8
    aget v3, v4, v11

    aget-object v5, v7, v11

    aput-object v9, v5, v3

    aget-object v5, v13, v11

    aput-object v0, v5, v3

    add-int/lit8 v3, v3, 0x1

    aput v3, v4, v11

    add-int/lit8 v6, v6, 0x1

    move/from16 v5, v18

    move-object/from16 v0, v19

    move-object/from16 v3, v20

    goto/16 :goto_2

    :cond_a
    move-object/from16 v19, v0

    move/from16 v18, v5

    const/16 p2, 0x0

    const/16 v17, 0x7

    array-length v0, v2

    new-array v11, v0, [Lﹳᵢ/ʻᵎ;

    array-length v0, v2

    new-array v0, v0, [Ljava/lang/String;

    array-length v3, v2

    new-array v10, v3, [I

    move/from16 v3, p2

    :goto_9
    array-length v5, v2

    if-ge v3, v5, :cond_b

    aget v5, v4, v3

    new-instance v6, Lﹳᵢ/ʻᵎ;

    aget-object v8, v7, v3

    invoke-static {v5, v8}, Lᐧˎ/ʼʼ;->ﹳـ(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lʽⁱ/ـˏ;

    invoke-direct {v6, v8}, Lﹳᵢ/ʻᵎ;-><init>([Lʽⁱ/ـˏ;)V

    aput-object v6, v11, v3

    aget-object v6, v13, v3

    invoke-static {v5, v6}, Lᐧˎ/ʼʼ;->ﹳـ(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    aput-object v5, v13, v3

    aget-object v5, v2, v3

    invoke-virtual {v5}, Lⁱי/ˑﹳ;->ˆʾ()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    aget-object v5, v2, v3

    iget v5, v5, Lⁱי/ˑﹳ;->ᴵˊ:I

    aput v5, v10, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_b
    array-length v0, v2

    aget v0, v4, v0

    new-instance v14, Lﹳᵢ/ʻᵎ;

    array-length v2, v2

    aget-object v2, v7, v2

    invoke-static {v0, v2}, Lᐧˎ/ʼʼ;->ﹳـ(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lʽⁱ/ـˏ;

    invoke-direct {v14, v0}, Lﹳᵢ/ʻᵎ;-><init>([Lʽⁱ/ـˏ;)V

    new-instance v9, Lﹶʽ/ʻٴ;

    invoke-direct/range {v9 .. v14}, Lﹶʽ/ʻٴ;-><init>([I[Lﹳᵢ/ʻᵎ;[I[[[ILﹳᵢ/ʻᵎ;)V

    move-object/from16 v0, v19

    check-cast v0, Lﹶʽ/ﹳᐧ;

    iget-object v2, v0, Lﹶʽ/ﹳᐧ;->ˈ:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, v0, Lﹶʽ/ﹳᐧ;->ᵔᵢ:Ljava/lang/Thread;

    iget-object v3, v0, Lﹶʽ/ﹳᐧ;->ᵎﹶ:Lﹶʽ/ˆʾ;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, v0, Lﹶʽ/ﹳᐧ;->ٴﹶ:Ljava/lang/Boolean;

    if-nez v2, :cond_c

    iget-object v2, v0, Lﹶʽ/ﹳᐧ;->ˑﹳ:Landroid/content/Context;

    if-eqz v2, :cond_c

    invoke-static {v2}, Lᐧˎ/ʼʼ;->ˊˋ(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lﹶʽ/ﹳᐧ;->ٴﹶ:Ljava/lang/Boolean;

    :cond_c
    iget-boolean v2, v3, Lﹶʽ/ˆʾ;->ᵢˏ:Z

    const/16 v4, 0x20

    if-eqz v2, :cond_d

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v4, :cond_d

    iget-object v2, v0, Lﹶʽ/ﹳᐧ;->ʼˎ:Lﹶʽ/ˉʿ;

    if-nez v2, :cond_d

    new-instance v2, Lﹶʽ/ˉʿ;

    iget-object v5, v0, Lﹶʽ/ﹳᐧ;->ˑﹳ:Landroid/content/Context;

    iget-object v6, v0, Lﹶʽ/ﹳᐧ;->ٴﹶ:Ljava/lang/Boolean;

    invoke-direct {v2, v5, v0, v6}, Lﹶʽ/ˉʿ;-><init>(Landroid/content/Context;Lﹶʽ/ﹳᐧ;Ljava/lang/Boolean;)V

    iput-object v2, v0, Lﹶʽ/ﹳᐧ;->ʼˎ:Lﹶʽ/ˉʿ;

    :cond_d
    iget v2, v9, Lﹶʽ/ʻٴ;->ﹳٴ:I

    iget-object v5, v0, Lﹶʽ/ﹳᐧ;->ˑﹳ:Landroid/content/Context;

    new-array v6, v2, [Lﹶʽ/יـ;

    move/from16 v7, p2

    :goto_a
    iget v8, v9, Lﹶʽ/ʻٴ;->ﹳٴ:I

    const/4 v14, 0x2

    if-ge v7, v8, :cond_f

    aget v8, v10, v7

    if-ne v14, v8, :cond_e

    aget-object v8, v11, v7

    iget v8, v8, Lﹳᵢ/ʻᵎ;->ﹳٴ:I

    if-lez v8, :cond_e

    move/from16 v7, v18

    goto :goto_b

    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_f
    move/from16 v7, p2

    :goto_b
    new-instance v8, Lʽˆ/ⁱˊ;

    invoke-direct {v8, v7, v0, v3, v12}, Lʽˆ/ⁱˊ;-><init>(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Lcom/parse/ʼᐧ;

    const/16 v15, 0x14

    invoke-direct {v7, v15}, Lcom/parse/ʼᐧ;-><init>(I)V

    move/from16 v15, v18

    invoke-static {v15, v9, v13, v8, v7}, Lﹶʽ/ﹳᐧ;->ʼˎ(ILﹶʽ/ʻٴ;[[[ILﹶʽ/ˉˆ;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v7

    if-eqz v7, :cond_10

    iget-object v8, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v15, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Lﹶʽ/יـ;

    aput-object v15, v6, v8

    :cond_10
    if-nez v7, :cond_11

    const/4 v7, 0x0

    goto :goto_c

    :cond_11
    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Lﹶʽ/יـ;

    iget-object v15, v7, Lﹶʽ/יـ;->ﹳٴ:Lʽⁱ/ـˏ;

    iget-object v7, v7, Lﹶʽ/יـ;->ⁱˊ:[I

    aget v7, v7, p2

    iget-object v15, v15, Lʽⁱ/ـˏ;->ˈ:[Lʽⁱ/ﹳᐧ;

    aget-object v7, v15, v7

    iget-object v7, v7, Lʽⁱ/ﹳᐧ;->ˈ:Ljava/lang/String;

    :goto_c
    iget-object v15, v3, Lʽⁱ/ˉـ;->ˉˆ:Lʽⁱ/ˈⁱ;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v15, v3, Lʽⁱ/ˉـ;->ᵎﹶ:Z

    if-eqz v15, :cond_12

    if-eqz v5, :cond_12

    invoke-static {v5}, Lᐧˎ/ʼʼ;->ʾᵎ(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v15

    :goto_d
    move/from16 v16, v4

    goto :goto_e

    :cond_12
    const/4 v15, 0x0

    goto :goto_d

    :goto_e
    new-instance v4, Lﹶʽ/ˈ;

    invoke-direct {v4, v3, v7, v12, v15}, Lﹶʽ/ˈ;-><init>(Lﹶʽ/ˆʾ;Ljava/lang/String;[ILandroid/graphics/Point;)V

    new-instance v12, Lcom/parse/ʼᐧ;

    const/16 v15, 0x13

    invoke-direct {v12, v15}, Lcom/parse/ʼᐧ;-><init>(I)V

    invoke-static {v14, v9, v13, v4, v12}, Lﹶʽ/ﹳᐧ;->ʼˎ(ILﹶʽ/ʻٴ;[[[ILﹶʽ/ˉˆ;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v4

    const/4 v12, 0x4

    if-nez v4, :cond_13

    new-instance v15, Lٴˉ/ﹳٴ;

    const/16 v19, 0x0

    const/16 v8, 0x1d

    invoke-direct {v15, v8, v3}, Lٴˉ/ﹳٴ;-><init>(ILjava/lang/Object;)V

    new-instance v8, Lcom/parse/ʼᐧ;

    const/16 v14, 0x12

    invoke-direct {v8, v14}, Lcom/parse/ʼᐧ;-><init>(I)V

    invoke-static {v12, v9, v13, v15, v8}, Lﹶʽ/ﹳᐧ;->ʼˎ(ILﹶʽ/ʻٴ;[[[ILﹶʽ/ˉˆ;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v8

    goto :goto_f

    :cond_13
    const/16 v19, 0x0

    move-object/from16 v8, v19

    :goto_f
    if-eqz v8, :cond_14

    iget-object v4, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lﹶʽ/יـ;

    aput-object v8, v6, v4

    goto :goto_10

    :cond_14
    if-eqz v4, :cond_15

    iget-object v8, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lﹶʽ/יـ;

    aput-object v4, v6, v8

    :cond_15
    :goto_10
    iget-boolean v4, v3, Lʽⁱ/ˉـ;->ᵔﹳ:Z

    if-eqz v4, :cond_19

    if-nez v5, :cond_16

    goto :goto_11

    :cond_16
    const-string v4, "captioning"

    invoke-virtual {v5, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/CaptioningManager;

    if-eqz v4, :cond_19

    invoke-virtual {v4}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_17

    goto :goto_11

    :cond_17
    invoke-virtual {v4}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v4

    if-nez v4, :cond_18

    goto :goto_11

    :cond_18
    sget-object v5, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v4

    goto :goto_12

    :cond_19
    :goto_11
    move-object/from16 v4, v19

    :goto_12
    new-instance v5, Lˈᵔ/ﹳٴ;

    move/from16 v8, v17

    invoke-direct {v5, v3, v7, v4, v8}, Lˈᵔ/ﹳٴ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v4, Lcom/parse/ʼᐧ;

    const/16 v7, 0x15

    invoke-direct {v4, v7}, Lcom/parse/ʼᐧ;-><init>(I)V

    const/4 v7, 0x3

    invoke-static {v7, v9, v13, v5, v4}, Lﹶʽ/ﹳᐧ;->ʼˎ(ILﹶʽ/ʻٴ;[[[ILﹶʽ/ˉˆ;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v4

    if-eqz v4, :cond_1a

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lﹶʽ/יـ;

    aput-object v4, v6, v5

    :cond_1a
    move/from16 v4, p2

    :goto_13
    if-ge v4, v2, :cond_22

    aget v5, v10, v4

    const/4 v8, 0x2

    if-eq v5, v8, :cond_21

    const/4 v15, 0x1

    if-eq v5, v15, :cond_21

    if-eq v5, v7, :cond_21

    if-eq v5, v12, :cond_21

    aget-object v5, v11, v4

    aget-object v8, v13, v4

    move/from16 v14, p2

    move v15, v14

    move-object/from16 v7, v19

    move-object/from16 v21, v7

    :goto_14
    iget v12, v5, Lﹳᵢ/ʻᵎ;->ﹳٴ:I

    if-ge v14, v12, :cond_1f

    invoke-virtual {v5, v14}, Lﹳᵢ/ʻᵎ;->ﹳٴ(I)Lʽⁱ/ـˏ;

    move-result-object v12

    aget-object v22, v8, v14

    move/from16 v23, v4

    move-object/from16 v24, v5

    move-object/from16 v4, v21

    move/from16 v21, v15

    move-object v15, v7

    move/from16 v7, p2

    :goto_15
    iget v5, v12, Lʽⁱ/ـˏ;->ﹳٴ:I

    if-ge v7, v5, :cond_1e

    aget v5, v22, v7

    move/from16 v25, v7

    iget-boolean v7, v3, Lﹶʽ/ˆʾ;->ʾˋ:Z

    invoke-static {v5, v7}, Lᐧـ/ˈ;->ᵔᵢ(IZ)Z

    move-result v5

    if-eqz v5, :cond_1c

    iget-object v5, v12, Lʽⁱ/ـˏ;->ˈ:[Lʽⁱ/ﹳᐧ;

    aget-object v5, v5, v25

    new-instance v7, Lﹶʽ/ᵔᵢ;

    move-object/from16 v26, v8

    aget v8, v22, v25

    invoke-direct {v7, v5, v8}, Lﹶʽ/ᵔᵢ;-><init>(Lʽⁱ/ﹳᐧ;I)V

    if-eqz v4, :cond_1b

    sget-object v5, Lʼʻ/ᵢˏ;->ﹳٴ:Lʼʻ/ʾᵎ;

    iget-boolean v8, v7, Lﹶʽ/ᵔᵢ;->ᴵˊ:Z

    move-object/from16 v27, v10

    iget-boolean v10, v4, Lﹶʽ/ᵔᵢ;->ᴵˊ:Z

    invoke-virtual {v5, v8, v10}, Lʼʻ/ʾᵎ;->ʽ(ZZ)Lʼʻ/ᵢˏ;

    move-result-object v5

    iget-boolean v8, v7, Lﹶʽ/ᵔᵢ;->ʾˋ:Z

    iget-boolean v10, v4, Lﹶʽ/ᵔᵢ;->ʾˋ:Z

    invoke-virtual {v5, v8, v10}, Lʼʻ/ᵢˏ;->ʽ(ZZ)Lʼʻ/ᵢˏ;

    move-result-object v5

    invoke-virtual {v5}, Lʼʻ/ᵢˏ;->ˑﹳ()I

    move-result v5

    if-lez v5, :cond_1d

    goto :goto_16

    :cond_1b
    move-object/from16 v27, v10

    :goto_16
    move-object v4, v7

    move-object v15, v12

    move/from16 v21, v25

    goto :goto_17

    :cond_1c
    move-object/from16 v26, v8

    move-object/from16 v27, v10

    :cond_1d
    :goto_17
    add-int/lit8 v7, v25, 0x1

    move-object/from16 v8, v26

    move-object/from16 v10, v27

    goto :goto_15

    :cond_1e
    move-object/from16 v26, v8

    move-object/from16 v27, v10

    add-int/lit8 v14, v14, 0x1

    move-object v7, v15

    move/from16 v15, v21

    move-object/from16 v5, v24

    move-object/from16 v21, v4

    move/from16 v4, v23

    goto :goto_14

    :cond_1f
    move/from16 v23, v4

    move-object/from16 v27, v10

    if-nez v7, :cond_20

    move-object/from16 v4, v19

    goto :goto_18

    :cond_20
    new-instance v4, Lﹶʽ/יـ;

    filled-new-array {v15}, [I

    move-result-object v5

    move/from16 v8, p2

    invoke-direct {v4, v8, v7, v5}, Lﹶʽ/יـ;-><init>(ILʽⁱ/ـˏ;[I)V

    :goto_18
    aput-object v4, v6, v23

    goto :goto_19

    :cond_21
    move/from16 v23, v4

    move-object/from16 v27, v10

    :goto_19
    add-int/lit8 v4, v23, 0x1

    move-object/from16 v10, v27

    const/16 p2, 0x0

    const/4 v7, 0x3

    const/4 v12, 0x4

    goto/16 :goto_13

    :cond_22
    iget v4, v9, Lﹶʽ/ʻٴ;->ﹳٴ:I

    iget-object v5, v9, Lﹶʽ/ʻٴ;->ʽ:[Lﹳᵢ/ʻᵎ;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const/4 v8, 0x0

    :goto_1a
    if-ge v8, v4, :cond_23

    aget-object v10, v5, v8

    invoke-static {v10, v3, v7}, Lﹶʽ/ﹳᐧ;->ʽ(Lﹳᵢ/ʻᵎ;Lﹶʽ/ˆʾ;Ljava/util/HashMap;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1a

    :cond_23
    iget-object v8, v9, Lﹶʽ/ʻٴ;->ﾞᴵ:Lﹳᵢ/ʻᵎ;

    invoke-static {v8, v3, v7}, Lﹶʽ/ﹳᐧ;->ʽ(Lﹳᵢ/ʻᵎ;Lﹶʽ/ˆʾ;Ljava/util/HashMap;)V

    const/4 v8, 0x0

    :goto_1b
    const/4 v10, -0x1

    if-ge v8, v4, :cond_26

    iget-object v11, v9, Lﹶʽ/ʻٴ;->ⁱˊ:[I

    aget v11, v11, v8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lʽⁱ/ﹳـ;

    if-nez v11, :cond_24

    goto :goto_1d

    :cond_24
    iget-object v12, v11, Lʽⁱ/ﹳـ;->ﹳٴ:Lʽⁱ/ـˏ;

    iget-object v11, v11, Lʽⁱ/ﹳـ;->ⁱˊ:Lʼʻ/ᵎⁱ;

    invoke-virtual {v11}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_25

    aget-object v14, v5, v8

    invoke-virtual {v14, v12}, Lﹳᵢ/ʻᵎ;->ⁱˊ(Lʽⁱ/ـˏ;)I

    move-result v14

    if-eq v14, v10, :cond_25

    new-instance v10, Lﹶʽ/יـ;

    invoke-static {v11}, Lˈˊ/ˉˆ;->ˊʻ(Ljava/util/Collection;)[I

    move-result-object v11

    const/4 v14, 0x0

    invoke-direct {v10, v14, v12, v11}, Lﹶʽ/יـ;-><init>(ILʽⁱ/ـˏ;[I)V

    goto :goto_1c

    :cond_25
    move-object/from16 v10, v19

    :goto_1c
    aput-object v10, v6, v8

    :goto_1d
    add-int/lit8 v8, v8, 0x1

    goto :goto_1b

    :cond_26
    iget v4, v9, Lﹶʽ/ʻٴ;->ﹳٴ:I

    const/4 v5, 0x0

    :goto_1e
    if-ge v5, v4, :cond_2a

    iget-object v7, v9, Lﹶʽ/ʻٴ;->ʽ:[Lﹳᵢ/ʻᵎ;

    aget-object v7, v7, v5

    iget-object v8, v3, Lﹶʽ/ˆʾ;->ˈٴ:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    if-eqz v8, :cond_29

    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29

    iget-object v8, v3, Lﹶʽ/ˆʾ;->ˈٴ:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    if-eqz v8, :cond_27

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lﹶʽ/ٴﹶ;

    goto :goto_1f

    :cond_27
    move-object/from16 v8, v19

    :goto_1f
    if-eqz v8, :cond_28

    iget-object v11, v8, Lﹶʽ/ٴﹶ;->ⁱˊ:[I

    array-length v12, v11

    if-eqz v12, :cond_28

    new-instance v12, Lﹶʽ/יـ;

    iget v8, v8, Lﹶʽ/ٴﹶ;->ﹳٴ:I

    invoke-virtual {v7, v8}, Lﹳᵢ/ʻᵎ;->ﹳٴ(I)Lʽⁱ/ـˏ;

    move-result-object v7

    const/4 v14, 0x0

    invoke-direct {v12, v14, v7, v11}, Lﹶʽ/יـ;-><init>(ILʽⁱ/ـˏ;[I)V

    goto :goto_20

    :cond_28
    move-object/from16 v12, v19

    :goto_20
    aput-object v12, v6, v5

    :cond_29
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    :cond_2a
    const/4 v4, 0x0

    :goto_21
    if-ge v4, v2, :cond_2d

    iget-object v5, v9, Lﹶʽ/ʻٴ;->ⁱˊ:[I

    aget v5, v5, v4

    iget-object v7, v3, Lﹶʽ/ˆʾ;->ᴵᵔ:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    if-nez v7, :cond_2b

    iget-object v7, v3, Lʽⁱ/ˉـ;->ʽﹳ:Lʼʻ/ᵔٴ;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Lʼʻ/ˈٴ;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    :cond_2b
    aput-object v19, v6, v4

    :cond_2c
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    :cond_2d
    iget-object v4, v0, Lﹶʽ/ﹳᐧ;->ﾞᴵ:Lˋⁱ/ᴵˊ;

    iget-object v0, v0, Lﹶʽ/ـˆ;->ⁱˊ:Lᵔⁱ/ˈ;

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_22
    array-length v8, v6

    const-wide/16 v11, 0x0

    if-ge v7, v8, :cond_2f

    aget-object v8, v6, v7

    if-eqz v8, :cond_2e

    iget-object v8, v8, Lﹶʽ/יـ;->ⁱˊ:[I

    array-length v8, v8

    const/4 v15, 0x1

    if-le v8, v15, :cond_2e

    invoke-static {}, Lʼʻ/ᵎⁱ;->ˆʾ()Lʼʻ/ˊʻ;

    move-result-object v8

    new-instance v14, Lﹶʽ/ﹳٴ;

    invoke-direct {v14, v11, v12, v11, v12}, Lﹶʽ/ﹳٴ;-><init>(JJ)V

    invoke-virtual {v8, v14}, Lʼʻ/ʽʽ;->ﹳٴ(Ljava/lang/Object;)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v8, v19

    goto :goto_23

    :cond_2e
    move-object/from16 v8, v19

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_23
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v19, v8

    goto :goto_22

    :cond_2f
    move-object/from16 v8, v19

    array-length v7, v6

    new-array v14, v7, [[J

    const/4 v15, 0x0

    :goto_24
    array-length v8, v6

    const-wide/16 v22, -0x1

    if-ge v15, v8, :cond_33

    aget-object v8, v6, v15

    if-nez v8, :cond_30

    const/4 v11, 0x0

    new-array v8, v11, [J

    aput-object v8, v14, v15

    goto :goto_26

    :cond_30
    iget-object v11, v8, Lﹶʽ/יـ;->ⁱˊ:[I

    array-length v12, v11

    new-array v12, v12, [J

    aput-object v12, v14, v15

    const/4 v12, 0x0

    :goto_25
    array-length v10, v11

    if-ge v12, v10, :cond_32

    iget-object v10, v8, Lﹶʽ/יـ;->ﹳٴ:Lʽⁱ/ـˏ;

    aget v21, v11, v12

    iget-object v10, v10, Lʽⁱ/ـˏ;->ˈ:[Lʽⁱ/ﹳᐧ;

    aget-object v10, v10, v21

    iget v10, v10, Lʽⁱ/ﹳᐧ;->ˆʾ:I

    move-object/from16 v21, v11

    int-to-long v10, v10

    aget-object v26, v14, v15

    cmp-long v27, v10, v22

    if-nez v27, :cond_31

    const-wide/16 v10, 0x0

    :cond_31
    aput-wide v10, v26, v12

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v11, v21

    goto :goto_25

    :cond_32
    aget-object v8, v14, v15

    invoke-static {v8}, Ljava/util/Arrays;->sort([J)V

    :goto_26
    add-int/lit8 v15, v15, 0x1

    const/4 v10, -0x1

    const-wide/16 v11, 0x0

    goto :goto_24

    :cond_33
    new-array v8, v7, [I

    new-array v10, v7, [J

    const/4 v11, 0x0

    :goto_27
    if-ge v11, v7, :cond_35

    aget-object v12, v14, v11

    array-length v15, v12

    if-nez v15, :cond_34

    const-wide/16 v26, 0x0

    goto :goto_28

    :cond_34
    const/4 v15, 0x0

    aget-wide v26, v12, v15

    :goto_28
    aput-wide v26, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_27

    :cond_35
    invoke-static {v5, v10}, Lﹶʽ/ⁱˊ;->ʻٴ(Ljava/util/ArrayList;[J)V

    const-string v11, "expectedValuesPerKey"

    const/4 v12, 0x2

    invoke-static {v12, v11}, Lʼʻ/ﹳᐧ;->ˈ(ILjava/lang/String;)V

    new-instance v11, Ljava/util/TreeMap;

    sget-object v12, Lʼʻ/ˉـ;->ᴵˊ:Lʼʻ/ˉـ;

    invoke-direct {v11, v12}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    new-instance v12, Lʼʻ/ˈⁱ;

    invoke-direct {v12}, Lʼʻ/ˈⁱ;-><init>()V

    new-instance v15, Lʼʻ/ᴵˑ;

    invoke-direct {v15, v11}, Lʼʻ/ᴵˑ;-><init>(Ljava/util/Map;)V

    iput-object v12, v15, Lʼʻ/ᴵˑ;->ˊʻ:Lʼʻ/ˈⁱ;

    const/4 v11, 0x0

    :goto_29
    if-ge v11, v7, :cond_3e

    aget-object v12, v14, v11

    move-object/from16 v25, v0

    array-length v0, v12

    move/from16 v21, v7

    const/4 v7, 0x1

    if-gt v0, v7, :cond_37

    move-object/from16 v29, v8

    :cond_36
    move/from16 v33, v11

    goto/16 :goto_30

    :cond_37
    array-length v0, v12

    new-array v7, v0, [D

    move/from16 v24, v0

    const/4 v12, 0x0

    :goto_2a
    aget-object v0, v14, v11

    move-object/from16 v26, v7

    array-length v7, v0

    const-wide/16 v27, 0x0

    if-ge v12, v7, :cond_39

    move-object/from16 v29, v8

    aget-wide v7, v0, v12

    cmp-long v0, v7, v22

    if-nez v0, :cond_38

    goto :goto_2b

    :cond_38
    long-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v27

    :goto_2b
    aput-wide v27, v26, v12

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v7, v26

    move-object/from16 v8, v29

    goto :goto_2a

    :cond_39
    move-object/from16 v29, v8

    add-int/lit8 v0, v24, -0x1

    aget-wide v7, v26, v0

    const/4 v12, 0x0

    aget-wide v30, v26, v12

    sub-double v7, v7, v30

    const/4 v12, 0x0

    :goto_2c
    if-ge v12, v0, :cond_36

    aget-wide v30, v26, v12

    add-int/lit8 v12, v12, 0x1

    aget-wide v32, v26, v12

    add-double v30, v30, v32

    const-wide/high16 v32, 0x3fe0000000000000L    # 0.5

    mul-double v30, v30, v32

    cmpl-double v24, v7, v27

    if-nez v24, :cond_3a

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    :goto_2d
    move/from16 v24, v0

    goto :goto_2e

    :cond_3a
    const/16 v24, 0x0

    aget-wide v32, v26, v24

    sub-double v30, v30, v32

    div-double v30, v30, v7

    goto :goto_2d

    :goto_2e
    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-wide/from16 v30, v7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, v15, Lʼʻ/ᴵˑ;->ˈٴ:Ljava/util/Map;

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    move/from16 v33, v11

    move-object/from16 v11, v32

    check-cast v11, Ljava/util/Collection;

    if-nez v11, :cond_3c

    invoke-virtual {v15}, Lʼʻ/ᴵˑ;->ˈ()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3b

    iget v7, v15, Lʼʻ/ᴵˑ;->ᴵᵔ:I

    const/16 v18, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v15, Lʼʻ/ᴵˑ;->ᴵᵔ:I

    invoke-interface {v8, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    :cond_3b
    new-instance v0, Ljava/lang/AssertionError;

    const-string v2, "New Collection violated the Collection spec"

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_3c
    const/16 v18, 0x1

    invoke-interface {v11, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    iget v0, v15, Lʼʻ/ᴵˑ;->ᴵᵔ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v15, Lʼʻ/ᴵˑ;->ᴵᵔ:I

    :cond_3d
    :goto_2f
    move/from16 v0, v24

    move-wide/from16 v7, v30

    move/from16 v11, v33

    goto :goto_2c

    :goto_30
    add-int/lit8 v11, v33, 0x1

    move/from16 v7, v21

    move-object/from16 v0, v25

    move-object/from16 v8, v29

    goto/16 :goto_29

    :cond_3e
    move-object/from16 v25, v0

    move-object/from16 v29, v8

    iget-object v0, v15, Lʼʻ/ˉˆ;->ᴵˊ:Ljava/util/Collection;

    if-nez v0, :cond_3f

    new-instance v0, Lʼʻ/ᵔʾ;

    const/4 v12, 0x0

    invoke-direct {v0, v12, v15}, Lʼʻ/ᵔʾ;-><init>(ILjava/io/Serializable;)V

    iput-object v0, v15, Lʼʻ/ˉˆ;->ᴵˊ:Ljava/util/Collection;

    :cond_3f
    invoke-static {v0}, Lʼʻ/ᵎⁱ;->ٴﹶ(Ljava/util/Collection;)Lʼʻ/ᵎⁱ;

    move-result-object v0

    const/4 v7, 0x0

    :goto_31
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v8

    if-ge v7, v8, :cond_40

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget v11, v29, v8

    const/16 v18, 0x1

    add-int/lit8 v11, v11, 0x1

    aput v11, v29, v8

    aget-object v12, v14, v8

    aget-wide v11, v12, v11

    aput-wide v11, v10, v8

    invoke-static {v5, v10}, Lﹶʽ/ⁱˊ;->ʻٴ(Ljava/util/ArrayList;[J)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_31

    :cond_40
    const/4 v0, 0x0

    :goto_32
    array-length v7, v6

    if-ge v0, v7, :cond_42

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_41

    aget-wide v7, v10, v0

    const-wide/16 v11, 0x2

    mul-long/2addr v7, v11

    aput-wide v7, v10, v0

    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    :cond_42
    invoke-static {v5, v10}, Lﹶʽ/ⁱˊ;->ʻٴ(Ljava/util/ArrayList;[J)V

    invoke-static {}, Lʼʻ/ᵎⁱ;->ˆʾ()Lʼʻ/ˊʻ;

    move-result-object v0

    const/4 v7, 0x0

    :goto_33
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_44

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lʼʻ/ˊʻ;

    if-nez v8, :cond_43

    sget-object v8, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    goto :goto_34

    :cond_43
    invoke-virtual {v8}, Lʼʻ/ˊʻ;->ᵎﹶ()Lʼʻ/ʿᵢ;

    move-result-object v8

    :goto_34
    invoke-virtual {v0, v8}, Lʼʻ/ʽʽ;->ﹳٴ(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_33

    :cond_44
    invoke-virtual {v0}, Lʼʻ/ˊʻ;->ᵎﹶ()Lʼʻ/ʿᵢ;

    move-result-object v0

    array-length v5, v6

    new-array v5, v5, [Lﹶʽ/ˏי;

    const/4 v7, 0x0

    :goto_35
    array-length v8, v6

    if-ge v7, v8, :cond_48

    aget-object v8, v6, v7

    if-eqz v8, :cond_45

    iget-object v10, v8, Lﹶʽ/יـ;->ⁱˊ:[I

    array-length v11, v10

    if-nez v11, :cond_46

    :cond_45
    move-object/from16 v21, v0

    goto :goto_37

    :cond_46
    array-length v11, v10

    const/4 v15, 0x1

    if-ne v11, v15, :cond_47

    new-instance v11, Lﹶʽ/ʽﹳ;

    iget-object v8, v8, Lﹶʽ/יـ;->ﹳٴ:Lʽⁱ/ـˏ;

    const/4 v12, 0x0

    aget v10, v10, v12

    filled-new-array {v10}, [I

    move-result-object v10

    invoke-direct {v11, v8, v10}, Lﹶʽ/ʽ;-><init>(Lʽⁱ/ـˏ;[I)V

    move-object/from16 v21, v0

    goto :goto_36

    :cond_47
    iget-object v8, v8, Lﹶʽ/יـ;->ﹳٴ:Lʽⁱ/ـˏ;

    invoke-virtual {v0, v7}, Lʼʻ/ʿᵢ;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v33, v11

    check-cast v33, Lʼʻ/ᵎⁱ;

    new-instance v22, Lﹶʽ/ⁱˊ;

    iget v11, v4, Lˋⁱ/ᴵˊ;->ﹳٴ:I

    int-to-long v11, v11

    const/16 v14, 0x61a8

    int-to-long v14, v14

    move-object/from16 v21, v0

    iget v0, v4, Lˋⁱ/ᴵˊ;->ⁱˊ:F

    move-wide/from16 v30, v14

    move/from16 v32, v0

    move-object/from16 v23, v8

    move-object/from16 v24, v10

    move-wide/from16 v26, v11

    move-wide/from16 v28, v14

    invoke-direct/range {v22 .. v33}, Lﹶʽ/ⁱˊ;-><init>(Lʽⁱ/ـˏ;[ILᵔⁱ/ˈ;JJJFLʼʻ/ᵎⁱ;)V

    move-object/from16 v11, v22

    :goto_36
    aput-object v11, v5, v7

    :goto_37
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v21

    goto :goto_35

    :cond_48
    new-array v0, v2, [Lⁱי/ᐧᴵ;

    const/4 v4, 0x0

    :goto_38
    const/4 v6, -0x2

    if-ge v4, v2, :cond_4c

    iget-object v7, v9, Lﹶʽ/ʻٴ;->ⁱˊ:[I

    aget v7, v7, v4

    iget-object v8, v3, Lﹶʽ/ˆʾ;->ᴵᵔ:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-nez v8, :cond_4b

    iget-object v8, v3, Lʽⁱ/ˉـ;->ʽﹳ:Lʼʻ/ᵔٴ;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v7}, Lʼʻ/ˈٴ;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_49

    goto :goto_39

    :cond_49
    iget-object v7, v9, Lﹶʽ/ʻٴ;->ⁱˊ:[I

    aget v7, v7, v4

    if-eq v7, v6, :cond_4a

    aget-object v6, v5, v4

    if-eqz v6, :cond_4b

    :cond_4a
    sget-object v6, Lⁱי/ᐧᴵ;->ʽ:Lⁱי/ᐧᴵ;

    goto :goto_3a

    :cond_4b
    :goto_39
    const/4 v6, 0x0

    :goto_3a
    aput-object v6, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    :cond_4c
    iget-boolean v2, v3, Lﹶʽ/ˆʾ;->ᴵˊ:Z

    if-eqz v2, :cond_56

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v7, -0x1

    :goto_3b
    iget v8, v9, Lﹶʽ/ʻٴ;->ﹳٴ:I

    if-ge v2, v8, :cond_54

    iget-object v8, v9, Lﹶʽ/ʻٴ;->ⁱˊ:[I

    aget v8, v8, v2

    aget-object v10, v5, v2

    const/4 v15, 0x1

    const/4 v12, 0x2

    if-eq v8, v15, :cond_4e

    if-ne v8, v12, :cond_4d

    goto :goto_3d

    :cond_4d
    move/from16 v6, v16

    :goto_3c
    const/4 v8, -0x1

    goto :goto_40

    :cond_4e
    :goto_3d
    if-eqz v10, :cond_4d

    aget-object v11, v13, v2

    iget-object v14, v9, Lﹶʽ/ʻٴ;->ʽ:[Lﹳᵢ/ʻᵎ;

    aget-object v14, v14, v2

    invoke-interface {v10}, Lﹶʽ/ˏי;->ˆʾ()Lʽⁱ/ـˏ;

    move-result-object v15

    invoke-virtual {v14, v15}, Lﹳᵢ/ʻᵎ;->ⁱˊ(Lʽⁱ/ـˏ;)I

    move-result v14

    const/4 v15, 0x0

    :goto_3e
    invoke-interface {v10}, Lﹶʽ/ˏי;->length()I

    move-result v12

    if-ge v15, v12, :cond_50

    aget-object v12, v11, v14

    invoke-interface {v10, v15}, Lﹶʽ/ˏי;->ﾞᴵ(I)I

    move-result v21

    aget v12, v12, v21

    and-int/lit8 v12, v12, 0x20

    move/from16 v6, v16

    if-eq v12, v6, :cond_4f

    goto :goto_3c

    :cond_4f
    add-int/lit8 v15, v15, 0x1

    move/from16 v16, v6

    const/4 v6, -0x2

    goto :goto_3e

    :cond_50
    move/from16 v6, v16

    const/4 v15, 0x1

    if-ne v8, v15, :cond_52

    const/4 v8, -0x1

    if-eq v7, v8, :cond_51

    :goto_3f
    const/4 v2, 0x0

    goto :goto_41

    :cond_51
    move v7, v2

    goto :goto_40

    :cond_52
    const/4 v8, -0x1

    if-eq v4, v8, :cond_53

    goto :goto_3f

    :cond_53
    move v4, v2

    :goto_40
    add-int/lit8 v2, v2, 0x1

    move/from16 v16, v6

    const/4 v6, -0x2

    goto :goto_3b

    :cond_54
    const/4 v8, -0x1

    const/4 v2, 0x1

    :goto_41
    if-eq v7, v8, :cond_55

    if-eq v4, v8, :cond_55

    const/4 v6, 0x1

    goto :goto_42

    :cond_55
    const/4 v6, 0x0

    :goto_42
    and-int/2addr v2, v6

    if-eqz v2, :cond_56

    new-instance v2, Lⁱי/ᐧᴵ;

    const/4 v12, 0x0

    const/4 v15, 0x1

    invoke-direct {v2, v12, v15}, Lⁱי/ᐧᴵ;-><init>(IZ)V

    aput-object v2, v0, v7

    aput-object v2, v0, v4

    :cond_56
    iget-object v2, v3, Lʽⁱ/ˉـ;->ˉˆ:Lʽⁱ/ˈⁱ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [Lﹶʽ/ˏי;

    array-length v3, v2

    new-array v3, v3, [Ljava/util/List;

    const/4 v8, 0x0

    :goto_43
    array-length v4, v2

    if-ge v8, v4, :cond_58

    aget-object v4, v2, v8

    if-eqz v4, :cond_57

    invoke-static {v4}, Lʼʻ/ᵎⁱ;->ʼᐧ(Ljava/lang/Object;)Lʼʻ/ʿᵢ;

    move-result-object v4

    goto :goto_44

    :cond_57
    sget-object v4, Lʼʻ/ᵎⁱ;->ᴵˊ:Lʼʻ/ٴᵢ;

    sget-object v4, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    :goto_44
    aput-object v4, v3, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_43

    :cond_58
    new-instance v2, Lʼʻ/ˊʻ;

    const/4 v4, 0x4

    invoke-direct {v2, v4}, Lʼʻ/ʽʽ;-><init>(I)V

    const/4 v8, 0x0

    :goto_45
    iget v4, v9, Lﹶʽ/ʻٴ;->ﹳٴ:I

    iget-object v5, v9, Lﹶʽ/ʻٴ;->ʽ:[Lﹳᵢ/ʻᵎ;

    if-ge v8, v4, :cond_64

    aget-object v4, v5, v8

    aget-object v6, v3, v8

    const/4 v7, 0x0

    :goto_46
    iget v10, v4, Lﹳᵢ/ʻᵎ;->ﹳٴ:I

    if-ge v7, v10, :cond_63

    invoke-virtual {v4, v7}, Lﹳᵢ/ʻᵎ;->ﹳٴ(I)Lʽⁱ/ـˏ;

    move-result-object v10

    aget-object v11, v5, v8

    invoke-virtual {v11, v7}, Lﹳᵢ/ʻᵎ;->ﹳٴ(I)Lʽⁱ/ـˏ;

    move-result-object v11

    iget v11, v11, Lʽⁱ/ـˏ;->ﹳٴ:I

    new-array v12, v11, [I

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_47
    if-ge v13, v11, :cond_5a

    invoke-virtual {v9, v8, v7, v13}, Lﹶʽ/ʻٴ;->ﹳٴ(III)I

    move-result v15

    move-object/from16 v16, v3

    const/4 v3, 0x4

    if-eq v15, v3, :cond_59

    goto :goto_48

    :cond_59
    add-int/lit8 v15, v14, 0x1

    aput v13, v12, v14

    move v14, v15

    :goto_48
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, v16

    goto :goto_47

    :cond_5a
    move-object/from16 v16, v3

    const/4 v3, 0x4

    invoke-static {v12, v14}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v11

    const/16 v12, 0x10

    move-object/from16 v20, v4

    move v15, v12

    const/4 v3, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_49
    array-length v4, v11

    if-ge v12, v4, :cond_5c

    aget v4, v11, v12

    move/from16 v22, v4

    aget-object v4, v5, v8

    invoke-virtual {v4, v7}, Lﹳᵢ/ʻᵎ;->ﹳٴ(I)Lʽⁱ/ـˏ;

    move-result-object v4

    iget-object v4, v4, Lʽⁱ/ـˏ;->ˈ:[Lʽⁱ/ﹳᐧ;

    aget-object v4, v4, v22

    iget-object v4, v4, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    add-int/lit8 v22, v14, 0x1

    if-nez v14, :cond_5b

    move-object v3, v4

    const/16 v18, 0x1

    goto :goto_4a

    :cond_5b
    invoke-static {v3, v4}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/16 v18, 0x1

    xor-int/lit8 v4, v4, 0x1

    or-int/2addr v4, v13

    move v13, v4

    :goto_4a
    iget-object v4, v9, Lﹶʽ/ʻٴ;->ˑﹳ:[[[I

    aget-object v4, v4, v8

    aget-object v4, v4, v7

    aget v4, v4, v12

    and-int/lit8 v4, v4, 0x18

    invoke-static {v15, v4}, Ljava/lang/Math;->min(II)I

    move-result v15

    add-int/lit8 v12, v12, 0x1

    move/from16 v14, v22

    goto :goto_49

    :cond_5c
    const/16 v18, 0x1

    if-eqz v13, :cond_5d

    iget-object v3, v9, Lﹶʽ/ʻٴ;->ˈ:[I

    aget v3, v3, v8

    invoke-static {v15, v3}, Ljava/lang/Math;->min(II)I

    move-result v15

    :cond_5d
    if-eqz v15, :cond_5e

    move/from16 v15, v18

    goto :goto_4b

    :cond_5e
    const/4 v15, 0x0

    :goto_4b
    iget v3, v10, Lʽⁱ/ـˏ;->ﹳٴ:I

    new-array v4, v3, [I

    new-array v3, v3, [Z

    const/4 v11, 0x0

    :goto_4c
    iget v12, v10, Lʽⁱ/ـˏ;->ﹳٴ:I

    if-ge v11, v12, :cond_62

    invoke-virtual {v9, v8, v7, v11}, Lﹶʽ/ʻٴ;->ﹳٴ(III)I

    move-result v12

    aput v12, v4, v11

    const/4 v12, 0x0

    :goto_4d
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_61

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lﹶʽ/ˏי;

    invoke-interface {v13}, Lﹶʽ/ˏי;->ˆʾ()Lʽⁱ/ـˏ;

    move-result-object v14

    invoke-virtual {v14, v10}, Lʽⁱ/ـˏ;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5f

    invoke-interface {v13, v11}, Lﹶʽ/ˏי;->ʽﹳ(I)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_60

    move/from16 v12, v18

    goto :goto_4e

    :cond_5f
    const/4 v14, -0x1

    :cond_60
    add-int/lit8 v12, v12, 0x1

    goto :goto_4d

    :cond_61
    const/4 v14, -0x1

    const/4 v12, 0x0

    :goto_4e
    aput-boolean v12, v3, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_4c

    :cond_62
    const/4 v14, -0x1

    new-instance v11, Lʽⁱ/ʿ;

    invoke-direct {v11, v10, v15, v4, v3}, Lʽⁱ/ʿ;-><init>(Lʽⁱ/ـˏ;Z[I[Z)V

    invoke-virtual {v2, v11}, Lʼʻ/ʽʽ;->ﹳٴ(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, v16

    move-object/from16 v4, v20

    goto/16 :goto_46

    :cond_63
    move-object/from16 v16, v3

    const/4 v14, -0x1

    const/16 v18, 0x1

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_45

    :cond_64
    const/16 v18, 0x1

    iget-object v3, v9, Lﹶʽ/ʻٴ;->ﾞᴵ:Lﹳᵢ/ʻᵎ;

    const/4 v8, 0x0

    :goto_4f
    iget v4, v3, Lﹳᵢ/ʻᵎ;->ﹳٴ:I

    if-ge v8, v4, :cond_65

    invoke-virtual {v3, v8}, Lﹳᵢ/ʻᵎ;->ﹳٴ(I)Lʽⁱ/ـˏ;

    move-result-object v4

    iget v5, v4, Lʽⁱ/ـˏ;->ﹳٴ:I

    new-array v5, v5, [I

    const/4 v12, 0x0

    invoke-static {v5, v12}, Ljava/util/Arrays;->fill([II)V

    iget v6, v4, Lʽⁱ/ـˏ;->ﹳٴ:I

    new-array v6, v6, [Z

    new-instance v7, Lʽⁱ/ʿ;

    invoke-direct {v7, v4, v12, v5, v6}, Lʽⁱ/ʿ;-><init>(Lʽⁱ/ـˏ;Z[I[Z)V

    invoke-virtual {v2, v7}, Lʼʻ/ʽʽ;->ﹳٴ(Ljava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_4f

    :cond_65
    const/4 v12, 0x0

    new-instance v3, Lʽⁱ/ʿᵢ;

    invoke-virtual {v2}, Lʼʻ/ˊʻ;->ᵎﹶ()Lʼʻ/ʿᵢ;

    move-result-object v2

    invoke-direct {v3, v2}, Lʽⁱ/ʿᵢ;-><init>(Lʼʻ/ʿᵢ;)V

    new-instance v2, Lﹶʽ/ʼʼ;

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, [Lⁱי/ᐧᴵ;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [Lﹶʽ/ˏי;

    invoke-direct {v2, v4, v0, v3, v9}, Lﹶʽ/ʼʼ;-><init>([Lⁱי/ᐧᴵ;[Lﹶʽ/ˏי;Lʽⁱ/ʿᵢ;Ljava/lang/Object;)V

    move v8, v12

    :goto_50
    iget v0, v2, Lﹶʽ/ʼʼ;->ﹳٴ:I

    if-ge v8, v0, :cond_6a

    invoke-virtual {v2, v8}, Lﹶʽ/ʼʼ;->ⁱˊ(I)Z

    move-result v0

    if-eqz v0, :cond_68

    iget-object v0, v2, Lﹶʽ/ʼʼ;->ʽ:[Lﹶʽ/ˏי;

    aget-object v0, v0, v8

    if-nez v0, :cond_67

    iget-object v0, v1, Lⁱי/ٴʼ;->ˆʾ:[Lⁱי/ˑﹳ;

    aget-object v0, v0, v8

    iget v0, v0, Lⁱי/ˑﹳ;->ᴵˊ:I

    const/4 v3, -0x2

    if-ne v0, v3, :cond_66

    goto :goto_51

    :cond_66
    move v15, v12

    goto :goto_52

    :cond_67
    const/4 v3, -0x2

    :goto_51
    move/from16 v15, v18

    :goto_52
    invoke-static {v15}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    goto :goto_54

    :cond_68
    const/4 v3, -0x2

    iget-object v0, v2, Lﹶʽ/ʼʼ;->ʽ:[Lﹶʽ/ˏי;

    aget-object v0, v0, v8

    if-nez v0, :cond_69

    move/from16 v15, v18

    goto :goto_53

    :cond_69
    move v15, v12

    :goto_53
    invoke-static {v15}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    :goto_54
    add-int/lit8 v8, v8, 0x1

    goto :goto_50

    :cond_6a
    iget-object v0, v2, Lﹶʽ/ʼʼ;->ʽ:[Lﹶʽ/ˏי;

    array-length v3, v0

    move v8, v12

    :goto_55
    if-ge v8, v3, :cond_6c

    aget-object v4, v0, v8

    move/from16 v5, p1

    if-eqz v4, :cond_6b

    invoke-interface {v4, v5}, Lﹶʽ/ˏי;->ᵔﹳ(F)V

    move/from16 v6, p3

    invoke-interface {v4, v6}, Lﹶʽ/ˏי;->ﹳٴ(Z)V

    goto :goto_56

    :cond_6b
    move/from16 v6, p3

    :goto_56
    add-int/lit8 v8, v8, 0x1

    goto :goto_55

    :cond_6c
    return-object v2

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final ˈ()J
    .locals 5

    .prologue
    iget-boolean v0, p0, Lⁱי/ٴʼ;->ˑﹳ:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lⁱי/ٴʼ;->ᵎﹶ:Lⁱי/ᵎˊ;

    iget-wide v0, v0, Lⁱי/ᵎˊ;->ⁱˊ:J

    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lⁱי/ٴʼ;->ﾞᴵ:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_1

    iget-object v0, p0, Lⁱי/ٴʼ;->ﹳٴ:Ljava/lang/Object;

    invoke-interface {v0}, Lﹳᵢ/ʿᵢ;->ˉˆ()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    iget-object v0, p0, Lⁱי/ٴʼ;->ᵎﹶ:Lⁱי/ᵎˊ;

    iget-wide v0, v0, Lⁱי/ᵎˊ;->ˑﹳ:J

    return-wide v0

    :cond_2
    return-wide v3
.end method

.method public final ˑﹳ()J
    .locals 4

    iget-object v0, p0, Lⁱי/ٴʼ;->ᵎﹶ:Lⁱי/ᵎˊ;

    iget-wide v0, v0, Lⁱי/ᵎˊ;->ⁱˊ:J

    iget-wide v2, p0, Lⁱי/ٴʼ;->ʼᐧ:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final ٴﹶ()V
    .locals 5

    .prologue
    iget-object v0, p0, Lⁱי/ٴʼ;->ﹳٴ:Ljava/lang/Object;

    instance-of v1, v0, Lﹳᵢ/ʽ;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lⁱי/ٴʼ;->ᵎﹶ:Lⁱי/ᵎˊ;

    iget-wide v1, v1, Lⁱי/ᵎˊ;->ˈ:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    const-wide/high16 v1, -0x8000000000000000L

    :cond_0
    check-cast v0, Lﹳᵢ/ʽ;

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lﹳᵢ/ʽ;->ᴵᵔ:J

    iput-wide v1, v0, Lﹳᵢ/ʽ;->ˊʻ:J

    :cond_1
    return-void
.end method

.method public final ᵎﹶ()Z
    .locals 4

    .prologue
    iget-boolean v0, p0, Lⁱי/ٴʼ;->ˑﹳ:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lⁱי/ٴʼ;->ﾞᴵ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lⁱי/ٴʼ;->ﹳٴ:Ljava/lang/Object;

    invoke-interface {v0}, Lﹳᵢ/ʿᵢ;->ˉˆ()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final ᵔᵢ()Z
    .locals 4

    .prologue
    iget-boolean v0, p0, Lⁱי/ٴʼ;->ˑﹳ:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lⁱי/ٴʼ;->ᵎﹶ()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lⁱי/ٴʼ;->ˈ()J

    move-result-wide v0

    iget-object v2, p0, Lⁱי/ٴʼ;->ᵎﹶ:Lⁱי/ᵎˊ;

    iget-wide v2, v2, Lⁱי/ᵎˊ;->ⁱˊ:J

    sub-long/2addr v0, v2

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final ⁱˊ()V
    .locals 3

    .prologue
    iget-object v0, p0, Lⁱי/ٴʼ;->ˉʿ:Lⁱי/ٴʼ;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lⁱי/ٴʼ;->ˉˆ:Lﹶʽ/ʼʼ;

    iget v2, v1, Lﹶʽ/ʼʼ;->ﹳٴ:I

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Lﹶʽ/ʼʼ;->ⁱˊ(I)Z

    move-result v1

    iget-object v2, p0, Lⁱי/ٴʼ;->ˉˆ:Lﹶʽ/ʼʼ;

    iget-object v2, v2, Lﹶʽ/ʼʼ;->ʽ:[Lﹶʽ/ˏי;

    aget-object v2, v2, v0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lﹶʽ/ˏי;->ᵔᵢ()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final ﹳٴ(Lﹶʽ/ʼʼ;JZ[Z)J
    .locals 16

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, v1, Lﹶʽ/ʼʼ;->ﹳٴ:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    if-nez p4, :cond_0

    iget-object v4, v0, Lⁱי/ٴʼ;->ˉˆ:Lﹶʽ/ʼʼ;

    invoke-virtual {v1, v4, v3}, Lﹶʽ/ʼʼ;->ﹳٴ(Lﹶʽ/ʼʼ;I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    iget-object v4, v0, Lⁱי/ٴʼ;->ʼˎ:[Z

    aput-boolean v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_2
    iget-object v4, v0, Lⁱי/ٴʼ;->ˆʾ:[Lⁱי/ˑﹳ;

    array-length v6, v4

    const/4 v7, -0x2

    iget-object v8, v0, Lⁱי/ٴʼ;->ʽ:[Lﹳᵢ/ˉـ;

    if-ge v3, v6, :cond_3

    aget-object v4, v4, v3

    iget v4, v4, Lⁱי/ˑﹳ;->ᴵˊ:I

    if-ne v4, v7, :cond_2

    const/4 v4, 0x0

    aput-object v4, v8, v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lⁱי/ٴʼ;->ⁱˊ()V

    iput-object v1, v0, Lⁱי/ٴʼ;->ˉˆ:Lﹶʽ/ʼʼ;

    invoke-virtual {v0}, Lⁱי/ٴʼ;->ʽ()V

    iget-object v10, v1, Lﹶʽ/ʼʼ;->ʽ:[Lﹶʽ/ˏי;

    iget-object v11, v0, Lⁱי/ٴʼ;->ʼˎ:[Z

    iget-object v12, v0, Lⁱי/ٴʼ;->ʽ:[Lﹳᵢ/ˉـ;

    iget-object v9, v0, Lⁱי/ٴʼ;->ﹳٴ:Ljava/lang/Object;

    move-wide/from16 v14, p2

    move-object/from16 v13, p5

    invoke-interface/range {v9 .. v15}, Lﹳᵢ/ʾᵎ;->ˆʾ([Lﹶʽ/ˏי;[Z[Lﹳᵢ/ˉـ;[ZJ)J

    move-result-wide v9

    move v3, v2

    :goto_3
    array-length v6, v4

    if-ge v3, v6, :cond_5

    aget-object v6, v4, v3

    iget v6, v6, Lⁱי/ˑﹳ;->ᴵˊ:I

    if-ne v6, v7, :cond_4

    iget-object v6, v0, Lⁱי/ٴʼ;->ˉˆ:Lﹶʽ/ʼʼ;

    invoke-virtual {v6, v3}, Lﹶʽ/ʼʼ;->ⁱˊ(I)Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v6, Lﹳᵢ/ˉˆ;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    aput-object v6, v8, v3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    iput-boolean v2, v0, Lⁱי/ٴʼ;->ﾞᴵ:Z

    move v3, v2

    :goto_4
    array-length v6, v8

    if-ge v3, v6, :cond_9

    aget-object v6, v8, v3

    if-eqz v6, :cond_6

    invoke-virtual {v1, v3}, Lﹶʽ/ʼʼ;->ⁱˊ(I)Z

    move-result v6

    invoke-static {v6}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    aget-object v6, v4, v3

    iget v6, v6, Lⁱי/ˑﹳ;->ᴵˊ:I

    if-eq v6, v7, :cond_8

    iput-boolean v5, v0, Lⁱי/ٴʼ;->ﾞᴵ:Z

    goto :goto_6

    :cond_6
    iget-object v6, v1, Lﹶʽ/ʼʼ;->ʽ:[Lﹶʽ/ˏי;

    aget-object v6, v6, v3

    if-nez v6, :cond_7

    move v6, v5

    goto :goto_5

    :cond_7
    move v6, v2

    :goto_5
    invoke-static {v6}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    :cond_8
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    return-wide v9
.end method

.method public final ﾞᴵ(FLʽⁱ/ʼˈ;Z)V
    .locals 7

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lⁱי/ٴʼ;->ˑﹳ:Z

    iget-object v0, p0, Lⁱי/ٴʼ;->ﹳٴ:Ljava/lang/Object;

    invoke-interface {v0}, Lﹳᵢ/ʾᵎ;->ᵔʾ()Lﹳᵢ/ʻᵎ;

    move-result-object v0

    iput-object v0, p0, Lⁱי/ٴʼ;->ᵔʾ:Lﹳᵢ/ʻᵎ;

    invoke-virtual {p0, p1, p2, p3}, Lⁱי/ٴʼ;->ˆʾ(FLʽⁱ/ʼˈ;Z)Lﹶʽ/ʼʼ;

    move-result-object v2

    iget-object p1, p0, Lⁱי/ٴʼ;->ᵎﹶ:Lⁱי/ᵎˊ;

    iget-wide p2, p1, Lⁱי/ᵎˊ;->ⁱˊ:J

    iget-wide v0, p1, Lⁱי/ᵎˊ;->ˑﹳ:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v3

    if-eqz p1, :cond_0

    cmp-long p1, p2, v0

    if-ltz p1, :cond_0

    const-wide/16 p1, 0x1

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    :cond_0
    move-wide v3, p2

    iget-object p1, p0, Lⁱי/ٴʼ;->ˆʾ:[Lⁱי/ˑﹳ;

    array-length p1, p1

    new-array v6, p1, [Z

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lⁱי/ٴʼ;->ﹳٴ(Lﹶʽ/ʼʼ;JZ[Z)J

    move-result-wide p1

    iget-wide v2, v1, Lⁱי/ٴʼ;->ʼᐧ:J

    iget-object p3, v1, Lⁱי/ٴʼ;->ᵎﹶ:Lⁱי/ᵎˊ;

    iget-wide v4, p3, Lⁱי/ᵎˊ;->ⁱˊ:J

    sub-long/2addr v4, p1

    add-long/2addr v4, v2

    iput-wide v4, v1, Lⁱי/ٴʼ;->ʼᐧ:J

    invoke-virtual {p3, p1, p2}, Lⁱי/ᵎˊ;->ⁱˊ(J)Lⁱי/ᵎˊ;

    move-result-object p1

    iput-object p1, v1, Lⁱי/ٴʼ;->ᵎﹶ:Lⁱי/ᵎˊ;

    return-void
.end method
