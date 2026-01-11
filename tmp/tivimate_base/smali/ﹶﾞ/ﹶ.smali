.class public final Lﹶﾞ/ﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʽʽ:Lﹶﾞ/ˈـ;

.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:J


# direct methods
.method public constructor <init>(Lﹶﾞ/ˈـ;JI)V
    .locals 0

    .prologue
    iput p4, p0, Lﹶﾞ/ﹶ;->ʾˋ:I

    packed-switch p4, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lﹶﾞ/ﹶ;->ᴵˊ:J

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lﹶﾞ/ﹶ;->ʽʽ:Lﹶﾞ/ˈـ;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lﹶﾞ/ﹶ;->ᴵˊ:J

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lﹶﾞ/ﹶ;->ʽʽ:Lﹶﾞ/ˈـ;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    iget v0, p0, Lﹶﾞ/ﹶ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lﹶﾞ/ﹶ;->ʽʽ:Lﹶﾞ/ˈـ;

    invoke-virtual {v0}, Lﹶﾞ/ʾᵎ;->ⁱᴵ()V

    invoke-virtual {v0}, Lﹶﾞ/ٴᵢ;->ﹶˎ()V

    iget-object v1, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v1, Lﹶﾞ/ᵎʻ;

    iget-object v2, v1, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v2, v2, Lﹶﾞ/ﹳـ;->ˆﾞ:Lﹶﾞ/ʼˈ;

    const-string v3, "Resetting analytics data (FE)"

    invoke-virtual {v2, v3}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    iget-object v2, v1, Lﹶﾞ/ᵎʻ;->ˉٴ:Lﹶﾞ/ˉʽ;

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ᵔᵢ(Lﹶﾞ/ٴᵢ;)V

    invoke-virtual {v2}, Lﹶﾞ/ʾᵎ;->ⁱᴵ()V

    iget-object v3, v2, Lﹶﾞ/ˉʽ;->ˊʻ:Lʻˆ/ʽ;

    iget-object v4, v3, Lʻˆ/ʽ;->ʽʽ:Ljava/lang/Object;

    check-cast v4, Lﹶﾞ/ˆʻ;

    invoke-virtual {v4}, Lﹶﾞ/ᵔʾ;->ʽ()V

    iget-object v4, v3, Lʻˆ/ʽ;->ˈٴ:Ljava/lang/Object;

    check-cast v4, Lﹶﾞ/ˉʽ;

    iget-object v4, v4, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v4, Lﹶﾞ/ᵎʻ;

    iget-object v4, v4, Lﹶﾞ/ᵎʻ;->ᵎˊ:Lᵎᴵ/ﹳٴ;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v3, Lʻˆ/ʽ;->ʾˋ:J

    iput-wide v4, v3, Lʻˆ/ʽ;->ᴵˊ:J

    invoke-virtual {v1}, Lﹶﾞ/ᵎʻ;->ᵔʾ()Lﹶﾞ/ˆﾞ;

    move-result-object v3

    invoke-virtual {v3}, Lﹶﾞ/ˆﾞ;->יˉ()V

    invoke-virtual {v1}, Lﹶﾞ/ᵎʻ;->ﹳٴ()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    iget-object v4, v1, Lﹶﾞ/ᵎʻ;->ᴵᵔ:Lﹶﾞ/ᐧᴵ;

    invoke-static {v4}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    iget-object v5, v4, Lﹶﾞ/ᐧᴵ;->ˊʻ:Lⁱי/ʻᵎ;

    iget-wide v6, p0, Lﹶﾞ/ﹶ;->ᴵˊ:J

    invoke-virtual {v5, v6, v7}, Lⁱי/ʻᵎ;->ᵔᵢ(J)V

    iget-object v5, v4, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v5, Lﹶﾞ/ᵎʻ;

    iget-object v6, v5, Lﹶﾞ/ᵎʻ;->ᴵᵔ:Lﹶﾞ/ᐧᴵ;

    invoke-static {v6}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    iget-object v6, v6, Lﹶﾞ/ᐧᴵ;->ˈⁱ:Lcom/bumptech/glide/ʼˎ;

    invoke-virtual {v6}, Lcom/bumptech/glide/ʼˎ;->ˉʿ()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    iget-object v6, v4, Lﹶﾞ/ᐧᴵ;->ˈⁱ:Lcom/bumptech/glide/ʼˎ;

    invoke-virtual {v6, v7}, Lcom/bumptech/glide/ʼˎ;->ᵔʾ(Ljava/lang/String;)V

    :cond_0
    iget-object v6, v4, Lﹶﾞ/ᐧᴵ;->ˑٴ:Lⁱי/ʻᵎ;

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Lⁱי/ʻᵎ;->ᵔᵢ(J)V

    iget-object v6, v4, Lﹶﾞ/ᐧᴵ;->ˋᵔ:Lⁱי/ʻᵎ;

    invoke-virtual {v6, v8, v9}, Lⁱי/ʻᵎ;->ᵔᵢ(J)V

    iget-object v5, v5, Lﹶﾞ/ᵎʻ;->ˈٴ:Lﹶﾞ/ᵎﹶ;

    invoke-virtual {v5}, Lﹶﾞ/ᵎﹶ;->ˋـ()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4, v3}, Lﹶﾞ/ᐧᴵ;->ˑˆ(Z)V

    :cond_1
    iget-object v5, v4, Lﹶﾞ/ᐧᴵ;->ᴵˑ:Lcom/bumptech/glide/ʼˎ;

    invoke-virtual {v5, v7}, Lcom/bumptech/glide/ʼˎ;->ᵔʾ(Ljava/lang/String;)V

    iget-object v5, v4, Lﹶﾞ/ᐧᴵ;->ˉـ:Lⁱי/ʻᵎ;

    invoke-virtual {v5, v8, v9}, Lⁱי/ʻᵎ;->ᵔᵢ(J)V

    iget-object v4, v4, Lﹶﾞ/ᐧᴵ;->ʿ:Lᐧᵎ/ᵢי;

    invoke-virtual {v4, v7}, Lᐧᵎ/ᵢי;->ᵔﹳ(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Lﹶﾞ/ᵎʻ;->ﾞʻ()Lﹶﾞ/ʿʽ;

    move-result-object v4

    invoke-virtual {v4}, Lﹶﾞ/ʾᵎ;->ⁱᴵ()V

    invoke-virtual {v4}, Lﹶﾞ/ٴᵢ;->ﹶˎ()V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lﹶﾞ/ʿʽ;->ٴʿ(Z)Lﹶﾞ/ʻᐧ;

    move-result-object v5

    invoke-virtual {v4}, Lﹶﾞ/ʿʽ;->ᵢˋ()V

    iget-object v6, v4, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v6, Lﹶﾞ/ᵎʻ;

    invoke-virtual {v6}, Lﹶﾞ/ᵎʻ;->ٴﹶ()Lﹶﾞ/ˈʿ;

    move-result-object v6

    invoke-virtual {v6}, Lﹶﾞ/ˈʿ;->ʼᵢ()V

    new-instance v6, Lﹶﾞ/ˊﹳ;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v5, v7}, Lﹶﾞ/ˊﹳ;-><init>(Lﹶﾞ/ʿʽ;Lﹶﾞ/ʻᐧ;I)V

    invoke-virtual {v4, v6}, Lﹶﾞ/ʿʽ;->ﹶʽ(Ljava/lang/Runnable;)V

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ᵔᵢ(Lﹶﾞ/ٴᵢ;)V

    iget-object v2, v2, Lﹶﾞ/ˉʽ;->ᴵᵔ:Lⁱʽ/ﹳٴ;

    invoke-virtual {v2}, Lⁱʽ/ﹳٴ;->ᵔʾ()V

    iput-boolean v3, v0, Lﹶﾞ/ˈـ;->ʼˈ:Z

    invoke-virtual {v1}, Lﹶﾞ/ᵎʻ;->ﾞʻ()Lﹶﾞ/ʿʽ;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {v0, v1}, Lﹶﾞ/ʿʽ;->ʼᵢ(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lﹶﾞ/ﹶ;->ʽʽ:Lﹶﾞ/ˈـ;

    iget-object v0, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v1, v0, Lﹶﾞ/ᵎʻ;->ᴵᵔ:Lﹶﾞ/ᐧᴵ;

    invoke-static {v1}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    iget-object v1, v1, Lﹶﾞ/ᐧᴵ;->ᵎˊ:Lⁱי/ʻᵎ;

    iget-wide v2, p0, Lﹶﾞ/ﹶ;->ᴵˊ:J

    invoke-virtual {v1, v2, v3}, Lⁱי/ʻᵎ;->ᵔᵢ(J)V

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ˆﾞ:Lﹶﾞ/ʼˈ;

    const-string v1, "Session timeout duration set"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
