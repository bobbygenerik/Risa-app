.class public final Lˊﾞ/ˉʿ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˊﾞ/ﹳᐧ;


# static fields
.field public static final ʼˎ:Lﹳʽ/ˊʻ;

.field public static final ᵎﹶ:[I

.field public static final ᵔᵢ:Lﹳʽ/ˊʻ;


# instance fields
.field public ʽ:I

.field public ˈ:Z

.field public ˑﹳ:Lˋⁱ/ﾞᴵ;

.field public ⁱˊ:Lʼʻ/ᵎⁱ;

.field public ﹳٴ:I

.field public ﾞᴵ:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lˊﾞ/ˉʿ;->ᵎﹶ:[I

    new-instance v0, Lﹳʽ/ˊʻ;

    new-instance v1, Lˊˋ/ⁱˊ;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lˊˋ/ⁱˊ;-><init>(I)V

    invoke-direct {v0, v1}, Lﹳʽ/ˊʻ;-><init>(Lˊˋ/ⁱˊ;)V

    sput-object v0, Lˊﾞ/ˉʿ;->ᵔᵢ:Lﹳʽ/ˊʻ;

    new-instance v0, Lﹳʽ/ˊʻ;

    new-instance v1, Lˊˋ/ⁱˊ;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lˊˋ/ⁱˊ;-><init>(I)V

    invoke-direct {v0, v1}, Lﹳʽ/ˊʻ;-><init>(Lˊˋ/ⁱˊ;)V

    sput-object v0, Lˊﾞ/ˉʿ;->ʼˎ:Lﹳʽ/ˊʻ;

    return-void

    :array_0
    .array-data 4
        0x5
        0x4
        0xc
        0x8
        0x3
        0xa
        0x9
        0xb
        0x6
        0x2
        0x0
        0x1
        0x7
        0x10
        0xf
        0xe
        0x11
        0x12
        0x13
        0x14
        0x15
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1b8a0

    iput v0, p0, Lˊﾞ/ˉʿ;->ʽ:I

    new-instance v0, Lˋⁱ/ﾞᴵ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lˊﾞ/ˉʿ;->ˑﹳ:Lˋⁱ/ﾞᴵ;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lˊﾞ/ˉʿ;->ˈ:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized ʽ()V
    .locals 1

    .prologue
    monitor-enter p0

    const v0, 0x1cafc0

    :try_start_0
    iput v0, p0, Lˊﾞ/ˉʿ;->ʽ:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized ˈ(Ljava/util/List;)V
    .locals 0

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lʼʻ/ᵎⁱ;->ٴﹶ(Ljava/util/Collection;)Lʼʻ/ᵎⁱ;

    move-result-object p1

    iput-object p1, p0, Lˊﾞ/ˉʿ;->ⁱˊ:Lʼʻ/ᵎⁱ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ⁱˊ(ILjava/util/ArrayList;)V
    .locals 10

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    new-instance p1, Lˊﹳ/ﹳٴ;

    invoke-direct {p1, v2}, Lˊﹳ/ﹳٴ;-><init>(I)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_2
    new-instance p1, Lˊﹳ/ﹳٴ;

    invoke-direct {p1, v1}, Lˊﹳ/ﹳٴ;-><init>(I)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_3
    new-instance p1, Lʽʾ/ﹳٴ;

    invoke-direct {p1, v2, v2}, Lʽʾ/ﹳٴ;-><init>(BI)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_4
    new-instance p1, Lˊﹳ/ﹳٴ;

    invoke-direct {p1, v0}, Lˊﹳ/ﹳٴ;-><init>(I)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_5
    new-instance p1, Lʽʾ/ﹳٴ;

    invoke-direct {p1, v2, v1}, Lʽʾ/ﹳٴ;-><init>(BI)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_6
    new-instance p1, Lˏⁱ/ⁱˊ;

    iget-boolean v0, p0, Lˊﾞ/ˉʿ;->ˈ:Z

    xor-int/2addr v0, v1

    iget-object v1, p0, Lˊﾞ/ˉʿ;->ˑﹳ:Lˋⁱ/ﾞᴵ;

    invoke-direct {p1, v0, v1}, Lˏⁱ/ⁱˊ;-><init>(ILˋⁱ/ﾞᴵ;)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_7
    sget-object p1, Lˊﾞ/ˉʿ;->ʼˎ:Lﹳʽ/ˊʻ;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lﹳʽ/ˊʻ;->ˏי([Ljava/lang/Object;)Lˊﾞ/ˉˆ;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :pswitch_8
    new-instance p1, Lʽʾ/ﹳٴ;

    iget v0, p0, Lˊﾞ/ˉʿ;->ﾞᴵ:I

    invoke-direct {p1, v0}, Lʽʾ/ﹳٴ;-><init>(I)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_9
    new-instance p1, Lיˑ/ˈ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput v2, p1, Lיˑ/ˈ;->ʽ:I

    const-wide/16 v0, -0x1

    iput-wide v0, p1, Lיˑ/ˈ;->ˈ:J

    const/4 v2, -0x1

    iput v2, p1, Lיˑ/ˈ;->ﾞᴵ:I

    iput-wide v0, p1, Lיˑ/ˈ;->ᵎﹶ:J

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_a
    iget-object p1, p0, Lˊﾞ/ˉʿ;->ⁱˊ:Lʼʻ/ᵎⁱ;

    if-nez p1, :cond_1

    sget-object p1, Lʼʻ/ᵎⁱ;->ᴵˊ:Lʼʻ/ٴᵢ;

    sget-object p1, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    iput-object p1, p0, Lˊﾞ/ˉʿ;->ⁱˊ:Lʼʻ/ᵎⁱ;

    :cond_1
    new-instance v2, Lיי/ᴵᵔ;

    iget-boolean p1, p0, Lˊﾞ/ˉʿ;->ˈ:Z

    xor-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Lˊﾞ/ˉʿ;->ˑﹳ:Lˋⁱ/ﾞᴵ;

    new-instance v6, Lᐧˎ/ـˆ;

    const-wide/16 v0, 0x0

    invoke-direct {v6, v0, v1}, Lᐧˎ/ـˆ;-><init>(J)V

    new-instance v7, Lיי/ﾞᴵ;

    iget p1, p0, Lˊﾞ/ˉʿ;->ﹳٴ:I

    iget-object v0, p0, Lˊﾞ/ˉʿ;->ⁱˊ:Lʼʻ/ᵎⁱ;

    invoke-direct {v7, p1, v0}, Lיי/ﾞᴵ;-><init>(ILjava/util/List;)V

    iget v8, p0, Lˊﾞ/ˉʿ;->ʽ:I

    const/4 v3, 0x1

    invoke-direct/range {v2 .. v8}, Lיי/ᴵᵔ;-><init>(IILʽᐧ/ˆʾ;Lᐧˎ/ـˆ;Lיי/ﾞᴵ;I)V

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_b
    new-instance p1, Lיי/ʾˋ;

    invoke-direct {p1}, Lיי/ʾˋ;-><init>()V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_c
    new-instance p1, Lˏʻ/ˈ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_d
    new-instance v3, Lʻˆ/ˉʿ;

    iget-object v4, p0, Lˊﾞ/ˉʿ;->ˑﹳ:Lˋⁱ/ﾞᴵ;

    iget-boolean p1, p0, Lˊﾞ/ˉʿ;->ˈ:Z

    if-eqz p1, :cond_2

    move v5, v2

    goto :goto_1

    :cond_2
    const/16 p1, 0x20

    move v5, p1

    :goto_1
    sget-object p1, Lʼʻ/ᵎⁱ;->ᴵˊ:Lʼʻ/ٴᵢ;

    sget-object v8, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Lʻˆ/ˉʿ;-><init>(Lʽᐧ/ˆʾ;ILᐧˎ/ـˆ;Lʻˆ/ˏי;Ljava/util/List;Lـᵢ/ᵔʾ;)V

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lʻˆ/ʼᐧ;

    iget-object v0, p0, Lˊﾞ/ˉʿ;->ˑﹳ:Lˋⁱ/ﾞᴵ;

    iget-boolean v1, p0, Lˊﾞ/ˉʿ;->ˈ:Z

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const/16 v2, 0x10

    :goto_2
    invoke-direct {p1, v0, v2}, Lʻˆ/ʼᐧ;-><init>(Lʽᐧ/ˆʾ;I)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_e
    new-instance p1, Lˎʼ/ˈ;

    invoke-direct {p1, v2}, Lˎʼ/ˈ;-><init>(I)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_f
    new-instance p1, Lˑﹶ/ˈ;

    iget-object v1, p0, Lˊﾞ/ˉʿ;->ˑﹳ:Lˋⁱ/ﾞᴵ;

    iget-boolean v3, p0, Lˊﾞ/ˉʿ;->ˈ:Z

    if-eqz v3, :cond_4

    move v0, v2

    :cond_4
    invoke-direct {p1, v1, v0}, Lˑﹶ/ˈ;-><init>(Lʽᐧ/ˆʾ;I)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_10
    new-instance p1, Lˎـ/ⁱˊ;

    invoke-direct {p1}, Lˎـ/ⁱˊ;-><init>()V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    sget-object p1, Lˊﾞ/ˉʿ;->ᵔᵢ:Lﹳʽ/ˊʻ;

    invoke-virtual {p1, v0}, Lﹳʽ/ˊʻ;->ˏי([Ljava/lang/Object;)Lˊﾞ/ˉˆ;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_5
    new-instance p1, Lˆˑ/ⁱˊ;

    invoke-direct {p1}, Lˆˑ/ⁱˊ;-><init>()V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_12
    new-instance p1, Lـʻ/ﹳٴ;

    invoke-direct {p1}, Lـʻ/ﹳٴ;-><init>()V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_13
    new-instance p1, Lיי/ˈ;

    invoke-direct {p1, v2}, Lיי/ˈ;-><init>(I)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_14
    new-instance p1, Lיי/ʽ;

    invoke-direct {p1}, Lיי/ʽ;-><init>()V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_15
    new-instance p1, Lיי/ﹳٴ;

    invoke-direct {p1}, Lיי/ﹳٴ;-><init>()V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final declared-synchronized ﹳٴ(Landroid/net/Uri;Ljava/util/Map;)[Lˊﾞ/ˉˆ;
    .locals 6

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lˊﾞ/ˉʿ;->ᵎﹶ:[I

    const/16 v2, 0x15

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    const-string v3, "Content-Type"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x0

    :goto_1
    invoke-static {p2}, Landroid/support/v4/media/session/ⁱˊ;->ٴﹶ(Ljava/lang/String;)I

    move-result p2

    const/4 v4, -0x1

    if-eq p2, v4, :cond_2

    invoke-virtual {p0, p2, v0}, Lˊﾞ/ˉʿ;->ⁱˊ(ILjava/util/ArrayList;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_2
    :goto_2
    invoke-static {p1}, Landroid/support/v4/media/session/ⁱˊ;->ﾞʻ(Landroid/net/Uri;)I

    move-result p1

    if-eq p1, v4, :cond_3

    if-eq p1, p2, :cond_3

    invoke-virtual {p0, p1, v0}, Lˊﾞ/ˉʿ;->ⁱˊ(ILjava/util/ArrayList;)V

    :cond_3
    move v4, v3

    :goto_3
    if-ge v4, v2, :cond_5

    aget v5, v1, v4

    if-eq v5, p2, :cond_4

    if-eq v5, p1, :cond_4

    invoke-virtual {p0, v5, v0}, Lˊﾞ/ˉʿ;->ⁱˊ(ILjava/util/ArrayList;)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    new-array p1, v3, [Lˊﾞ/ˉˆ;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lˊﾞ/ˉˆ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
