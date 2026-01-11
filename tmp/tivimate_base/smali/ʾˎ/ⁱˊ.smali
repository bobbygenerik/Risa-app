.class public final Lʾˎ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic ʾˋ:I

.field public final ᴵˊ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lʾˎ/ⁱˊ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʾˎ/ⁱˊ;->ᴵˊ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lʾˎ/ʽ;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lʾˎ/ⁱˊ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lʾˎ/ⁱˊ;->ᴵˊ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lʾˎ/ﾞᴵ;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lʾˎ/ⁱˊ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lʾˎ/ⁱˊ;->ᴵˊ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 9

    .prologue
    iget v0, p0, Lʾˎ/ⁱˊ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʾˎ/ⁱˊ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ʼᐧ(I)V

    const/4 v0, 0x1

    return v0

    :pswitch_0
    const/4 v0, 0x2

    const-string v1, "ViewTarget"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "OnGlobalLayoutListener called attachStateListener="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    :cond_0
    iget-object v0, p0, Lʾˎ/ⁱˊ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʾˎ/ﾞᴵ;

    if-eqz v0, :cond_8

    iget-object v1, v0, Lʾˎ/ﾞᴵ;->ⁱˊ:Ljava/util/ArrayList;

    iget-object v2, v0, Lʾˎ/ﾞᴵ;->ﹳٴ:Landroid/view/View;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_2
    move v3, v5

    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {v0, v6, v3, v4}, Lʾˎ/ﾞᴵ;->ﹳٴ(III)I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_3

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    :cond_3
    move v4, v5

    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {v0, v7, v4, v6}, Lʾˎ/ﾞᴵ;->ﹳٴ(III)I

    move-result v4

    const/high16 v6, -0x80000000

    if-gtz v3, :cond_4

    if-ne v3, v6, :cond_8

    :cond_4
    if-gtz v4, :cond_5

    if-ne v4, v6, :cond_8

    :cond_5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    :goto_2
    if-ge v5, v7, :cond_6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v5, v5, 0x1

    check-cast v8, Lʾˎ/ˈ;

    check-cast v8, Lⁱⁱ/ᵎﹶ;

    invoke-virtual {v8, v3, v4}, Lⁱⁱ/ᵎﹶ;->ˉʿ(II)V

    goto :goto_2

    :cond_6
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, v0, Lʾˎ/ﾞᴵ;->ʽ:Lʾˎ/ⁱˊ;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_7
    const/4 v2, 0x0

    iput-object v2, v0, Lʾˎ/ﾞᴵ;->ʽ:Lʾˎ/ⁱˊ;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_8
    :goto_3
    const/4 v0, 0x1

    return v0

    :pswitch_1
    const/4 v0, 0x2

    const-string v1, "CustomViewTarget"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "OnGlobalLayoutListener called attachStateListener="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    :cond_9
    iget-object v0, p0, Lʾˎ/ⁱˊ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʾˎ/ʽ;

    if-eqz v0, :cond_11

    iget-object v1, v0, Lʾˎ/ʽ;->ⁱˊ:Ljava/util/ArrayList;

    iget-object v2, v0, Lʾˎ/ʽ;->ﹳٴ:Landroid/view/View;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    goto/16 :goto_7

    :cond_a
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_b

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_4

    :cond_b
    move v3, v5

    :goto_4
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {v0, v6, v3, v4}, Lʾˎ/ʽ;->ﹳٴ(III)I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_c

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_5

    :cond_c
    move v4, v5

    :goto_5
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {v0, v7, v4, v6}, Lʾˎ/ʽ;->ﹳٴ(III)I

    move-result v4

    const/high16 v6, -0x80000000

    if-gtz v3, :cond_d

    if-ne v3, v6, :cond_11

    :cond_d
    if-gtz v4, :cond_e

    if-ne v4, v6, :cond_11

    :cond_e
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    :goto_6
    if-ge v5, v7, :cond_f

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v5, v5, 0x1

    check-cast v8, Lʾˎ/ˈ;

    check-cast v8, Lⁱⁱ/ᵎﹶ;

    invoke-virtual {v8, v3, v4}, Lⁱⁱ/ᵎﹶ;->ˉʿ(II)V

    goto :goto_6

    :cond_f
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, v0, Lʾˎ/ʽ;->ʽ:Lʾˎ/ⁱˊ;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_10
    const/4 v2, 0x0

    iput-object v2, v0, Lʾˎ/ʽ;->ʽ:Lʾˎ/ⁱˊ;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_11
    :goto_7
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
