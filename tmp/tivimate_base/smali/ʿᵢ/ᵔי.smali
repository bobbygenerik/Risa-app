.class public final Lʿᵢ/ᵔי;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʿᵢ/ﹳٴ;


# instance fields
.field public final ʽ:Lﹶי/ʽ;

.field public final ˈ:Ljava/lang/Object;

.field public final ˑﹳ:Ljava/lang/Object;

.field public final ᵎﹶ:Ljava/lang/Object;

.field public final ⁱˊ:Lʿᵢ/ˑٴ;

.field public final synthetic ﹳٴ:I

.field public final ﾞᴵ:Lˊʼ/ٴﹶ;


# direct methods
.method public constructor <init>(Ljava/io/File;Lʿᵢ/ˏᵢ;Lʿᵢ/ˑٴ;Lʿᵢ/ˉٴ;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lʿᵢ/ᵔי;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʿᵢ/ᵔי;->ˈ:Ljava/lang/Object;

    iput-object p2, p0, Lʿᵢ/ᵔי;->ˑﹳ:Ljava/lang/Object;

    iput-object p3, p0, Lʿᵢ/ᵔי;->ⁱˊ:Lʿᵢ/ˑٴ;

    iput-object p4, p0, Lʿᵢ/ᵔי;->ﾞᴵ:Lˊʼ/ٴﹶ;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lʿᵢ/ᵔי;->ᵎﹶ:Ljava/lang/Object;

    invoke-static {}, Lﹶי/ˈ;->ﹳٴ()Lﹶי/ʽ;

    move-result-object p1

    iput-object p1, p0, Lʿᵢ/ᵔי;->ʽ:Lﹶי/ʽ;

    return-void
.end method

.method public constructor <init>(Lˊᐧ/ﾞʻ;Lˊᐧ/ʽﹳ;Lʿᵢ/ˑٴ;Lᐧﾞ/ˈ;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lʿᵢ/ᵔי;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʿᵢ/ᵔי;->ˈ:Ljava/lang/Object;

    iput-object p2, p0, Lʿᵢ/ᵔי;->ˑﹳ:Ljava/lang/Object;

    iput-object p3, p0, Lʿᵢ/ᵔי;->ⁱˊ:Lʿᵢ/ˑٴ;

    iput-object p4, p0, Lʿᵢ/ᵔי;->ﾞᴵ:Lˊʼ/ٴﹶ;

    new-instance p1, Lˊⁱ/ˑﹳ;

    const/16 p2, 0x12

    invoke-direct {p1, p2}, Lˊⁱ/ˑﹳ;-><init>(I)V

    iput-object p1, p0, Lʿᵢ/ᵔי;->ᵎﹶ:Ljava/lang/Object;

    invoke-static {}, Lﹶי/ˈ;->ﹳٴ()Lﹶי/ʽ;

    move-result-object p1

    iput-object p1, p0, Lʿᵢ/ᵔי;->ʽ:Lﹶי/ʽ;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    iget v0, p0, Lʿᵢ/ᵔי;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʿᵢ/ᵔי;->ᵎﹶ:Ljava/lang/Object;

    check-cast v0, Lˊⁱ/ˑﹳ;

    iget-object v0, v0, Lˊⁱ/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lʿᵢ/ᵔי;->ﾞᴵ:Lˊʼ/ٴﹶ;

    check-cast v0, Lᐧﾞ/ˈ;

    invoke-virtual {v0}, Lᐧﾞ/ˈ;->ʽ()Ljava/lang/Object;

    return-void

    :pswitch_0
    iget-object v0, p0, Lʿᵢ/ᵔי;->ᵎﹶ:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lʿᵢ/ᵔי;->ﾞᴵ:Lˊʼ/ٴﹶ;

    check-cast v0, Lʿᵢ/ˉٴ;

    invoke-virtual {v0}, Lʿᵢ/ˉٴ;->ʽ()Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ʽ(Lʿᵢ/ˉˆ;Lᴵʾ/ʽ;)Ljava/lang/Object;
    .locals 6

    .prologue
    iget v0, p0, Lʿᵢ/ᵔי;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    instance-of v0, p2, Lᐧﾞ/ﾞᴵ;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lᐧﾞ/ﾞᴵ;

    iget v1, v0, Lᐧﾞ/ﾞᴵ;->ᵎⁱ:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lᐧﾞ/ﾞᴵ;->ᵎⁱ:I

    goto :goto_0

    :cond_0
    new-instance v0, Lᐧﾞ/ﾞᴵ;

    invoke-direct {v0, p0, p2}, Lᐧﾞ/ﾞᴵ;-><init>(Lʿᵢ/ᵔי;Lᴵʾ/ʽ;)V

    :goto_0
    iget-object p2, v0, Lᐧﾞ/ﾞᴵ;->ٴᵢ:Ljava/lang/Object;

    iget v1, v0, Lᐧﾞ/ﾞᴵ;->ᵎⁱ:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-boolean p1, v0, Lᐧﾞ/ﾞᴵ;->ˊʻ:Z

    iget-object v1, v0, Lᐧﾞ/ﾞᴵ;->ᴵᵔ:Lᐧﾞ/ⁱˊ;

    iget-object v0, v0, Lᐧﾞ/ﾞᴵ;->ˈٴ:Lʿᵢ/ᵔי;

    :try_start_0
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iget-object p2, p0, Lʿᵢ/ᵔי;->ᵎﹶ:Ljava/lang/Object;

    check-cast p2, Lˊⁱ/ˑﹳ;

    iget-object p2, p2, Lˊⁱ/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_7

    iget-object p2, p0, Lʿᵢ/ᵔי;->ʽ:Lﹶי/ʽ;

    invoke-virtual {p2}, Lﹶי/ʽ;->ˈ()Z

    move-result p2

    :try_start_1
    new-instance v1, Lᐧﾞ/ⁱˊ;

    iget-object v4, p0, Lʿᵢ/ᵔי;->ˈ:Ljava/lang/Object;

    check-cast v4, Lˊᐧ/ﾞʻ;

    iget-object v5, p0, Lʿᵢ/ᵔי;->ˑﹳ:Ljava/lang/Object;

    check-cast v5, Lˊᐧ/ʽﹳ;

    invoke-direct {v1, v4, v5}, Lᐧﾞ/ⁱˊ;-><init>(Lˊᐧ/ﾞʻ;Lˊᐧ/ʽﹳ;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    :try_start_2
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object p0, v0, Lᐧﾞ/ﾞᴵ;->ˈٴ:Lʿᵢ/ᵔי;

    iput-object v1, v0, Lᐧﾞ/ﾞᴵ;->ᴵᵔ:Lᐧﾞ/ⁱˊ;

    iput-boolean p2, v0, Lᐧﾞ/ﾞᴵ;->ˊʻ:Z

    iput v2, v0, Lᐧﾞ/ﾞᴵ;->ᵎⁱ:I

    invoke-virtual {p1, v1, v4, v0}, Lʿᵢ/ˉˆ;->ᵎﹶ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    sget-object v0, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p1, v0, :cond_3

    goto :goto_3

    :cond_3
    move v0, p2

    move-object p2, p1

    move p1, v0

    move-object v0, p0

    :goto_1
    :try_start_3
    invoke-interface {v1}, Lʿᵢ/ﹳٴ;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v1, v3

    goto :goto_2

    :catchall_1
    move-exception v1

    :goto_2
    if-nez v1, :cond_5

    if-eqz p1, :cond_4

    iget-object p1, v0, Lʿᵢ/ᵔי;->ʽ:Lﹶי/ʽ;

    invoke-virtual {p1, v3}, Lﹶי/ʽ;->ᵎﹶ(Ljava/lang/Object;)V

    :cond_4
    move-object v0, p2

    :goto_3
    return-object v0

    :cond_5
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p2

    goto :goto_6

    :catchall_3
    move-exception p1

    move v0, p2

    move-object p2, p1

    move p1, v0

    move-object v0, p0

    :goto_4
    :try_start_5
    invoke-interface {v1}, Lʿᵢ/ﹳٴ;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception v1

    :try_start_6
    invoke-static {p2, v1}, Lʽٴ/ˈ;->ⁱˊ(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_5
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_5
    move-exception p1

    move v0, p2

    move-object p2, p1

    move p1, v0

    move-object v0, p0

    :goto_6
    if-eqz p1, :cond_6

    iget-object p1, v0, Lʿᵢ/ᵔי;->ʽ:Lﹶי/ʽ;

    invoke-virtual {p1, v3}, Lﹶי/ʽ;->ᵎﹶ(Ljava/lang/Object;)V

    :cond_6
    throw p2

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "StorageConnection has already been disposed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    instance-of v0, p2, Lʿᵢ/ٴʼ;

    if-eqz v0, :cond_8

    move-object v0, p2

    check-cast v0, Lʿᵢ/ٴʼ;

    iget v1, v0, Lʿᵢ/ٴʼ;->ᵎⁱ:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_8

    sub-int/2addr v1, v2

    iput v1, v0, Lʿᵢ/ٴʼ;->ᵎⁱ:I

    goto :goto_7

    :cond_8
    new-instance v0, Lʿᵢ/ٴʼ;

    invoke-direct {v0, p0, p2}, Lʿᵢ/ٴʼ;-><init>(Lʿᵢ/ᵔי;Lᴵʾ/ʽ;)V

    :goto_7
    iget-object p2, v0, Lʿᵢ/ٴʼ;->ٴᵢ:Ljava/lang/Object;

    iget v1, v0, Lʿᵢ/ٴʼ;->ᵎⁱ:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_a

    if-ne v1, v2, :cond_9

    iget-boolean p1, v0, Lʿᵢ/ٴʼ;->ˊʻ:Z

    iget-object v1, v0, Lʿᵢ/ٴʼ;->ᴵᵔ:Lʿᵢ/ˊʻ;

    iget-object v0, v0, Lʿᵢ/ٴʼ;->ˈٴ:Lʿᵢ/ᵔי;

    :try_start_7
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    goto :goto_8

    :catchall_6
    move-exception p2

    goto :goto_b

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iget-object p2, p0, Lʿᵢ/ᵔי;->ᵎﹶ:Ljava/lang/Object;

    check-cast p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_f

    iget-object p2, p0, Lʿᵢ/ᵔי;->ʽ:Lﹶי/ʽ;

    invoke-virtual {p2}, Lﹶי/ʽ;->ˈ()Z

    move-result p2

    :try_start_8
    new-instance v1, Lʿᵢ/ˊʻ;

    iget-object v4, p0, Lʿᵢ/ᵔי;->ˈ:Ljava/lang/Object;

    check-cast v4, Ljava/io/File;

    iget-object v5, p0, Lʿᵢ/ᵔי;->ˑﹳ:Ljava/lang/Object;

    check-cast v5, Lʿᵢ/ˏᵢ;

    invoke-direct {v1, v4, v5}, Lʿᵢ/ˊʻ;-><init>(Ljava/io/File;Lʿᵢ/ˏᵢ;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_b

    :try_start_9
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object p0, v0, Lʿᵢ/ٴʼ;->ˈٴ:Lʿᵢ/ᵔי;

    iput-object v1, v0, Lʿᵢ/ٴʼ;->ᴵᵔ:Lʿᵢ/ˊʻ;

    iput-boolean p2, v0, Lʿᵢ/ٴʼ;->ˊʻ:Z

    iput v2, v0, Lʿᵢ/ٴʼ;->ᵎⁱ:I

    invoke-virtual {p1, v1, v4, v0}, Lʿᵢ/ˉˆ;->ᵎﹶ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    sget-object v0, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p1, v0, :cond_b

    goto :goto_a

    :cond_b
    move v0, p2

    move-object p2, p1

    move p1, v0

    move-object v0, p0

    :goto_8
    :try_start_a
    invoke-interface {v1}, Lʿᵢ/ﹳٴ;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    move-object v1, v3

    goto :goto_9

    :catchall_7
    move-exception v1

    :goto_9
    if-nez v1, :cond_d

    if-eqz p1, :cond_c

    iget-object p1, v0, Lʿᵢ/ᵔי;->ʽ:Lﹶי/ʽ;

    invoke-virtual {p1, v3}, Lﹶי/ʽ;->ᵎﹶ(Ljava/lang/Object;)V

    :cond_c
    move-object v0, p2

    :goto_a
    return-object v0

    :cond_d
    :try_start_b
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    :catchall_8
    move-exception p2

    goto :goto_d

    :catchall_9
    move-exception p1

    move v0, p2

    move-object p2, p1

    move p1, v0

    move-object v0, p0

    :goto_b
    :try_start_c
    invoke-interface {v1}, Lʿᵢ/ﹳٴ;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    goto :goto_c

    :catchall_a
    move-exception v1

    :try_start_d
    invoke-static {p2, v1}, Lʽٴ/ˈ;->ⁱˊ(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_c
    throw p2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    :catchall_b
    move-exception p1

    move v0, p2

    move-object p2, p1

    move p1, v0

    move-object v0, p0

    :goto_d
    if-eqz p1, :cond_e

    iget-object p1, v0, Lʿᵢ/ᵔי;->ʽ:Lﹶי/ʽ;

    invoke-virtual {p1, v3}, Lﹶי/ʽ;->ᵎﹶ(Ljava/lang/Object;)V

    :cond_e
    throw p2

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "StorageConnection has already been disposed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ˈ(Lʿᵢ/ʽʽ;Lᴵʾ/ʽ;)Ljava/lang/Object;
    .locals 9

    .prologue
    iget v0, p0, Lʿᵢ/ᵔי;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    instance-of v0, p2, Lᐧﾞ/ᵎﹶ;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lᐧﾞ/ᵎﹶ;

    iget v1, v0, Lᐧﾞ/ᵎﹶ;->ٴʼ:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lᐧﾞ/ᵎﹶ;->ٴʼ:I

    goto :goto_0

    :cond_0
    new-instance v0, Lᐧﾞ/ᵎﹶ;

    invoke-direct {v0, p0, p2}, Lᐧﾞ/ᵎﹶ;-><init>(Lʿᵢ/ᵔי;Lᴵʾ/ʽ;)V

    :goto_0
    iget-object p2, v0, Lᐧﾞ/ᵎﹶ;->ˉٴ:Ljava/lang/Object;

    iget v1, v0, Lᐧﾞ/ᵎﹶ;->ٴʼ:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget-object v5, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v0, Lᐧﾞ/ᵎﹶ;->ٴᵢ:Ljava/lang/Object;

    check-cast p1, Lʿᵢ/ﹳٴ;

    iget-object v1, v0, Lᐧﾞ/ᵎﹶ;->ˊʻ:Lˊᐧ/ʽﹳ;

    iget-object v2, v0, Lᐧﾞ/ᵎﹶ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v2, Lﹶי/ﹳٴ;

    iget-object v0, v0, Lᐧﾞ/ᵎﹶ;->ˈٴ:Lʿᵢ/ᵔי;

    :try_start_0
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception p2

    goto/16 :goto_8

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lᐧﾞ/ᵎﹶ;->ٴᵢ:Ljava/lang/Object;

    check-cast p1, Lﹶי/ﹳٴ;

    iget-object v1, v0, Lᐧﾞ/ᵎﹶ;->ˊʻ:Lˊᐧ/ʽﹳ;

    iget-object v3, v0, Lᐧﾞ/ᵎﹶ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v3, Lᴵⁱ/ʼᐧ;

    iget-object v6, v0, Lᐧﾞ/ᵎﹶ;->ˈٴ:Lʿᵢ/ᵔי;

    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    move-object p2, p1

    move-object p1, v3

    goto :goto_3

    :cond_3
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iget-object p2, p0, Lʿᵢ/ᵔי;->ᵎﹶ:Ljava/lang/Object;

    check-cast p2, Lˊⁱ/ˑﹳ;

    iget-object p2, p2, Lˊⁱ/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_c

    iget-object p2, p0, Lʿᵢ/ᵔי;->ˑﹳ:Ljava/lang/Object;

    check-cast p2, Lˊᐧ/ʽﹳ;

    invoke-virtual {p2}, Lˊᐧ/ʽﹳ;->ʽ()Lˊᐧ/ʽﹳ;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object p2, p0, Lʿᵢ/ᵔי;->ˈ:Ljava/lang/Object;

    check-cast p2, Lˊᐧ/ﾞʻ;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lﹶˈ/ᵔᵢ;

    invoke-direct {v6}, Lﹶˈ/ᵔᵢ;-><init>()V

    move-object v7, v1

    :goto_1
    if-eqz v7, :cond_4

    invoke-virtual {p2, v7}, Lˊᐧ/ﾞʻ;->ﹳᐧ(Lˊᐧ/ʽﹳ;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v6, v7}, Lﹶˈ/ᵔᵢ;->addFirst(Ljava/lang/Object;)V

    invoke-virtual {v7}, Lˊᐧ/ʽﹳ;->ʽ()Lˊᐧ/ʽﹳ;

    move-result-object v7

    goto :goto_1

    :cond_4
    invoke-virtual {v6}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lˊᐧ/ʽﹳ;

    invoke-virtual {p2, v7}, Lˊᐧ/ﾞʻ;->ᵎﹶ(Lˊᐧ/ʽﹳ;)V

    goto :goto_2

    :cond_5
    iput-object p0, v0, Lᐧﾞ/ᵎﹶ;->ˈٴ:Lʿᵢ/ᵔי;

    iput-object p1, v0, Lᐧﾞ/ᵎﹶ;->ᴵᵔ:Ljava/lang/Object;

    iput-object v1, v0, Lᐧﾞ/ᵎﹶ;->ˊʻ:Lˊᐧ/ʽﹳ;

    iget-object p2, p0, Lʿᵢ/ᵔי;->ʽ:Lﹶי/ʽ;

    iput-object p2, v0, Lᐧﾞ/ᵎﹶ;->ٴᵢ:Ljava/lang/Object;

    iput v3, v0, Lᐧﾞ/ᵎﹶ;->ٴʼ:I

    invoke-virtual {p2, v0}, Lﹶי/ʽ;->ʽ(Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v5, :cond_6

    goto/16 :goto_7

    :cond_6
    move-object v6, p0

    :goto_3
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v6, Lʿᵢ/ᵔי;->ˑﹳ:Ljava/lang/Object;

    check-cast v7, Lˊᐧ/ʽﹳ;

    iget-object v8, v6, Lʿᵢ/ᵔי;->ˈ:Ljava/lang/Object;

    check-cast v8, Lˊᐧ/ﾞʻ;

    invoke-virtual {v7}, Lˊᐧ/ʽﹳ;->ⁱˊ()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".tmp"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lˊᐧ/ʽﹳ;->ˑﹳ(Ljava/lang/String;)Lˊᐧ/ʽﹳ;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    :try_start_2
    invoke-virtual {v8, v1}, Lˊᐧ/ﾞʻ;->ˉˆ(Lˊᐧ/ʽﹳ;)V

    new-instance v3, Lᐧﾞ/ʼˎ;

    invoke-direct {v3, v8, v1}, Lᐧﾞ/ⁱˊ;-><init>(Lˊᐧ/ﾞʻ;Lˊᐧ/ʽﹳ;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    :try_start_3
    iput-object v6, v0, Lᐧﾞ/ᵎﹶ;->ˈٴ:Lʿᵢ/ᵔי;

    iput-object p2, v0, Lᐧﾞ/ᵎﹶ;->ᴵᵔ:Ljava/lang/Object;

    iput-object v1, v0, Lᐧﾞ/ᵎﹶ;->ˊʻ:Lˊᐧ/ʽﹳ;

    iput-object v3, v0, Lᐧﾞ/ᵎﹶ;->ٴᵢ:Ljava/lang/Object;

    iput v2, v0, Lᐧﾞ/ᵎﹶ;->ٴʼ:I

    invoke-interface {p1, v3, v0}, Lᴵⁱ/ʼᐧ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-ne p1, v5, :cond_7

    goto :goto_7

    :cond_7
    move-object v2, p2

    move-object p1, v3

    move-object v0, v6

    :goto_4
    :try_start_4
    invoke-interface {p1}, Lʿᵢ/ﹳٴ;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object p1, v4

    goto :goto_5

    :catchall_1
    move-exception p1

    :goto_5
    if-nez p1, :cond_9

    :try_start_5
    iget-object p1, v0, Lʿᵢ/ᵔי;->ˈ:Ljava/lang/Object;

    check-cast p1, Lˊᐧ/ﾞʻ;

    invoke-virtual {p1, v1}, Lˊᐧ/ﾞʻ;->ﹳᐧ(Lˊᐧ/ʽﹳ;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, v0, Lʿᵢ/ᵔי;->ˈ:Ljava/lang/Object;

    check-cast p1, Lˊᐧ/ﾞʻ;

    iget-object p2, v0, Lʿᵢ/ᵔי;->ˑﹳ:Ljava/lang/Object;

    check-cast p2, Lˊᐧ/ʽﹳ;

    invoke-virtual {p1, v1, p2}, Lˊᐧ/ﾞʻ;->ʽ(Lˊᐧ/ʽﹳ;Lˊᐧ/ʽﹳ;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception p1

    move-object p2, v2

    goto :goto_b

    :catch_0
    move-exception p1

    move-object v6, v0

    move-object p2, v2

    goto :goto_a

    :cond_8
    :goto_6
    invoke-interface {v2, v4}, Lﹶי/ﹳٴ;->ᵎﹶ(Ljava/lang/Object;)V

    sget-object v5, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    :goto_7
    return-object v5

    :cond_9
    :try_start_6
    throw p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_3
    move-exception p1

    move-object v2, p2

    move-object v0, v6

    move-object p2, p1

    move-object p1, v3

    :goto_8
    :try_start_7
    invoke-interface {p1}, Lʿᵢ/ﹳٴ;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_9

    :catchall_4
    move-exception p1

    :try_start_8
    invoke-static {p2, p1}, Lʽٴ/ˈ;->ⁱˊ(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_9
    throw p2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_5
    move-exception p1

    goto :goto_b

    :catch_1
    move-exception p1

    :goto_a
    :try_start_9
    iget-object v0, v6, Lʿᵢ/ᵔי;->ˈ:Ljava/lang/Object;

    check-cast v0, Lˊᐧ/ﾞʻ;

    invoke-virtual {v0, v1}, Lˊᐧ/ﾞʻ;->ﹳᐧ(Lˊᐧ/ʽﹳ;)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    if-eqz v0, :cond_a

    :try_start_a
    iget-object v0, v6, Lʿᵢ/ᵔי;->ˈ:Ljava/lang/Object;

    check-cast v0, Lˊᐧ/ﾞʻ;

    invoke-virtual {v0, v1}, Lˊᐧ/ﾞʻ;->ˉˆ(Lˊᐧ/ʽﹳ;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :catch_2
    :cond_a
    :try_start_b
    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :goto_b
    invoke-interface {p2, v4}, Lﹶי/ﹳٴ;->ᵎﹶ(Ljava/lang/Object;)V

    throw p1

    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "must have a parent path"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "StorageConnection has already been disposed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const-string v0, "Unable to rename "

    instance-of v1, p2, Lʿᵢ/ᵎˊ;

    if-eqz v1, :cond_d

    move-object v1, p2

    check-cast v1, Lʿᵢ/ᵎˊ;

    iget v2, v1, Lʿᵢ/ᵎˊ;->ٴʼ:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_d

    sub-int/2addr v2, v3

    iput v2, v1, Lʿᵢ/ᵎˊ;->ٴʼ:I

    goto :goto_c

    :cond_d
    new-instance v1, Lʿᵢ/ᵎˊ;

    invoke-direct {v1, p0, p2}, Lʿᵢ/ᵎˊ;-><init>(Lʿᵢ/ᵔי;Lᴵʾ/ʽ;)V

    :goto_c
    iget-object p2, v1, Lʿᵢ/ᵎˊ;->ˉٴ:Ljava/lang/Object;

    iget v2, v1, Lʿᵢ/ᵎˊ;->ٴʼ:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget-object v6, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-eqz v2, :cond_10

    if-eq v2, v4, :cond_f

    if-ne v2, v3, :cond_e

    iget-object p1, v1, Lʿᵢ/ᵎˊ;->ٴᵢ:Lʿᵢ/ᵔٴ;

    iget-object v2, v1, Lʿᵢ/ᵎˊ;->ˊʻ:Ljava/lang/Object;

    check-cast v2, Ljava/io/File;

    iget-object v3, v1, Lʿᵢ/ᵎˊ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v3, Lﹶי/ﹳٴ;

    iget-object v1, v1, Lʿᵢ/ᵎˊ;->ˈٴ:Lʿᵢ/ᵔי;

    :try_start_c
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    goto/16 :goto_f

    :catchall_6
    move-exception p2

    goto/16 :goto_14

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    iget-object p1, v1, Lʿᵢ/ᵎˊ;->ˊʻ:Ljava/lang/Object;

    check-cast p1, Lﹶי/ﹳٴ;

    iget-object v2, v1, Lʿᵢ/ᵎˊ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v2, Lᴵⁱ/ʼᐧ;

    iget-object v4, v1, Lʿᵢ/ᵎˊ;->ˈٴ:Lʿᵢ/ᵔי;

    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    move-object p2, p1

    move-object p1, v2

    goto :goto_e

    :cond_10
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iget-object p2, p0, Lʿᵢ/ᵔי;->ᵎﹶ:Ljava/lang/Object;

    check-cast p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_1a

    iget-object p2, p0, Lʿᵢ/ᵔי;->ˈ:Ljava/lang/Object;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_d

    :cond_11
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to create parent directories of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_12
    :goto_d
    iput-object p0, v1, Lʿᵢ/ᵎˊ;->ˈٴ:Lʿᵢ/ᵔי;

    iput-object p1, v1, Lʿᵢ/ᵎˊ;->ᴵᵔ:Ljava/lang/Object;

    iget-object p2, p0, Lʿᵢ/ᵔי;->ʽ:Lﹶי/ʽ;

    iput-object p2, v1, Lʿᵢ/ᵎˊ;->ˊʻ:Ljava/lang/Object;

    iput v4, v1, Lʿᵢ/ᵎˊ;->ٴʼ:I

    invoke-virtual {p2, v1}, Lﹶי/ʽ;->ʽ(Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v6, :cond_13

    goto/16 :goto_13

    :cond_13
    move-object v4, p0

    :goto_e
    :try_start_d
    new-instance v2, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Lʿᵢ/ᵔי;->ˈ:Ljava/lang/Object;

    check-cast v8, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".tmp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    :try_start_e
    new-instance v7, Lʿᵢ/ᵔٴ;

    iget-object v8, v4, Lʿᵢ/ᵔי;->ˑﹳ:Ljava/lang/Object;

    check-cast v8, Lʿᵢ/ˏᵢ;

    invoke-direct {v7, v2, v8}, Lʿᵢ/ˊʻ;-><init>(Ljava/io/File;Lʿᵢ/ˏᵢ;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    :try_start_f
    iput-object v4, v1, Lʿᵢ/ᵎˊ;->ˈٴ:Lʿᵢ/ᵔי;

    iput-object p2, v1, Lʿᵢ/ᵎˊ;->ᴵᵔ:Ljava/lang/Object;

    iput-object v2, v1, Lʿᵢ/ᵎˊ;->ˊʻ:Ljava/lang/Object;

    iput-object v7, v1, Lʿᵢ/ᵎˊ;->ٴᵢ:Lʿᵢ/ᵔٴ;

    iput v3, v1, Lʿᵢ/ᵎˊ;->ٴʼ:I

    invoke-interface {p1, v7, v1}, Lᴵⁱ/ʼᐧ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    if-ne p1, v6, :cond_14

    goto :goto_13

    :cond_14
    move-object v3, p2

    move-object v1, v4

    move-object p1, v7

    :goto_f
    :try_start_10
    invoke-interface {p1}, Lʿᵢ/ﹳٴ;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    move-object p1, v5

    goto :goto_10

    :catchall_7
    move-exception p1

    :goto_10
    if-nez p1, :cond_18

    :try_start_11
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, v1, Lʿᵢ/ᵔי;->ˈ:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt p2, v4, :cond_15

    invoke-static {v2, p1}, Lʾﾞ/ˑﹳ;->ˑﹳ(Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    goto :goto_11

    :cond_15
    invoke-virtual {v2, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    :goto_11
    if-eqz p1, :cond_16

    goto :goto_12

    :cond_16
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lʿᵢ/ᵔי;->ˈ:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". This likely means that there are multiple instances of DataStore for this file. Ensure that you are only creating a single instance of datastore for this file."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    :catchall_8
    move-exception p1

    move-object p2, v3

    goto :goto_17

    :catch_3
    move-exception p1

    move-object p2, v3

    goto :goto_16

    :cond_17
    :goto_12
    invoke-interface {v3, v5}, Lﹶי/ﹳٴ;->ᵎﹶ(Ljava/lang/Object;)V

    sget-object v6, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    :goto_13
    return-object v6

    :cond_18
    :try_start_12
    throw p1
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    :catchall_9
    move-exception p1

    move-object v3, p2

    move-object p2, p1

    move-object p1, v7

    :goto_14
    :try_start_13
    invoke-interface {p1}, Lʿᵢ/ﹳٴ;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    goto :goto_15

    :catchall_a
    move-exception p1

    :try_start_14
    invoke-static {p2, p1}, Lʽٴ/ˈ;->ⁱˊ(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_15
    throw p2
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_3
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    :catchall_b
    move-exception p1

    goto :goto_17

    :catch_4
    move-exception p1

    :goto_16
    :try_start_15
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_19
    throw p1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_b

    :goto_17
    invoke-interface {p2, v5}, Lﹶי/ﹳٴ;->ᵎﹶ(Ljava/lang/Object;)V

    throw p1

    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "StorageConnection has already been disposed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
