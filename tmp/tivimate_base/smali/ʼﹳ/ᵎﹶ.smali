.class public final Lʼﹳ/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ﹳٴ:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lʼﹳ/ᵎﹶ;->ﹳٴ:Ljava/util/ArrayList;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lʼﹳ/ᵎﹶ;->ﹳٴ:Ljava/util/ArrayList;

    return-void

    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lʼﹳ/ᵎﹶ;->ﹳٴ:Ljava/util/ArrayList;

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroidx/leanback/widget/ʻٴ;)V
    .locals 14

    .prologue
    new-instance v0, Lᵎﾞ/ʽ;

    iget-object v1, p1, Landroidx/leanback/widget/ʻٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Lʾʽ/ﹳٴ;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lᵎﾞ/ʽ;-><init>(Lʾʽ/ᵎﹶ;I)V

    new-instance v1, Lᵎﾞ/ʽ;

    iget-object v3, p1, Landroidx/leanback/widget/ʻٴ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v3, Lʾʽ/ﹳٴ;

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lᵎﾞ/ʽ;-><init>(Lʾʽ/ᵎﹶ;I)V

    new-instance v3, Lᵎﾞ/ʽ;

    iget-object v5, p1, Landroidx/leanback/widget/ʻٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v5, Lʾʽ/ﹳٴ;

    const/4 v6, 0x4

    invoke-direct {v3, v5, v6}, Lᵎﾞ/ʽ;-><init>(Lʾʽ/ᵎﹶ;I)V

    new-instance v5, Lᵎﾞ/ʽ;

    iget-object v7, p1, Landroidx/leanback/widget/ʻٴ;->ˊʻ:Ljava/lang/Object;

    check-cast v7, Lʾʽ/ᵎﹶ;

    const/4 v8, 0x2

    invoke-direct {v5, v7, v8}, Lᵎﾞ/ʽ;-><init>(Lʾʽ/ᵎﹶ;I)V

    new-instance v9, Lᵎﾞ/ʽ;

    const/4 v10, 0x3

    invoke-direct {v9, v7, v10}, Lᵎﾞ/ʽ;-><init>(Lʾʽ/ᵎﹶ;I)V

    new-instance v11, Lᵎﾞ/ﾞᴵ;

    invoke-direct {v11, v7}, Lᵎﾞ/ⁱˊ;-><init>(Lʾʽ/ᵎﹶ;)V

    new-instance v12, Lᵎﾞ/ˑﹳ;

    invoke-direct {v12, v7}, Lᵎﾞ/ⁱˊ;-><init>(Lʾʽ/ᵎﹶ;)V

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x1c

    if-lt v7, v13, :cond_0

    iget-object p1, p1, Landroidx/leanback/widget/ʻٴ;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    sget-object v7, Lⁱᵎ/ʼˎ;->ﹳٴ:Ljava/lang/String;

    const-string v7, "connectivity"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    new-instance v7, Lⁱᵎ/ˈ;

    invoke-direct {v7, p1}, Lⁱᵎ/ˈ;-><init>(Landroid/net/ConnectivityManager;)V

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    const/16 p1, 0x8

    new-array p1, p1, [Lᵎﾞ/ˈ;

    aput-object v0, p1, v2

    aput-object v1, p1, v4

    aput-object v3, p1, v8

    aput-object v5, p1, v10

    aput-object v9, p1, v6

    const/4 v0, 0x5

    aput-object v11, p1, v0

    const/4 v0, 0x6

    aput-object v12, p1, v0

    const/4 v0, 0x7

    aput-object v7, p1, v0

    invoke-static {p1}, Lﹶˈ/ʼˎ;->ʻˋ([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʼﹳ/ᵎﹶ;->ﹳٴ:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public ʽ(Lˑᵎ/ﹳᐧ;)Lᵎˈ/ᵎﹶ;
    .locals 7

    .prologue
    iget-object v0, p0, Lʼﹳ/ᵎﹶ;->ﹳٴ:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    if-ge v4, v2, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    move-object v6, v5

    check-cast v6, Lᵎﾞ/ˈ;

    invoke-interface {v6, p1}, Lᵎﾞ/ˈ;->ﹳٴ(Lˑᵎ/ﹳᐧ;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lﹶˈ/ﾞʻ;->ᐧᴵ(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lᵎﾞ/ˈ;

    iget-object v6, p1, Lˑᵎ/ﹳᐧ;->ˆʾ:Lᴵˋ/ˑﹳ;

    invoke-interface {v5, v6}, Lᵎﾞ/ˈ;->ⁱˊ(Lᴵˋ/ˑﹳ;)Lᵎˈ/ʽ;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lﹶˈ/ˆʾ;->ʾﾞ(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    new-array v0, v3, [Lᵎˈ/ᵎﹶ;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lᵎˈ/ᵎﹶ;

    new-instance v0, Lʿᵢ/ﹳᐧ;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, Lʿᵢ/ﹳᐧ;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, Lᵎˈ/ˈٴ;->ˑﹳ(Lᵎˈ/ᵎﹶ;)Lᵎˈ/ᵎﹶ;

    move-result-object p1

    return-object p1
.end method

.method public ⁱˊ(Lʼﹳ/ٴﹶ;Lˋʼ/ﹳٴ;)V
    .locals 12

    .prologue
    iget-object v0, p0, Lʼﹳ/ᵎﹶ;->ﹳٴ:Ljava/util/ArrayList;

    iget-wide v1, p1, Lʼﹳ/ٴﹶ;->ˆʾ:J

    const-wide v3, 0xc0000023L

    cmp-long p1, v1, v3

    if-nez p1, :cond_0

    new-instance p1, Lʼﹳ/ˈ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iget-object v1, p2, Lˎʿ/ⁱˊ;->ⁱˊ:Lˎʿ/ʽ;

    invoke-virtual {v1, p2}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const-wide v3, 0x8000002dL

    cmp-long p1, v1, v3

    if-nez p1, :cond_4

    new-instance p1, Lʼﹳ/ﾞᴵ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lˎʿ/ⁱˊ;->ᵔʾ()I

    move-result v1

    iget v2, p2, Lˎʿ/ⁱˊ;->ʽ:I

    add-int/2addr v2, v1

    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Lˎʿ/ⁱˊ;->ˉˆ(I)V

    invoke-virtual {p2, v1}, Lˎʿ/ⁱˊ;->ˉˆ(I)V

    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Lˎʿ/ⁱˊ;->ˉˆ(I)V

    iget-object v3, p2, Lˎʿ/ⁱˊ;->ⁱˊ:Lˎʿ/ʽ;

    invoke-virtual {v3, p2}, Lˎʿ/ʽ;->ⁱˊ(Lˎʿ/ⁱˊ;)I

    move-result v4

    iput v4, p1, Lʼﹳ/ﾞᴵ;->ⁱˊ:I

    invoke-virtual {v3, p2}, Lˎʿ/ʽ;->ⁱˊ(Lˎʿ/ⁱˊ;)I

    move-result v4

    invoke-virtual {v3, p2}, Lˎʿ/ʽ;->ⁱˊ(Lˎʿ/ⁱˊ;)I

    move-result v5

    invoke-virtual {v3, p2}, Lˎʿ/ʽ;->ⁱˊ(Lˎʿ/ⁱˊ;)I

    move-result v6

    invoke-virtual {v3, p2}, Lˎʿ/ʽ;->ⁱˊ(Lˎʿ/ⁱˊ;)I

    move-result v7

    invoke-virtual {v3, p2}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p1, Lʼﹳ/ﾞᴵ;->ﹳٴ:Z

    iget v3, p2, Lˎʿ/ⁱˊ;->ʽ:I

    if-lez v5, :cond_2

    add-int/2addr v4, v3

    iput v4, p2, Lˎʿ/ⁱˊ;->ʽ:I

    sget-object v4, Lᴵʿ/ⁱˊ;->ˈ:Ljava/nio/charset/Charset;

    div-int/2addr v5, v1

    invoke-virtual {p2, v5, v4}, Lˎʿ/ⁱˊ;->ﾞʻ(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    iput v3, p2, Lˎʿ/ⁱˊ;->ʽ:I

    iput-object v4, p1, Lʼﹳ/ﾞᴵ;->ʽ:Ljava/lang/String;

    if-lez v7, :cond_3

    add-int/2addr v3, v6

    iput v3, p2, Lˎʿ/ⁱˊ;->ʽ:I

    sget-object v3, Lᴵʿ/ⁱˊ;->ˈ:Ljava/nio/charset/Charset;

    div-int/2addr v7, v1

    invoke-virtual {p2, v7, v3}, Lˎʿ/ⁱˊ;->ﾞʻ(ILjava/nio/charset/Charset;)Ljava/lang/String;

    :cond_3
    iput v2, p2, Lˎʿ/ⁱˊ;->ʽ:I

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method public declared-synchronized ﹳٴ(Ljava/lang/Class;)Lʼᵔ/ٴﹶ;
    .locals 4

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lʼﹳ/ᵎﹶ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lʼﹳ/ᵎﹶ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lʾ/ˈ;

    iget-object v3, v2, Lʾ/ˈ;->ﹳٴ:Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object p1, v2, Lʾ/ˈ;->ⁱˊ:Lʼᵔ/ٴﹶ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
