.class public final Lˏـ/ʼˎ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˏـ/ˑﹳ;
.implements Lˏـ/ˈ;
.implements Lˏـ/ⁱˊ;


# instance fields
.field public final ʽʽ:Lˏـ/ˉʿ;

.field public final ʾˋ:Ljava/lang/Object;

.field public ˈٴ:I

.field public ˉٴ:Z

.field public ˊʻ:I

.field public ٴᵢ:Ljava/lang/Exception;

.field public final ᴵˊ:I

.field public ᴵᵔ:I


# direct methods
.method public constructor <init>(ILˏـ/ˉʿ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lˏـ/ʼˎ;->ʾˋ:Ljava/lang/Object;

    iput p1, p0, Lˏـ/ʼˎ;->ᴵˊ:I

    iput-object p2, p0, Lˏـ/ʼˎ;->ʽʽ:Lˏـ/ˉʿ;

    return-void
.end method


# virtual methods
.method public final יـ(Ljava/lang/Object;)V
    .locals 1

    .prologue
    iget-object p1, p0, Lˏـ/ʼˎ;->ʾˋ:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget v0, p0, Lˏـ/ʼˎ;->ˈٴ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lˏـ/ʼˎ;->ˈٴ:I

    invoke-virtual {p0}, Lˏـ/ʼˎ;->ﹳٴ()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final ٴʼ(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lˏـ/ʼˎ;->ʾˋ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lˏـ/ʼˎ;->ᴵᵔ:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lˏـ/ʼˎ;->ᴵᵔ:I

    iput-object p1, p0, Lˏـ/ʼˎ;->ٴᵢ:Ljava/lang/Exception;

    invoke-virtual {p0}, Lˏـ/ʼˎ;->ﹳٴ()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final ᵔﹳ()V
    .locals 3

    .prologue
    iget-object v0, p0, Lˏـ/ʼˎ;->ʾˋ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lˏـ/ʼˎ;->ˊʻ:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lˏـ/ʼˎ;->ˊʻ:I

    iput-boolean v2, p0, Lˏـ/ʼˎ;->ˉٴ:Z

    invoke-virtual {p0}, Lˏـ/ʼˎ;->ﹳٴ()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final ﹳٴ()V
    .locals 5

    .prologue
    iget v0, p0, Lˏـ/ʼˎ;->ˈٴ:I

    iget v1, p0, Lˏـ/ʼˎ;->ᴵᵔ:I

    add-int/2addr v0, v1

    iget v1, p0, Lˏـ/ʼˎ;->ˊʻ:I

    add-int/2addr v0, v1

    iget v1, p0, Lˏـ/ʼˎ;->ᴵˊ:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lˏـ/ʼˎ;->ٴᵢ:Ljava/lang/Exception;

    iget-object v2, p0, Lˏـ/ʼˎ;->ʽʽ:Lˏـ/ˉʿ;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget v3, p0, Lˏـ/ʼˎ;->ᴵᵔ:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " out of "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " underlying tasks failed"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lˏـ/ʼˎ;->ٴᵢ:Ljava/lang/Exception;

    invoke-direct {v0, v1, v3}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v0}, Lˏـ/ˉʿ;->ʼˎ(Ljava/lang/Exception;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lˏـ/ʼˎ;->ˉٴ:Z

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lˏـ/ˉʿ;->ٴﹶ()V

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lˏـ/ˉʿ;->ˆʾ(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
