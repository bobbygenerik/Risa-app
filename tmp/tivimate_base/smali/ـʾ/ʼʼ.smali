.class public final Lـʾ/ʼʼ;
.super Lᴵʾ/ᵔᵢ;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ʼᐧ;


# instance fields
.field public ˊʻ:I

.field public final synthetic ٴᵢ:Lـʾ/ʾˋ;

.field public final synthetic ᴵᵔ:I


# direct methods
.method public synthetic constructor <init>(Lـʾ/ʾˋ;Lˈי/ˈ;I)V
    .locals 0

    iput p3, p0, Lـʾ/ʼʼ;->ᴵᵔ:I

    iput-object p1, p0, Lـʾ/ʼʼ;->ٴᵢ:Lـʾ/ʾˋ;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lᴵʾ/ᵔᵢ;-><init>(ILˈי/ˈ;)V

    return-void
.end method


# virtual methods
.method public final ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    iget v0, p0, Lـʾ/ʼʼ;->ᴵᵔ:I

    check-cast p1, Lᴵי/ـˆ;

    check-cast p2, Lˈי/ˈ;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lـʾ/ʼʼ;->ˉˆ(Ljava/lang/Object;Lˈי/ˈ;)Lˈי/ˈ;

    move-result-object p1

    check-cast p1, Lـʾ/ʼʼ;

    sget-object p2, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    invoke-virtual {p1, p2}, Lـʾ/ʼʼ;->ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lـʾ/ʼʼ;->ˉˆ(Ljava/lang/Object;Lˈי/ˈ;)Lˈי/ˈ;

    move-result-object p1

    check-cast p1, Lـʾ/ʼʼ;

    sget-object p2, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    invoke-virtual {p1, p2}, Lـʾ/ʼʼ;->ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ˉˆ(Ljava/lang/Object;Lˈי/ˈ;)Lˈי/ˈ;
    .locals 2

    .prologue
    iget p1, p0, Lـʾ/ʼʼ;->ᴵᵔ:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lـʾ/ʼʼ;

    iget-object v0, p0, Lـʾ/ʼʼ;->ٴᵢ:Lـʾ/ʾˋ;

    const/4 v1, 0x1

    invoke-direct {p1, v0, p2, v1}, Lـʾ/ʼʼ;-><init>(Lـʾ/ʾˋ;Lˈי/ˈ;I)V

    return-object p1

    :pswitch_0
    new-instance p1, Lـʾ/ʼʼ;

    iget-object v0, p0, Lـʾ/ʼʼ;->ٴᵢ:Lـʾ/ʾˋ;

    const/4 v1, 0x0

    invoke-direct {p1, v0, p2, v1}, Lـʾ/ʼʼ;-><init>(Lـʾ/ʾˋ;Lˈי/ˈ;I)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    iget v0, p0, Lـʾ/ʼʼ;->ᴵᵔ:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lـʾ/ʼʼ;->ˊʻ:I

    iget-object v1, p0, Lـʾ/ʼʼ;->ٴᵢ:Lـʾ/ʾˋ;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroidx/work/impl/WorkerStoppedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    :try_start_1
    iget-object p1, v1, Lـʾ/ʾˋ;->ˉʿ:Lᴵי/ˉـ;

    new-instance v0, Lـʾ/ʼʼ;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v3}, Lـʾ/ʼʼ;-><init>(Lـʾ/ʾˋ;Lˈי/ˈ;I)V

    iput v2, p0, Lـʾ/ʼʼ;->ˊʻ:I

    invoke-static {p1, v0, p0}, Lᴵי/ʾᵎ;->ʾᵎ(Lˈי/ᵔᵢ;Lᴵⁱ/ʼᐧ;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Landroidx/work/impl/WorkerStoppedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v0, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p1, v0, :cond_2

    goto :goto_4

    :cond_2
    :goto_0
    :try_start_2
    check-cast p1, Lـʾ/ʾᵎ;
    :try_end_2
    .catch Landroidx/work/impl/WorkerStoppedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_1
    sget-object v0, Lـʾ/ᴵˊ;->ﹳٴ:Ljava/lang/String;

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v2

    const-string v3, "Unexpected error in WorkerWrapper"

    invoke-virtual {v2, v0, v3, p1}, Lᴵˋ/ˏי;->ˈ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Lـʾ/ʽﹳ;

    invoke-direct {p1}, Lـʾ/ʽﹳ;-><init>()V

    goto :goto_3

    :catch_1
    new-instance p1, Lـʾ/ʽﹳ;

    invoke-direct {p1}, Lـʾ/ʽﹳ;-><init>()V

    goto :goto_3

    :goto_2
    new-instance v0, Lـʾ/ـˆ;

    iget p1, p1, Landroidx/work/impl/WorkerStoppedException;->ʾˋ:I

    invoke-direct {v0, p1}, Lـʾ/ـˆ;-><init>(I)V

    move-object p1, v0

    :goto_3
    iget-object v0, v1, Lـʾ/ʾˋ;->ᵔᵢ:Landroidx/work/impl/WorkDatabase;

    new-instance v2, Lcom/parse/ٴﹶ;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3, v1}, Lcom/parse/ٴﹶ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    new-instance p1, Landroidx/lifecycle/ـˏ;

    const/16 v1, 0xc

    invoke-direct {p1, v1, v2}, Landroidx/lifecycle/ـˏ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, p1}, Lʼﾞ/ˊʻ;->ʼᐧ(Lᴵⁱ/ﹳٴ;)Ljava/lang/Object;

    move-result-object v0

    :goto_4
    return-object v0

    :pswitch_0
    iget v0, p0, Lـʾ/ʼʼ;->ˊʻ:I

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-ne v0, v1, :cond_3

    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    goto :goto_5

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iput v1, p0, Lـʾ/ʼʼ;->ˊʻ:I

    iget-object p1, p0, Lـʾ/ʼʼ;->ٴᵢ:Lـʾ/ʾˋ;

    invoke-static {p1, p0}, Lـʾ/ʾˋ;->ﹳٴ(Lـʾ/ʾˋ;Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p1, v0, :cond_5

    move-object p1, v0

    :cond_5
    :goto_5
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
