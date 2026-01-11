.class public final Lʼˊ/ˈ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ⁱˊ:I

.field public final ﹳٴ:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x200

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lʼˊ/ˈ;->ﹳٴ:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lʼˊ/ˈ;->ⁱˊ:I

    return-void
.end method


# virtual methods
.method public final declared-synchronized ⁱˊ(Ljava/lang/ref/SoftReference;)V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lʼˊ/ˈ;->ⁱˊ:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit16 v0, v0, 0x1ff

    iput v0, p0, Lʼˊ/ˈ;->ⁱˊ:I

    iget-object v1, p0, Lʼˊ/ˈ;->ﹳٴ:[Ljava/lang/Object;

    aput-object p1, v1, v0
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

.method public final declared-synchronized ﹳٴ()Ljava/lang/Object;
    .locals 4

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lʼˊ/ˈ;->ﹳٴ:[Ljava/lang/Object;

    iget v1, p0, Lʼˊ/ˈ;->ⁱˊ:I

    aget-object v2, v0, v1

    const/4 v3, 0x0

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, -0x1

    and-int/lit16 v0, v1, 0x1ff

    iput v0, p0, Lʼˊ/ˈ;->ⁱˊ:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
