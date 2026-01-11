.class public final Lᵔʾ/ᵢˏ;
.super Lᵔʾ/ﹳᐧ;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public ʼˈ:I

.field public final ʽʽ:Lᵔʾ/ˆʾ;

.field public ˆﾞ:Landroid/view/View;

.field public ˈʿ:Lᵔʾ/ˏי;

.field public final ˈٴ:Lᵔʾ/ᵎﹶ;

.field public final ˉٴ:I

.field public final ˊʻ:I

.field public ˊˋ:Z

.field public ˋᵔ:Z

.field public ˑٴ:Landroid/view/ViewTreeObserver;

.field public ـˏ:I

.field public final ٴʼ:Lˉˆ/ˉٴ;

.field public final ٴᵢ:I

.field public final ᴵˊ:Landroid/content/Context;

.field public final ᴵᵔ:Z

.field public final ᵎˊ:Lʽˊ/ˉˆ;

.field public final ᵎⁱ:Lˉˆ/ـᵢ;

.field public ᵔי:Landroid/widget/PopupWindow$OnDismissListener;

.field public ᵔٴ:Landroid/view/View;

.field public ﹳـ:Z


# direct methods
.method public constructor <init>(IILandroid/content/Context;Landroid/view/View;Lᵔʾ/ˆʾ;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lˉˆ/ˉٴ;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lˉˆ/ˉٴ;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lᵔʾ/ᵢˏ;->ٴʼ:Lˉˆ/ˉٴ;

    new-instance v0, Lʽˊ/ˉˆ;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Lʽˊ/ˉˆ;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lᵔʾ/ᵢˏ;->ᵎˊ:Lʽˊ/ˉˆ;

    const/4 v0, 0x0

    iput v0, p0, Lᵔʾ/ᵢˏ;->ـˏ:I

    iput-object p3, p0, Lᵔʾ/ᵢˏ;->ᴵˊ:Landroid/content/Context;

    iput-object p5, p0, Lᵔʾ/ᵢˏ;->ʽʽ:Lᵔʾ/ˆʾ;

    iput-boolean p6, p0, Lᵔʾ/ᵢˏ;->ᴵᵔ:Z

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    new-instance v1, Lᵔʾ/ᵎﹶ;

    const v2, 0x7f0e0013

    invoke-direct {v1, p5, v0, p6, v2}, Lᵔʾ/ᵎﹶ;-><init>(Lᵔʾ/ˆʾ;Landroid/view/LayoutInflater;ZI)V

    iput-object v1, p0, Lᵔʾ/ᵢˏ;->ˈٴ:Lᵔʾ/ᵎﹶ;

    iput p1, p0, Lᵔʾ/ᵢˏ;->ٴᵢ:I

    iput p2, p0, Lᵔʾ/ᵢˏ;->ˉٴ:I

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    invoke-virtual {p6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    const v1, 0x7f070017

    invoke-virtual {p6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p6

    invoke-static {v0, p6}, Ljava/lang/Math;->max(II)I

    move-result p6

    iput p6, p0, Lᵔʾ/ᵢˏ;->ˊʻ:I

    iput-object p4, p0, Lᵔʾ/ᵢˏ;->ˆﾞ:Landroid/view/View;

    new-instance p4, Lˉˆ/ـᵢ;

    const/4 p6, 0x0

    invoke-direct {p4, p3, p6, p1, p2}, Lˉˆ/ʿـ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p4, p0, Lᵔʾ/ᵢˏ;->ᵎⁱ:Lˉˆ/ـᵢ;

    invoke-virtual {p5, p0, p3}, Lᵔʾ/ˆʾ;->ⁱˊ(Lᵔʾ/ʽﹳ;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lᵔʾ/ᵢˏ;->ﹳٴ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lᵔʾ/ᵢˏ;->ᵎⁱ:Lˉˆ/ـᵢ;

    invoke-virtual {v0}, Lˉˆ/ʿـ;->dismiss()V

    :cond_0
    return-void
.end method

.method public final onDismiss()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lᵔʾ/ᵢˏ;->ˋᵔ:Z

    iget-object v1, p0, Lᵔʾ/ᵢˏ;->ʽʽ:Lᵔʾ/ˆʾ;

    invoke-virtual {v1, v0}, Lᵔʾ/ˆʾ;->ʽ(Z)V

    iget-object v0, p0, Lᵔʾ/ᵢˏ;->ˑٴ:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lᵔʾ/ᵢˏ;->ᵔٴ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lᵔʾ/ᵢˏ;->ˑٴ:Landroid/view/ViewTreeObserver;

    :cond_0
    iget-object v0, p0, Lᵔʾ/ᵢˏ;->ˑٴ:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lᵔʾ/ᵢˏ;->ٴʼ:Lˉˆ/ˉٴ;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lᵔʾ/ᵢˏ;->ˑٴ:Landroid/view/ViewTreeObserver;

    :cond_1
    iget-object v0, p0, Lᵔʾ/ᵢˏ;->ᵔٴ:Landroid/view/View;

    iget-object v1, p0, Lᵔʾ/ᵢˏ;->ᵎˊ:Lʽˊ/ˉˆ;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v0, p0, Lᵔʾ/ᵢˏ;->ᵔי:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_2
    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .prologue
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/16 p1, 0x52

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lᵔʾ/ᵢˏ;->dismiss()V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final ʼᐧ(I)V
    .locals 0

    iput p1, p0, Lᵔʾ/ᵢˏ;->ـˏ:I

    return-void
.end method

.method public final ʽ(Lᵔʾ/ˆʾ;Z)V
    .locals 1

    .prologue
    iget-object v0, p0, Lᵔʾ/ᵢˏ;->ʽʽ:Lᵔʾ/ˆʾ;

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lᵔʾ/ᵢˏ;->dismiss()V

    iget-object v0, p0, Lᵔʾ/ᵢˏ;->ˈʿ:Lᵔʾ/ˏי;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lᵔʾ/ˏי;->ʽ(Lᵔʾ/ˆʾ;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final ˆʾ()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final ˈ()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lᵔʾ/ᵢˏ;->ˊˋ:Z

    iget-object v0, p0, Lᵔʾ/ᵢˏ;->ˈٴ:Lᵔʾ/ᵎﹶ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lᵔʾ/ᵎﹶ;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final ˉˆ(Z)V
    .locals 1

    iget-object v0, p0, Lᵔʾ/ᵢˏ;->ˈٴ:Lᵔʾ/ᵎﹶ;

    iput-boolean p1, v0, Lᵔʾ/ᵎﹶ;->ʽ:Z

    return-void
.end method

.method public final ˏי(I)V
    .locals 1

    iget-object v0, p0, Lᵔʾ/ᵢˏ;->ᵎⁱ:Lˉˆ/ـᵢ;

    invoke-virtual {v0, p1}, Lˉˆ/ʿـ;->ˆʾ(I)V

    return-void
.end method

.method public final ˑﹳ()V
    .locals 8

    .prologue
    invoke-virtual {p0}, Lᵔʾ/ᵢˏ;->ﹳٴ()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lᵔʾ/ᵢˏ;->ˋᵔ:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lᵔʾ/ᵢˏ;->ˆﾞ:Landroid/view/View;

    if-eqz v0, :cond_7

    iput-object v0, p0, Lᵔʾ/ᵢˏ;->ᵔٴ:Landroid/view/View;

    iget-object v0, p0, Lᵔʾ/ᵢˏ;->ᵎⁱ:Lˉˆ/ـᵢ;

    iget-object v1, v0, Lˉˆ/ʿـ;->ʿᵢ:Lˉˆ/ᵢˏ;

    iget-object v2, v0, Lˉˆ/ʿـ;->ʿᵢ:Lˉˆ/ᵢˏ;

    invoke-virtual {v1, p0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iput-object p0, v0, Lˉˆ/ʿـ;->ˑٴ:Landroid/widget/AdapterView$OnItemClickListener;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lˉˆ/ʿـ;->ʿ:Z

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v3, p0, Lᵔʾ/ᵢˏ;->ᵔٴ:Landroid/view/View;

    iget-object v4, p0, Lᵔʾ/ᵢˏ;->ˑٴ:Landroid/view/ViewTreeObserver;

    const/4 v5, 0x0

    if-nez v4, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    iput-object v6, p0, Lᵔʾ/ᵢˏ;->ˑٴ:Landroid/view/ViewTreeObserver;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lᵔʾ/ᵢˏ;->ٴʼ:Lˉˆ/ˉٴ;

    invoke-virtual {v6, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2
    iget-object v4, p0, Lᵔʾ/ᵢˏ;->ᵎˊ:Lʽˊ/ˉˆ;

    invoke-virtual {v3, v4}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iput-object v3, v0, Lˉˆ/ʿـ;->ˈʿ:Landroid/view/View;

    iget v3, p0, Lᵔʾ/ᵢˏ;->ـˏ:I

    iput v3, v0, Lˉˆ/ʿـ;->ᵔי:I

    iget-boolean v3, p0, Lᵔʾ/ᵢˏ;->ˊˋ:Z

    iget-object v4, p0, Lᵔʾ/ᵢˏ;->ᴵˊ:Landroid/content/Context;

    iget-object v6, p0, Lᵔʾ/ᵢˏ;->ˈٴ:Lᵔʾ/ᵎﹶ;

    if-nez v3, :cond_3

    iget v3, p0, Lᵔʾ/ᵢˏ;->ˊʻ:I

    invoke-static {v6, v4, v3}, Lᵔʾ/ﹳᐧ;->ˉʿ(Landroid/widget/ListAdapter;Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lᵔʾ/ᵢˏ;->ʼˈ:I

    iput-boolean v1, p0, Lᵔʾ/ᵢˏ;->ˊˋ:Z

    :cond_3
    iget v1, p0, Lᵔʾ/ᵢˏ;->ʼˈ:I

    invoke-virtual {v0, v1}, Lˉˆ/ʿـ;->ﹳᐧ(I)V

    const/4 v1, 0x2

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v1, p0, Lᵔʾ/ﹳᐧ;->ʾˋ:Landroid/graphics/Rect;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_4
    move-object v3, v2

    :goto_1
    iput-object v3, v0, Lˉˆ/ʿـ;->ˉـ:Landroid/graphics/Rect;

    invoke-virtual {v0}, Lˉˆ/ʿـ;->ˑﹳ()V

    iget-object v1, v0, Lˉˆ/ʿـ;->ʽʽ:Lˉˆ/ʾˊ;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-boolean v3, p0, Lᵔʾ/ᵢˏ;->ﹳـ:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lᵔʾ/ᵢˏ;->ʽʽ:Lᵔʾ/ˆʾ;

    iget-object v7, v3, Lᵔʾ/ˆʾ;->ˉʿ:Ljava/lang/CharSequence;

    if-eqz v7, :cond_6

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v7, 0x7f0e0012

    invoke-virtual {v4, v7, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    const v7, 0x1020016

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_5

    iget-object v3, v3, Lᵔʾ/ˆʾ;->ˉʿ:Ljava/lang/CharSequence;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v1, v4, v2, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_6
    invoke-virtual {v0, v6}, Lˉˆ/ʿـ;->ʼᐧ(Landroid/widget/ListAdapter;)V

    invoke-virtual {v0}, Lˉˆ/ʿـ;->ˑﹳ()V

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StandardMenuPopup cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final יـ(Z)V
    .locals 0

    iput-boolean p1, p0, Lᵔʾ/ᵢˏ;->ﹳـ:Z

    return-void
.end method

.method public final ᵎﹶ(Lᵔʾ/ʾˋ;)Z
    .locals 9

    .prologue
    invoke-virtual {p1}, Lᵔʾ/ˆʾ;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    new-instance v2, Lᵔʾ/יـ;

    iget-object v6, p0, Lᵔʾ/ᵢˏ;->ᵔٴ:Landroid/view/View;

    iget v3, p0, Lᵔʾ/ᵢˏ;->ٴᵢ:I

    iget v4, p0, Lᵔʾ/ᵢˏ;->ˉٴ:I

    iget-object v5, p0, Lᵔʾ/ᵢˏ;->ᴵˊ:Landroid/content/Context;

    iget-boolean v8, p0, Lᵔʾ/ᵢˏ;->ᴵᵔ:Z

    move-object v7, p1

    invoke-direct/range {v2 .. v8}, Lᵔʾ/יـ;-><init>(IILandroid/content/Context;Landroid/view/View;Lᵔʾ/ˆʾ;Z)V

    iget-object p1, p0, Lᵔʾ/ᵢˏ;->ˈʿ:Lᵔʾ/ˏי;

    iput-object p1, v2, Lᵔʾ/יـ;->ʼˎ:Lᵔʾ/ˏי;

    iget-object v0, v2, Lᵔʾ/יـ;->ˆʾ:Lᵔʾ/ﹳᐧ;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lᵔʾ/ʽﹳ;->ᵔᵢ(Lᵔʾ/ˏי;)V

    :cond_0
    iget-object p1, v7, Lᵔʾ/ˆʾ;->ﾞᴵ:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    move v0, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v0, p1, :cond_2

    invoke-virtual {v7, v0}, Lᵔʾ/ˆʾ;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/MenuItem;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_1

    move p1, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_1
    iput-boolean p1, v2, Lᵔʾ/יـ;->ᵔᵢ:Z

    iget-object v0, v2, Lᵔʾ/יـ;->ˆʾ:Lᵔʾ/ﹳᐧ;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lᵔʾ/ﹳᐧ;->ˉˆ(Z)V

    :cond_3
    iget-object p1, p0, Lᵔʾ/ᵢˏ;->ᵔי:Landroid/widget/PopupWindow$OnDismissListener;

    iput-object p1, v2, Lᵔʾ/יـ;->ٴﹶ:Landroid/widget/PopupWindow$OnDismissListener;

    const/4 p1, 0x0

    iput-object p1, p0, Lᵔʾ/ᵢˏ;->ᵔי:Landroid/widget/PopupWindow$OnDismissListener;

    iget-object p1, p0, Lᵔʾ/ᵢˏ;->ʽʽ:Lᵔʾ/ˆʾ;

    invoke-virtual {p1, v1}, Lᵔʾ/ˆʾ;->ʽ(Z)V

    iget-object p1, p0, Lᵔʾ/ᵢˏ;->ᵎⁱ:Lˉˆ/ـᵢ;

    iget v0, p1, Lˉˆ/ʿـ;->ˊʻ:I

    invoke-virtual {p1}, Lˉˆ/ʿـ;->ᵔʾ()I

    move-result p1

    iget v4, p0, Lᵔʾ/ᵢˏ;->ـˏ:I

    iget-object v5, p0, Lᵔʾ/ᵢˏ;->ˆﾞ:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutDirection()I

    move-result v5

    invoke-static {v4, v5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v4

    and-int/lit8 v4, v4, 0x7

    const/4 v5, 0x5

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lᵔʾ/ᵢˏ;->ˆﾞ:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v0, v4

    :cond_4
    invoke-virtual {v2}, Lᵔʾ/יـ;->ⁱˊ()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    iget-object v4, v2, Lᵔʾ/יـ;->ﾞᴵ:Landroid/view/View;

    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v2, v0, p1, v3, v3}, Lᵔʾ/יـ;->ˈ(IIZZ)V

    :goto_2
    iget-object p1, p0, Lᵔʾ/ᵢˏ;->ˈʿ:Lᵔʾ/ˏי;

    if-eqz p1, :cond_7

    invoke-interface {p1, v7}, Lᵔʾ/ˏי;->ˉˆ(Lᵔʾ/ˆʾ;)Z

    :cond_7
    return v3

    :cond_8
    :goto_3
    return v1
.end method

.method public final ᵔʾ(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lᵔʾ/ᵢˏ;->ˆﾞ:Landroid/view/View;

    return-void
.end method

.method public final ᵔᵢ(Lᵔʾ/ˏי;)V
    .locals 0

    iput-object p1, p0, Lᵔʾ/ᵢˏ;->ˈʿ:Lᵔʾ/ˏי;

    return-void
.end method

.method public final ᵔﹳ(I)V
    .locals 1

    iget-object v0, p0, Lᵔʾ/ᵢˏ;->ᵎⁱ:Lˉˆ/ـᵢ;

    iput p1, v0, Lˉˆ/ʿـ;->ˊʻ:I

    return-void
.end method

.method public final ﹳٴ()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lᵔʾ/ᵢˏ;->ˋᵔ:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lᵔʾ/ᵢˏ;->ᵎⁱ:Lˉˆ/ـᵢ;

    iget-object v0, v0, Lˉˆ/ʿـ;->ʿᵢ:Lˉˆ/ᵢˏ;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ﹳᐧ(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lᵔʾ/ᵢˏ;->ᵔי:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public final ﾞʻ(Lᵔʾ/ˆʾ;)V
    .locals 0

    return-void
.end method

.method public final ﾞᴵ()Lˉˆ/ʾˊ;
    .locals 1

    iget-object v0, p0, Lᵔʾ/ᵢˏ;->ᵎⁱ:Lˉˆ/ـᵢ;

    iget-object v0, v0, Lˉˆ/ʿـ;->ʽʽ:Lˉˆ/ʾˊ;

    return-object v0
.end method
