.class public final Lᵔʾ/ˈ;
.super Lᵔʾ/ﹳᐧ;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public ʼˈ:Z

.field public final ʽʽ:I

.field public ʿ:Landroid/view/ViewTreeObserver;

.field public ʿᵢ:Landroid/widget/PopupWindow$OnDismissListener;

.field public ˆﾞ:I

.field public ˈʿ:Landroid/view/View;

.field public final ˈٴ:I

.field public ˈⁱ:Z

.field public ˉـ:Lᵔʾ/ˏי;

.field public final ˉٴ:Ljava/util/ArrayList;

.field public final ˊʻ:Z

.field public ˊˋ:Z

.field public ˋᵔ:I

.field public ˑٴ:Landroid/view/View;

.field public ـˏ:I

.field public final ٴʼ:Lˉˆ/ˉٴ;

.field public final ٴᵢ:Landroid/os/Handler;

.field public final ᴵˊ:Landroid/content/Context;

.field public ᴵˑ:Z

.field public final ᴵᵔ:I

.field public final ᵎˊ:Lʽˊ/ˉˆ;

.field public ᵎᵔ:Z

.field public final ᵎⁱ:Ljava/util/ArrayList;

.field public final ᵔי:Lᐧﹳ/ʽ;

.field public ᵔٴ:I

.field public ﹳـ:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IIZ)V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lᵔʾ/ˈ;->ˉٴ:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lᵔʾ/ˈ;->ᵎⁱ:Ljava/util/ArrayList;

    new-instance v0, Lˉˆ/ˉٴ;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lˉˆ/ˉٴ;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lᵔʾ/ˈ;->ٴʼ:Lˉˆ/ˉٴ;

    new-instance v0, Lʽˊ/ˉˆ;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lʽˊ/ˉˆ;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lᵔʾ/ˈ;->ᵎˊ:Lʽˊ/ˉˆ;

    new-instance v0, Lᐧﹳ/ʽ;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Lᐧﹳ/ʽ;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lᵔʾ/ˈ;->ᵔי:Lᐧﹳ/ʽ;

    const/4 v0, 0x0

    iput v0, p0, Lᵔʾ/ˈ;->ˆﾞ:I

    iput v0, p0, Lᵔʾ/ˈ;->ᵔٴ:I

    iput-object p1, p0, Lᵔʾ/ˈ;->ᴵˊ:Landroid/content/Context;

    iput-object p2, p0, Lᵔʾ/ˈ;->ˈʿ:Landroid/view/View;

    iput p3, p0, Lᵔʾ/ˈ;->ˈٴ:I

    iput p4, p0, Lᵔʾ/ˈ;->ᴵᵔ:I

    iput-boolean p5, p0, Lᵔʾ/ˈ;->ˊʻ:Z

    iput-boolean v0, p0, Lᵔʾ/ˈ;->ˈⁱ:Z

    invoke-virtual {p2}, Landroid/view/View;->getLayoutDirection()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    move v0, p3

    :goto_0
    iput v0, p0, Lᵔʾ/ˈ;->ˋᵔ:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p2, p2, 0x2

    const p3, 0x7f070017

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lᵔʾ/ˈ;->ʽʽ:I

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lᵔʾ/ˈ;->ٴᵢ:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 4

    .prologue
    iget-object v0, p0, Lᵔʾ/ˈ;->ᵎⁱ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    new-array v2, v1, [Lᵔʾ/ʽ;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lᵔʾ/ʽ;

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    aget-object v2, v0, v1

    iget-object v3, v2, Lᵔʾ/ʽ;->ﹳٴ:Lˉˆ/ـᵢ;

    iget-object v3, v3, Lˉˆ/ʿـ;->ʿᵢ:Lˉˆ/ᵢˏ;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v2, Lᵔʾ/ʽ;->ﹳٴ:Lˉˆ/ـᵢ;

    invoke-virtual {v2}, Lˉˆ/ʿـ;->dismiss()V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onDismiss()V
    .locals 6

    .prologue
    iget-object v0, p0, Lᵔʾ/ˈ;->ᵎⁱ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lᵔʾ/ʽ;

    iget-object v5, v4, Lᵔʾ/ʽ;->ﹳٴ:Lˉˆ/ـᵢ;

    iget-object v5, v5, Lˉˆ/ʿـ;->ʿᵢ:Lˉˆ/ᵢˏ;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_2

    iget-object v0, v4, Lᵔʾ/ʽ;->ⁱˊ:Lᵔʾ/ˆʾ;

    invoke-virtual {v0, v2}, Lᵔʾ/ˆʾ;->ʽ(Z)V

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

    invoke-virtual {p0}, Lᵔʾ/ˈ;->dismiss()V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final ʼᐧ(I)V
    .locals 1

    .prologue
    iget v0, p0, Lᵔʾ/ˈ;->ˆﾞ:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lᵔʾ/ˈ;->ˆﾞ:I

    iget-object v0, p0, Lᵔʾ/ˈ;->ˈʿ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    invoke-static {p1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p1

    iput p1, p0, Lᵔʾ/ˈ;->ᵔٴ:I

    :cond_0
    return-void
.end method

.method public final ʽ(Lᵔʾ/ˆʾ;Z)V
    .locals 6

    .prologue
    iget-object v0, p0, Lᵔʾ/ˈ;->ᵎⁱ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lᵔʾ/ʽ;

    iget-object v4, v4, Lᵔʾ/ʽ;->ⁱˊ:Lᵔʾ/ˆʾ;

    if-ne p1, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    :goto_1
    if-gez v3, :cond_2

    goto/16 :goto_4

    :cond_2
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lᵔʾ/ʽ;

    iget-object v1, v1, Lᵔʾ/ʽ;->ⁱˊ:Lᵔʾ/ˆʾ;

    invoke-virtual {v1, v2}, Lᵔʾ/ˆʾ;->ʽ(Z)V

    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lᵔʾ/ʽ;

    iget-object v3, v1, Lᵔʾ/ʽ;->ⁱˊ:Lᵔʾ/ˆʾ;

    iget-object v1, v1, Lᵔʾ/ʽ;->ﹳٴ:Lˉˆ/ـᵢ;

    iget-object v4, v1, Lˉˆ/ʿـ;->ʿᵢ:Lˉˆ/ᵢˏ;

    invoke-virtual {v3, p0}, Lᵔʾ/ˆʾ;->ﹳᐧ(Lᵔʾ/ʽﹳ;)V

    iget-boolean v3, p0, Lᵔʾ/ˈ;->ᵎᵔ:Z

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    invoke-static {v4, v5}, Lˉˆ/ⁱי;->ⁱˊ(Landroid/widget/PopupWindow;Landroid/transition/Transition;)V

    invoke-virtual {v4, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    :cond_4
    invoke-virtual {v1}, Lˉˆ/ʿـ;->dismiss()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-lez v1, :cond_5

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lᵔʾ/ʽ;

    iget v4, v4, Lᵔʾ/ʽ;->ʽ:I

    iput v4, p0, Lᵔʾ/ˈ;->ˋᵔ:I

    goto :goto_3

    :cond_5
    iget-object v4, p0, Lᵔʾ/ˈ;->ˈʿ:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutDirection()I

    move-result v4

    if-ne v4, v3, :cond_6

    move v4, v2

    goto :goto_2

    :cond_6
    move v4, v3

    :goto_2
    iput v4, p0, Lᵔʾ/ˈ;->ˋᵔ:I

    :goto_3
    if-nez v1, :cond_a

    invoke-virtual {p0}, Lᵔʾ/ˈ;->dismiss()V

    iget-object p2, p0, Lᵔʾ/ˈ;->ˉـ:Lᵔʾ/ˏי;

    if-eqz p2, :cond_7

    invoke-interface {p2, p1, v3}, Lᵔʾ/ˏי;->ʽ(Lᵔʾ/ˆʾ;Z)V

    :cond_7
    iget-object p1, p0, Lᵔʾ/ˈ;->ʿ:Landroid/view/ViewTreeObserver;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lᵔʾ/ˈ;->ʿ:Landroid/view/ViewTreeObserver;

    iget-object p2, p0, Lᵔʾ/ˈ;->ٴʼ:Lˉˆ/ˉٴ;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_8
    iput-object v5, p0, Lᵔʾ/ˈ;->ʿ:Landroid/view/ViewTreeObserver;

    :cond_9
    iget-object p1, p0, Lᵔʾ/ˈ;->ˑٴ:Landroid/view/View;

    iget-object p2, p0, Lᵔʾ/ˈ;->ᵎˊ:Lʽˊ/ˉˆ;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p1, p0, Lᵔʾ/ˈ;->ʿᵢ:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {p1}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    return-void

    :cond_a
    if-eqz p2, :cond_b

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lᵔʾ/ʽ;

    iget-object p1, p1, Lᵔʾ/ʽ;->ⁱˊ:Lᵔʾ/ˆʾ;

    invoke-virtual {p1, v2}, Lᵔʾ/ˆʾ;->ʽ(Z)V

    :cond_b
    :goto_4
    return-void
.end method

.method public final ʽﹳ(Lᵔʾ/ˆʾ;)V
    .locals 19

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lᵔʾ/ˈ;->ᴵˊ:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    new-instance v4, Lᵔʾ/ᵎﹶ;

    iget-boolean v5, v0, Lᵔʾ/ˈ;->ˊʻ:Z

    const v6, 0x7f0e000b

    invoke-direct {v4, v1, v3, v5, v6}, Lᵔʾ/ᵎﹶ;-><init>(Lᵔʾ/ˆʾ;Landroid/view/LayoutInflater;ZI)V

    invoke-virtual {v0}, Lᵔʾ/ˈ;->ﹳٴ()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_0

    iget-boolean v5, v0, Lᵔʾ/ˈ;->ˈⁱ:Z

    if-eqz v5, :cond_0

    iput-boolean v6, v4, Lᵔʾ/ᵎﹶ;->ʽ:Z

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Lᵔʾ/ˈ;->ﹳٴ()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v1, Lᵔʾ/ˆʾ;->ﾞᴵ:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v5, :cond_2

    invoke-virtual {v1, v8}, Lᵔʾ/ˆʾ;->getItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/MenuItem;->isVisible()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_1

    move v5, v6

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_1
    iput-boolean v5, v4, Lᵔʾ/ᵎﹶ;->ʽ:Z

    :cond_3
    :goto_2
    iget v5, v0, Lᵔʾ/ˈ;->ʽʽ:I

    invoke-static {v4, v2, v5}, Lᵔʾ/ﹳᐧ;->ˉʿ(Landroid/widget/ListAdapter;Landroid/content/Context;I)I

    move-result v5

    new-instance v8, Lˉˆ/ـᵢ;

    iget v9, v0, Lᵔʾ/ˈ;->ˈٴ:I

    iget v10, v0, Lᵔʾ/ˈ;->ᴵᵔ:I

    const/4 v11, 0x0

    invoke-direct {v8, v2, v11, v9, v10}, Lˉˆ/ʿـ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iget-object v2, v0, Lᵔʾ/ˈ;->ᵔי:Lᐧﹳ/ʽ;

    iput-object v2, v8, Lˉˆ/ـᵢ;->ˏᵢ:Lᐧﹳ/ʽ;

    iput-object v0, v8, Lˉˆ/ʿـ;->ˑٴ:Landroid/widget/AdapterView$OnItemClickListener;

    iget-object v2, v8, Lˉˆ/ʿـ;->ʿᵢ:Lˉˆ/ᵢˏ;

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v9, v0, Lᵔʾ/ˈ;->ˈʿ:Landroid/view/View;

    iput-object v9, v8, Lˉˆ/ʿـ;->ˈʿ:Landroid/view/View;

    iget v9, v0, Lᵔʾ/ˈ;->ᵔٴ:I

    iput v9, v8, Lˉˆ/ʿـ;->ᵔי:I

    iput-boolean v6, v8, Lˉˆ/ʿـ;->ʿ:Z

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    const/4 v9, 0x2

    invoke-virtual {v2, v9}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    invoke-virtual {v8, v4}, Lˉˆ/ʿـ;->ʼᐧ(Landroid/widget/ListAdapter;)V

    invoke-virtual {v8, v5}, Lˉˆ/ʿـ;->ﹳᐧ(I)V

    iget v4, v0, Lᵔʾ/ˈ;->ᵔٴ:I

    iput v4, v8, Lˉˆ/ʿـ;->ᵔי:I

    iget-object v4, v0, Lᵔʾ/ˈ;->ᵎⁱ:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_d

    invoke-static {v6, v4}, Lᐧـ/ˈ;->ᵔʾ(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lᵔʾ/ʽ;

    iget-object v12, v10, Lᵔʾ/ʽ;->ⁱˊ:Lᵔʾ/ˆʾ;

    iget-object v13, v12, Lᵔʾ/ˆʾ;->ﾞᴵ:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v13, :cond_5

    invoke-virtual {v12, v14}, Lᵔʾ/ˆʾ;->getItem(I)Landroid/view/MenuItem;

    move-result-object v15

    invoke-interface {v15}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v15}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v9

    if-ne v1, v9, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v14, v14, 0x1

    const/4 v9, 0x2

    goto :goto_3

    :cond_5
    move-object v15, v11

    :goto_4
    if-nez v15, :cond_6

    move-object v6, v11

    const/16 v17, 0x0

    goto :goto_9

    :cond_6
    iget-object v9, v10, Lᵔʾ/ʽ;->ﹳٴ:Lˉˆ/ـᵢ;

    iget-object v9, v9, Lˉˆ/ʿـ;->ʽʽ:Lˉˆ/ʾˊ;

    invoke-virtual {v9}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v12

    instance-of v13, v12, Landroid/widget/HeaderViewListAdapter;

    if-eqz v13, :cond_7

    check-cast v12, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v12}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v13

    invoke-virtual {v12}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v12

    check-cast v12, Lᵔʾ/ᵎﹶ;

    goto :goto_5

    :cond_7
    check-cast v12, Lᵔʾ/ᵎﹶ;

    const/4 v13, 0x0

    :goto_5
    invoke-virtual {v12}, Lᵔʾ/ᵎﹶ;->getCount()I

    move-result v14

    const/4 v11, 0x0

    const/16 v17, 0x0

    :goto_6
    const/4 v7, -0x1

    if-ge v11, v14, :cond_9

    invoke-virtual {v12, v11}, Lᵔʾ/ᵎﹶ;->ⁱˊ(I)Lᵔʾ/ﾞʻ;

    move-result-object v6

    if-ne v15, v6, :cond_8

    goto :goto_7

    :cond_8
    add-int/lit8 v11, v11, 0x1

    const/4 v6, 0x1

    goto :goto_6

    :cond_9
    move v11, v7

    :goto_7
    if-ne v11, v7, :cond_b

    :cond_a
    :goto_8
    const/4 v6, 0x0

    goto :goto_9

    :cond_b
    add-int/2addr v11, v13

    invoke-virtual {v9}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v6

    sub-int/2addr v11, v6

    if-ltz v11, :cond_a

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-lt v11, v6, :cond_c

    goto :goto_8

    :cond_c
    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    goto :goto_9

    :cond_d
    const/16 v17, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    :goto_9
    if-eqz v6, :cond_19

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1c

    if-gt v7, v9, :cond_f

    sget-object v7, Lˉˆ/ـᵢ;->ᴵʼ:Ljava/lang/reflect/Method;

    if-eqz v7, :cond_e

    const/4 v9, 0x1

    :try_start_0
    new-array v11, v9, [Ljava/lang/Object;

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v9, v11, v17

    invoke-virtual {v7, v2, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_e
    :goto_a
    const/4 v7, 0x0

    goto :goto_b

    :catch_0
    const-string v7, "MenuPopupWindow"

    const-string v9, "Could not invoke setTouchModal() on PopupWindow. Oh well."

    nop

    goto :goto_a

    :cond_f
    move/from16 v7, v17

    invoke-static {v2, v7}, Lˉˆ/ʻʿ;->ﹳٴ(Landroid/widget/PopupWindow;Z)V

    goto :goto_a

    :goto_b
    invoke-static {v2, v7}, Lˉˆ/ⁱי;->ﹳٴ(Landroid/widget/PopupWindow;Landroid/transition/Transition;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v18, 0x1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lᵔʾ/ʽ;

    iget-object v2, v2, Lᵔʾ/ʽ;->ﹳٴ:Lˉˆ/ـᵢ;

    iget-object v2, v2, Lˉˆ/ʿـ;->ʽʽ:Lˉˆ/ʾˊ;

    const/4 v7, 0x2

    new-array v9, v7, [I

    invoke-virtual {v2, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iget-object v11, v0, Lᵔʾ/ˈ;->ˑٴ:Landroid/view/View;

    invoke-virtual {v11, v7}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v11, v0, Lᵔʾ/ˈ;->ˋᵔ:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_11

    const/16 v17, 0x0

    aget v9, v9, v17

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v9

    add-int/2addr v2, v5

    iget v7, v7, Landroid/graphics/Rect;->right:I

    if-le v2, v7, :cond_10

    move/from16 v2, v17

    :goto_c
    const/4 v9, 0x1

    goto :goto_e

    :cond_10
    :goto_d
    const/4 v2, 0x1

    goto :goto_c

    :cond_11
    const/16 v17, 0x0

    aget v2, v9, v17

    sub-int/2addr v2, v5

    if-gez v2, :cond_12

    goto :goto_d

    :cond_12
    const/4 v2, 0x0

    goto :goto_c

    :goto_e
    if-ne v2, v9, :cond_13

    const/4 v9, 0x1

    goto :goto_f

    :cond_13
    const/4 v9, 0x0

    :goto_f
    iput v2, v0, Lᵔʾ/ˈ;->ˋᵔ:I

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    const/4 v11, 0x5

    if-lt v2, v7, :cond_14

    iput-object v6, v8, Lˉˆ/ʿـ;->ˈʿ:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v7, 0x0

    goto :goto_10

    :cond_14
    const/4 v7, 0x2

    new-array v2, v7, [I

    iget-object v12, v0, Lᵔʾ/ˈ;->ˈʿ:Landroid/view/View;

    invoke-virtual {v12, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    new-array v7, v7, [I

    invoke-virtual {v6, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    iget v12, v0, Lᵔʾ/ˈ;->ᵔٴ:I

    and-int/lit8 v12, v12, 0x7

    const/16 v17, 0x0

    if-ne v12, v11, :cond_15

    aget v12, v2, v17

    iget-object v13, v0, Lᵔʾ/ˈ;->ˈʿ:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v13

    add-int/2addr v13, v12

    aput v13, v2, v17

    aget v12, v7, v17

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v13

    add-int/2addr v13, v12

    aput v13, v7, v17

    :cond_15
    aget v12, v7, v17

    aget v13, v2, v17

    sub-int/2addr v12, v13

    const/16 v18, 0x1

    aget v7, v7, v18

    aget v2, v2, v18

    sub-int/2addr v7, v2

    move v2, v7

    move v7, v12

    :goto_10
    iget v12, v0, Lᵔʾ/ˈ;->ᵔٴ:I

    and-int/2addr v12, v11

    if-ne v12, v11, :cond_18

    if-eqz v9, :cond_16

    add-int/2addr v7, v5

    goto :goto_11

    :cond_16
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v5

    :cond_17
    sub-int/2addr v7, v5

    goto :goto_11

    :cond_18
    if-eqz v9, :cond_17

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v7, v5

    :goto_11
    iput v7, v8, Lˉˆ/ʿـ;->ˊʻ:I

    const/4 v9, 0x1

    iput-boolean v9, v8, Lˉˆ/ʿـ;->ᵎˊ:Z

    iput-boolean v9, v8, Lˉˆ/ʿـ;->ٴʼ:Z

    invoke-virtual {v8, v2}, Lˉˆ/ʿـ;->ˆʾ(I)V

    goto :goto_13

    :cond_19
    iget-boolean v2, v0, Lᵔʾ/ˈ;->ˊˋ:Z

    if-eqz v2, :cond_1a

    iget v2, v0, Lᵔʾ/ˈ;->ـˏ:I

    iput v2, v8, Lˉˆ/ʿـ;->ˊʻ:I

    :cond_1a
    iget-boolean v2, v0, Lᵔʾ/ˈ;->ʼˈ:Z

    if-eqz v2, :cond_1b

    iget v2, v0, Lᵔʾ/ˈ;->ﹳـ:I

    invoke-virtual {v8, v2}, Lˉˆ/ʿـ;->ˆʾ(I)V

    :cond_1b
    iget-object v2, v0, Lᵔʾ/ﹳᐧ;->ʾˋ:Landroid/graphics/Rect;

    if-eqz v2, :cond_1c

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_12

    :cond_1c
    const/4 v7, 0x0

    :goto_12
    iput-object v7, v8, Lˉˆ/ʿـ;->ˉـ:Landroid/graphics/Rect;

    :goto_13
    new-instance v2, Lᵔʾ/ʽ;

    iget v5, v0, Lᵔʾ/ˈ;->ˋᵔ:I

    invoke-direct {v2, v8, v1, v5}, Lᵔʾ/ʽ;-><init>(Lˉˆ/ـᵢ;Lᵔʾ/ˆʾ;I)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Lˉˆ/ʿـ;->ˑﹳ()V

    iget-object v2, v8, Lˉˆ/ʿـ;->ʽʽ:Lˉˆ/ʾˊ;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    if-nez v10, :cond_1d

    iget-boolean v4, v0, Lᵔʾ/ˈ;->ᴵˑ:Z

    if-eqz v4, :cond_1d

    iget-object v4, v1, Lᵔʾ/ˆʾ;->ˉʿ:Ljava/lang/CharSequence;

    if-eqz v4, :cond_1d

    const v4, 0x7f0e0012

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const v4, 0x1020016

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, v1, Lᵔʾ/ˆʾ;->ˉʿ:Ljava/lang/CharSequence;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v2, v3, v1, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual {v8}, Lˉˆ/ʿـ;->ˑﹳ()V

    :cond_1d
    return-void
.end method

.method public final ˆʾ()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final ˈ()V
    .locals 5

    .prologue
    iget-object v0, p0, Lᵔʾ/ˈ;->ᵎⁱ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lᵔʾ/ʽ;

    iget-object v3, v3, Lᵔʾ/ʽ;->ﹳٴ:Lˉˆ/ـᵢ;

    iget-object v3, v3, Lˉˆ/ʿـ;->ʽʽ:Lˉˆ/ʾˊ;

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    instance-of v4, v3, Landroid/widget/HeaderViewListAdapter;

    if-eqz v4, :cond_0

    check-cast v3, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v3}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    check-cast v3, Lᵔʾ/ᵎﹶ;

    goto :goto_1

    :cond_0
    check-cast v3, Lᵔʾ/ᵎﹶ;

    :goto_1
    invoke-virtual {v3}, Lᵔʾ/ᵎﹶ;->notifyDataSetChanged()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final ˉˆ(Z)V
    .locals 0

    iput-boolean p1, p0, Lᵔʾ/ˈ;->ˈⁱ:Z

    return-void
.end method

.method public final ˏי(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lᵔʾ/ˈ;->ʼˈ:Z

    iput p1, p0, Lᵔʾ/ˈ;->ﹳـ:I

    return-void
.end method

.method public final ˑﹳ()V
    .locals 5

    .prologue
    invoke-virtual {p0}, Lᵔʾ/ˈ;->ﹳٴ()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lᵔʾ/ˈ;->ˉٴ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lᵔʾ/ˆʾ;

    invoke-virtual {p0, v4}, Lᵔʾ/ˈ;->ʽﹳ(Lᵔʾ/ˆʾ;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lᵔʾ/ˈ;->ˈʿ:Landroid/view/View;

    iput-object v0, p0, Lᵔʾ/ˈ;->ˑٴ:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lᵔʾ/ˈ;->ʿ:Landroid/view/ViewTreeObserver;

    if-nez v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lᵔʾ/ˈ;->ʿ:Landroid/view/ViewTreeObserver;

    if-eqz v2, :cond_3

    iget-object v1, p0, Lᵔʾ/ˈ;->ٴʼ:Lˉˆ/ˉٴ;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3
    iget-object v0, p0, Lᵔʾ/ˈ;->ˑٴ:Landroid/view/View;

    iget-object v1, p0, Lᵔʾ/ˈ;->ᵎˊ:Lʽˊ/ˉˆ;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final יـ(Z)V
    .locals 0

    iput-boolean p1, p0, Lᵔʾ/ˈ;->ᴵˑ:Z

    return-void
.end method

.method public final ᵎﹶ(Lᵔʾ/ʾˋ;)Z
    .locals 7

    .prologue
    iget-object v0, p0, Lᵔʾ/ˈ;->ᵎⁱ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Lᵔʾ/ʽ;

    iget-object v6, v5, Lᵔʾ/ʽ;->ⁱˊ:Lᵔʾ/ˆʾ;

    if-ne p1, v6, :cond_0

    iget-object p1, v5, Lᵔʾ/ʽ;->ﹳٴ:Lˉˆ/ـᵢ;

    iget-object p1, p1, Lˉˆ/ʿـ;->ʽʽ:Lˉˆ/ʾˊ;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v4

    :cond_1
    invoke-virtual {p1}, Lᵔʾ/ˆʾ;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lᵔʾ/ˈ;->ﾞʻ(Lᵔʾ/ˆʾ;)V

    iget-object v0, p0, Lᵔʾ/ˈ;->ˉـ:Lᵔʾ/ˏי;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lᵔʾ/ˏי;->ˉˆ(Lᵔʾ/ˆʾ;)Z

    :cond_2
    return v4

    :cond_3
    return v2
.end method

.method public final ᵔʾ(Landroid/view/View;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lᵔʾ/ˈ;->ˈʿ:Landroid/view/View;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lᵔʾ/ˈ;->ˈʿ:Landroid/view/View;

    iget v0, p0, Lᵔʾ/ˈ;->ˆﾞ:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    invoke-static {v0, p1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p1

    iput p1, p0, Lᵔʾ/ˈ;->ᵔٴ:I

    :cond_0
    return-void
.end method

.method public final ᵔᵢ(Lᵔʾ/ˏי;)V
    .locals 0

    iput-object p1, p0, Lᵔʾ/ˈ;->ˉـ:Lᵔʾ/ˏי;

    return-void
.end method

.method public final ᵔﹳ(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lᵔʾ/ˈ;->ˊˋ:Z

    iput p1, p0, Lᵔʾ/ˈ;->ـˏ:I

    return-void
.end method

.method public final ﹳٴ()Z
    .locals 3

    .prologue
    iget-object v0, p0, Lᵔʾ/ˈ;->ᵎⁱ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lᵔʾ/ʽ;

    iget-object v0, v0, Lᵔʾ/ʽ;->ﹳٴ:Lˉˆ/ـᵢ;

    iget-object v0, v0, Lˉˆ/ʿـ;->ʿᵢ:Lˉˆ/ᵢˏ;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method

.method public final ﹳᐧ(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lᵔʾ/ˈ;->ʿᵢ:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public final ﾞʻ(Lᵔʾ/ˆʾ;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lᵔʾ/ˈ;->ᴵˊ:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, Lᵔʾ/ˆʾ;->ⁱˊ(Lᵔʾ/ʽﹳ;Landroid/content/Context;)V

    invoke-virtual {p0}, Lᵔʾ/ˈ;->ﹳٴ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lᵔʾ/ˈ;->ʽﹳ(Lᵔʾ/ˆʾ;)V

    return-void

    :cond_0
    iget-object v0, p0, Lᵔʾ/ˈ;->ˉٴ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final ﾞᴵ()Lˉˆ/ʾˊ;
    .locals 2

    .prologue
    iget-object v0, p0, Lᵔʾ/ˈ;->ᵎⁱ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    invoke-static {v1, v0}, Lᐧـ/ˈ;->ᵔʾ(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lᵔʾ/ʽ;

    iget-object v0, v0, Lᵔʾ/ʽ;->ﹳٴ:Lˉˆ/ـᵢ;

    iget-object v0, v0, Lˉˆ/ʿـ;->ʽʽ:Lˉˆ/ʾˊ;

    return-object v0
.end method
