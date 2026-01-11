.class public final Lﹶʽ/ﹳᐧ;
.super Lﹶʽ/ـˆ;
.source "SourceFile"


# static fields
.field public static final ﾞʻ:Lʼʻ/ʿ;


# instance fields
.field public ʼˎ:Lﹶʽ/ˉʿ;

.field public ˆʾ:Lʽⁱ/ˑﹳ;

.field public final ˈ:Ljava/lang/Object;

.field public final ˑﹳ:Landroid/content/Context;

.field public ٴﹶ:Ljava/lang/Boolean;

.field public ᵎﹶ:Lﹶʽ/ˆʾ;

.field public ᵔᵢ:Ljava/lang/Thread;

.field public final ﾞᴵ:Lˋⁱ/ᴵˊ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/parse/ʼᐧ;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/parse/ʼᐧ;-><init>(I)V

    new-instance v1, Lʼʻ/ـˆ;

    invoke-direct {v1, v0}, Lʼʻ/ـˆ;-><init>(Lcom/parse/ʼᐧ;)V

    sput-object v1, Lﹶʽ/ﹳᐧ;->ﾞʻ:Lʼʻ/ʿ;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lˋⁱ/ᴵˊ;)V
    .locals 2

    .prologue
    sget-object v0, Lﹶʽ/ˆʾ;->ˊʻ:Lﹶʽ/ˆʾ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lﹶʽ/ﹳᐧ;->ˈ:Ljava/lang/Object;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lﹶʽ/ﹳᐧ;->ˑﹳ:Landroid/content/Context;

    iput-object p2, p0, Lﹶʽ/ﹳᐧ;->ﾞᴵ:Lˋⁱ/ᴵˊ;

    if-eqz v0, :cond_1

    iput-object v0, p0, Lﹶʽ/ﹳᐧ;->ᵎﹶ:Lﹶʽ/ˆʾ;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lﹶʽ/ʼˎ;

    invoke-direct {p2, v0}, Lﹶʽ/ʼˎ;-><init>(Lﹶʽ/ˆʾ;)V

    invoke-virtual {p2, v0}, Lʽⁱ/ᴵˑ;->ʽ(Lʽⁱ/ˉـ;)V

    new-instance v0, Lﹶʽ/ˆʾ;

    invoke-direct {v0, p2}, Lﹶʽ/ˆʾ;-><init>(Lﹶʽ/ʼˎ;)V

    iput-object v0, p0, Lﹶʽ/ﹳᐧ;->ᵎﹶ:Lﹶʽ/ˆʾ;

    :goto_1
    sget-object p2, Lʽⁱ/ˑﹳ;->ʽ:Lʽⁱ/ˑﹳ;

    iput-object p2, p0, Lﹶʽ/ﹳᐧ;->ˆʾ:Lʽⁱ/ˑﹳ;

    iget-object p2, p0, Lﹶʽ/ﹳᐧ;->ᵎﹶ:Lﹶʽ/ˆʾ;

    iget-boolean p2, p2, Lﹶʽ/ˆʾ;->ᵢˏ:Z

    if-eqz p2, :cond_2

    if-nez p1, :cond_2

    const-string p1, "DefaultTrackSelector"

    const-string p2, "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument."

    invoke-static {p1, p2}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static ʼˎ(ILﹶʽ/ʻٴ;[[[ILﹶʽ/ˉˆ;Ljava/util/Comparator;)Landroid/util/Pair;
    .locals 18

    .prologue
    move-object/from16 v0, p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v2, v0, Lﹶʽ/ʻٴ;->ﹳٴ:I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_7

    iget-object v5, v0, Lﹶʽ/ʻٴ;->ⁱˊ:[I

    aget v5, v5, v4

    move/from16 v6, p0

    if-ne v6, v5, :cond_6

    iget-object v5, v0, Lﹶʽ/ʻٴ;->ʽ:[Lﹳᵢ/ʻᵎ;

    aget-object v5, v5, v4

    const/4 v7, 0x0

    :goto_1
    iget v8, v5, Lﹳᵢ/ʻᵎ;->ﹳٴ:I

    if-ge v7, v8, :cond_6

    invoke-virtual {v5, v7}, Lﹳᵢ/ʻᵎ;->ﹳٴ(I)Lʽⁱ/ـˏ;

    move-result-object v8

    aget-object v9, p2, v4

    aget-object v9, v9, v7

    move-object/from16 v10, p3

    invoke-interface {v10, v4, v8, v9}, Lﹶʽ/ˉˆ;->ﾞᴵ(ILʽⁱ/ـˏ;[I)Lʼʻ/ʿᵢ;

    move-result-object v9

    iget v8, v8, Lʽⁱ/ـˏ;->ﹳٴ:I

    new-array v11, v8, [Z

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v8, :cond_5

    invoke-virtual {v9, v12}, Lʼʻ/ʿᵢ;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lﹶʽ/ʼᐧ;

    invoke-virtual {v13}, Lﹶʽ/ʼᐧ;->ﹳٴ()I

    move-result v14

    aget-boolean v15, v11, v12

    if-nez v15, :cond_0

    if-nez v14, :cond_1

    :cond_0
    move/from16 v16, v2

    goto :goto_6

    :cond_1
    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    invoke-static {v13}, Lʼʻ/ᵎⁱ;->ʼᐧ(Ljava/lang/Object;)Lʼʻ/ʿᵢ;

    move-result-object v13

    :goto_3
    move/from16 v16, v2

    goto :goto_5

    :cond_2
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v16, v12, 0x1

    move/from16 v17, v15

    move/from16 v15, v16

    :goto_4
    if-ge v15, v8, :cond_4

    invoke-virtual {v9, v15}, Lʼʻ/ʿᵢ;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Lﹶʽ/ʼᐧ;

    invoke-virtual {v3}, Lﹶʽ/ʼᐧ;->ﹳٴ()I

    move-result v0

    move/from16 v16, v2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    invoke-virtual {v13, v3}, Lﹶʽ/ʼᐧ;->ⁱˊ(Lﹶʽ/ʼᐧ;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aput-boolean v17, v11, v15

    :cond_3
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p1

    move/from16 v2, v16

    goto :goto_4

    :cond_4
    move-object v13, v14

    goto :goto_3

    :goto_5
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p1

    move/from16 v2, v16

    goto :goto_2

    :cond_5
    move/from16 v16, v2

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p1

    goto :goto_1

    :cond_6
    move-object/from16 v10, p3

    move/from16 v16, v2

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p1

    move/from16 v2, v16

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    move-object/from16 v0, p4

    invoke-static {v1, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    :goto_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lﹶʽ/ʼᐧ;

    iget v3, v3, Lﹶʽ/ʼᐧ;->ʽʽ:I

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_9
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lﹶʽ/ʼᐧ;

    new-instance v3, Lﹶʽ/יـ;

    iget-object v4, v0, Lﹶʽ/ʼᐧ;->ᴵˊ:Lʽⁱ/ـˏ;

    invoke-direct {v3, v2, v4, v1}, Lﹶʽ/יـ;-><init>(ILʽⁱ/ـˏ;[I)V

    iget v0, v0, Lﹶʽ/ʼᐧ;->ʾˋ:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static ʽ(Lﹳᵢ/ʻᵎ;Lﹶʽ/ˆʾ;Ljava/util/HashMap;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lﹳᵢ/ʻᵎ;->ﹳٴ:I

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Lﹳᵢ/ʻᵎ;->ﹳٴ(I)Lʽⁱ/ـˏ;

    move-result-object v1

    iget-object v2, p1, Lʽⁱ/ˉـ;->ˏי:Lʼʻ/ᵔי;

    invoke-virtual {v2, v1}, Lʼʻ/ᵔי;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lʽⁱ/ﹳـ;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, v1, Lʽⁱ/ﹳـ;->ﹳٴ:Lʽⁱ/ـˏ;

    iget v3, v2, Lʽⁱ/ـˏ;->ʽ:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lʽⁱ/ﹳـ;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lʽⁱ/ﹳـ;->ⁱˊ:Lʼʻ/ᵎⁱ;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v1, Lʽⁱ/ﹳـ;->ⁱˊ:Lʼʻ/ᵎⁱ;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    iget v2, v2, Lʽⁱ/ـˏ;->ʽ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static ˈ(Lʽⁱ/ﹳᐧ;Ljava/lang/String;Z)I
    .locals 2

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lʽⁱ/ﹳᐧ;->ˈ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    invoke-static {p1}, Lﹶʽ/ﹳᐧ;->ᵎﹶ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lʽⁱ/ﹳᐧ;->ˈ:Ljava/lang/String;

    invoke-static {p0}, Lﹶʽ/ﹳᐧ;->ᵎﹶ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    sget-object p2, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    const-string p2, "-"

    const/4 v1, 0x2

    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v0

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    const/4 p0, 0x3

    return p0

    :cond_5
    :goto_1
    if-eqz p2, :cond_6

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    return v0
.end method

.method public static ᵎﹶ(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "und"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final ˆʾ(Lﹶʽ/ˆʾ;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lﹶʽ/ﹳᐧ;->ˈ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lﹶʽ/ﹳᐧ;->ᵎﹶ:Lﹶʽ/ˆʾ;

    invoke-virtual {v1, p1}, Lﹶʽ/ˆʾ;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-object p1, p0, Lﹶʽ/ﹳᐧ;->ᵎﹶ:Lﹶʽ/ˆʾ;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    iget-boolean p1, p1, Lﹶʽ/ˆʾ;->ᵢˏ:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lﹶʽ/ﹳᐧ;->ˑﹳ:Landroid/content/Context;

    if-nez p1, :cond_0

    const-string p1, "DefaultTrackSelector"

    const-string v0, "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument."

    invoke-static {p1, v0}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lﹶʽ/ـˆ;->ﹳٴ:Lⁱי/ᴵᵔ;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lⁱי/ᴵᵔ;->ˉٴ:Lᐧˎ/ʻٴ;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lᐧˎ/ʻٴ;->ˑﹳ(I)Z

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ˑﹳ()Lﹶʽ/ˆʾ;
    .locals 2

    .prologue
    iget-object v0, p0, Lﹶʽ/ﹳᐧ;->ˈ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lﹶʽ/ﹳᐧ;->ᵎﹶ:Lﹶʽ/ˆʾ;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final ᵔᵢ()V
    .locals 2

    .prologue
    iget-object v0, p0, Lﹶʽ/ﹳᐧ;->ˈ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lﹶʽ/ﹳᐧ;->ᵎﹶ:Lﹶʽ/ˆʾ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final ⁱˊ(Lʽⁱ/ˉـ;)V
    .locals 2

    .prologue
    instance-of v0, p1, Lﹶʽ/ˆʾ;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lﹶʽ/ˆʾ;

    invoke-virtual {p0, v0}, Lﹶʽ/ﹳᐧ;->ˆʾ(Lﹶʽ/ˆʾ;)V

    :cond_0
    new-instance v0, Lﹶʽ/ʼˎ;

    invoke-virtual {p0}, Lﹶʽ/ﹳᐧ;->ˑﹳ()Lﹶʽ/ˆʾ;

    move-result-object v1

    invoke-direct {v0, v1}, Lﹶʽ/ʼˎ;-><init>(Lﹶʽ/ˆʾ;)V

    invoke-virtual {v0, p1}, Lʽⁱ/ᴵˑ;->ʽ(Lʽⁱ/ˉـ;)V

    new-instance p1, Lﹶʽ/ˆʾ;

    invoke-direct {p1, v0}, Lﹶʽ/ˆʾ;-><init>(Lﹶʽ/ʼˎ;)V

    invoke-virtual {p0, p1}, Lﹶʽ/ﹳᐧ;->ˆʾ(Lﹶʽ/ˆʾ;)V

    return-void
.end method

.method public final ﹳٴ()V
    .locals 3

    .prologue
    iget-object v0, p0, Lﹶʽ/ﹳᐧ;->ˈ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lﹶʽ/ﹳᐧ;->ᵔᵢ:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "DefaultTrackSelector is accessed on the wrong thread."

    invoke-static {v2, v1}, Lᐧˎ/ﹳٴ;->ˆʾ(Ljava/lang/String;Z)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x20

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lﹶʽ/ﹳᐧ;->ʼˎ:Lﹶʽ/ˉʿ;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lﹶʽ/ˉʿ;->ˈ()V

    iput-object v2, p0, Lﹶʽ/ﹳᐧ;->ʼˎ:Lﹶʽ/ˉʿ;

    :cond_2
    iput-object v2, p0, Lﹶʽ/ـˆ;->ﹳٴ:Lⁱי/ᴵᵔ;

    iput-object v2, p0, Lﹶʽ/ـˆ;->ⁱˊ:Lᵔⁱ/ˈ;

    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final ﾞᴵ()V
    .locals 3

    .prologue
    iget-object v0, p0, Lﹶʽ/ﹳᐧ;->ˈ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lﹶʽ/ﹳᐧ;->ᵎﹶ:Lﹶʽ/ˆʾ;

    iget-boolean v1, v1, Lﹶʽ/ˆʾ;->ᵢˏ:Z

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x20

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lﹶʽ/ﹳᐧ;->ʼˎ:Lﹶʽ/ˉʿ;

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lﹶʽ/ˉʿ;->ⁱˊ:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    iget-object v0, p0, Lﹶʽ/ـˆ;->ﹳٴ:Lⁱי/ᴵᵔ;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lⁱי/ᴵᵔ;->ˉٴ:Lᐧˎ/ʻٴ;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lᐧˎ/ʻٴ;->ˑﹳ(I)Z

    :cond_1
    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
