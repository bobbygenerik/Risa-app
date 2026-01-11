.class public final Lʿᵢ/ﾞᴵ;
.super Lᴵʾ/ᵔᵢ;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ʼᐧ;


# instance fields
.field public ˉٴ:Ljava/lang/Object;

.field public ˊʻ:I

.field public synthetic ٴʼ:Ljava/lang/Object;

.field public ٴᵢ:Ljava/lang/Object;

.field public final synthetic ᴵᵔ:I

.field public final synthetic ᵎˊ:Ljava/lang/Object;

.field public ᵎⁱ:Ljava/lang/Object;

.field public final synthetic ᵔי:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/ArrayList;Lˈי/ˈ;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lʿᵢ/ﾞᴵ;->ᴵᵔ:I

    iput-object p1, p0, Lʿᵢ/ﾞᴵ;->ᵎˊ:Ljava/lang/Object;

    iput-object p2, p0, Lʿᵢ/ﾞᴵ;->ᵔי:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lᴵʾ/ᵔᵢ;-><init>(ILˈי/ˈ;)V

    return-void
.end method

.method public constructor <init>(Lᴵˋ/יـ;Lʼﹳ/ᵎﹶ;Lˑᵎ/ﹳᐧ;Lˈי/ˈ;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lʿᵢ/ﾞᴵ;->ᴵᵔ:I

    iput-object p1, p0, Lʿᵢ/ﾞᴵ;->ٴʼ:Ljava/lang/Object;

    iput-object p2, p0, Lʿᵢ/ﾞᴵ;->ᵎˊ:Ljava/lang/Object;

    iput-object p3, p0, Lʿᵢ/ﾞᴵ;->ᵔי:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lᴵʾ/ᵔᵢ;-><init>(ILˈי/ˈ;)V

    return-void
.end method


# virtual methods
.method public final ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    iget v0, p0, Lʿᵢ/ﾞᴵ;->ᴵᵔ:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lᴵי/ـˆ;

    check-cast p2, Lˈי/ˈ;

    invoke-virtual {p0, p1, p2}, Lʿᵢ/ﾞᴵ;->ˉˆ(Ljava/lang/Object;Lˈי/ˈ;)Lˈי/ˈ;

    move-result-object p1

    check-cast p1, Lʿᵢ/ﾞᴵ;

    sget-object p2, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    invoke-virtual {p1, p2}, Lʿᵢ/ﾞᴵ;->ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast p2, Lˈי/ˈ;

    invoke-virtual {p0, p1, p2}, Lʿᵢ/ﾞᴵ;->ˉˆ(Ljava/lang/Object;Lˈי/ˈ;)Lˈי/ˈ;

    move-result-object p1

    check-cast p1, Lʿᵢ/ﾞᴵ;

    sget-object p2, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    invoke-virtual {p1, p2}, Lʿᵢ/ﾞᴵ;->ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ˉˆ(Ljava/lang/Object;Lˈי/ˈ;)Lˈי/ˈ;
    .locals 4

    .prologue
    iget v0, p0, Lʿᵢ/ﾞᴵ;->ᴵᵔ:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lʿᵢ/ﾞᴵ;

    iget-object v1, p0, Lʿᵢ/ﾞᴵ;->ٴʼ:Ljava/lang/Object;

    check-cast v1, Lᴵˋ/יـ;

    iget-object v2, p0, Lʿᵢ/ﾞᴵ;->ᵎˊ:Ljava/lang/Object;

    check-cast v2, Lʼﹳ/ᵎﹶ;

    iget-object v3, p0, Lʿᵢ/ﾞᴵ;->ᵔי:Ljava/lang/Object;

    check-cast v3, Lˑᵎ/ﹳᐧ;

    invoke-direct {v0, v1, v2, v3, p2}, Lʿᵢ/ﾞᴵ;-><init>(Lᴵˋ/יـ;Lʼﹳ/ᵎﹶ;Lˑᵎ/ﹳᐧ;Lˈי/ˈ;)V

    iput-object p1, v0, Lʿᵢ/ﾞᴵ;->ٴᵢ:Ljava/lang/Object;

    return-object v0

    :pswitch_0
    new-instance v0, Lʿᵢ/ﾞᴵ;

    iget-object v1, p0, Lʿᵢ/ﾞᴵ;->ᵎˊ:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lʿᵢ/ﾞᴵ;->ᵔי:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, p2}, Lʿᵢ/ﾞᴵ;-><init>(Ljava/util/List;Ljava/util/ArrayList;Lˈי/ˈ;)V

    iput-object p1, v0, Lʿᵢ/ﾞᴵ;->ٴʼ:Ljava/lang/Object;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .prologue
    iget v0, p0, Lʿᵢ/ﾞᴵ;->ᴵᵔ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʿᵢ/ﾞᴵ;->ٴʼ:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lᴵˋ/יـ;

    iget v0, p0, Lʿᵢ/ﾞᴵ;->ˊʻ:I

    const/4 v2, 0x0

    const/16 v3, -0x100

    const/4 v4, 0x1

    const-string v5, "Delegated worker "

    if-eqz v0, :cond_1

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lʿᵢ/ﾞᴵ;->ᵎⁱ:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lᴵי/ˈˏ;

    iget-object v0, p0, Lʿᵢ/ﾞᴵ;->ˉٴ:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lˈˊ/ﹳᐧ;

    iget-object v0, p0, Lʿᵢ/ﾞᴵ;->ٴᵢ:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Ljava/util/concurrent/atomic/AtomicInteger;

    :try_start_0
    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iget-object p1, p0, Lʿᵢ/ﾞᴵ;->ٴᵢ:Ljava/lang/Object;

    check-cast p1, Lᴵי/ـˆ;

    new-instance v9, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v9, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-virtual {v1}, Lᴵˋ/יـ;->ˈ()Lʽﹳ/ٴﹶ;

    move-result-object v10

    new-instance v6, Lʼⁱ/ˏⁱ;

    iget-object v0, p0, Lʿᵢ/ﾞᴵ;->ᵎˊ:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lʼﹳ/ᵎﹶ;

    iget-object v0, p0, Lʿᵢ/ﾞᴵ;->ᵔי:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lˑᵎ/ﹳᐧ;

    const/4 v11, 0x0

    const/16 v12, 0xd

    invoke-direct/range {v6 .. v12}, Lʼⁱ/ˏⁱ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lˈי/ˈ;I)V

    const/4 v0, 0x3

    invoke-static {p1, v2, v6, v0}, Lᴵי/ʾᵎ;->ˉˆ(Lᴵי/ـˆ;Lˈי/ᵔᵢ;Lᴵⁱ/ʼᐧ;I)Lᴵי/ˈˏ;

    move-result-object v6

    :try_start_1
    iput-object v9, p0, Lʿᵢ/ﾞᴵ;->ٴᵢ:Ljava/lang/Object;

    iput-object v10, p0, Lʿᵢ/ﾞᴵ;->ˉٴ:Ljava/lang/Object;

    iput-object v6, p0, Lʿᵢ/ﾞᴵ;->ᵎⁱ:Ljava/lang/Object;

    iput v4, p0, Lʿᵢ/ﾞᴵ;->ˊʻ:I

    invoke-static {v10, p0}, Lcom/google/android/gms/internal/measurement/ᵎ;->ﹳٴ(Lˈˊ/ﹳᐧ;Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v0, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v8, v9

    move-object v7, v10

    :goto_0
    :try_start_2
    move-object v0, p1

    check-cast v0, Lᴵˋ/ﹳᐧ;
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v6, v2}, Lᴵי/ᴵˑ;->ᵎﹶ(Ljava/util/concurrent/CancellationException;)V

    :goto_1
    return-object v0

    :catch_1
    move-exception v0

    move-object p1, v0

    move-object v8, v9

    move-object v7, v10

    goto :goto_3

    :goto_2
    :try_start_3
    sget-object v0, Lﹶﹳ/ﾞᴵ;->ﹳٴ:Ljava/lang/String;

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " threw exception in startWork."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1, p1}, Lᴵˋ/ˏי;->ⁱˊ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_5

    :goto_3
    sget-object v0, Lﹶﹳ/ﾞᴵ;->ﹳٴ:Ljava/lang/String;

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " was cancelled"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1, p1}, Lᴵˋ/ˏי;->ⁱˊ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq v0, v3, :cond_3

    goto :goto_4

    :cond_3
    const/4 v4, 0x0

    :goto_4
    invoke-interface {v7}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v4, :cond_4

    new-instance p1, Lﹶﹳ/ﹳٴ;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {p1, v0}, Lﹶﹳ/ﹳٴ;-><init>(I)V

    throw p1

    :cond_4
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_5
    invoke-interface {v6, v2}, Lᴵי/ᴵˑ;->ᵎﹶ(Ljava/util/concurrent/CancellationException;)V

    throw p1

    :pswitch_0
    iget v0, p0, Lʿᵢ/ﾞᴵ;->ˊʻ:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    sget-object v3, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-eqz v0, :cond_7

    if-eq v0, v2, :cond_6

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lʿᵢ/ﾞᴵ;->ˉٴ:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    iget-object v4, p0, Lʿᵢ/ﾞᴵ;->ٴʼ:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    goto :goto_6

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    iget-object v0, p0, Lʿᵢ/ﾞᴵ;->ٴᵢ:Ljava/lang/Object;

    iget-object v4, p0, Lʿᵢ/ﾞᴵ;->ᵎⁱ:Ljava/lang/Object;

    check-cast v4, Lᐧᴵ/ʽ;

    iget-object v5, p0, Lʿᵢ/ﾞᴵ;->ˉٴ:Ljava/lang/Object;

    check-cast v5, Ljava/util/Iterator;

    iget-object v6, p0, Lʿᵢ/ﾞᴵ;->ٴʼ:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    move-object v13, v6

    move-object v6, v4

    move-object v4, v13

    goto :goto_7

    :cond_7
    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iget-object p1, p0, Lʿᵢ/ﾞᴵ;->ٴʼ:Ljava/lang/Object;

    iget-object v0, p0, Lʿᵢ/ﾞᴵ;->ᵎˊ:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v4, p0, Lʿᵢ/ﾞᴵ;->ᵔי:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lᐧᴵ/ʽ;

    iput-object v4, p0, Lʿᵢ/ﾞᴵ;->ٴʼ:Ljava/lang/Object;

    iput-object v0, p0, Lʿᵢ/ﾞᴵ;->ˉٴ:Ljava/lang/Object;

    iput-object v5, p0, Lʿᵢ/ﾞᴵ;->ᵎⁱ:Ljava/lang/Object;

    iput-object p1, p0, Lʿᵢ/ﾞᴵ;->ٴᵢ:Ljava/lang/Object;

    iput v2, p0, Lʿᵢ/ﾞᴵ;->ˊʻ:I

    invoke-virtual {v5, p1, p0}, Lᐧᴵ/ʽ;->ﹳٴ(Ljava/lang/Object;Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_8

    goto :goto_9

    :cond_8
    move-object v13, v0

    move-object v0, p1

    move-object p1, v6

    move-object v6, v5

    move-object v5, v13

    :goto_7
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_a

    new-instance p1, Lʿᵢ/ˑﹳ;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p1, v6, v8, v7}, Lʿᵢ/ˑﹳ;-><init>(Ljava/lang/Object;Lˈי/ˈ;I)V

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v4, p0, Lʿᵢ/ﾞᴵ;->ٴʼ:Ljava/lang/Object;

    iput-object v5, p0, Lʿᵢ/ﾞᴵ;->ˉٴ:Ljava/lang/Object;

    iput-object v8, p0, Lʿᵢ/ﾞᴵ;->ᵎⁱ:Ljava/lang/Object;

    iput-object v8, p0, Lʿᵢ/ﾞᴵ;->ٴᵢ:Ljava/lang/Object;

    iput v1, p0, Lʿᵢ/ﾞᴵ;->ˊʻ:I

    iget-object p1, v6, Lᐧᴵ/ʽ;->ⁱˊ:Lˏᵢ/ʼˎ;

    new-instance v7, Lᐧᴵ/ˑﹳ;

    iget-object v8, v6, Lᐧᴵ/ʽ;->ˑﹳ:Lʻᵢ/ʼˎ;

    invoke-virtual {v8}, Lʻᵢ/ʼˎ;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/SharedPreferences;

    iget-object v6, v6, Lᐧᴵ/ʽ;->ﾞᴵ:Ljava/util/Set;

    invoke-direct {v7, v8, v6}, Lᐧᴵ/ˑﹳ;-><init>(Landroid/content/SharedPreferences;Ljava/util/Set;)V

    invoke-virtual {p1, v7, v0, p0}, Lˏᵢ/ʼˎ;->ᵎﹶ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v3, :cond_9

    goto :goto_9

    :cond_9
    :goto_8
    move-object v0, v5

    goto :goto_6

    :cond_a
    move-object p1, v0

    goto :goto_8

    :cond_b
    move-object v3, p1

    :goto_9
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
