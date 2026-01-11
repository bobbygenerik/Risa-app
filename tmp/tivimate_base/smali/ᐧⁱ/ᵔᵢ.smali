.class public final synthetic Lᐧⁱ/ᵔᵢ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic ⁱˊ:Ljava/lang/Object;

.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lᐧⁱ/ᵔᵢ;->ﹳٴ:I

    iput-object p2, p0, Lᐧⁱ/ᵔᵢ;->ⁱˊ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 5

    .prologue
    iget v0, p0, Lᐧⁱ/ᵔᵢ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lᐧⁱ/ᵔᵢ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/carousel/CarouselLayoutManager;

    sub-int/2addr p4, p2

    sub-int/2addr p8, p6

    if-ne p4, p8, :cond_0

    sub-int/2addr p5, p3

    sub-int/2addr p9, p7

    if-eq p5, p9, :cond_1

    :cond_0
    new-instance p2, Lٴˉ/ⁱˊ;

    const/16 p3, 0x11

    invoke-direct {p2, p3, v0}, Lٴˉ/ⁱˊ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    :pswitch_0
    iget-object p1, p0, Lᐧⁱ/ᵔᵢ;->ⁱˊ:Ljava/lang/Object;

    check-cast p1, Lᵔˋ/ˊʻ;

    invoke-virtual {p1}, Lᵔˋ/ˊʻ;->ʾᵎ()V

    return-void

    :pswitch_1
    iget-object p1, p0, Lᐧⁱ/ᵔᵢ;->ⁱˊ:Ljava/lang/Object;

    check-cast p1, Lᵔʻ/ˈـ;

    iget-boolean p2, p1, Lᵔʻ/ˈـ;->ᵢי:Z

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lᵔʻ/ˈـ;->ʼﾞ()Lـˈ/ⁱˊ;

    move-result-object p2

    iget-object p2, p2, Lـˈ/ⁱˊ;->ʽ:Lʻʾ/ﾞᴵ;

    iget-object p2, p2, Lʻʾ/ﾞᴵ;->ˈ:Lar/tvplayer/tv/base/ui/view/CustomTextView;

    goto :goto_0

    :cond_2
    iget p2, p1, Lᵔʻ/ˈـ;->ʼﾞ:I

    const/4 p3, 0x6

    if-ne p2, p3, :cond_3

    invoke-virtual {p1}, Lᵔʻ/ˈـ;->ʼﾞ()Lـˈ/ⁱˊ;

    move-result-object p2

    iget-object p2, p2, Lـˈ/ⁱˊ;->ʽ:Lʻʾ/ﾞᴵ;

    iget-object p2, p2, Lʻʾ/ﾞᴵ;->ﾞᴵ:Landroid/view/ViewGroup;

    check-cast p2, Lar/tvplayer/tv/base/ui/view/CustomHorizontalGridView;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lᵔʻ/ˈـ;->ﹳᵎ()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lᵔʻ/ˈـ;->ʼﾞ()Lـˈ/ⁱˊ;

    move-result-object p2

    iget-object p2, p2, Lـˈ/ⁱˊ;->ʽ:Lʻʾ/ﾞᴵ;

    iget-object p2, p2, Lʻʾ/ﾞᴵ;->ʼˎ:Landroid/view/View;

    check-cast p2, Lar/tvplayer/tv/player/ui/CustomPlayerControlView;

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lᵔʻ/ˈـ;->ʼﾞ()Lـˈ/ⁱˊ;

    move-result-object p2

    iget-object p2, p2, Lـˈ/ⁱˊ;->ʽ:Lʻʾ/ﾞᴵ;

    iget-object p2, p2, Lʻʾ/ﾞᴵ;->ᵔᵢ:Ljava/lang/Object;

    check-cast p2, Lـˈ/ᵎﹶ;

    iget-object p2, p2, Lـˈ/ᵎﹶ;->ﹳٴ:Landroidx/constraintlayout/widget/ConstraintLayout;

    :goto_0
    invoke-virtual {p1}, Lˑʼ/ᴵᵔ;->ʻʿ()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lʿˋ/ˉʿ;->ᴵᵔ(Landroid/content/Context;)I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    sub-int/2addr p3, p2

    invoke-virtual {p1}, Lᵔʻ/ˈـ;->ʼﾞ()Lـˈ/ⁱˊ;

    move-result-object p2

    iget-object p2, p2, Lـˈ/ⁱˊ;->ˈ:Landroid/widget/ViewSwitcher;

    invoke-virtual {p2}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1}, Lᵔʻ/ˈـ;->ʼﾞ()Lـˈ/ⁱˊ;

    move-result-object p4

    iget-object p4, p4, Lـˈ/ⁱˊ;->ˑﹳ:Lʻﹳ/ⁱˊ;

    iget-object p4, p4, Lʻﹳ/ⁱˊ;->ⁱˊ:Landroid/view/View;

    check-cast p4, Landroid/widget/LinearLayout;

    if-ne p2, p4, :cond_5

    invoke-virtual {p1}, Lᵔʻ/ˈـ;->ʼﾞ()Lـˈ/ⁱˊ;

    move-result-object p2

    iget-object p2, p2, Lـˈ/ⁱˊ;->ˑﹳ:Lʻﹳ/ⁱˊ;

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lᵔʻ/ˈـ;->ʼﾞ()Lـˈ/ⁱˊ;

    move-result-object p2

    iget-object p2, p2, Lـˈ/ⁱˊ;->ﾞᴵ:Lʻﹳ/ⁱˊ;

    :goto_1
    iget-object p2, p2, Lʻﹳ/ⁱˊ;->ʽ:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int p2, p3, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-double p4, p2

    int-to-double p6, p3

    div-double/2addr p4, p6

    const-wide p6, 0x3fc999999999999aL    # 0.2

    cmpl-double p2, p4, p6

    if-lez p2, :cond_8

    invoke-virtual {p1}, Lᵔʻ/ˈـ;->ʼﾞ()Lـˈ/ⁱˊ;

    move-result-object p2

    iget-object p2, p2, Lـˈ/ⁱˊ;->ˈ:Landroid/widget/ViewSwitcher;

    invoke-virtual {p2}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1}, Lᵔʻ/ˈـ;->ʼﾞ()Lـˈ/ⁱˊ;

    move-result-object p4

    iget-object p4, p4, Lـˈ/ⁱˊ;->ˑﹳ:Lʻﹳ/ⁱˊ;

    iget-object p4, p4, Lʻﹳ/ⁱˊ;->ⁱˊ:Landroid/view/View;

    check-cast p4, Landroid/widget/LinearLayout;

    if-ne p2, p4, :cond_6

    invoke-virtual {p1}, Lᵔʻ/ˈـ;->ʼﾞ()Lـˈ/ⁱˊ;

    move-result-object p2

    iget-object p2, p2, Lـˈ/ⁱˊ;->ˑﹳ:Lʻﹳ/ⁱˊ;

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lᵔʻ/ˈـ;->ʼﾞ()Lـˈ/ⁱˊ;

    move-result-object p2

    iget-object p2, p2, Lـˈ/ⁱˊ;->ﾞᴵ:Lʻﹳ/ⁱˊ;

    :goto_2
    iget-object p2, p2, Lʻﹳ/ⁱˊ;->ʽ:Landroid/view/View;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x1

    const/4 p5, 0x0

    invoke-static {p2, p5, p3, p4}, Lʿˋ/ˋᵔ;->ˈⁱ(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    iget-boolean p2, p1, Lᵔʻ/ˈـ;->ˆʻ:Z

    if-eqz p2, :cond_7

    const-wide/16 p2, 0xfa

    goto :goto_3

    :cond_7
    const-wide/16 p2, 0x0

    :goto_3
    invoke-virtual {p1}, Lᵔʻ/ˈـ;->ʼﾞ()Lـˈ/ⁱˊ;

    move-result-object p4

    iget-object p4, p4, Lـˈ/ⁱˊ;->ˈ:Landroid/widget/ViewSwitcher;

    invoke-virtual {p4}, Landroid/widget/ViewAnimator;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object p4

    invoke-virtual {p4, p2, p3}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p1}, Lᵔʻ/ˈـ;->ʼﾞ()Lـˈ/ⁱˊ;

    move-result-object p4

    iget-object p4, p4, Lـˈ/ⁱˊ;->ˈ:Landroid/widget/ViewSwitcher;

    invoke-virtual {p4}, Landroid/widget/ViewAnimator;->getOutAnimation()Landroid/view/animation/Animation;

    move-result-object p4

    invoke-virtual {p4, p2, p3}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p1}, Lᵔʻ/ˈـ;->ʼﾞ()Lـˈ/ⁱˊ;

    move-result-object p2

    iget-object p2, p2, Lـˈ/ⁱˊ;->ˈ:Landroid/widget/ViewSwitcher;

    invoke-virtual {p2}, Landroid/widget/ViewAnimator;->showNext()V

    :cond_8
    const/4 p2, 0x0

    iput-boolean p2, p1, Lᵔʻ/ˈـ;->ˆʻ:Z

    return-void

    :pswitch_2
    iget-object p3, p0, Lᐧⁱ/ᵔᵢ;->ⁱˊ:Ljava/lang/Object;

    check-cast p3, Lᐧⁱ/ʼʼ;

    iget-object p5, p3, Lᐧⁱ/ʼʼ;->ﹳٴ:Lᐧⁱ/ˏי;

    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    move-result p7

    invoke-virtual {p5}, Landroid/view/View;->getPaddingLeft()I

    move-result p9

    sub-int/2addr p7, p9

    invoke-virtual {p5}, Landroid/view/View;->getPaddingRight()I

    move-result p9

    sub-int/2addr p7, p9

    invoke-virtual {p5}, Landroid/view/View;->getHeight()I

    move-result p9

    invoke-virtual {p5}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p9, v0

    invoke-virtual {p5}, Landroid/view/View;->getPaddingTop()I

    move-result p5

    sub-int/2addr p9, p5

    iget-object p5, p3, Lᐧⁱ/ʼʼ;->ʽ:Landroid/view/ViewGroup;

    invoke-static {p5}, Lᐧⁱ/ʼʼ;->ʽ(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz p5, :cond_9

    invoke-virtual {p5}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p5}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int/2addr v3, v2

    goto :goto_4

    :cond_9
    move v3, v1

    :goto_4
    sub-int/2addr v0, v3

    if-nez p5, :cond_a

    move v2, v1

    goto :goto_5

    :cond_a
    invoke-virtual {p5}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_b

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    :cond_b
    :goto_5
    if-eqz p5, :cond_c

    invoke-virtual {p5}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {p5}, Landroid/view/View;->getPaddingBottom()I

    move-result p5

    add-int/2addr p5, v3

    goto :goto_6

    :cond_c
    move p5, v1

    :goto_6
    sub-int/2addr v2, p5

    iget-object p5, p3, Lᐧⁱ/ʼʼ;->ʼˎ:Landroid/view/ViewGroup;

    invoke-static {p5}, Lᐧⁱ/ʼʼ;->ʽ(Landroid/view/View;)I

    move-result p5

    iget-object v3, p3, Lᐧⁱ/ʼʼ;->ٴﹶ:Landroid/view/View;

    invoke-static {v3}, Lᐧⁱ/ʼʼ;->ʽ(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, p5

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result p5

    iget-object v0, p3, Lᐧⁱ/ʼʼ;->ˈ:Landroid/view/ViewGroup;

    if-nez v0, :cond_d

    move v3, v1

    goto :goto_7

    :cond_d
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_e

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v0

    add-int/2addr v3, v4

    :cond_e
    :goto_7
    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    const/4 v0, 0x1

    if-le p7, p5, :cond_10

    if-gt p9, v3, :cond_f

    goto :goto_8

    :cond_f
    move p5, v1

    goto :goto_9

    :cond_10
    :goto_8
    move p5, v0

    :goto_9
    iget-boolean p7, p3, Lᐧⁱ/ʼʼ;->ʾˋ:Z

    if-eq p7, p5, :cond_11

    iput-boolean p5, p3, Lᐧⁱ/ʼʼ;->ʾˋ:Z

    new-instance p5, Lᐧⁱ/ʽﹳ;

    const/4 p7, 0x1

    invoke-direct {p5, p3, p7}, Lᐧⁱ/ʽﹳ;-><init>(Lᐧⁱ/ʼʼ;I)V

    invoke-virtual {p1, p5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_11
    sub-int/2addr p4, p2

    sub-int/2addr p8, p6

    if-eq p4, p8, :cond_12

    move v1, v0

    :cond_12
    iget-boolean p2, p3, Lᐧⁱ/ʼʼ;->ʾˋ:Z

    if-nez p2, :cond_13

    if-eqz v1, :cond_13

    new-instance p2, Lᐧⁱ/ʽﹳ;

    const/4 p4, 0x2

    invoke-direct {p2, p3, p4}, Lᐧⁱ/ʽﹳ;-><init>(Lᐧⁱ/ʼʼ;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_13
    return-void

    :pswitch_3
    iget-object v0, p0, Lᐧⁱ/ᵔᵢ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lᐧⁱ/ˏי;

    iget v1, v0, Lᐧⁱ/ˏי;->ˊˋ:I

    move v2, p2

    move-object p2, p1

    iget-object p1, v0, Lᐧⁱ/ˏי;->ˋᵔ:Landroid/widget/PopupWindow;

    sub-int/2addr p4, v2

    sub-int/2addr p5, p3

    sub-int/2addr p8, p6

    sub-int/2addr p9, p7

    if-ne p4, p8, :cond_14

    if-eq p5, p9, :cond_15

    :cond_14
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p3

    if-eqz p3, :cond_15

    invoke-virtual {v0}, Lᐧⁱ/ˏי;->ʽﹳ()V

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getWidth()I

    move-result p4

    sub-int/2addr p3, p4

    sub-int/2addr p3, v1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getHeight()I

    move-result p4

    neg-int p4, p4

    sub-int/2addr p4, v1

    const/4 p5, -0x1

    const/4 p6, -0x1

    invoke-virtual/range {p1 .. p6}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    :cond_15
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
