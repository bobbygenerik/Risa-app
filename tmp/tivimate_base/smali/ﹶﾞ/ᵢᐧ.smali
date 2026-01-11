.class public final Lﹶﾞ/ᵢᐧ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʽʽ:Lﹶﾞ/ˉʽ;

.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:J


# direct methods
.method public constructor <init>(Lﹶﾞ/ˉʽ;JI)V
    .locals 0

    .prologue
    iput p4, p0, Lﹶﾞ/ᵢᐧ;->ʾˋ:I

    packed-switch p4, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lﹶﾞ/ᵢᐧ;->ᴵˊ:J

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lﹶﾞ/ᵢᐧ;->ʽʽ:Lﹶﾞ/ˉʽ;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lﹶﾞ/ᵢᐧ;->ᴵˊ:J

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lﹶﾞ/ᵢᐧ;->ʽʽ:Lﹶﾞ/ˉʽ;

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
    iget v0, p0, Lﹶﾞ/ᵢᐧ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lﹶﾞ/ᵢᐧ;->ʽʽ:Lﹶﾞ/ˉʽ;

    invoke-virtual {v0}, Lﹶﾞ/ʾᵎ;->ⁱᴵ()V

    invoke-virtual {v0}, Lﹶﾞ/ˉʽ;->ʼᵢ()V

    iget-object v1, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v1, Lﹶﾞ/ᵎʻ;

    iget-object v2, v1, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v2, v2, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v3, "Activity paused, time"

    iget-wide v8, p0, Lﹶﾞ/ᵢᐧ;->ᴵˊ:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v0, Lﹶﾞ/ˉʽ;->ٴᵢ:Lـʾ/ᵔﹳ;

    new-instance v4, Lﹶﾞ/ﾞˊ;

    iget-object v2, v5, Lـʾ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ˉʽ;

    iget-object v3, v2, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v3, Lﹶﾞ/ᵎʻ;

    iget-object v3, v3, Lﹶﾞ/ᵎʻ;->ᵎˊ:Lᵎᴵ/ﹳٴ;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct/range {v4 .. v9}, Lﹶﾞ/ﾞˊ;-><init>(Lـʾ/ᵔﹳ;JJ)V

    iput-object v4, v5, Lـʾ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    iget-object v2, v2, Lﹶﾞ/ˉʽ;->ʽʽ:Lcom/google/android/gms/internal/measurement/ˉٴ;

    const-wide/16 v5, 0x7d0

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, v1, Lﹶﾞ/ᵎʻ;->ˈٴ:Lﹶﾞ/ᵎﹶ;

    invoke-virtual {v1}, Lﹶﾞ/ᵎﹶ;->ﹶʽ()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lﹶﾞ/ˉʽ;->ˊʻ:Lʻˆ/ʽ;

    iget-object v0, v0, Lʻˆ/ʽ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ˆʻ;

    invoke-virtual {v0}, Lﹶﾞ/ᵔʾ;->ʽ()V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lﹶﾞ/ᵢᐧ;->ʽʽ:Lﹶﾞ/ˉʽ;

    iget-object v1, v0, Lﹶﾞ/ˉʽ;->ˊʻ:Lʻˆ/ʽ;

    invoke-virtual {v0}, Lﹶﾞ/ʾᵎ;->ⁱᴵ()V

    invoke-virtual {v0}, Lﹶﾞ/ˉʽ;->ʼᵢ()V

    iget-object v2, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ᵎʻ;

    iget-object v3, v2, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v3}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v3, v3, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v4, "Activity resumed, time"

    iget-wide v5, p0, Lﹶﾞ/ᵢᐧ;->ᴵˊ:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v7, v4}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v2, Lﹶﾞ/ᵎʻ;->ˈٴ:Lﹶﾞ/ᵎﹶ;

    sget-object v4, Lﹶﾞ/ᴵᵔ;->ˑˆ:Lﹶﾞ/ˈٴ;

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v4}, Lﹶﾞ/ᵎﹶ;->ˎˉ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lﹶﾞ/ᵎﹶ;->ﹶʽ()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, v0, Lﹶﾞ/ˉʽ;->ˈٴ:Z

    if-eqz v2, :cond_4

    :cond_1
    iget-object v2, v1, Lʻˆ/ʽ;->ˈٴ:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ˉʽ;

    invoke-virtual {v2}, Lﹶﾞ/ʾᵎ;->ⁱᴵ()V

    iget-object v2, v1, Lʻˆ/ʽ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ˆʻ;

    invoke-virtual {v2}, Lﹶﾞ/ᵔʾ;->ʽ()V

    iput-wide v5, v1, Lʻˆ/ʽ;->ʾˋ:J

    iput-wide v5, v1, Lʻˆ/ʽ;->ᴵˊ:J

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lﹶﾞ/ᵎﹶ;->ﹶʽ()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v2, v2, Lﹶﾞ/ᵎʻ;->ᴵᵔ:Lﹶﾞ/ᐧᴵ;

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    iget-object v2, v2, Lﹶﾞ/ᐧᴵ;->ʼˈ:Lﹶﾞ/ᐧﾞ;

    invoke-virtual {v2}, Lﹶﾞ/ᐧﾞ;->ﹳٴ()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, v1, Lʻˆ/ʽ;->ˈٴ:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ˉʽ;

    invoke-virtual {v2}, Lﹶﾞ/ʾᵎ;->ⁱᴵ()V

    iget-object v2, v1, Lʻˆ/ʽ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ˆʻ;

    invoke-virtual {v2}, Lﹶﾞ/ᵔʾ;->ʽ()V

    iput-wide v5, v1, Lʻˆ/ʽ;->ʾˋ:J

    iput-wide v5, v1, Lʻˆ/ʽ;->ᴵˊ:J

    :cond_4
    :goto_0
    iget-object v1, v0, Lﹶﾞ/ˉʽ;->ٴᵢ:Lـʾ/ᵔﹳ;

    iget-object v2, v1, Lـʾ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ˉʽ;

    invoke-virtual {v2}, Lﹶﾞ/ʾᵎ;->ⁱᴵ()V

    iget-object v3, v2, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v3, Lﹶﾞ/ᵎʻ;

    iget-object v1, v1, Lـʾ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lﹶﾞ/ﾞˊ;

    if-eqz v1, :cond_5

    iget-object v4, v2, Lﹶﾞ/ˉʽ;->ʽʽ:Lcom/google/android/gms/internal/measurement/ˉٴ;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_5
    iget-object v1, v3, Lﹶﾞ/ᵎʻ;->ᴵᵔ:Lﹶﾞ/ᐧᴵ;

    iget-object v4, v3, Lﹶﾞ/ᵎʻ;->ˆﾞ:Lﹶﾞ/ˈـ;

    invoke-static {v1}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    iget-object v1, v1, Lﹶﾞ/ᐧᴵ;->ʼˈ:Lﹶﾞ/ᐧﾞ;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lﹶﾞ/ᐧﾞ;->ⁱˊ(Z)V

    invoke-virtual {v2}, Lﹶﾞ/ʾᵎ;->ⁱᴵ()V

    iput-boolean v5, v2, Lﹶﾞ/ˉʽ;->ˈٴ:Z

    iget-object v1, v3, Lﹶﾞ/ᵎʻ;->ˈٴ:Lﹶﾞ/ᵎﹶ;

    sget-object v2, Lﹶﾞ/ᴵᵔ;->ˎʾ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v1, v7, v2}, Lﹶﾞ/ᵎﹶ;->ˎˉ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v4}, Lﹶﾞ/ᵎʻ;->ᵔᵢ(Lﹶﾞ/ٴᵢ;)V

    iget-boolean v1, v4, Lﹶﾞ/ˈـ;->ᵔٴ:Z

    if-eqz v1, :cond_6

    iget-object v1, v3, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v1}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v1, v1, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v2, "Retrying trigger URI registration in foreground"

    invoke-virtual {v1, v2}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    invoke-static {v4}, Lﹶﾞ/ᵎʻ;->ᵔᵢ(Lﹶﾞ/ٴᵢ;)V

    invoke-virtual {v4}, Lﹶﾞ/ˈـ;->ˎـ()V

    :cond_6
    iget-object v0, v0, Lﹶﾞ/ˉʽ;->ᴵᵔ:Lⁱʽ/ﹳٴ;

    iget-object v1, v0, Lⁱʽ/ﹳٴ;->ʾˋ:Ljava/lang/Object;

    check-cast v1, Lﹶﾞ/ˉʽ;

    invoke-virtual {v1}, Lﹶﾞ/ʾᵎ;->ⁱᴵ()V

    iget-object v1, v1, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v1, Lﹶﾞ/ᵎʻ;

    invoke-virtual {v1}, Lﹶﾞ/ᵎʻ;->ﹳٴ()Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_7
    iget-object v1, v1, Lﹶﾞ/ᵎʻ;->ᵎˊ:Lᵎᴵ/ﹳٴ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lⁱʽ/ﹳٴ;->ˉˆ(J)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
