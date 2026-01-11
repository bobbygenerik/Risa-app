.class public final Lˋˋ/ﹳـ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic ﹳٴ:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lˋˋ/ﹳـ;->ﹳٴ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ʽ(I)V
    .locals 4

    .prologue
    iget-object v0, p0, Lˋˋ/ﹳـ;->ﹳٴ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->ᵔٴ(Landroid/view/View;)Lˋˋ/ʼـ;

    move-result-object v2

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->ˆﾞ:Lˋˋ/ᴵˑ;

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v3, v2}, Lˋˋ/ᴵˑ;->ˆʾ(Lˋˋ/ʼـ;)V

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    return-void
.end method

.method public ⁱˊ(Lˋˋ/ʼـ;Lʻʿ/ˉˆ;Lʻʿ/ˉˆ;)V
    .locals 8

    .prologue
    iget-object v0, p0, Lˋˋ/ﹳـ;->ﹳٴ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->ʽʽ:Lˋˋ/ʻˋ;

    invoke-virtual {v1, p1}, Lˋˋ/ʻˋ;->ˉʿ(Lˋˋ/ʼـ;)V

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->ᵔᵢ(Lˋˋ/ʼـ;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lˋˋ/ʼـ;->ʼᐧ(Z)V

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->ˑʼ:Lˋˋ/ᐧᴵ;

    move-object v2, v1

    check-cast v2, Lʿי/ـᵎ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, p2, Lʻʿ/ˉˆ;->ﹳٴ:I

    iget v5, p2, Lʻʿ/ˉˆ;->ⁱˊ:I

    iget-object p2, p1, Lˋˋ/ʼـ;->ʾˋ:Landroid/view/View;

    if-nez p3, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    :goto_0
    move v6, v1

    goto :goto_1

    :cond_0
    iget v1, p3, Lʻʿ/ˉˆ;->ﹳٴ:I

    goto :goto_0

    :goto_1
    if-nez p3, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    :goto_2
    move v7, p3

    goto :goto_3

    :cond_1
    iget p3, p3, Lʻʿ/ˉˆ;->ⁱˊ:I

    goto :goto_2

    :goto_3
    invoke-virtual {p1}, Lˋˋ/ʼـ;->ˆʾ()Z

    move-result p3

    if-nez p3, :cond_2

    if-ne v4, v6, :cond_3

    if-eq v5, v7, :cond_2

    goto :goto_4

    :cond_2
    move-object v3, p1

    goto :goto_5

    :cond_3
    :goto_4
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p3

    add-int/2addr p3, v6

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v7

    invoke-virtual {p2, v6, v7, p3, v1}, Landroid/view/View;->layout(IIII)V

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lʿי/ـᵎ;->ˆʾ(Lˋˋ/ʼـ;IIII)Z

    move-result p1

    goto :goto_7

    :goto_5
    iget p1, v2, Lʿי/ـᵎ;->ᵔᵢ:I

    packed-switch p1, :pswitch_data_0

    invoke-virtual {v2, v3}, Lʿי/ـᵎ;->ﹳᐧ(Lˋˋ/ʼـ;)V

    iget-object p1, v2, Lʿי/ـᵎ;->ʼˎ:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :pswitch_0
    invoke-virtual {v2, v3}, Lʿי/ـᵎ;->ᵔﹳ(Lˋˋ/ʼـ;)V

    iget-object p1, v2, Lʿי/ـᵎ;->ʼˎ:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    const/4 p1, 0x1

    :goto_7
    if-eqz p1, :cond_4

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->ʿᵢ()V

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public ﹳٴ(Lˋˋ/ʼـ;Lʻʿ/ˉˆ;Lʻʿ/ˉˆ;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lˋˋ/ʼـ;->ʼᐧ(Z)V

    iget-object v0, p0, Lˋˋ/ﹳـ;->ﹳٴ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->ˑʼ:Lˋˋ/ᐧᴵ;

    move-object v2, v1

    check-cast v2, Lʿי/ـᵎ;

    if-eqz p2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, p2, Lʻʿ/ˉˆ;->ﹳٴ:I

    iget v6, p3, Lʻʿ/ˉˆ;->ﹳٴ:I

    if-ne v4, v6, :cond_1

    iget v1, p2, Lʻʿ/ˉˆ;->ⁱˊ:I

    iget v3, p3, Lʻʿ/ˉˆ;->ⁱˊ:I

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, p1

    goto :goto_1

    :cond_1
    :goto_0
    iget v5, p2, Lʻʿ/ˉˆ;->ⁱˊ:I

    iget v7, p3, Lʻʿ/ˉˆ;->ⁱˊ:I

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lʿי/ـᵎ;->ˆʾ(Lˋˋ/ʼـ;IIII)Z

    move-result p1

    goto :goto_3

    :goto_1
    iget p1, v2, Lʿי/ـᵎ;->ᵔᵢ:I

    packed-switch p1, :pswitch_data_0

    invoke-virtual {v2, v3}, Lʿי/ـᵎ;->ﹳᐧ(Lˋˋ/ʼـ;)V

    iget-object p1, v3, Lˋˋ/ʼـ;->ʾˋ:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, v2, Lʿי/ـᵎ;->ˆʾ:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_0
    invoke-virtual {v2, v3}, Lʿי/ـᵎ;->ᵔﹳ(Lˋˋ/ʼـ;)V

    iget-object p1, v3, Lˋˋ/ʼـ;->ʾˋ:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, v2, Lʿי/ـᵎ;->ˆʾ:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    const/4 p1, 0x1

    :goto_3
    if-eqz p1, :cond_2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->ʿᵢ()V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
