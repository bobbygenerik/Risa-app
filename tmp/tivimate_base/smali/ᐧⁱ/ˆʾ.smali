.class public final Lᐧⁱ/ˆʾ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʽⁱ/ᵔי;
.implements Lᐧⁱ/ˆﾞ;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic ʾˋ:Lᐧⁱ/ˏי;


# direct methods
.method public constructor <init>(Lᐧⁱ/ˏי;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᐧⁱ/ˆʾ;->ʾˋ:Lᐧⁱ/ˏי;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12

    .prologue
    iget-object v0, p0, Lᐧⁱ/ˆʾ;->ʾˋ:Lᐧⁱ/ˏי;

    iget-object v1, v0, Lᐧⁱ/ˏי;->ᐧᴵ:Landroid/widget/ImageView;

    iget-object v2, v0, Lᐧⁱ/ˏי;->ـﹶ:Landroid/view/View;

    iget-object v3, v0, Lᐧⁱ/ˏי;->ˊᵔ:Landroid/view/View;

    iget-object v4, v0, Lᐧⁱ/ˏי;->ʻᵎ:Landroid/view/View;

    iget-object v5, v0, Lᐧⁱ/ˏי;->ʾˋ:Lᐧⁱ/ʼʼ;

    iget-object v6, v0, Lᐧⁱ/ˏי;->ⁱᴵ:Lʽⁱ/ᵔٴ;

    if-nez v6, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v5}, Lᐧⁱ/ʼʼ;->ᵎﹶ()V

    iget-object v7, v0, Lᐧⁱ/ˏי;->ـˏ:Landroid/widget/ImageView;

    const/16 v8, 0x9

    if-ne v7, p1, :cond_1

    check-cast v6, Lʽⁱ/ᵎﹶ;

    invoke-virtual {v6, v8}, Lʽⁱ/ᵎﹶ;->ᐧﹶ(I)Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-virtual {v6}, Lʽⁱ/ᵎﹶ;->ʿـ()V

    return-void

    :cond_1
    iget-object v7, v0, Lᐧⁱ/ˏי;->ʼˈ:Landroid/widget/ImageView;

    if-ne v7, p1, :cond_2

    check-cast v6, Lʽⁱ/ᵎﹶ;

    const/4 p1, 0x7

    invoke-virtual {v6, p1}, Lʽⁱ/ᵎﹶ;->ᐧﹶ(I)Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-virtual {v6}, Lʽⁱ/ᵎﹶ;->ⁱי()V

    return-void

    :cond_2
    iget-object v7, v0, Lᐧⁱ/ˏי;->ˈⁱ:Landroid/view/View;

    const/16 v9, 0xc

    if-ne v7, p1, :cond_3

    move-object p1, v6

    check-cast p1, Lⁱי/ʼʼ;

    invoke-virtual {p1}, Lⁱי/ʼʼ;->ﾞˏ()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_11

    check-cast v6, Lʽⁱ/ᵎﹶ;

    invoke-virtual {v6, v9}, Lʽⁱ/ᵎﹶ;->ᐧﹶ(I)Z

    move-result p1

    if-eqz p1, :cond_11

    move-object p1, v6

    check-cast p1, Lⁱי/ʼʼ;

    invoke-virtual {p1}, Lⁱי/ʼʼ;->ˏʻ()V

    iget-wide v0, p1, Lⁱי/ʼʼ;->ˈⁱ:J

    invoke-virtual {v6, v9, v0, v1}, Lʽⁱ/ᵎﹶ;->ﹳⁱ(IJ)V

    return-void

    :cond_3
    iget-object v7, v0, Lᐧⁱ/ˏי;->ᴵˑ:Landroid/view/View;

    if-ne v7, p1, :cond_4

    check-cast v6, Lʽⁱ/ᵎﹶ;

    const/16 p1, 0xb

    invoke-virtual {v6, p1}, Lʽⁱ/ᵎﹶ;->ᐧﹶ(I)Z

    move-result v0

    if-eqz v0, :cond_11

    move-object v0, v6

    check-cast v0, Lⁱי/ʼʼ;

    invoke-virtual {v0}, Lⁱי/ʼʼ;->ˏʻ()V

    iget-wide v0, v0, Lⁱי/ʼʼ;->ﹳـ:J

    neg-long v0, v0

    invoke-virtual {v6, p1, v0, v1}, Lʽⁱ/ᵎﹶ;->ﹳⁱ(IJ)V

    return-void

    :cond_4
    iget-object v7, v0, Lᐧⁱ/ˏי;->ﹳـ:Landroid/widget/ImageView;

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ne v7, p1, :cond_6

    iget-boolean p1, v0, Lᐧⁱ/ˏי;->ʼᵢ:Z

    invoke-static {v6, p1}, Lᐧˎ/ʼʼ;->ᐧᴵ(Lʽⁱ/ᵔٴ;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {v6}, Lᐧˎ/ʼʼ;->ᵎˊ(Lʽⁱ/ᵔٴ;)Z

    return-void

    :cond_5
    check-cast v6, Lʽⁱ/ᵎﹶ;

    invoke-virtual {v6, v11}, Lʽⁱ/ᵎﹶ;->ᐧﹶ(I)Z

    move-result p1

    if-eqz p1, :cond_11

    check-cast v6, Lⁱי/ʼʼ;

    invoke-virtual {v6, v10}, Lⁱי/ʼʼ;->ʻʼ(Z)V

    return-void

    :cond_6
    iget-object v7, v0, Lᐧⁱ/ˏי;->ʿᵢ:Landroid/widget/ImageView;

    if-ne v7, p1, :cond_c

    const/16 p1, 0xf

    move-object v1, v6

    check-cast v1, Lʽⁱ/ᵎﹶ;

    invoke-virtual {v1, p1}, Lʽⁱ/ᵎﹶ;->ᐧﹶ(I)Z

    move-result p1

    if-eqz p1, :cond_11

    check-cast v6, Lⁱי/ʼʼ;

    invoke-virtual {v6}, Lⁱי/ʼʼ;->ˏʻ()V

    iget p1, v6, Lⁱי/ʼʼ;->ʻᵎ:I

    iget v0, v0, Lᐧⁱ/ˏי;->ˎˉ:I

    move v1, v11

    :goto_0
    const/4 v2, 0x2

    if-gt v1, v2, :cond_b

    add-int v3, p1, v1

    rem-int/lit8 v3, v3, 0x3

    if-eqz v3, :cond_a

    if-eq v3, v11, :cond_8

    if-eq v3, v2, :cond_7

    goto :goto_1

    :cond_7
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_9

    goto :goto_2

    :cond_8
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_9

    goto :goto_2

    :cond_9
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_a
    :goto_2
    move p1, v3

    :cond_b
    invoke-virtual {v6, p1}, Lⁱי/ʼʼ;->ᵢᐧ(I)V

    return-void

    :cond_c
    iget-object v7, v0, Lᐧⁱ/ˏי;->ᵎᵔ:Landroid/widget/ImageView;

    if-ne v7, p1, :cond_d

    const/16 p1, 0xe

    move-object v0, v6

    check-cast v0, Lʽⁱ/ᵎﹶ;

    invoke-virtual {v0, p1}, Lʽⁱ/ᵎﹶ;->ᐧﹶ(I)Z

    move-result p1

    if-eqz p1, :cond_11

    check-cast v6, Lⁱי/ʼʼ;

    invoke-virtual {v6}, Lⁱי/ʼʼ;->ˏʻ()V

    iget-boolean p1, v6, Lⁱי/ʼʼ;->ˊᵔ:Z

    xor-int/2addr p1, v11

    iget-object v0, v6, Lⁱי/ʼʼ;->ˆﾞ:Lᐧˎ/ˉʿ;

    invoke-virtual {v6}, Lⁱי/ʼʼ;->ˏʻ()V

    iget-boolean v1, v6, Lⁱי/ʼʼ;->ˊᵔ:Z

    if-eq v1, p1, :cond_11

    iput-boolean p1, v6, Lⁱי/ʼʼ;->ˊᵔ:Z

    iget-object v1, v6, Lⁱי/ʼʼ;->ᵔי:Lⁱי/ᴵᵔ;

    iget-object v1, v1, Lⁱי/ᴵᵔ;->ˉٴ:Lᐧˎ/ʻٴ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lᐧˎ/ʻٴ;->ⁱˊ()Lᐧˎ/ʽﹳ;

    move-result-object v2

    iget-object v1, v1, Lᐧˎ/ʻٴ;->ﹳٴ:Landroid/os/Handler;

    invoke-virtual {v1, v9, p1, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iput-object v1, v2, Lᐧˎ/ʽﹳ;->ﹳٴ:Landroid/os/Message;

    invoke-virtual {v2}, Lᐧˎ/ʽﹳ;->ⁱˊ()V

    new-instance v1, Lⁱי/ˏי;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lⁱי/ˏי;-><init>(IZ)V

    invoke-virtual {v0, v8, v1}, Lᐧˎ/ˉʿ;->ˈ(ILᐧˎ/ˆʾ;)V

    invoke-virtual {v6}, Lⁱי/ʼʼ;->ᴵٴ()V

    invoke-virtual {v0}, Lᐧˎ/ˉʿ;->ʽ()V

    return-void

    :cond_d
    if-ne v4, p1, :cond_e

    invoke-virtual {v5}, Lᐧⁱ/ʼʼ;->ﾞᴵ()V

    iget-object p1, v0, Lᐧⁱ/ˏי;->ᵔי:Lʽᵔ/ʽ;

    invoke-virtual {v0, p1, v4}, Lᐧⁱ/ˏי;->ˑﹳ(Lˋˋ/ᴵˑ;Landroid/view/View;)V

    return-void

    :cond_e
    if-ne v3, p1, :cond_f

    invoke-virtual {v5}, Lᐧⁱ/ʼʼ;->ﾞᴵ()V

    iget-object p1, v0, Lᐧⁱ/ˏי;->ˆﾞ:Lᐧⁱ/ˉʿ;

    invoke-virtual {v0, p1, v3}, Lᐧⁱ/ˏי;->ˑﹳ(Lˋˋ/ᴵˑ;Landroid/view/View;)V

    return-void

    :cond_f
    if-ne v2, p1, :cond_10

    invoke-virtual {v5}, Lᐧⁱ/ʼʼ;->ﾞᴵ()V

    iget-object p1, v0, Lᐧⁱ/ˏי;->ˈʿ:Lᐧⁱ/ʼˎ;

    invoke-virtual {v0, p1, v2}, Lᐧⁱ/ˏי;->ˑﹳ(Lˋˋ/ᴵˑ;Landroid/view/View;)V

    return-void

    :cond_10
    if-ne v1, p1, :cond_11

    invoke-virtual {v5}, Lᐧⁱ/ʼʼ;->ﾞᴵ()V

    iget-object p1, v0, Lᐧⁱ/ˏי;->ᵔٴ:Lᐧⁱ/ʼˎ;

    invoke-virtual {v0, p1, v1}, Lᐧⁱ/ˏי;->ˑﹳ(Lˋˋ/ᴵˑ;Landroid/view/View;)V

    :cond_11
    :goto_3
    return-void
.end method

.method public final onDismiss()V
    .locals 2

    .prologue
    iget-object v0, p0, Lᐧⁱ/ˆʾ;->ʾˋ:Lᐧⁱ/ˏי;

    iget-boolean v1, v0, Lᐧⁱ/ˏי;->ٴʿ:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lᐧⁱ/ˏי;->ʾˋ:Lᐧⁱ/ʼʼ;

    invoke-virtual {v0}, Lᐧⁱ/ʼʼ;->ᵎﹶ()V

    :cond_0
    return-void
.end method

.method public final synthetic ʻٴ(F)V
    .locals 0

    return-void
.end method

.method public final synthetic ʼʼ(I)V
    .locals 0

    return-void
.end method

.method public final synthetic ʼˈ(Z)V
    .locals 0

    return-void
.end method

.method public final ʼˎ(JJJ)V
    .locals 0

    .prologue
    iget-object p3, p0, Lᐧⁱ/ˆʾ;->ʾˋ:Lᐧⁱ/ˏי;

    iget-object p4, p3, Lᐧⁱ/ˏי;->ﹶᐧ:Landroid/widget/TextView;

    if-eqz p4, :cond_0

    iget-object p5, p3, Lᐧⁱ/ˏי;->ʻˋ:Ljava/lang/StringBuilder;

    iget-object p6, p3, Lᐧⁱ/ˏי;->ˑʼ:Ljava/util/Formatter;

    invoke-static {p5, p6, p1, p2}, Lᐧˎ/ʼʼ;->ٴᵢ(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p4, p3, Lᐧⁱ/ˏי;->ⁱᴵ:Lʽⁱ/ᵔٴ;

    invoke-virtual {p3, p4}, Lᐧⁱ/ˏי;->ٴﹶ(Lʽⁱ/ᵔٴ;)Z

    move-result p4

    if-eqz p4, :cond_1

    iget-object p4, p3, Lᐧⁱ/ˏי;->ⁱᴵ:Lʽⁱ/ᵔٴ;

    invoke-static {p3, p4, p1, p2}, Lᐧⁱ/ˏי;->ﹳٴ(Lᐧⁱ/ˏי;Lʽⁱ/ᵔٴ;J)V

    :cond_1
    return-void
.end method

.method public final synthetic ʼᐧ(Lʽⁱ/ˉـ;)V
    .locals 0

    return-void
.end method

.method public final ʽ(J)V
    .locals 5

    .prologue
    iget-object v0, p0, Lᐧⁱ/ˆʾ;->ʾˋ:Lᐧⁱ/ˏי;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lᐧⁱ/ˏי;->ﾞˋ:Z

    iget-object v2, v0, Lᐧⁱ/ˏי;->ﹶᐧ:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v3, v0, Lᐧⁱ/ˏי;->ʻˋ:Ljava/lang/StringBuilder;

    iget-object v4, v0, Lᐧⁱ/ˏי;->ˑʼ:Ljava/util/Formatter;

    invoke-static {v3, v4, p1, p2}, Lᐧˎ/ʼʼ;->ٴᵢ(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, v0, Lᐧⁱ/ˏי;->ʾˋ:Lᐧⁱ/ʼʼ;

    invoke-virtual {p1}, Lᐧⁱ/ʼʼ;->ﾞᴵ()V

    iget-object p1, v0, Lᐧⁱ/ˏי;->ⁱᴵ:Lʽⁱ/ᵔٴ;

    if-eqz p1, :cond_3

    iget-boolean p2, v0, Lᐧⁱ/ˏי;->ˎʾ:Z

    if-eqz p2, :cond_3

    invoke-virtual {v0, p1}, Lᐧⁱ/ˏי;->ʼˎ(Lʽⁱ/ᵔٴ;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    iget-object p1, v0, Lᐧⁱ/ˏי;->ᴵᵔ:Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lᐧⁱ/ˏי;->ⁱᴵ:Lʽⁱ/ᵔٴ;

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v1, p2

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    iget-object p1, v0, Lᐧⁱ/ˏי;->ⁱᴵ:Lʽⁱ/ᵔٴ;

    invoke-virtual {v0, p1}, Lᐧⁱ/ˏי;->ᵔᵢ(Lʽⁱ/ᵔٴ;)Z

    move-result p1

    if-eqz p1, :cond_2

    :try_start_1
    iget-object p1, v0, Lᐧⁱ/ˏי;->ˉٴ:Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lᐧⁱ/ˏי;->ⁱᴵ:Lʽⁱ/ᵔٴ;

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v1, p2

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    return-void

    :catch_2
    move-exception p1

    goto :goto_1

    :catch_3
    move-exception p1

    :goto_1
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Time bar scrubbing is enabled, but player is not an ExoPlayer or CompositionPlayer instance, so ignoring (because we can\'t enable scrubbing mode). player.class="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, v0, Lᐧⁱ/ˏי;->ⁱᴵ:Lʽⁱ/ᵔٴ;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PlayerControlView"

    invoke-static {p2, p1}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final synthetic ʽʽ(I)V
    .locals 0

    return-void
.end method

.method public final synthetic ʽﹳ(IZ)V
    .locals 0

    return-void
.end method

.method public final synthetic ʾᵎ(Lʽⁱ/ٴʼ;)V
    .locals 0

    return-void
.end method

.method public final synthetic ˆʾ(I)V
    .locals 0

    return-void
.end method

.method public final synthetic ˆﾞ(ILʽⁱ/ˆﾞ;Lʽⁱ/ˆﾞ;)V
    .locals 0

    return-void
.end method

.method public final synthetic ˈ(I)V
    .locals 0

    return-void
.end method

.method public final synthetic ˈʿ(Lʽⁱ/ᴵᵔ;)V
    .locals 0

    return-void
.end method

.method public final synthetic ˉʿ(Z)V
    .locals 0

    return-void
.end method

.method public final synthetic ˉˆ(Z)V
    .locals 0

    return-void
.end method

.method public final synthetic ˉٴ(Landroidx/media3/common/PlaybackException;)V
    .locals 0

    return-void
.end method

.method public final synthetic ˏי(IZ)V
    .locals 0

    return-void
.end method

.method public final synthetic ˑٴ(Lⁱˉ/ʽ;)V
    .locals 0

    return-void
.end method

.method public final synthetic ˑﹳ(Lʽⁱ/ᵎⁱ;)V
    .locals 0

    return-void
.end method

.method public final ٴᵢ(Lʽⁱ/ᵎˊ;)V
    .locals 5

    .prologue
    const/4 v0, 0x4

    const/4 v1, 0x5

    const/16 v2, 0xd

    filled-new-array {v0, v1, v2}, [I

    move-result-object v3

    invoke-virtual {p1, v3}, Lʽⁱ/ᵎˊ;->ﹳٴ([I)Z

    move-result v3

    iget-object v4, p0, Lᐧⁱ/ˆʾ;->ʾˋ:Lᐧⁱ/ˏי;

    if-eqz v3, :cond_0

    invoke-virtual {v4}, Lᐧⁱ/ˏי;->ᵔﹳ()V

    :cond_0
    const/4 v3, 0x7

    filled-new-array {v0, v1, v3, v2}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Lʽⁱ/ᵎˊ;->ﹳٴ([I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v4}, Lᐧⁱ/ˏי;->יـ()V

    :cond_1
    const/16 v0, 0x8

    filled-new-array {v0, v2}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Lʽⁱ/ᵎˊ;->ﹳٴ([I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v4}, Lᐧⁱ/ˏי;->ˏי()V

    :cond_2
    const/16 v0, 0x9

    filled-new-array {v0, v2}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Lʽⁱ/ᵎˊ;->ﹳٴ([I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v4}, Lᐧⁱ/ˏי;->ʻٴ()V

    :cond_3
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Lʽⁱ/ᵎˊ;->ﹳٴ([I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v4}, Lᐧⁱ/ˏי;->ʼᐧ()V

    :cond_4
    const/16 v0, 0xb

    const/4 v1, 0x0

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Lʽⁱ/ᵎˊ;->ﹳٴ([I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v4}, Lᐧⁱ/ˏי;->ـˆ()V

    :cond_5
    const/16 v0, 0xc

    filled-new-array {v0, v2}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Lʽⁱ/ᵎˊ;->ﹳٴ([I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v4}, Lᐧⁱ/ˏי;->ﹳᐧ()V

    :cond_6
    const/4 v0, 0x2

    filled-new-array {v0, v2}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Lʽⁱ/ᵎˊ;->ﹳٴ([I)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v4}, Lᐧⁱ/ˏי;->ʾᵎ()V

    :cond_7
    return-void

    nop

    :array_0
    .array-data 4
        0x8
        0x9
        0xb
        0x0
        0x10
        0x11
        0xd
    .end array-data
.end method

.method public final synthetic ٴﹶ(Lʽⁱ/ʿᵢ;)V
    .locals 0

    return-void
.end method

.method public final synthetic ᵎˊ(II)V
    .locals 0

    return-void
.end method

.method public final synthetic ᵎⁱ(Z)V
    .locals 0

    return-void
.end method

.method public final synthetic ᵎﹶ(Lʽⁱ/ᴵˊ;I)V
    .locals 0

    return-void
.end method

.method public final synthetic ᵔʾ()V
    .locals 0

    return-void
.end method

.method public final synthetic ᵔᵢ(Lʽⁱ/ٴᵢ;)V
    .locals 0

    return-void
.end method

.method public final synthetic ᵔﹳ(Lʽⁱ/ˑﹳ;)V
    .locals 0

    return-void
.end method

.method public final synthetic ᵢˏ(Landroidx/media3/common/PlaybackException;)V
    .locals 0

    return-void
.end method

.method public final synthetic ⁱˊ(I)V
    .locals 0

    return-void
.end method

.method public final synthetic ﹳٴ(Lʽⁱ/ˏᵢ;)V
    .locals 0

    return-void
.end method

.method public final synthetic ﹳᐧ(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public final ﾞᴵ(ZJ)V
    .locals 3

    .prologue
    iget-object v0, p0, Lᐧⁱ/ˆʾ;->ʾˋ:Lᐧⁱ/ˏי;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lᐧⁱ/ˏי;->ﾞˋ:Z

    iget-object v2, v0, Lᐧⁱ/ˏי;->ⁱᴵ:Lʽⁱ/ᵔٴ;

    if-eqz v2, :cond_2

    if-nez p1, :cond_0

    invoke-static {v0, v2, p2, p3}, Lᐧⁱ/ˏי;->ﹳٴ(Lᐧⁱ/ˏי;Lʽⁱ/ᵔٴ;J)V

    :cond_0
    iget-object p1, v0, Lᐧⁱ/ˏי;->ⁱᴵ:Lʽⁱ/ᵔٴ;

    invoke-virtual {v0, p1}, Lᐧⁱ/ˏי;->ʼˎ(Lʽⁱ/ᵔٴ;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    :try_start_0
    iget-object p1, v0, Lᐧⁱ/ˏי;->ᴵᵔ:Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, v0, Lᐧⁱ/ˏי;->ⁱᴵ:Lʽⁱ/ᵔٴ;

    new-array p2, p2, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, p2, v1

    invoke-virtual {p1, p3, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    iget-object p1, v0, Lᐧⁱ/ˏי;->ⁱᴵ:Lʽⁱ/ᵔٴ;

    invoke-virtual {v0, p1}, Lᐧⁱ/ˏי;->ᵔᵢ(Lʽⁱ/ᵔٴ;)Z

    move-result p1

    if-eqz p1, :cond_2

    :try_start_1
    iget-object p1, v0, Lᐧⁱ/ˏי;->ˉٴ:Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, v0, Lᐧⁱ/ˏי;->ⁱᴵ:Lʽⁱ/ᵔٴ;

    new-array p2, p2, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, p2, v1

    invoke-virtual {p1, p3, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    goto :goto_1

    :catch_3
    move-exception p1

    :goto_1
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    :goto_2
    iget-object p1, v0, Lᐧⁱ/ˏי;->ʾˋ:Lᐧⁱ/ʼʼ;

    invoke-virtual {p1}, Lᐧⁱ/ʼʼ;->ᵎﹶ()V

    return-void
.end method
