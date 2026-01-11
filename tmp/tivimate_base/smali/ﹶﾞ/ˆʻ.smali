.class public final Lﹶﾞ/ˆʻ;
.super Lﹶﾞ/ᵔʾ;
.source "SourceFile"


# instance fields
.field public final synthetic ˑﹳ:I

.field public final synthetic ﾞᴵ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lﹶﾞ/יﹳ;I)V
    .locals 0

    iput p3, p0, Lﹶﾞ/ˆʻ;->ˑﹳ:I

    iput-object p1, p0, Lﹶﾞ/ˆʻ;->ﾞᴵ:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lﹶﾞ/ᵔʾ;-><init>(Lﹶﾞ/יﹳ;)V

    return-void
.end method


# virtual methods
.method public final ﹳٴ()V
    .locals 5

    .prologue
    iget v0, p0, Lﹶﾞ/ˆʻ;->ˑﹳ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lﹶﾞ/ˆʻ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵢי;

    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v1

    invoke-virtual {v1}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    iget-object v1, v0, Lﹶﾞ/ᵢי;->ˋᵔ:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ᵎˊ()Lᵎᴵ/ﹳٴ;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lﹶﾞ/ᵢי;->ˈˏ:J

    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v2

    iget-object v2, v2, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v3, "Sending trigger URI notification to app"

    invoke-virtual {v2, v1, v3}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.google.android.gms.measurement.TRIGGERS_AVAILABLE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, v0, Lﹶﾞ/ᵢי;->ᵔי:Lﹶﾞ/ᵎʻ;

    iget-object v1, v1, Lﹶﾞ/ᵎʻ;->ʾˋ:Landroid/content/Context;

    invoke-static {v1, v2}, Lﹶﾞ/ᵢי;->ʼˈ(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ˊʻ()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lﹶﾞ/ˆʻ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ʻˆ;

    invoke-virtual {v0}, Lﹶﾞ/ʻˆ;->ʼᵢ()V

    iget-object v1, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v1, Lﹶﾞ/ᵎʻ;

    iget-object v1, v1, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v1}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v1, v1, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v2, "Starting upload from DelayedRunnable"

    invoke-virtual {v1, v2}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    iget-object v0, v0, Lﹶﾞ/ˏʻ;->ᴵˊ:Lﹶﾞ/ᵢי;

    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ˉʿ()V

    return-void

    :pswitch_1
    iget-object v0, p0, Lﹶﾞ/ˆʻ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v0, Lʻˆ/ʽ;

    iget-object v1, v0, Lʻˆ/ʽ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Lﹶﾞ/ˉʽ;

    invoke-virtual {v1}, Lﹶﾞ/ʾᵎ;->ⁱᴵ()V

    iget-object v1, v1, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v1, Lﹶﾞ/ᵎʻ;

    iget-object v2, v1, Lﹶﾞ/ᵎʻ;->ᵎˊ:Lᵎᴵ/ﹳٴ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v4}, Lʻˆ/ʽ;->ﹳٴ(JZZ)Z

    iget-object v0, v1, Lﹶﾞ/ᵎʻ;->ᵔٴ:Lﹶﾞ/ـˆ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ˑﹳ(Lﹶﾞ/ʾᵎ;)V

    iget-object v1, v1, Lﹶﾞ/ᵎʻ;->ᵎˊ:Lᵎᴵ/ﹳٴ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lﹶﾞ/ـˆ;->ˋˊ(J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
