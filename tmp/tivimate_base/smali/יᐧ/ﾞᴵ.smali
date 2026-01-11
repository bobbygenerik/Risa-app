.class public final Lיᐧ/ﾞᴵ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Ljava/util/HashMap;

.field public final ˈ:Ljava/util/HashMap;

.field public final ˑﹳ:I

.field public final ⁱˊ:Lיᐧ/ˑﹳ;

.field public final ﹳٴ:Lﹳʽ/ˊʻ;

.field public ﾞᴵ:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lﹳʽ/ˊʻ;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Lﹳʽ/ˊʻ;-><init>(I)V

    iput-object v0, p0, Lיᐧ/ﾞᴵ;->ﹳٴ:Lﹳʽ/ˊʻ;

    new-instance v0, Lיᐧ/ˑﹳ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lיᐧ/ˑﹳ;-><init>(I)V

    iput-object v0, p0, Lיᐧ/ﾞᴵ;->ⁱˊ:Lיᐧ/ˑﹳ;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lיᐧ/ﾞᴵ;->ʽ:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lיᐧ/ﾞᴵ;->ˈ:Ljava/util/HashMap;

    iput p1, p0, Lיᐧ/ﾞᴵ;->ˑﹳ:I

    return-void
.end method


# virtual methods
.method public final declared-synchronized ʼˎ(I)V
    .locals 1

    .prologue
    monitor-enter p0

    const/16 v0, 0x28

    if-lt p1, v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lיᐧ/ﾞᴵ;->ﹳٴ()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/16 v0, 0x14

    if-ge p1, v0, :cond_1

    const/16 v0, 0xf

    if-ne p1, v0, :cond_2

    :cond_1
    iget p1, p0, Lיᐧ/ﾞᴵ;->ˑﹳ:I

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lיᐧ/ﾞᴵ;->ʽ(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ʽ(I)V
    .locals 5

    .prologue
    :cond_0
    :goto_0
    iget v0, p0, Lיᐧ/ﾞᴵ;->ﾞᴵ:I

    if-le v0, p1, :cond_1

    iget-object v0, p0, Lיᐧ/ﾞᴵ;->ﹳٴ:Lﹳʽ/ˊʻ;

    invoke-virtual {v0}, Lﹳʽ/ˊʻ;->ᴵᵔ()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lʿٴ/ﾞᴵ;->ⁱˊ(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lיᐧ/ﾞᴵ;->ˑﹳ(Ljava/lang/Class;)Lיᐧ/ⁱˊ;

    move-result-object v1

    iget v2, p0, Lיᐧ/ﾞᴵ;->ﾞᴵ:I

    invoke-virtual {v1, v0}, Lיᐧ/ⁱˊ;->ﹳٴ(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1}, Lיᐧ/ⁱˊ;->ⁱˊ()I

    move-result v4

    mul-int/2addr v4, v3

    sub-int/2addr v2, v4

    iput v2, p0, Lיᐧ/ﾞᴵ;->ﾞᴵ:I

    invoke-virtual {v1, v0}, Lיᐧ/ⁱˊ;->ﹳٴ(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lיᐧ/ﾞᴵ;->ⁱˊ(ILjava/lang/Class;)V

    invoke-virtual {v1}, Lיᐧ/ⁱˊ;->ʽ()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lיᐧ/ⁱˊ;->ʽ()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "evicted: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lיᐧ/ⁱˊ;->ﹳٴ(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final declared-synchronized ˈ(ILjava/lang/Class;)Ljava/lang/Object;
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p2}, Lיᐧ/ﾞᴵ;->ᵎﹶ(Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    iget v1, p0, Lיᐧ/ﾞᴵ;->ﾞᴵ:I

    if-eqz v1, :cond_1

    iget v2, p0, Lיᐧ/ﾞᴵ;->ˑﹳ:I

    div-int/2addr v2, v1

    const/4 v1, 0x2

    if-lt v2, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v2, p1, 0x8

    if-gt v1, v2, :cond_3

    :cond_1
    :goto_0
    iget-object p1, p0, Lיᐧ/ﾞᴵ;->ⁱˊ:Lיᐧ/ˑﹳ;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p1, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lיᐧ/ᵔᵢ;

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lיᐧ/ˑﹳ;->ﹶˎ()Lיᐧ/ᵔᵢ;

    move-result-object v1

    :cond_2
    check-cast v1, Lיᐧ/ˈ;

    iput v0, v1, Lיᐧ/ˈ;->ⁱˊ:I

    iput-object p2, v1, Lיᐧ/ˈ;->ʽ:Ljava/lang/Class;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lיᐧ/ﾞᴵ;->ⁱˊ:Lיᐧ/ˑﹳ;

    iget-object v1, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lיᐧ/ᵔᵢ;

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lיᐧ/ˑﹳ;->ﹶˎ()Lיᐧ/ᵔᵢ;

    move-result-object v1

    :cond_4
    check-cast v1, Lיᐧ/ˈ;

    iput p1, v1, Lיᐧ/ˈ;->ⁱˊ:I

    iput-object p2, v1, Lיᐧ/ˈ;->ʽ:Ljava/lang/Class;

    :goto_1
    invoke-virtual {p0, v1, p2}, Lיᐧ/ﾞᴵ;->ﾞᴵ(Lיᐧ/ˈ;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ˑﹳ(Ljava/lang/Class;)Lיᐧ/ⁱˊ;
    .locals 3

    .prologue
    iget-object v0, p0, Lיᐧ/ﾞᴵ;->ˈ:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lיᐧ/ⁱˊ;

    if-nez v1, :cond_2

    const-class v1, [I

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lיᐧ/ⁱˊ;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lיᐧ/ⁱˊ;-><init>(I)V

    goto :goto_0

    :cond_0
    const-class v1, [B

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lיᐧ/ⁱˊ;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lיᐧ/ⁱˊ;-><init>(I)V

    :goto_0
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "No array pool found for: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object v1
.end method

.method public final ᵎﹶ(Ljava/lang/Class;)Ljava/util/NavigableMap;
    .locals 2

    .prologue
    iget-object v0, p0, Lיᐧ/ﾞᴵ;->ʽ:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/NavigableMap;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public final declared-synchronized ᵔᵢ(Ljava/lang/Object;)V
    .locals 5

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lיᐧ/ﾞᴵ;->ˑﹳ(Ljava/lang/Class;)Lיᐧ/ⁱˊ;

    move-result-object v1

    invoke-virtual {v1, p1}, Lיᐧ/ⁱˊ;->ﹳٴ(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1}, Lיᐧ/ⁱˊ;->ⁱˊ()I

    move-result v1

    mul-int/2addr v1, v2

    iget v3, p0, Lיᐧ/ﾞᴵ;->ˑﹳ:I

    div-int/lit8 v3, v3, 0x2

    if-gt v1, v3, :cond_2

    iget-object v3, p0, Lיᐧ/ﾞᴵ;->ⁱˊ:Lיᐧ/ˑﹳ;

    iget-object v4, v3, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lיᐧ/ᵔᵢ;

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lיᐧ/ˑﹳ;->ﹶˎ()Lיᐧ/ᵔᵢ;

    move-result-object v4

    :cond_0
    check-cast v4, Lיᐧ/ˈ;

    iput v2, v4, Lיᐧ/ˈ;->ⁱˊ:I

    iput-object v0, v4, Lיᐧ/ˈ;->ʽ:Ljava/lang/Class;

    iget-object v2, p0, Lיᐧ/ﾞᴵ;->ﹳٴ:Lﹳʽ/ˊʻ;

    invoke-virtual {v2, v4, p1}, Lﹳʽ/ˊʻ;->ᴵˊ(Lיᐧ/ᵔᵢ;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lיᐧ/ﾞᴵ;->ᵎﹶ(Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object p1

    iget v0, v4, Lיᐧ/ˈ;->ⁱˊ:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget v2, v4, Lיᐧ/ˈ;->ⁱˊ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v3, v0

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lיᐧ/ﾞᴵ;->ﾞᴵ:I

    add-int/2addr p1, v1

    iput p1, p0, Lיᐧ/ﾞᴵ;->ﾞᴵ:I

    iget p1, p0, Lיᐧ/ﾞᴵ;->ˑﹳ:I

    invoke-virtual {p0, p1}, Lיᐧ/ﾞᴵ;->ʽ(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ⁱˊ(ILjava/lang/Class;)V
    .locals 3

    .prologue
    invoke-virtual {p0, p2}, Lיᐧ/ﾞᴵ;->ᵎﹶ(Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    new-instance p2, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tried to decrement empty size, size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", this: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final declared-synchronized ﹳٴ()V
    .locals 1

    .prologue
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lיᐧ/ﾞᴵ;->ʽ(I)V
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

.method public final ﾞᴵ(Lיᐧ/ˈ;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5

    .prologue
    invoke-virtual {p0, p2}, Lיᐧ/ﾞᴵ;->ˑﹳ(Ljava/lang/Class;)Lיᐧ/ⁱˊ;

    move-result-object v0

    iget-object v1, p0, Lיᐧ/ﾞᴵ;->ﹳٴ:Lﹳʽ/ˊʻ;

    invoke-virtual {v1, p1}, Lﹳʽ/ˊʻ;->ﹳᐧ(Lיᐧ/ᵔᵢ;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, p0, Lיᐧ/ﾞᴵ;->ﾞᴵ:I

    invoke-virtual {v0, v1}, Lיᐧ/ⁱˊ;->ﹳٴ(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0}, Lיᐧ/ⁱˊ;->ⁱˊ()I

    move-result v4

    mul-int/2addr v4, v3

    sub-int/2addr v2, v4

    iput v2, p0, Lיᐧ/ﾞᴵ;->ﾞᴵ:I

    invoke-virtual {v0, v1}, Lיᐧ/ⁱˊ;->ﹳٴ(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p0, v2, p2}, Lיᐧ/ﾞᴵ;->ⁱˊ(ILjava/lang/Class;)V

    :cond_0
    if-nez v1, :cond_2

    invoke-virtual {v0}, Lיᐧ/ⁱˊ;->ʽ()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x2

    invoke-static {p2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Lיᐧ/ⁱˊ;->ʽ()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Allocated "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lיᐧ/ˈ;->ⁱˊ:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    :cond_1
    iget p1, p1, Lיᐧ/ˈ;->ⁱˊ:I

    iget p2, v0, Lיᐧ/ⁱˊ;->ﹳٴ:I

    packed-switch p2, :pswitch_data_0

    new-array p1, p1, [I

    goto :goto_0

    :pswitch_0
    new-array p1, p1, [B

    :goto_0
    return-object p1

    :cond_2
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
