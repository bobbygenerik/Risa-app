.class public final synthetic Lᵔᐧ/ˆʾ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ﹳٴ;


# instance fields
.field public final synthetic ʽʽ:I

.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Lᵔᐧ/ᵔʾ;


# direct methods
.method public synthetic constructor <init>(Lᵔᐧ/ᵔʾ;II)V
    .locals 0

    const/4 p3, 0x1

    iput p3, p0, Lᵔᐧ/ˆʾ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᵔᐧ/ˆʾ;->ᴵˊ:Lᵔᐧ/ᵔʾ;

    iput p2, p0, Lᵔᐧ/ˆʾ;->ʽʽ:I

    return-void
.end method

.method public synthetic constructor <init>(Lᵔᐧ/ᵔʾ;ILjava/util/List;)V
    .locals 0

    const/4 p3, 0x0

    iput p3, p0, Lᵔᐧ/ˆʾ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᵔᐧ/ˆʾ;->ᴵˊ:Lᵔᐧ/ᵔʾ;

    iput p2, p0, Lᵔᐧ/ˆʾ;->ʽʽ:I

    return-void
.end method

.method public synthetic constructor <init>(Lᵔᐧ/ᵔʾ;ILjava/util/List;Z)V
    .locals 0

    const/4 p3, 0x2

    iput p3, p0, Lᵔᐧ/ˆʾ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᵔᐧ/ˆʾ;->ᴵˊ:Lᵔᐧ/ᵔʾ;

    iput p2, p0, Lᵔᐧ/ˆʾ;->ʽʽ:I

    return-void
.end method

.method private final ˈ()Ljava/lang/Object;
    .locals 3

    .prologue
    iget-object v0, p0, Lᵔᐧ/ˆʾ;->ᴵˊ:Lᵔᐧ/ᵔʾ;

    iget v1, p0, Lᵔᐧ/ˆʾ;->ʽʽ:I

    iget-object v2, v0, Lᵔᐧ/ᵔʾ;->ᵎˊ:Lᵔᐧ/ʼʼ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lᵔᐧ/ᵔʾ;->ʿ:Ljava/util/LinkedHashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    sget-object v0, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private final ﹳٴ()Ljava/lang/Object;
    .locals 4

    .prologue
    iget-object v0, p0, Lᵔᐧ/ˆʾ;->ᴵˊ:Lᵔᐧ/ᵔʾ;

    iget v1, p0, Lᵔᐧ/ˆʾ;->ʽʽ:I

    iget-object v2, v0, Lᵔᐧ/ᵔʾ;->ᵎˊ:Lᵔᐧ/ʼʼ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v2, v0, Lᵔᐧ/ᵔʾ;->ᴵˑ:Lᵔᐧ/ـˆ;

    const/16 v3, 0x9

    invoke-virtual {v2, v1, v3}, Lᵔᐧ/ـˆ;->ˈٴ(II)V

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, v0, Lᵔᐧ/ᵔʾ;->ʿ:Ljava/util/LinkedHashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_0
    sget-object v0, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object v0
.end method


# virtual methods
.method public final ʽ()Ljava/lang/Object;
    .locals 4

    .prologue
    iget v0, p0, Lᵔᐧ/ˆʾ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lᵔᐧ/ˆʾ;->ᴵˊ:Lᵔᐧ/ᵔʾ;

    iget v1, p0, Lᵔᐧ/ˆʾ;->ʽʽ:I

    iget-object v2, v0, Lᵔᐧ/ᵔʾ;->ᵎˊ:Lᵔᐧ/ʼʼ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v2, v0, Lᵔᐧ/ᵔʾ;->ᴵˑ:Lᵔᐧ/ـˆ;

    const/16 v3, 0x9

    invoke-virtual {v2, v1, v3}, Lᵔᐧ/ـˆ;->ˈٴ(II)V

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, v0, Lᵔᐧ/ᵔʾ;->ʿ:Ljava/util/LinkedHashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_0
    sget-object v0, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object v0

    :pswitch_0
    invoke-direct {p0}, Lᵔᐧ/ˆʾ;->ˈ()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-direct {p0}, Lᵔᐧ/ˆʾ;->ﹳٴ()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
