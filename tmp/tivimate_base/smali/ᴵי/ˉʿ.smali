.class public final Lᴵי/ˉʿ;
.super Lᴵי/ʿ;
.source "SourceFile"


# instance fields
.field public final ˊʻ:Ljava/lang/Object;

.field public final synthetic ᴵᵔ:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lᴵי/ˉʿ;->ᴵᵔ:I

    invoke-direct {p0}, Lˊʽ/ˆʾ;-><init>()V

    iput-object p2, p0, Lᴵי/ˉʿ;->ˊʻ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final ˆʾ()Z
    .locals 1

    .prologue
    iget v0, p0, Lᴵי/ˉʿ;->ᴵᵔ:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/4 v0, 0x0

    return v0

    :pswitch_2
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ٴﹶ(Ljava/lang/Throwable;)V
    .locals 7

    .prologue
    iget v0, p0, Lᴵי/ˉʿ;->ᴵᵔ:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lᴵי/ˉʿ;->ˊʻ:Ljava/lang/Object;

    check-cast p1, Lᴵי/ʿᵢ;

    iget-object v0, p0, Lᴵי/ʿ;->ˈٴ:Lᴵי/ᐧᴵ;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lᴵי/ᐧᴵ;->ʾˋ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lᴵי/יـ;

    if-eqz v1, :cond_1

    check-cast v0, Lᴵי/יـ;

    iget-object v0, v0, Lᴵי/יـ;->ﹳٴ:Ljava/lang/Throwable;

    new-instance v1, Lʻᵢ/ﾞᴵ;

    invoke-direct {v1, v0}, Lʻᵢ/ﾞᴵ;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p1, v1}, Lᴵי/ٴﹶ;->ᵔᵢ(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lᴵי/ʾᵎ;->ʻٴ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lᴵי/ٴﹶ;->ᵔᵢ(Ljava/lang/Object;)V

    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lᴵי/ˉʿ;->ˊʻ:Ljava/lang/Object;

    check-cast v0, Lᴵⁱ/ﾞʻ;

    invoke-interface {v0, p1}, Lᴵⁱ/ﾞʻ;->ⁱˊ(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_1
    iget-object p1, p0, Lᴵי/ˉʿ;->ˊʻ:Ljava/lang/Object;

    check-cast p1, Lᴵי/ᵎⁱ;

    invoke-interface {p1}, Lᴵי/ᵎⁱ;->ﹳٴ()V

    return-void

    :pswitch_2
    iget-object p1, p0, Lᴵי/ˉʿ;->ˊʻ:Ljava/lang/Object;

    check-cast p1, Lᴵי/ٴﹶ;

    iget-object v0, p0, Lᴵי/ʿ;->ˈٴ:Lᴵי/ᐧᴵ;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Lᴵי/ٴﹶ;->ˏי(Lᴵי/ᐧᴵ;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p1}, Lᴵי/ٴﹶ;->ʾˋ()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_4

    :cond_3
    iget-object v2, p1, Lᴵי/ٴﹶ;->ˈٴ:Lˈי/ˈ;

    check-cast v2, Lˊʽ/ﾞᴵ;

    sget-object v3, Lˊʽ/ﾞᴵ;->ˉٴ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :goto_3
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lˊʽ/ⁱˊ;->ʽ:Lʻᴵ/ﹳٴ;

    invoke-static {v4, v5}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_4
    invoke-virtual {v3, v2, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v5, :cond_4

    goto :goto_3

    :cond_6
    instance-of v5, v4, Ljava/lang/Throwable;

    if-eqz v5, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v3, v2, v4, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    :goto_4
    invoke-virtual {p1, v0}, Lᴵי/ٴﹶ;->ᵔﹳ(Ljava/lang/Throwable;)Z

    invoke-virtual {p1}, Lᴵי/ٴﹶ;->ʾˋ()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lᴵי/ٴﹶ;->ﹳᐧ()V

    :cond_8
    :goto_5
    return-void

    :cond_9
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v4, :cond_7

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
