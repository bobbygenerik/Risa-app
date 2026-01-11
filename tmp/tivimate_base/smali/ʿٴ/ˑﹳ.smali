.class public final Lʿٴ/ˑﹳ;
.super Ljava/io/InputStream;
.source "SourceFile"


# static fields
.field public static final ʽʽ:Ljava/util/ArrayDeque;


# instance fields
.field public ʾˋ:Lᵔﹶ/ʼʼ;

.field public ᴵˊ:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lʿٴ/ᵔʾ;->ﹳٴ:[C

    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lʿٴ/ˑﹳ;->ʽʽ:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method public final available()I
    .locals 1

    iget-object v0, p0, Lʿٴ/ˑﹳ;->ʾˋ:Lᵔﹶ/ʼʼ;

    invoke-virtual {v0}, Lᵔﹶ/ʼʼ;->available()I

    move-result v0

    return v0
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lʿٴ/ˑﹳ;->ʾˋ:Lᵔﹶ/ʼʼ;

    invoke-virtual {v0}, Lᵔﹶ/ʼʼ;->close()V

    return-void
.end method

.method public final mark(I)V
    .locals 1

    iget-object v0, p0, Lʿٴ/ˑﹳ;->ʾˋ:Lᵔﹶ/ʼʼ;

    invoke-virtual {v0, p1}, Lᵔﹶ/ʼʼ;->mark(I)V

    return-void
.end method

.method public final markSupported()Z
    .locals 1

    iget-object v0, p0, Lʿٴ/ˑﹳ;->ʾˋ:Lᵔﹶ/ʼʼ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    return v0
.end method

.method public final read()I
    .locals 1

    .prologue
    :try_start_0
    iget-object v0, p0, Lʿٴ/ˑﹳ;->ʾˋ:Lᵔﹶ/ʼʼ;

    invoke-virtual {v0}, Lᵔﹶ/ʼʼ;->read()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    iput-object v0, p0, Lʿٴ/ˑﹳ;->ᴵˊ:Ljava/io/IOException;

    throw v0
.end method

.method public final read([B)I
    .locals 1

    .prologue
    :try_start_0
    iget-object v0, p0, Lʿٴ/ˑﹳ;->ʾˋ:Lᵔﹶ/ʼʼ;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    iput-object p1, p0, Lʿٴ/ˑﹳ;->ᴵˊ:Ljava/io/IOException;

    throw p1
.end method

.method public final read([BII)I
    .locals 1

    .prologue
    :try_start_0
    iget-object v0, p0, Lʿٴ/ˑﹳ;->ʾˋ:Lᵔﹶ/ʼʼ;

    invoke-virtual {v0, p1, p2, p3}, Lᵔﹶ/ʼʼ;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    iput-object p1, p0, Lʿٴ/ˑﹳ;->ᴵˊ:Ljava/io/IOException;

    throw p1
.end method

.method public final declared-synchronized reset()V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lʿٴ/ˑﹳ;->ʾˋ:Lᵔﹶ/ʼʼ;

    invoke-virtual {v0}, Lᵔﹶ/ʼʼ;->reset()V
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

.method public final skip(J)J
    .locals 1

    .prologue
    :try_start_0
    iget-object v0, p0, Lʿٴ/ˑﹳ;->ʾˋ:Lᵔﹶ/ʼʼ;

    invoke-virtual {v0, p1, p2}, Lᵔﹶ/ʼʼ;->skip(J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    iput-object p1, p0, Lʿٴ/ˑﹳ;->ᴵˊ:Ljava/io/IOException;

    throw p1
.end method

.method public final ʽ()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Lʿٴ/ˑﹳ;->ᴵˊ:Ljava/io/IOException;

    iput-object v0, p0, Lʿٴ/ˑﹳ;->ʾˋ:Lᵔﹶ/ʼʼ;

    sget-object v0, Lʿٴ/ˑﹳ;->ʽʽ:Ljava/util/ArrayDeque;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
