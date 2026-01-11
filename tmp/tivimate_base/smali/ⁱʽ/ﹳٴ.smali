.class public final Lⁱʽ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﾞˎ/ⁱˊ;
.implements Lⁱᴵ/ʽﹳ;
.implements Lˏـ/ﾞᴵ;
.implements Lˋᵔ/ʼˎ;
.implements Lﹶﾞ/יˑ;
.implements Lﹶﾞ/ᴵˑ;
.implements Lﾞˏ/ˈٴ;
.implements Landroidx/leanback/widget/ˈˏ;


# instance fields
.field public ʾˋ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .prologue
    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lʼˊ/ʽ;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-direct {p1, v2, v0, v1}, Lʼˊ/ʽ;-><init>(IFZ)V

    iput-object p1, p0, Lⁱʽ/ﹳٴ;->ʾˋ:Ljava/lang/Object;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lⁱʽ/ﹳٴ;->ʾˋ:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lⁱʽ/ﹳٴ;->ʾˋ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ʼᐧ(Ljava/lang/String;)Lⁱʽ/ﹳٴ;
    .locals 2

    .prologue
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lﹶﾞ/ᐧˎ;->ˑﹳ(C)Lﹶﾞ/ʽⁱ;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Lﹶﾞ/ʽⁱ;->ᴵˊ:Lﹶﾞ/ʽⁱ;

    :goto_1
    new-instance v0, Lⁱʽ/ﹳٴ;

    invoke-direct {v0, p0}, Lⁱʽ/ﹳٴ;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public update([B)V
    .locals 1

    iget-object v0, p0, Lⁱʽ/ﹳٴ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method

.method public ʼˎ()V
    .locals 1

    .prologue
    iget-object v0, p0, Lⁱʽ/ﹳٴ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﾞˏ/ˆʾ;

    iget-object v0, v0, Lʼᵢ/ᵔﹳ;->ـﹶ:Lⁱי/ʾˋ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lⁱי/ʾˋ;->ﹳٴ()V

    :cond_0
    return-void
.end method

.method public ʽ(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8

    .prologue
    iget-object p2, p0, Lⁱʽ/ﹳٴ;->ʾˋ:Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Lﹶﾞ/ˈـ;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast p1, Lﹶﾞ/ᵎʻ;

    iget-object p1, p1, Lﹶﾞ/ᵎʻ;->ᵎˊ:Lᵎᴵ/ﹳٴ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string v1, "auto"

    const-string v2, "_err"

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lﹶﾞ/ˈـ;->יˉ(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unexpected call on client side"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ˆʾ(Lⁱᴵ/ʼᐧ;)[B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public ˈ()[B
    .locals 1

    iget-object v0, p0, Lⁱʽ/ﹳٴ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0
.end method

.method public ˉʿ()V
    .locals 1

    iget-object v0, p0, Lⁱʽ/ﹳٴ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->ˈٴ:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    return-void
.end method

.method public ˉˆ(J)V
    .locals 4

    .prologue
    iget-object v0, p0, Lⁱʽ/ﹳٴ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ˉʽ;

    invoke-virtual {v0}, Lﹶﾞ/ʾᵎ;->ⁱᴵ()V

    invoke-virtual {v0}, Lﹶﾞ/ˉʽ;->ʼᵢ()V

    iget-object v0, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v1, v0, Lﹶﾞ/ᵎʻ;->ᴵᵔ:Lﹶﾞ/ᐧᴵ;

    invoke-static {v1}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    invoke-virtual {v1, p1, p2}, Lﹶﾞ/ᐧᴵ;->ˎˉ(J)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    iget-object v2, v1, Lﹶﾞ/ᐧᴵ;->ᵔי:Lﹶﾞ/ᐧﾞ;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lﹶﾞ/ᐧﾞ;->ⁱˊ(Z)V

    invoke-virtual {v0}, Lﹶﾞ/ᵎʻ;->ᵔʾ()Lﹶﾞ/ˆﾞ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ˆﾞ;->יˉ()V

    :cond_0
    invoke-static {v1}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    iget-object v0, v1, Lﹶﾞ/ᐧᴵ;->ˑٴ:Lⁱי/ʻᵎ;

    invoke-virtual {v0, p1, p2}, Lⁱי/ʻᵎ;->ᵔᵢ(J)V

    iget-object v0, v1, Lﹶﾞ/ᐧᴵ;->ᵔי:Lﹶﾞ/ᐧﾞ;

    invoke-virtual {v0}, Lﹶﾞ/ᐧﾞ;->ﹳٴ()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lⁱʽ/ﹳٴ;->ᵔﹳ(J)V

    :cond_1
    return-void
.end method

.method public ˑﹳ()V
    .locals 7

    .prologue
    iget-object v0, p0, Lⁱʽ/ﹳٴ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﾞˏ/ˆʾ;

    iget-object v1, v0, Lﾞˏ/ˆʾ;->ˑﹶ:Landroid/view/Surface;

    if-eqz v1, :cond_1

    iget-object v2, v0, Lﾞˏ/ˆʾ;->ʽʾ:Lـʾ/ᵔﹳ;

    iget-object v3, v2, Lـʾ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v3, Landroid/os/Handler;

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    new-instance v6, Lﹳˎ/ʼᐧ;

    invoke-direct {v6, v2, v1, v4, v5}, Lﹳˎ/ʼᐧ;-><init>(Lـʾ/ᵔﹳ;Ljava/lang/Object;J)V

    invoke-virtual {v3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lﾞˏ/ˆʾ;->ˏʻ:Z

    :cond_1
    return-void
.end method

.method public ٴﹶ()F
    .locals 1

    iget-object v0, p0, Lⁱʽ/ﹳٴ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0}, Landroidx/core/widget/NestedScrollView;->getVerticalScrollFactorCompat()F

    move-result v0

    neg-float v0, v0

    return v0
.end method

.method public ᵎﹶ(Ljava/util/UUID;Lⁱᴵ/ˉˆ;)[B
    .locals 0

    iget-object p1, p0, Lⁱʽ/ﹳٴ;->ʾˋ:Ljava/lang/Object;

    check-cast p1, [B

    return-object p1
.end method

.method public ᵔʾ()V
    .locals 5

    .prologue
    iget-object v0, p0, Lⁱʽ/ﹳٴ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ˉʽ;

    invoke-virtual {v0}, Lﹶﾞ/ʾᵎ;->ⁱᴵ()V

    iget-object v0, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v1, v0, Lﹶﾞ/ᵎʻ;->ᴵᵔ:Lﹶﾞ/ᐧᴵ;

    invoke-static {v1}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    iget-object v2, v0, Lﹶﾞ/ᵎʻ;->ᵎˊ:Lᵎᴵ/ﹳٴ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lﹶﾞ/ᐧᴵ;->ˎˉ(J)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lﹶﾞ/ᵎʻ;->ᴵᵔ:Lﹶﾞ/ᐧᴵ;

    invoke-static {v1}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    iget-object v1, v1, Lﹶﾞ/ᐧᴵ;->ᵔי:Lﹶﾞ/ᐧﾞ;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lﹶﾞ/ᐧﾞ;->ⁱˊ(Z)V

    new-instance v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    invoke-static {v1}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    iget v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v3, 0x64

    if-ne v1, v3, :cond_0

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v1, "Detected application was in foreground"

    invoke-virtual {v0, v1}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lⁱʽ/ﹳٴ;->ᵔﹳ(J)V

    :cond_0
    return-void
.end method

.method public ᵔᵢ(F)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lⁱʽ/ﹳٴ;->ˉʿ()V

    iget-object v0, p0, Lⁱʽ/ﹳٴ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroidx/core/widget/NestedScrollView;->ˆʾ(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public ᵔﹳ(J)V
    .locals 9

    .prologue
    iget-object v0, p0, Lⁱʽ/ﹳٴ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ˉʽ;

    invoke-virtual {v0}, Lﹶﾞ/ʾᵎ;->ⁱᴵ()V

    iget-object v0, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    invoke-virtual {v0}, Lﹶﾞ/ᵎʻ;->ﹳٴ()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v6, v0, Lﹶﾞ/ᵎʻ;->ᴵᵔ:Lﹶﾞ/ᐧᴵ;

    invoke-static {v6}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    iget-object v3, v6, Lﹶﾞ/ᐧᴵ;->ˑٴ:Lⁱי/ʻᵎ;

    invoke-virtual {v3, p1, p2}, Lⁱי/ʻᵎ;->ᵔᵢ(J)V

    iget-object v3, v0, Lﹶﾞ/ᵎʻ;->ᵎˊ:Lᵎᴵ/ﹳٴ;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v5, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v5}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v5, v5, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Session started, time"

    invoke-virtual {v5, v3, v4}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x3e8

    div-long v7, p1, v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ˆﾞ:Lﹶﾞ/ˈـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ᵔᵢ(Lﹶﾞ/ٴᵢ;)V

    const-string v4, "auto"

    const-string v5, "_sid"

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lﹶﾞ/ˈـ;->ﹳᵢ(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    iget-object v1, v6, Lﹶﾞ/ᐧᴵ;->ˋᵔ:Lⁱי/ʻᵎ;

    invoke-virtual {v1, v7, v8}, Lⁱי/ʻᵎ;->ᵔᵢ(J)V

    iget-object v1, v6, Lﹶﾞ/ᐧᴵ;->ᵔי:Lﹶﾞ/ᐧﾞ;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lﹶﾞ/ᐧﾞ;->ⁱˊ(Z)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v1, "_sid"

    invoke-virtual {v3, v1, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ᵔᵢ(Lﹶﾞ/ٴᵢ;)V

    const-string v4, "auto"

    const-string v5, "_s"

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lﹶﾞ/ˈـ;->ˎʾ(JLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v6, Lﹶﾞ/ᐧᴵ;->ˈⁱ:Lcom/bumptech/glide/ʼˎ;

    invoke-virtual {v1}, Lcom/bumptech/glide/ʼˎ;->ˉʿ()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v2, "_ffr"

    invoke-virtual {v3, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ᵔᵢ(Lﹶﾞ/ٴᵢ;)V

    const-string v4, "auto"

    const-string v5, "_ssr"

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lﹶﾞ/ˈـ;->ˎʾ(JLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic ⁱˊ(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 7

    iget-object v0, p0, Lⁱʽ/ﹳٴ;->ʾˋ:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lﹶﾞ/ᵢי;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lﹶﾞ/ᵢי;->ʼʼ(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void
.end method

.method public ﹳٴ(Lʽⁱ/ˏᵢ;)V
    .locals 0

    return-void
.end method

.method public ﾞʻ(Ljava/lang/Object;)Lˏـ/ˉʿ;
    .locals 3

    .prologue
    check-cast p1, Lʾٴ/ﹳٴ;

    iget-object v0, p0, Lⁱʽ/ﹳٴ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹳˎ/ٴﹶ;

    iget-object v0, v0, Lﹳˎ/ٴﹶ;->ˑﹳ:Lﹳˎ/ˉʿ;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p1, "Received null app settings, cannot send reports at crash time."

    const-string v0, "FirebaseCrashlytics"

    nop

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/ᵎ;->ᵔᵢ(Ljava/lang/Object;)Lˏـ/ˉʿ;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {v0}, Lﹳˎ/ˉʿ;->ﹳٴ(Lﹳˎ/ˉʿ;)Lˏـ/ˉʿ;

    move-result-object p1

    iget-object v2, v0, Lﹳˎ/ˉʿ;->ˉʿ:Lﹳʽ/ᴵᵔ;

    iget-object v0, v0, Lﹳˎ/ˉʿ;->ˑﹳ:Lˈᵔ/ˈ;

    iget-object v0, v0, Lˈᵔ/ˈ;->ﹳٴ:Lˈᵔ/ʽ;

    invoke-virtual {v2, v0, v1}, Lﹳʽ/ᴵᵔ;->ˉˆ(Ljava/util/concurrent/Executor;Ljava/lang/String;)Lˏـ/ˉʿ;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lˏـ/ˉʿ;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object v0, v1, p1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/ᵎ;->ʻٴ(Ljava/util/List;)Lˏـ/ˉʿ;

    move-result-object p1

    return-object p1
.end method

.method public ﾞᴵ()V
    .locals 3

    .prologue
    iget-object v0, p0, Lⁱʽ/ﹳٴ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﾞˏ/ˆʾ;

    iget-object v1, v0, Lﾞˏ/ˆʾ;->ˑﹶ:Landroid/view/Surface;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lﾞˏ/ˆʾ;->ﹶˎ(II)V

    :cond_0
    return-void
.end method
