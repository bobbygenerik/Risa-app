.class public final Lٴᵎ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˎᵢ/ᵔﹳ;


# static fields
.field public static final ﹳٴ:Lٴᵎ/ⁱˊ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lٴᵎ/ⁱˊ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lٴᵎ/ⁱˊ;->ﹳٴ:Lٴᵎ/ⁱˊ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Lʽי/ᵎﹶ;)Lˎᵢ/ʽʽ;
    .locals 10

    .prologue
    iget-object v0, p1, Lʽי/ᵎﹶ;->ﹳٴ:Lٴᵎ/ʼᐧ;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, v0, Lٴᵎ/ʼᐧ;->ᵔי:Z

    if-eqz v1, :cond_4

    iget-boolean v1, v0, Lٴᵎ/ʼᐧ;->ᵎˊ:Z

    if-nez v1, :cond_3

    iget-boolean v1, v0, Lٴᵎ/ʼᐧ;->ٴʼ:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_2

    monitor-exit v0

    iget-object v1, v0, Lٴᵎ/ʼᐧ;->ٴᵢ:Lٴᵎ/ʼˎ;

    invoke-interface {v1}, Lٴᵎ/ʼˎ;->ﹳٴ()Lٴᵎ/ᵔﹳ;

    move-result-object v2

    iget-object v3, v0, Lٴᵎ/ʼᐧ;->ʾˋ:Lˎᵢ/ʻٴ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, p1, Lʽי/ᵎﹶ;->ᵎﹶ:I

    iget-object v5, v2, Lٴᵎ/ᵔﹳ;->ﾞᴵ:Ljava/net/Socket;

    iget-object v6, v2, Lٴᵎ/ᵔﹳ;->ʼˎ:Lˊᐧ/ᵔᵢ;

    iget-object v7, v2, Lٴᵎ/ᵔﹳ;->ˆʾ:Lˊᐧ/ᵎﹶ;

    iget-object v8, v2, Lٴᵎ/ᵔﹳ;->ٴﹶ:Lᵔᐧ/ᵔʾ;

    if-eqz v8, :cond_0

    new-instance v4, Lᵔᐧ/ˉˆ;

    invoke-direct {v4, v3, v2, p1, v8}, Lᵔᐧ/ˉˆ;-><init>(Lˎᵢ/ʻٴ;Lٴᵎ/ᵔﹳ;Lʽי/ᵎﹶ;Lᵔᐧ/ᵔʾ;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    invoke-interface {v6}, Lˊᐧ/ᴵˊ;->ˑﹳ()Lˊᐧ/ˈٴ;

    move-result-object v5

    int-to-long v8, v4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v8, v9}, Lˊᐧ/ˈٴ;->ᵎﹶ(J)Lˊᐧ/ˈٴ;

    invoke-interface {v7}, Lˊᐧ/ʾˋ;->ˑﹳ()Lˊᐧ/ˈٴ;

    move-result-object v4

    iget v5, p1, Lʽי/ᵎﹶ;->ᵔᵢ:I

    int-to-long v8, v5

    invoke-virtual {v4, v8, v9}, Lˊᐧ/ˈٴ;->ᵎﹶ(J)Lˊᐧ/ˈٴ;

    new-instance v4, Lיʾ/ᵎﹶ;

    invoke-direct {v4, v3, v2, v6, v7}, Lיʾ/ᵎﹶ;-><init>(Lˎᵢ/ʻٴ;Lʽי/ˈ;Lˊᐧ/ᵔᵢ;Lˊᐧ/ᵎﹶ;)V

    :goto_0
    new-instance v2, Lcom/bumptech/glide/ʼˎ;

    invoke-direct {v2, v0, v1, v4}, Lcom/bumptech/glide/ʼˎ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v0, Lٴᵎ/ʼᐧ;->ᵎⁱ:Lcom/bumptech/glide/ʼˎ;

    iput-object v2, v0, Lٴᵎ/ʼᐧ;->ᵔٴ:Lcom/bumptech/glide/ʼˎ;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, v0, Lٴᵎ/ʼᐧ;->ٴʼ:Z

    iput-boolean v1, v0, Lٴᵎ/ʼᐧ;->ᵎˊ:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    iget-boolean v0, v0, Lٴᵎ/ʼᐧ;->ˆﾞ:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/16 v1, 0x3d

    const/4 v3, 0x0

    invoke-static {p1, v3, v2, v0, v1}, Lʽי/ᵎﹶ;->ﹳٴ(Lʽי/ᵎﹶ;ILcom/bumptech/glide/ʼˎ;Lˎᵢ/ʾᵎ;I)Lʽי/ᵎﹶ;

    move-result-object v0

    iget-object p1, p1, Lʽי/ᵎﹶ;->ˑﹳ:Lˎᵢ/ʾᵎ;

    invoke-virtual {v0, p1}, Lʽי/ᵎﹶ;->ⁱˊ(Lˎᵢ/ʾᵎ;)Lˎᵢ/ʽʽ;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Canceled"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_2
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const-string p1, "released"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    monitor-exit v0

    throw p1
.end method
