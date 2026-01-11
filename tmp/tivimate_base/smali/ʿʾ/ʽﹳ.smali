.class public final Lʿʾ/ʽﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʿʾ/ᵢˏ;


# instance fields
.field public final ʽʽ:Lʿʾ/ᵢˏ;

.field public final ʾˋ:Z

.field public final ˈٴ:Lʿʾ/ˏי;

.field public ˊʻ:I

.field public ٴᵢ:Z

.field public final ᴵˊ:Z

.field public final ᴵᵔ:Lʼᵔ/ˑﹳ;


# direct methods
.method public constructor <init>(Lʿʾ/ᵢˏ;ZZLʼᵔ/ˑﹳ;Lʿʾ/ˏי;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lʿٴ/ﾞᴵ;->ʽ(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lʿʾ/ʽﹳ;->ʽʽ:Lʿʾ/ᵢˏ;

    iput-boolean p2, p0, Lʿʾ/ʽﹳ;->ʾˋ:Z

    iput-boolean p3, p0, Lʿʾ/ʽﹳ;->ᴵˊ:Z

    iput-object p4, p0, Lʿʾ/ʽﹳ;->ᴵᵔ:Lʼᵔ/ˑﹳ;

    invoke-static {p5, v0}, Lʿٴ/ﾞᴵ;->ʽ(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p5, p0, Lʿʾ/ʽﹳ;->ˈٴ:Lʿʾ/ˏי;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lʿʾ/ʽﹳ;->ʽʽ:Lʿʾ/ᵢˏ;

    invoke-interface {v0}, Lʿʾ/ᵢˏ;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "EngineResource{isMemoryCacheable="

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lʿʾ/ʽﹳ;->ʾˋ:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", listener="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lʿʾ/ʽﹳ;->ˈٴ:Lʿʾ/ˏי;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", key="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lʿʾ/ʽﹳ;->ᴵᵔ:Lʼᵔ/ˑﹳ;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", acquired="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lʿʾ/ʽﹳ;->ˊʻ:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isRecycled="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lʿʾ/ʽﹳ;->ٴᵢ:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", resource="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lʿʾ/ʽﹳ;->ʽʽ:Lʿʾ/ᵢˏ;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final ʽ()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lʿʾ/ʽﹳ;->ʽʽ:Lʿʾ/ᵢˏ;

    invoke-interface {v0}, Lʿʾ/ᵢˏ;->ʽ()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized ˈ()V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lʿʾ/ʽﹳ;->ˊʻ:I

    if-gtz v0, :cond_2

    iget-boolean v0, p0, Lʿʾ/ʽﹳ;->ٴᵢ:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lʿʾ/ʽﹳ;->ٴᵢ:Z

    iget-boolean v0, p0, Lʿʾ/ʽﹳ;->ᴵˊ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lʿʾ/ʽﹳ;->ʽʽ:Lʿʾ/ᵢˏ;

    invoke-interface {v0}, Lʿʾ/ᵢˏ;->ˈ()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot recycle a resource that has already been recycled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot recycle a resource while it is still acquired"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final ˑﹳ()V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lʿʾ/ʽﹳ;->ˊʻ:I

    if-lez v0, :cond_2

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lʿʾ/ʽﹳ;->ˊʻ:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    iget-object v0, p0, Lʿʾ/ʽﹳ;->ˈٴ:Lʿʾ/ˏי;

    iget-object v1, p0, Lʿʾ/ʽﹳ;->ᴵᵔ:Lʼᵔ/ˑﹳ;

    check-cast v0, Lʿʾ/ˉʿ;

    invoke-virtual {v0, v1, p0}, Lʿʾ/ˉʿ;->ﾞᴵ(Lʼᵔ/ˑﹳ;Lʿʾ/ʽﹳ;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot release a recycled or not yet acquired resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final ⁱˊ()I
    .locals 1

    iget-object v0, p0, Lʿʾ/ʽﹳ;->ʽʽ:Lʿʾ/ᵢˏ;

    invoke-interface {v0}, Lʿʾ/ᵢˏ;->ⁱˊ()I

    move-result v0

    return v0
.end method

.method public final declared-synchronized ﹳٴ()V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lʿʾ/ʽﹳ;->ٴᵢ:Z

    if-nez v0, :cond_0

    iget v0, p0, Lʿʾ/ʽﹳ;->ˊʻ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lʿʾ/ʽﹳ;->ˊʻ:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot acquire a recycled resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
