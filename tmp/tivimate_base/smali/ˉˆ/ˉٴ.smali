.class public final Lˉˆ/ˉٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lˉˆ/ˉٴ;->ʾˋ:I

    iput-object p2, p0, Lˉˆ/ˉٴ;->ᴵˊ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 4

    .prologue
    iget v0, p0, Lˉˆ/ˉٴ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lˉˆ/ˉٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lᵔʾ/ᵢˏ;

    iget-object v1, v0, Lᵔʾ/ᵢˏ;->ᵎⁱ:Lˉˆ/ـᵢ;

    invoke-virtual {v0}, Lᵔʾ/ᵢˏ;->ﹳٴ()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, v1, Lˉˆ/ʿـ;->ʿ:Z

    if-nez v2, :cond_2

    iget-object v2, v0, Lᵔʾ/ᵢˏ;->ᵔٴ:Landroid/view/View;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lˉˆ/ʿـ;->ˑﹳ()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lᵔʾ/ᵢˏ;->dismiss()V

    :cond_2
    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lˉˆ/ˉٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lᵔʾ/ˈ;

    iget-object v1, v0, Lᵔʾ/ˈ;->ᵎⁱ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lᵔʾ/ˈ;->ﹳٴ()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lᵔʾ/ʽ;

    iget-object v3, v3, Lᵔʾ/ʽ;->ﹳٴ:Lˉˆ/ـᵢ;

    iget-boolean v3, v3, Lˉˆ/ʿـ;->ʿ:Z

    if-nez v3, :cond_5

    iget-object v3, v0, Lᵔʾ/ˈ;->ˑٴ:Landroid/view/View;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->isShown()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v2, v0, :cond_5

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lᵔʾ/ʽ;

    iget-object v3, v3, Lᵔʾ/ʽ;->ﹳٴ:Lˉˆ/ـᵢ;

    invoke-virtual {v3}, Lˉˆ/ʿـ;->ˑﹳ()V

    goto :goto_2

    :cond_4
    :goto_3
    invoke-virtual {v0}, Lᵔʾ/ˈ;->dismiss()V

    :cond_5
    return-void

    :pswitch_1
    iget-object v0, p0, Lˉˆ/ˉٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˉˆ/ˆﾞ;

    iget-object v1, v0, Lˉˆ/ˆﾞ;->ـﹶ:Lˉˆ/ˑٴ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v0, Lˉˆ/ˆﾞ;->ʻᵎ:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lˉˆ/ˆﾞ;->יـ()V

    invoke-virtual {v0}, Lˉˆ/ʿـ;->ˑﹳ()V

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Lˉˆ/ʿـ;->dismiss()V

    :goto_4
    return-void

    :pswitch_2
    iget-object v0, p0, Lˉˆ/ˉٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˉˆ/ˑٴ;

    invoke-virtual {v0}, Lˉˆ/ˑٴ;->getInternalPopup()Lˉˆ/ˈʿ;

    move-result-object v1

    invoke-interface {v1}, Lˉˆ/ˈʿ;->ﹳٴ()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v0, Lˉˆ/ˑٴ;->ˊʻ:Lˉˆ/ˈʿ;

    invoke-virtual {v0}, Landroid/view/View;->getTextDirection()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getTextAlignment()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lˉˆ/ˈʿ;->ˉʿ(II)V

    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
