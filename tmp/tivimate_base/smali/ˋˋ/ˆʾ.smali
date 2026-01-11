.class public final Lˋˋ/ˆʾ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʽʽ:Lʿי/ـᵎ;

.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lʿי/ـᵎ;Ljava/util/ArrayList;I)V
    .locals 0

    iput p3, p0, Lˋˋ/ˆʾ;->ʾˋ:I

    iput-object p1, p0, Lˋˋ/ˆʾ;->ʽʽ:Lʿי/ـᵎ;

    iput-object p2, p0, Lˋˋ/ˆʾ;->ᴵˊ:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .prologue
    iget v0, p0, Lˋˋ/ˆʾ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lˋˋ/ˆʾ;->ᴵˊ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lˋˋ/ˆʾ;->ʽʽ:Lʿי/ـᵎ;

    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    check-cast v4, Lˋˋ/ʼـ;

    iget-object v5, v4, Lˋˋ/ʼـ;->ʾˋ:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget-object v7, v3, Lʿי/ـᵎ;->ʼᐧ:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    iget-wide v8, v3, Lˋˋ/ᐧᴵ;->ʽ:J

    invoke-virtual {v7, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    new-instance v8, Lˋˋ/ٴﹶ;

    invoke-direct {v8, v3, v4, v5, v6}, Lˋˋ/ٴﹶ;-><init>(Lʿי/ـᵎ;Lˋˋ/ʼـ;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v3, Lʿי/ـᵎ;->ˉʿ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    :pswitch_0
    iget-object v0, p0, Lˋˋ/ˆʾ;->ᴵˊ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_1
    :goto_1
    iget-object v4, p0, Lˋˋ/ˆʾ;->ʽʽ:Lʿי/ـᵎ;

    if-ge v2, v1, :cond_5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    move-object v5, v3

    check-cast v5, Lˋˋ/ᵔʾ;

    iget-object v9, v4, Lʿי/ـᵎ;->יـ:Ljava/util/ArrayList;

    iget-wide v10, v4, Lˋˋ/ᐧᴵ;->ﾞᴵ:J

    iget-object v3, v5, Lˋˋ/ᵔʾ;->ﹳٴ:Lˋˋ/ʼـ;

    const/4 v6, 0x0

    if-nez v3, :cond_2

    move-object v7, v6

    goto :goto_2

    :cond_2
    iget-object v3, v3, Lˋˋ/ʼـ;->ʾˋ:Landroid/view/View;

    move-object v7, v3

    :goto_2
    iget-object v3, v5, Lˋˋ/ᵔʾ;->ⁱˊ:Lˋˋ/ʼـ;

    if-eqz v3, :cond_3

    iget-object v6, v3, Lˋˋ/ʼـ;->ʾˋ:Landroid/view/View;

    :cond_3
    move-object v12, v6

    const/4 v13, 0x0

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget-object v3, v5, Lˋˋ/ᵔʾ;->ﹳٴ:Lˋˋ/ʼـ;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, v5, Lˋˋ/ᵔʾ;->ˑﹳ:I

    iget v8, v5, Lˋˋ/ᵔʾ;->ʽ:I

    sub-int/2addr v3, v8

    int-to-float v3, v3

    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    iget v3, v5, Lˋˋ/ᵔʾ;->ﾞᴵ:I

    iget v8, v5, Lˋˋ/ᵔʾ;->ˈ:I

    sub-int/2addr v3, v8

    int-to-float v3, v3

    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v6, v13}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    new-instance v3, Lˋˋ/ˉʿ;

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lˋˋ/ˉʿ;-><init>(Lʿי/ـᵎ;Lˋˋ/ᵔʾ;Landroid/view/ViewPropertyAnimator;Landroid/view/View;I)V

    invoke-virtual {v14, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_4
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget-object v3, v5, Lˋˋ/ᵔʾ;->ⁱˊ:Lˋˋ/ʼـ;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v13}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v3, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    new-instance v3, Lˋˋ/ˉʿ;

    const/4 v8, 0x1

    move-object v7, v12

    invoke-direct/range {v3 .. v8}, Lˋˋ/ˉʿ;-><init>(Lʿי/ـᵎ;Lˋˋ/ᵔʾ;Landroid/view/ViewPropertyAnimator;Landroid/view/View;I)V

    invoke-virtual {v9, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v4, Lʿי/ـᵎ;->ˉˆ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    :pswitch_1
    iget-object v0, p0, Lˋˋ/ˆʾ;->ᴵˊ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_3
    iget-object v4, p0, Lˋˋ/ˆʾ;->ʽʽ:Lʿי/ـᵎ;

    if-ge v2, v1, :cond_8

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lˋˋ/ˉˆ;

    iget-object v5, v3, Lˋˋ/ˉˆ;->ﹳٴ:Lˋˋ/ʼـ;

    iget v6, v3, Lˋˋ/ˉˆ;->ⁱˊ:I

    iget v7, v3, Lˋˋ/ˉˆ;->ʽ:I

    iget v8, v3, Lˋˋ/ˉˆ;->ˈ:I

    iget v3, v3, Lˋˋ/ˉˆ;->ˑﹳ:I

    move v9, v7

    iget-object v7, v5, Lˋˋ/ʼـ;->ʾˋ:Landroid/view/View;

    sub-int v6, v8, v6

    sub-int v8, v3, v9

    const/4 v3, 0x0

    if-eqz v6, :cond_6

    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    :cond_6
    if-eqz v8, :cond_7

    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    :cond_7
    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    iget-object v3, v4, Lʿי/ـᵎ;->ᵔﹳ:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v10, v4, Lˋˋ/ᐧᴵ;->ˑﹳ:J

    invoke-virtual {v9, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    new-instance v3, Lˋˋ/ﾞʻ;

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Lˋˋ/ﾞʻ;-><init>(Lʿי/ـᵎ;Lˋˋ/ʼـ;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;I)V

    invoke-virtual {v11, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_3

    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v4, Lʿי/ـᵎ;->ᵔʾ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
