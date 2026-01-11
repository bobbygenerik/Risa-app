.class public final Lᵔⁱ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:I

.field public ˈ:I

.field public ˑﹳ:I

.field public final ⁱˊ:I

.field public final ﹳٴ:Z

.field public ﾞᴵ:[Lᵔⁱ/ﹳٴ;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lᵔⁱ/ˑﹳ;->ﹳٴ:Z

    const/high16 v0, 0x10000

    iput v0, p0, Lᵔⁱ/ˑﹳ;->ⁱˊ:I

    const/4 v0, 0x0

    iput v0, p0, Lᵔⁱ/ˑﹳ;->ˑﹳ:I

    const/16 v0, 0x64

    new-array v0, v0, [Lᵔⁱ/ﹳٴ;

    iput-object v0, p0, Lᵔⁱ/ˑﹳ;->ﾞᴵ:[Lᵔⁱ/ﹳٴ;

    return-void
.end method


# virtual methods
.method public final declared-synchronized ⁱˊ()V
    .locals 4

    .prologue
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lᵔⁱ/ˑﹳ;->ʽ:I

    iget v1, p0, Lᵔⁱ/ˑﹳ;->ⁱˊ:I

    invoke-static {v0, v1}, Lᐧˎ/ʼʼ;->ﾞᴵ(II)I

    move-result v0

    iget v1, p0, Lᵔⁱ/ˑﹳ;->ˈ:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lᵔⁱ/ˑﹳ;->ˑﹳ:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lᵔⁱ/ˑﹳ;->ﾞᴵ:[Lᵔⁱ/ﹳٴ;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput v0, p0, Lᵔⁱ/ˑﹳ;->ˑﹳ:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized ﹳٴ(I)V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lᵔⁱ/ˑﹳ;->ʽ:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lᵔⁱ/ˑﹳ;->ʽ:I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lᵔⁱ/ˑﹳ;->ⁱˊ()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
