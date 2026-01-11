.class public Landroidx/appcompat/widget/Toolbar;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field public ʻˋ:Lˉˆ/ٴʿ;

.field public final ʻᵎ:[I

.field public ʼˈ:I

.field public ʽʽ:Lˉˆ/ᐧﾞ;

.field public final ʽᵔ:Landroidx/leanback/widget/ᵔʾ;

.field public ʾˋ:Landroidx/appcompat/widget/ActionMenuView;

.field public ʿ:Ljava/lang/CharSequence;

.field public ʿᵢ:Landroid/content/res/ColorStateList;

.field public ˆﾞ:I

.field public final ˈʿ:I

.field public final ˈˏ:Lˉˆ/ʿ;

.field public ˈٴ:Lˉˆ/ʾᵎ;

.field public ˈⁱ:I

.field public ˉـ:Ljava/lang/CharSequence;

.field public ˉٴ:Lˉˆ/ʾᵎ;

.field public final ˊʻ:Landroid/graphics/drawable/Drawable;

.field public ˊˋ:I

.field public final ˊᵔ:Lˑי/ʽ;

.field public ˋᵔ:I

.field public final ˏᵢ:Ljava/util/ArrayList;

.field public ˑʼ:Z

.field public ˑٴ:I

.field public ـˏ:Lˉˆ/ﾞˋ;

.field public ـᵎ:Z

.field public ـﹶ:Ljava/util/ArrayList;

.field public ٴʼ:Landroid/content/Context;

.field public final ٴᵢ:Ljava/lang/CharSequence;

.field public ٴﹳ:Landroid/window/OnBackInvokedCallback;

.field public ᐧᴵ:Z

.field public ᐧﾞ:Z

.field public final ᴵʼ:Ljava/util/ArrayList;

.field public ᴵˊ:Lˉˆ/ᐧﾞ;

.field public final ᴵˑ:I

.field public ᴵᵔ:Landroidx/appcompat/widget/AppCompatImageView;

.field public ᵎʻ:Landroid/window/OnBackInvokedDispatcher;

.field public ᵎˊ:I

.field public ᵎᵔ:Landroid/content/res/ColorStateList;

.field public ᵎⁱ:Landroid/view/View;

.field public ᵔי:I

.field public final ᵔٴ:I

.field public ﹳـ:I

.field public ﹳﹳ:Lˉˆ/ٴﹶ;

.field public ﹶᐧ:Lˉˆ/ˏⁱ;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    const v5, 0x7f04068d

    invoke-direct {p0, p1, p2, v5}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p3, 0x800013

    iput p3, p0, Landroidx/appcompat/widget/Toolbar;->ᴵˑ:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ˏᵢ:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ᴵʼ:Ljava/util/ArrayList;

    const/4 v6, 0x2

    new-array v0, v6, [I

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ʻᵎ:[I

    new-instance v0, Lˑי/ʽ;

    new-instance v1, Lˉˆ/ﹶʽ;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lˉˆ/ﹶʽ;-><init>(Landroidx/appcompat/widget/Toolbar;I)V

    invoke-direct {v0, v1}, Lˑי/ʽ;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ˊᵔ:Lˑי/ʽ;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ـﹶ:Ljava/util/ArrayList;

    new-instance v0, Lˉˆ/ʿ;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lˉˆ/ʿ;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ˈˏ:Lˉˆ/ʿ;

    new-instance v0, Landroidx/leanback/widget/ᵔʾ;

    const/16 v1, 0x12

    invoke-direct {v0, v1, p0}, Landroidx/leanback/widget/ᵔʾ;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ʽᵔ:Landroidx/leanback/widget/ᵔʾ;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v7, 0x0

    sget-object v2, Lᵎﹶ/ﹳٴ;->ʾᵎ:[I

    invoke-static {v5, v7, v0, p2, v2}, Lcom/parse/ٴʼ;->ʿᵢ(IILandroid/content/Context;Landroid/util/AttributeSet;[I)Lcom/parse/ٴʼ;

    move-result-object v8

    iget-object v0, v8, Lcom/parse/ٴʼ;->ᴵˊ:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/content/res/TypedArray;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lˋᵔ/ᵎˊ;->ﾞʻ(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    iget-object p1, v8, Lcom/parse/ٴʼ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Landroid/content/res/TypedArray;

    const/16 p2, 0x1c

    invoke-virtual {p1, p2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, v0, Landroidx/appcompat/widget/Toolbar;->ᵔי:I

    const/16 p2, 0x13

    invoke-virtual {p1, p2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, v0, Landroidx/appcompat/widget/Toolbar;->ˆﾞ:I

    invoke-virtual {p1, v7, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, v0, Landroidx/appcompat/widget/Toolbar;->ᴵˑ:I

    const/16 p2, 0x30

    invoke-virtual {p1, v6, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, v0, Landroidx/appcompat/widget/Toolbar;->ᵔٴ:I

    const/16 p2, 0x16

    invoke-virtual {p1, p2, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    const/16 p3, 0x1b

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    :cond_0
    iput p2, v0, Landroidx/appcompat/widget/Toolbar;->ʼˈ:I

    iput p2, v0, Landroidx/appcompat/widget/Toolbar;->ˊˋ:I

    iput p2, v0, Landroidx/appcompat/widget/Toolbar;->ˋᵔ:I

    iput p2, v0, Landroidx/appcompat/widget/Toolbar;->ˑٴ:I

    const/16 p2, 0x19

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    if-ltz p2, :cond_1

    iput p2, v0, Landroidx/appcompat/widget/Toolbar;->ˑٴ:I

    :cond_1
    const/16 p2, 0x18

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    if-ltz p2, :cond_2

    iput p2, v0, Landroidx/appcompat/widget/Toolbar;->ˋᵔ:I

    :cond_2
    const/16 p2, 0x1a

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    if-ltz p2, :cond_3

    iput p2, v0, Landroidx/appcompat/widget/Toolbar;->ˊˋ:I

    :cond_3
    const/16 p2, 0x17

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    if-ltz p2, :cond_4

    iput p2, v0, Landroidx/appcompat/widget/Toolbar;->ʼˈ:I

    :cond_4
    const/16 p2, 0xd

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, v0, Landroidx/appcompat/widget/Toolbar;->ˈʿ:I

    const/16 p2, 0x9

    const/high16 p3, -0x80000000

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    const/4 v1, 0x5

    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/16 v3, 0x8

    invoke-virtual {p1, v3, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->ˈ()V

    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->ـˏ:Lˉˆ/ﾞˋ;

    iput-boolean v7, v4, Lˉˆ/ﾞˋ;->ᵔᵢ:Z

    if-eq v2, p3, :cond_5

    iput v2, v4, Lˉˆ/ﾞˋ;->ˑﹳ:I

    iput v2, v4, Lˉˆ/ﾞˋ;->ﹳٴ:I

    :cond_5
    if-eq v3, p3, :cond_6

    iput v3, v4, Lˉˆ/ﾞˋ;->ﾞᴵ:I

    iput v3, v4, Lˉˆ/ﾞˋ;->ⁱˊ:I

    :cond_6
    if-ne p2, p3, :cond_7

    if-eq v1, p3, :cond_8

    :cond_7
    invoke-virtual {v4, p2, v1}, Lˉˆ/ﾞˋ;->ﹳٴ(II)V

    :cond_8
    const/16 p2, 0xa

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, v0, Landroidx/appcompat/widget/Toolbar;->ﹳـ:I

    const/4 p2, 0x6

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, v0, Landroidx/appcompat/widget/Toolbar;->ˈⁱ:I

    const/4 p2, 0x4

    invoke-virtual {v8, p2}, Lcom/parse/ٴʼ;->ˑٴ(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, v0, Landroidx/appcompat/widget/Toolbar;->ˊʻ:Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, v0, Landroidx/appcompat/widget/Toolbar;->ٴᵢ:Ljava/lang/CharSequence;

    const/16 p2, 0x15

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_9

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_9
    const/16 p2, 0x12

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, v0, Landroidx/appcompat/widget/Toolbar;->ٴʼ:Landroid/content/Context;

    const/16 p2, 0x11

    invoke-virtual {p1, p2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/Toolbar;->setPopupTheme(I)V

    const/16 p2, 0x10

    invoke-virtual {v8, p2}, Lcom/parse/ٴʼ;->ˑٴ(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_b

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_b
    const/16 p2, 0xf

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_c

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    :cond_c
    const/16 p2, 0xb

    invoke-virtual {v8, p2}, Lcom/parse/ٴʼ;->ˑٴ(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_d

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    :cond_d
    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_e

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    :cond_e
    const/16 p2, 0x1d

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_f

    invoke-virtual {v8, p2}, Lcom/parse/ٴʼ;->ˈʿ(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/Toolbar;->setTitleTextColor(Landroid/content/res/ColorStateList;)V

    :cond_f
    const/16 p2, 0x14

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_10

    invoke-virtual {v8, p2}, Lcom/parse/ٴʼ;->ˈʿ(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/Toolbar;->setSubtitleTextColor(Landroid/content/res/ColorStateList;)V

    :cond_10
    const/16 p2, 0xe

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_11

    invoke-virtual {p1, p2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_11
    invoke-virtual {v8}, Lcom/parse/ٴʼ;->ᐧᴵ()V

    return-void
.end method

.method private getCurrentMenuItems()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Landroid/view/Menu;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-interface {v1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    new-instance v0, Lˉʿ/ᵔᵢ;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lˉʿ/ᵔᵢ;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static ʼˎ(Landroid/view/ViewGroup$LayoutParams;)Lˉˆ/ﾞˏ;
    .locals 2

    .prologue
    instance-of v0, p0, Lˉˆ/ﾞˏ;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lˉˆ/ﾞˏ;

    check-cast p0, Lˉˆ/ﾞˏ;

    invoke-direct {v0, p0}, Lˉˆ/ﾞˏ;-><init>(Lˉˆ/ﾞˏ;)V

    iput v1, v0, Lˉˆ/ﾞˏ;->ⁱˊ:I

    iget p0, p0, Lˉˆ/ﾞˏ;->ⁱˊ:I

    iput p0, v0, Lˉˆ/ﾞˏ;->ⁱˊ:I

    return-object v0

    :cond_0
    if-eqz v0, :cond_1

    new-instance v0, Lˉˆ/ﾞˏ;

    check-cast p0, Lˉˆ/ﾞˏ;

    invoke-direct {v0, p0}, Lˉˆ/ﾞˏ;-><init>(Lˉˆ/ﾞˏ;)V

    iput v1, v0, Lˉˆ/ﾞˏ;->ⁱˊ:I

    return-object v0

    :cond_1
    instance-of v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    new-instance v0, Lˉˆ/ﾞˏ;

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p0}, Lˉˆ/ﾞˏ;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iput v1, v0, Lˉˆ/ﾞˏ;->ⁱˊ:I

    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    return-object v0

    :cond_2
    new-instance v0, Lˉˆ/ﾞˏ;

    invoke-direct {v0, p0}, Lˉˆ/ﾞˏ;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iput v1, v0, Lˉˆ/ﾞˏ;->ⁱˊ:I

    return-object v0
.end method

.method public static ٴﹶ(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public static ᵔᵢ()Lˉˆ/ﾞˏ;
    .locals 2

    new-instance v0, Lˉˆ/ﾞˏ;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v1, 0x0

    iput v1, v0, Lˉˆ/ﾞˏ;->ⁱˊ:I

    const v1, 0x800013

    iput v1, v0, Lˉˆ/ﾞˏ;->ﹳٴ:I

    return-object v0
.end method

.method public static ﾞʻ(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of p1, p1, Lˉˆ/ﾞˏ;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-static {}, Landroidx/appcompat/widget/Toolbar;->ᵔᵢ()Lˉˆ/ﾞˏ;

    move-result-object v0

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    new-instance v0, Lˉˆ/ﾞˏ;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v2, 0x0

    iput v2, v0, Lˉˆ/ﾞˏ;->ﹳٴ:I

    sget-object v3, Lᵎﹶ/ﹳٴ;->ⁱˊ:[I

    invoke-virtual {v1, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Lˉˆ/ﾞˏ;->ﹳٴ:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iput v2, v0, Lˉˆ/ﾞˏ;->ⁱˊ:I

    return-object v0
.end method

.method public final bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-static {p1}, Landroidx/appcompat/widget/Toolbar;->ʼˎ(Landroid/view/ViewGroup$LayoutParams;)Lˉˆ/ﾞˏ;

    move-result-object p1

    return-object p1
.end method

.method public getCollapseContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ˉٴ:Lˉˆ/ʾᵎ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCollapseIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ˉٴ:Lˉˆ/ʾᵎ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentInsetEnd()I
    .locals 2

    .prologue
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ـˏ:Lˉˆ/ﾞˋ;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lˉˆ/ﾞˋ;->ᵎﹶ:Z

    if-eqz v1, :cond_0

    iget v0, v0, Lˉˆ/ﾞˋ;->ﹳٴ:I

    return v0

    :cond_0
    iget v0, v0, Lˉˆ/ﾞˋ;->ⁱˊ:I

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getContentInsetEndWithActions()I
    .locals 2

    .prologue
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->ˈⁱ:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetEnd()I

    move-result v0

    return v0
.end method

.method public getContentInsetLeft()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ـˏ:Lˉˆ/ﾞˋ;

    if-eqz v0, :cond_0

    iget v0, v0, Lˉˆ/ﾞˋ;->ﹳٴ:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getContentInsetRight()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ـˏ:Lˉˆ/ﾞˋ;

    if-eqz v0, :cond_0

    iget v0, v0, Lˉˆ/ﾞˋ;->ⁱˊ:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getContentInsetStart()I
    .locals 2

    .prologue
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ـˏ:Lˉˆ/ﾞˋ;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lˉˆ/ﾞˋ;->ᵎﹶ:Z

    if-eqz v1, :cond_0

    iget v0, v0, Lˉˆ/ﾞˋ;->ⁱˊ:I

    return v0

    :cond_0
    iget v0, v0, Lˉˆ/ﾞˋ;->ﹳٴ:I

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getContentInsetStartWithNavigation()I
    .locals 2

    .prologue
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->ﹳـ:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetStart()I

    move-result v0

    return v0
.end method

.method public getCurrentContentInsetEnd()I
    .locals 3

    .prologue
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ʾˋ:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->ˑٴ:Lᵔʾ/ˆʾ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lᵔʾ/ˆʾ;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetEnd()I

    move-result v0

    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->ˈⁱ:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetEnd()I

    move-result v0

    return v0
.end method

.method public getCurrentContentInsetLeft()I
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetEnd()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetStart()I

    move-result v0

    return v0
.end method

.method public getCurrentContentInsetRight()I
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetStart()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetEnd()I

    move-result v0

    return v0
.end method

.method public getCurrentContentInsetStart()I
    .locals 3

    .prologue
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetStart()I

    move-result v0

    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->ﹳـ:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetStart()I

    move-result v0

    return v0
.end method

.method public getLogo()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ᴵᵔ:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLogoDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ᴵᵔ:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->ˑﹳ()V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ʾˋ:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public getNavButtonView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ˈٴ:Lˉˆ/ʾᵎ;

    return-object v0
.end method

.method public getNavigationContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ˈٴ:Lˉˆ/ʾᵎ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNavigationIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ˈٴ:Lˉˆ/ʾᵎ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOuterActionMenuPresenter()Lˉˆ/ٴﹶ;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ﹳﹳ:Lˉˆ/ٴﹶ;

    return-object v0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->ˑﹳ()V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ʾˋ:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPopupContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ٴʼ:Landroid/content/Context;

    return-object v0
.end method

.method public getPopupTheme()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->ᵎˊ:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ʿ:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getSubtitleTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ʽʽ:Lˉˆ/ᐧﾞ;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ˉـ:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleMarginBottom()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->ʼˈ:I

    return v0
.end method

.method public getTitleMarginEnd()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->ˋᵔ:I

    return v0
.end method

.method public getTitleMarginStart()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->ˑٴ:I

    return v0
.end method

.method public getTitleMarginTop()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->ˊˋ:I

    return v0
.end method

.method public final getTitleTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ᴵˊ:Lˉˆ/ᐧﾞ;

    return-object v0
.end method

.method public getWrapper()Lˉˆ/ﹳﹳ;
    .locals 8

    .prologue
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ﹶᐧ:Lˉˆ/ˏⁱ;

    if-nez v0, :cond_13

    new-instance v0, Lˉˆ/ˏⁱ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lˉˆ/ˏⁱ;->ᵔʾ:I

    iput-object p0, v0, Lˉˆ/ˏⁱ;->ﹳٴ:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lˉˆ/ˏⁱ;->ᵔᵢ:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lˉˆ/ˏⁱ;->ʼˎ:Ljava/lang/CharSequence;

    iget-object v2, v0, Lˉˆ/ˏⁱ;->ᵔᵢ:Ljava/lang/CharSequence;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, v0, Lˉˆ/ˏⁱ;->ᵎﹶ:Z

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lˉˆ/ˏⁱ;->ﾞᴵ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Lᵎﹶ/ﹳٴ;->ﹳٴ:[I

    const v5, 0x7f040007

    const/4 v6, 0x0

    invoke-static {v5, v1, v2, v6, v4}, Lcom/parse/ٴʼ;->ʿᵢ(IILandroid/content/Context;Landroid/util/AttributeSet;[I)Lcom/parse/ٴʼ;

    move-result-object v2

    iget-object v4, v2, Lcom/parse/ٴʼ;->ᴵˊ:Ljava/lang/Object;

    check-cast v4, Landroid/content/res/TypedArray;

    const/16 v5, 0xf

    invoke-virtual {v2, v5}, Lcom/parse/ٴʼ;->ˑٴ(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v0, Lˉˆ/ˏⁱ;->ˉˆ:Landroid/graphics/drawable/Drawable;

    const/16 v5, 0x1b

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    iput-boolean v3, v0, Lˉˆ/ˏⁱ;->ᵎﹶ:Z

    iput-object v5, v0, Lˉˆ/ˏⁱ;->ᵔᵢ:Ljava/lang/CharSequence;

    iget v3, v0, Lˉˆ/ˏⁱ;->ⁱˊ:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_1

    invoke-virtual {p0, v5}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-boolean v3, v0, Lˉˆ/ˏⁱ;->ᵎﹶ:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v5}, Lˋᵔ/ᵎˊ;->ᵔʾ(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_1
    const/16 v3, 0x19

    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iput-object v3, v0, Lˉˆ/ˏⁱ;->ʼˎ:Ljava/lang/CharSequence;

    iget v5, v0, Lˉˆ/ˏⁱ;->ⁱˊ:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_2

    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_2
    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lcom/parse/ٴʼ;->ˑٴ(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_3

    iput-object v3, v0, Lˉˆ/ˏⁱ;->ˑﹳ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lˉˆ/ˏⁱ;->ʽ()V

    :cond_3
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lcom/parse/ٴʼ;->ˑٴ(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_4

    iput-object v3, v0, Lˉˆ/ˏⁱ;->ˈ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lˉˆ/ˏⁱ;->ʽ()V

    :cond_4
    iget-object v3, v0, Lˉˆ/ˏⁱ;->ﾞᴵ:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_6

    iget-object v3, v0, Lˉˆ/ˏⁱ;->ˉˆ:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_6

    iput-object v3, v0, Lˉˆ/ˏⁱ;->ﾞᴵ:Landroid/graphics/drawable/Drawable;

    iget v5, v0, Lˉˆ/ˏⁱ;->ⁱˊ:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_5

    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v6}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    :goto_1
    const/16 v3, 0xa

    invoke-virtual {v4, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v0, v3}, Lˉˆ/ˏⁱ;->ﹳٴ(I)V

    const/16 v3, 0x9

    invoke-virtual {v4, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v5, v3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iget-object v5, v0, Lˉˆ/ˏⁱ;->ʽ:Landroid/view/View;

    if-eqz v5, :cond_7

    iget v7, v0, Lˉˆ/ˏⁱ;->ⁱˊ:I

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_7

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_7
    iput-object v3, v0, Lˉˆ/ˏⁱ;->ʽ:Landroid/view/View;

    if-eqz v3, :cond_8

    iget v5, v0, Lˉˆ/ˏⁱ;->ⁱˊ:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_8

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_8
    iget v3, v0, Lˉˆ/ˏⁱ;->ⁱˊ:I

    or-int/lit8 v3, v3, 0x10

    invoke-virtual {v0, v3}, Lˉˆ/ˏⁱ;->ﹳٴ(I)V

    :cond_9
    const/16 v3, 0xd

    invoke-virtual {v4, v3, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    if-lez v3, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v3, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    const/4 v3, 0x7

    const/4 v5, -0x1

    invoke-virtual {v4, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    const/4 v7, 0x3

    invoke-virtual {v4, v7, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    if-gez v3, :cond_b

    if-ltz v5, :cond_c

    :cond_b
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->ˈ()V

    iget-object v7, p0, Landroidx/appcompat/widget/Toolbar;->ـˏ:Lˉˆ/ﾞˋ;

    invoke-virtual {v7, v3, v5}, Lˉˆ/ﾞˋ;->ﹳٴ(II)V

    :cond_c
    const/16 v3, 0x1c

    invoke-virtual {v4, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iput v3, p0, Landroidx/appcompat/widget/Toolbar;->ᵔי:I

    iget-object v7, p0, Landroidx/appcompat/widget/Toolbar;->ᴵˊ:Lˉˆ/ᐧﾞ;

    if-eqz v7, :cond_d

    invoke-virtual {v7, v5, v3}, Lˉˆ/ᐧﾞ;->setTextAppearance(Landroid/content/Context;I)V

    :cond_d
    const/16 v3, 0x1a

    invoke-virtual {v4, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iput v3, p0, Landroidx/appcompat/widget/Toolbar;->ˆﾞ:I

    iget-object v7, p0, Landroidx/appcompat/widget/Toolbar;->ʽʽ:Lˉˆ/ᐧﾞ;

    if-eqz v7, :cond_e

    invoke-virtual {v7, v5, v3}, Lˉˆ/ᐧﾞ;->setTextAppearance(Landroid/content/Context;I)V

    :cond_e
    const/16 v3, 0x16

    invoke-virtual {v4, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/Toolbar;->setPopupTheme(I)V

    :cond_f
    invoke-virtual {v2}, Lcom/parse/ٴʼ;->ᐧᴵ()V

    iget v1, v0, Lˉˆ/ˏⁱ;->ᵔʾ:I

    const v2, 0x7f130001

    if-ne v2, v1, :cond_10

    goto :goto_3

    :cond_10
    iput v2, v0, Lˉˆ/ˏⁱ;->ᵔʾ:I

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget v1, v0, Lˉˆ/ˏⁱ;->ᵔʾ:I

    if-nez v1, :cond_11

    goto :goto_2

    :cond_11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_2
    iput-object v6, v0, Lˉˆ/ˏⁱ;->ˆʾ:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Lˉˆ/ˏⁱ;->ⁱˊ()V

    :cond_12
    :goto_3
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lˉˆ/ˏⁱ;->ˆʾ:Ljava/lang/CharSequence;

    new-instance v1, Lˉˆ/ـʻ;

    invoke-direct {v1, v0}, Lˉˆ/ـʻ;-><init>(Lˉˆ/ˏⁱ;)V

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ﹶᐧ:Lˉˆ/ˏⁱ;

    :cond_13
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ﹶᐧ:Lˉˆ/ˏⁱ;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->ˏי()V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ʽᵔ:Landroidx/leanback/widget/ᵔʾ;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->ˏי()V

    return-void
.end method

.method public final onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    iput-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->ᐧᴵ:Z

    :cond_0
    iget-boolean v3, p0, Landroidx/appcompat/widget/Toolbar;->ᐧᴵ:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-ne v0, v2, :cond_1

    if-nez p1, :cond_1

    iput-boolean v4, p0, Landroidx/appcompat/widget/Toolbar;->ᐧᴵ:Z

    :cond_1
    const/16 p1, 0xa

    if-eq v0, p1, :cond_3

    const/4 p1, 0x3

    if-ne v0, p1, :cond_2

    goto :goto_0

    :cond_2
    return v4

    :cond_3
    :goto_0
    iput-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->ᐧᴵ:Z

    return v4
.end method

.method public onLayout(ZIIII)V
    .locals 19

    .prologue
    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    sub-int v10, v4, v7

    iget-object v11, v0, Landroidx/appcompat/widget/Toolbar;->ʻᵎ:[I

    aput v2, v11, v3

    aput v2, v11, v2

    sget-object v12, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Landroid/view/View;->getMinimumHeight()I

    move-result v12

    if-ltz v12, :cond_1

    sub-int v13, p5, p3

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    goto :goto_1

    :cond_1
    move v12, v2

    :goto_1
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->ˈٴ:Lˉˆ/ʾᵎ;

    invoke-virtual {v0, v13}, Landroidx/appcompat/widget/Toolbar;->יـ(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_3

    if-eqz v1, :cond_2

    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->ˈٴ:Lˉˆ/ʾᵎ;

    invoke-virtual {v0, v13, v10, v12, v11}, Landroidx/appcompat/widget/Toolbar;->ʼᐧ(Landroid/view/View;II[I)I

    move-result v13

    move v14, v13

    move v13, v6

    goto :goto_3

    :cond_2
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->ˈٴ:Lˉˆ/ʾᵎ;

    invoke-virtual {v0, v13, v6, v12, v11}, Landroidx/appcompat/widget/Toolbar;->ˉˆ(Landroid/view/View;II[I)I

    move-result v13

    :goto_2
    move v14, v10

    goto :goto_3

    :cond_3
    move v13, v6

    goto :goto_2

    :goto_3
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->ˉٴ:Lˉˆ/ʾᵎ;

    invoke-virtual {v0, v15}, Landroidx/appcompat/widget/Toolbar;->יـ(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_5

    if-eqz v1, :cond_4

    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->ˉٴ:Lˉˆ/ʾᵎ;

    invoke-virtual {v0, v15, v14, v12, v11}, Landroidx/appcompat/widget/Toolbar;->ʼᐧ(Landroid/view/View;II[I)I

    move-result v14

    goto :goto_4

    :cond_4
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->ˉٴ:Lˉˆ/ʾᵎ;

    invoke-virtual {v0, v15, v13, v12, v11}, Landroidx/appcompat/widget/Toolbar;->ˉˆ(Landroid/view/View;II[I)I

    move-result v13

    :cond_5
    :goto_4
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->ʾˋ:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0, v15}, Landroidx/appcompat/widget/Toolbar;->יـ(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_7

    if-eqz v1, :cond_6

    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->ʾˋ:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0, v15, v13, v12, v11}, Landroidx/appcompat/widget/Toolbar;->ˉˆ(Landroid/view/View;II[I)I

    move-result v13

    goto :goto_5

    :cond_6
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->ʾˋ:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0, v15, v14, v12, v11}, Landroidx/appcompat/widget/Toolbar;->ʼᐧ(Landroid/view/View;II[I)I

    move-result v14

    :cond_7
    :goto_5
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetLeft()I

    move-result v15

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetRight()I

    move-result v16

    move/from16 p1, v3

    sub-int v3, v15, v13

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v11, v2

    sub-int v3, v10, v14

    sub-int v3, v16, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v11, p1

    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int v10, v10, v16

    invoke-static {v14, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->ᵎⁱ:Landroid/view/View;

    invoke-virtual {v0, v13}, Landroidx/appcompat/widget/Toolbar;->יـ(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_9

    if-eqz v1, :cond_8

    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->ᵎⁱ:Landroid/view/View;

    invoke-virtual {v0, v13, v10, v12, v11}, Landroidx/appcompat/widget/Toolbar;->ʼᐧ(Landroid/view/View;II[I)I

    move-result v10

    goto :goto_6

    :cond_8
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->ᵎⁱ:Landroid/view/View;

    invoke-virtual {v0, v13, v3, v12, v11}, Landroidx/appcompat/widget/Toolbar;->ˉˆ(Landroid/view/View;II[I)I

    move-result v3

    :cond_9
    :goto_6
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->ᴵᵔ:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v13}, Landroidx/appcompat/widget/Toolbar;->יـ(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_b

    if-eqz v1, :cond_a

    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->ᴵᵔ:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v13, v10, v12, v11}, Landroidx/appcompat/widget/Toolbar;->ʼᐧ(Landroid/view/View;II[I)I

    move-result v10

    goto :goto_7

    :cond_a
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->ᴵᵔ:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v13, v3, v12, v11}, Landroidx/appcompat/widget/Toolbar;->ˉˆ(Landroid/view/View;II[I)I

    move-result v3

    :cond_b
    :goto_7
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->ᴵˊ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v0, v13}, Landroidx/appcompat/widget/Toolbar;->יـ(Landroid/view/View;)Z

    move-result v13

    iget-object v14, v0, Landroidx/appcompat/widget/Toolbar;->ʽʽ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v0, v14}, Landroidx/appcompat/widget/Toolbar;->יـ(Landroid/view/View;)Z

    move-result v14

    if-eqz v13, :cond_c

    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->ᴵˊ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lˉˆ/ﾞˏ;

    iget v2, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 p4, v1

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->ᴵˊ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v2

    iget v2, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    goto :goto_8

    :cond_c
    move/from16 p4, v1

    const/4 v1, 0x0

    :goto_8
    if-eqz v14, :cond_d

    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->ʽʽ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lˉˆ/ﾞˏ;

    iget v15, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 p3, v1

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->ʽʽ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v15

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    add-int v1, v1, p3

    goto :goto_9

    :cond_d
    move/from16 p3, v1

    :goto_9
    if-nez v13, :cond_e

    if-eqz v14, :cond_20

    :cond_e
    if-eqz v13, :cond_f

    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->ᴵˊ:Lˉˆ/ᐧﾞ;

    goto :goto_a

    :cond_f
    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->ʽʽ:Lˉˆ/ᐧﾞ;

    :goto_a
    if-eqz v14, :cond_10

    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->ʽʽ:Lˉˆ/ᐧﾞ;

    goto :goto_b

    :cond_10
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->ᴵˊ:Lˉˆ/ᐧﾞ;

    :goto_b
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lˉˆ/ﾞˏ;

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lˉˆ/ﾞˏ;

    move/from16 p3, v1

    if-eqz v13, :cond_11

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->ᴵˊ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-gtz v1, :cond_12

    :cond_11
    if-eqz v14, :cond_13

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->ʽʽ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-lez v1, :cond_13

    :cond_12
    move/from16 p5, p1

    goto :goto_c

    :cond_13
    const/16 p5, 0x0

    :goto_c
    iget v1, v0, Landroidx/appcompat/widget/Toolbar;->ᴵˑ:I

    and-int/lit8 v1, v1, 0x70

    move/from16 v16, v3

    const/16 v3, 0x30

    if-eq v1, v3, :cond_17

    const/16 v3, 0x50

    if-eq v1, v3, :cond_16

    sub-int v1, v5, v8

    sub-int/2addr v1, v9

    sub-int v1, v1, p3

    div-int/lit8 v1, v1, 0x2

    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v17, v3

    iget v3, v0, Landroidx/appcompat/widget/Toolbar;->ˊˋ:I

    add-int v3, v17, v3

    if-ge v1, v3, :cond_14

    move v1, v3

    goto :goto_d

    :cond_14
    sub-int/2addr v5, v9

    sub-int v5, v5, p3

    sub-int/2addr v5, v1

    sub-int/2addr v5, v8

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v3, v0, Landroidx/appcompat/widget/Toolbar;->ʼˈ:I

    add-int/2addr v2, v3

    if-ge v5, v2, :cond_15

    iget v2, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v5

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_15
    :goto_d
    add-int/2addr v8, v1

    goto :goto_e

    :cond_16
    sub-int/2addr v5, v9

    iget v1, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v5, v1

    iget v1, v0, Landroidx/appcompat/widget/Toolbar;->ʼˈ:I

    sub-int/2addr v5, v1

    sub-int v8, v5, p3

    goto :goto_e

    :cond_17
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroidx/appcompat/widget/Toolbar;->ˊˋ:I

    add-int v8, v1, v2

    :goto_e
    if-eqz p4, :cond_1c

    if-eqz p5, :cond_18

    iget v1, v0, Landroidx/appcompat/widget/Toolbar;->ˑٴ:I

    goto :goto_f

    :cond_18
    const/4 v1, 0x0

    :goto_f
    aget v2, v11, p1

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr v10, v3

    neg-int v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v11, p1

    if-eqz v13, :cond_19

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->ᴵˊ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lˉˆ/ﾞˏ;

    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->ᴵˊ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v10, v2

    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->ᴵˊ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v8

    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->ᴵˊ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v5, v2, v8, v10, v3}, Landroid/view/View;->layout(IIII)V

    iget v5, v0, Landroidx/appcompat/widget/Toolbar;->ˋᵔ:I

    sub-int/2addr v2, v5

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v8, v3, v1

    goto :goto_10

    :cond_19
    move v2, v10

    :goto_10
    if-eqz v14, :cond_1a

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->ʽʽ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lˉˆ/ﾞˏ;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v1

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->ʽʽ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v10, v1

    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->ʽʽ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v8

    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->ʽʽ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v5, v1, v8, v10, v3}, Landroid/view/View;->layout(IIII)V

    iget v1, v0, Landroidx/appcompat/widget/Toolbar;->ˋᵔ:I

    sub-int v1, v10, v1

    goto :goto_11

    :cond_1a
    move v1, v10

    :goto_11
    if-eqz p5, :cond_1b

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v10, v1

    :cond_1b
    move/from16 v3, v16

    goto :goto_16

    :cond_1c
    if-eqz p5, :cond_1d

    iget v1, v0, Landroidx/appcompat/widget/Toolbar;->ˑٴ:I

    :goto_12
    const/4 v2, 0x0

    goto :goto_13

    :cond_1d
    const/4 v1, 0x0

    goto :goto_12

    :goto_13
    aget v3, v11, v2

    sub-int/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int v3, v3, v16

    neg-int v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v11, v2

    if-eqz v13, :cond_1e

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->ᴵˊ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lˉˆ/ﾞˏ;

    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->ᴵˊ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v3

    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->ᴵˊ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v8

    iget-object v9, v0, Landroidx/appcompat/widget/Toolbar;->ᴵˊ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v9, v3, v8, v2, v5}, Landroid/view/View;->layout(IIII)V

    iget v8, v0, Landroidx/appcompat/widget/Toolbar;->ˋᵔ:I

    add-int/2addr v2, v8

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v8, v5, v1

    goto :goto_14

    :cond_1e
    move v2, v3

    :goto_14
    if-eqz v14, :cond_1f

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->ʽʽ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lˉˆ/ﾞˏ;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v1

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->ʽʽ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v3

    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->ʽʽ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v8

    iget-object v9, v0, Landroidx/appcompat/widget/Toolbar;->ʽʽ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v9, v3, v8, v1, v5}, Landroid/view/View;->layout(IIII)V

    iget v5, v0, Landroidx/appcompat/widget/Toolbar;->ˋᵔ:I

    add-int/2addr v1, v5

    goto :goto_15

    :cond_1f
    move v1, v3

    :goto_15
    if-eqz p5, :cond_20

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_20
    :goto_16
    const/4 v1, 0x3

    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->ˏᵢ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/Toolbar;->ﹳٴ(ILjava/util/ArrayList;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v5, v3

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v1, :cond_21

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v0, v8, v5, v12, v11}, Landroidx/appcompat/widget/Toolbar;->ˉˆ(Landroid/view/View;II[I)I

    move-result v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_21
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/Toolbar;->ﹳٴ(ILjava/util/ArrayList;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v1, :cond_22

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v0, v8, v10, v12, v11}, Landroidx/appcompat/widget/Toolbar;->ʼᐧ(Landroid/view/View;II[I)I

    move-result v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_22
    move/from16 v3, p1

    invoke-virtual {v0, v3, v2}, Landroidx/appcompat/widget/Toolbar;->ﹳٴ(ILjava/util/ArrayList;)V

    const/4 v1, 0x0

    aget v8, v11, v1

    aget v1, v11, v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v13, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_19
    if-ge v8, v3, :cond_23

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lˉˆ/ﾞˏ;

    move/from16 p1, v1

    iget v1, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v1, v13

    iget v13, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int v13, v13, p1

    const/4 v15, 0x0

    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    invoke-static {v15, v13}, Ljava/lang/Math;->max(II)I

    move-result v17

    neg-int v1, v1

    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    neg-int v13, v13

    invoke-static {v15, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int v14, v14, v16

    add-int v14, v14, v17

    add-int/2addr v9, v14

    add-int/lit8 v8, v8, 0x1

    move/from16 v18, v13

    move v13, v1

    move/from16 v1, v18

    goto :goto_19

    :cond_23
    const/4 v15, 0x0

    sub-int/2addr v4, v6

    sub-int/2addr v4, v7

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v6

    div-int/lit8 v1, v9, 0x2

    sub-int/2addr v4, v1

    add-int/2addr v9, v4

    if-ge v4, v5, :cond_24

    goto :goto_1a

    :cond_24
    if-le v9, v10, :cond_25

    sub-int/2addr v9, v10

    sub-int v5, v4, v9

    goto :goto_1a

    :cond_25
    move v5, v4

    :goto_1a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1b
    if-ge v15, v1, :cond_26

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v0, v3, v5, v12, v11}, Landroidx/appcompat/widget/Toolbar;->ˉˆ(Landroid/view/View;II[I)I

    move-result v5

    add-int/lit8 v15, v15, 0x1

    goto :goto_1b

    :cond_26
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 14

    .prologue
    sget-boolean v1, Lˉˆ/ˆˎ;->ﹳٴ:Z

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    const/4 v7, 0x0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v6, v2

    move v8, v7

    goto :goto_0

    :cond_0
    move v8, v2

    move v6, v7

    :goto_0
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ˈٴ:Lˉˆ/ʾᵎ;

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/Toolbar;->יـ(Landroid/view/View;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ˈٴ:Lˉˆ/ʾᵎ;

    iget v5, p0, Landroidx/appcompat/widget/Toolbar;->ˈʿ:I

    move-object v0, p0

    move v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/widget/Toolbar;->ﹳᐧ(Landroid/view/View;IIII)V

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ˈٴ:Lˉˆ/ʾᵎ;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->ˈٴ:Lˉˆ/ʾᵎ;

    invoke-static {v2}, Landroidx/appcompat/widget/Toolbar;->ٴﹶ(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v1

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ˈٴ:Lˉˆ/ʾᵎ;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v4, p0, Landroidx/appcompat/widget/Toolbar;->ˈٴ:Lˉˆ/ʾᵎ;

    invoke-static {v4}, Landroidx/appcompat/widget/Toolbar;->ﾞʻ(Landroid/view/View;)I

    move-result v4

    add-int/2addr v4, v1

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v4, p0, Landroidx/appcompat/widget/Toolbar;->ˈٴ:Lˉˆ/ʾᵎ;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v4

    invoke-static {v7, v4}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v4

    move v9, v1

    move v10, v4

    goto :goto_1

    :cond_1
    move v2, v7

    move v9, v2

    move v10, v9

    :goto_1
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ˉٴ:Lˉˆ/ʾᵎ;

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/Toolbar;->יـ(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ˉٴ:Lˉˆ/ʾᵎ;

    iget v5, p0, Landroidx/appcompat/widget/Toolbar;->ˈʿ:I

    move-object v0, p0

    move v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/widget/Toolbar;->ﹳᐧ(Landroid/view/View;IIII)V

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ˉٴ:Lˉˆ/ʾᵎ;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->ˉٴ:Lˉˆ/ʾᵎ;

    invoke-static {v2}, Landroidx/appcompat/widget/Toolbar;->ٴﹶ(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v1

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ˉٴ:Lˉˆ/ʾᵎ;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v3, p0, Landroidx/appcompat/widget/Toolbar;->ˉٴ:Lˉˆ/ʾᵎ;

    invoke-static {v3}, Landroidx/appcompat/widget/Toolbar;->ﾞʻ(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v1

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ˉٴ:Lˉˆ/ʾᵎ;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    invoke-static {v10, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v10

    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetStart()I

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr v1, v2

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v2, v6

    iget-object v6, p0, Landroidx/appcompat/widget/Toolbar;->ʻᵎ:[I

    aput v1, v6, v2

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ʾˋ:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/Toolbar;->יـ(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ʾˋ:Landroidx/appcompat/widget/ActionMenuView;

    iget v5, p0, Landroidx/appcompat/widget/Toolbar;->ˈʿ:I

    move-object v0, p0

    move v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/widget/Toolbar;->ﹳᐧ(Landroid/view/View;IIII)V

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ʾˋ:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->ʾˋ:Landroidx/appcompat/widget/ActionMenuView;

    invoke-static {v2}, Landroidx/appcompat/widget/Toolbar;->ٴﹶ(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v1

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ʾˋ:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v4, p0, Landroidx/appcompat/widget/Toolbar;->ʾˋ:Landroidx/appcompat/widget/ActionMenuView;

    invoke-static {v4}, Landroidx/appcompat/widget/Toolbar;->ﾞʻ(Landroid/view/View;)I

    move-result v4

    add-int/2addr v4, v1

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ʾˋ:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    invoke-static {v10, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v10

    goto :goto_2

    :cond_3
    move v2, v7

    :goto_2
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetEnd()I

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v1, v2

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v6, v8

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ᵎⁱ:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/Toolbar;->יـ(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ᵎⁱ:Landroid/view/View;

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->ᵔﹳ(Landroid/view/View;IIII[I)I

    move-result v1

    add-int/2addr v3, v1

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ᵎⁱ:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->ᵎⁱ:Landroid/view/View;

    invoke-static {v2}, Landroidx/appcompat/widget/Toolbar;->ﾞʻ(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ᵎⁱ:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    invoke-static {v10, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v10

    :cond_4
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ᴵᵔ:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/Toolbar;->יـ(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ᴵᵔ:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->ᵔﹳ(Landroid/view/View;IIII[I)I

    move-result v1

    add-int/2addr v3, v1

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ᴵᵔ:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->ᴵᵔ:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v2}, Landroidx/appcompat/widget/Toolbar;->ﾞʻ(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ᴵᵔ:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    invoke-static {v10, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v10

    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    move v11, v7

    :goto_3
    if-ge v11, v8, :cond_8

    invoke-virtual {p0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lˉˆ/ﾞˏ;

    iget v2, v2, Lˉˆ/ﾞˏ;->ⁱˊ:I

    if-nez v2, :cond_6

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/Toolbar;->יـ(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    move v12, v3

    goto :goto_4

    :cond_7
    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->ᵔﹳ(Landroid/view/View;IIII[I)I

    move-result v5

    move v12, v3

    add-int v3, v12, v5

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v1}, Landroidx/appcompat/widget/Toolbar;->ﾞʻ(Landroid/view/View;)I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    invoke-static {v10, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v1

    move v10, v1

    move v9, v2

    goto :goto_5

    :goto_4
    move v3, v12

    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_8
    move v12, v3

    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->ˊˋ:I

    iget v2, p0, Landroidx/appcompat/widget/Toolbar;->ʼˈ:I

    add-int v5, v1, v2

    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->ˑٴ:I

    iget v2, p0, Landroidx/appcompat/widget/Toolbar;->ˋᵔ:I

    add-int v8, v1, v2

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ᴵˊ:Lˉˆ/ᐧﾞ;

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/Toolbar;->יـ(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ᴵˊ:Lˉˆ/ᐧﾞ;

    add-int v3, v12, v8

    move-object v0, p0

    move v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->ᵔﹳ(Landroid/view/View;IIII[I)I

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ᴵˊ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->ᴵˊ:Lˉˆ/ᐧﾞ;

    invoke-static {v2}, Landroidx/appcompat/widget/Toolbar;->ٴﹶ(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v1

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ᴵˊ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v3, p0, Landroidx/appcompat/widget/Toolbar;->ᴵˊ:Lˉˆ/ᐧﾞ;

    invoke-static {v3}, Landroidx/appcompat/widget/Toolbar;->ﾞʻ(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v1

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ᴵˊ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    invoke-static {v10, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v10

    move v11, v3

    move v13, v10

    move v10, v2

    goto :goto_6

    :cond_9
    move v11, v7

    move v13, v10

    move v10, v11

    :goto_6
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ʽʽ:Lˉˆ/ᐧﾞ;

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/Toolbar;->יـ(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ʽʽ:Lˉˆ/ᐧﾞ;

    add-int v3, v12, v8

    add-int/2addr v5, v11

    move-object v0, p0

    move v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->ᵔﹳ(Landroid/view/View;IIII[I)I

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ʽʽ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->ʽʽ:Lˉˆ/ᐧﾞ;

    invoke-static {v2}, Landroidx/appcompat/widget/Toolbar;->ﾞʻ(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v11, v2

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ʽʽ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    invoke-static {v13, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v13

    :cond_a
    add-int v3, v12, v10

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v4, v2

    add-int/2addr v4, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v3, v1

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/high16 v2, -0x1000000

    and-int/2addr v2, v13

    invoke-static {v1, p1, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    shl-int/lit8 v3, v13, 0x10

    move/from16 v4, p2

    invoke-static {v2, v4, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v2

    iget-boolean v3, p0, Landroidx/appcompat/widget/Toolbar;->ˑʼ:Z

    if-nez v3, :cond_b

    goto :goto_8

    :cond_b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    move v4, v7

    :goto_7
    if-ge v4, v3, :cond_d

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroidx/appcompat/widget/Toolbar;->יـ(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    if-lez v6, :cond_c

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-lez v5, :cond_c

    :goto_8
    move v7, v2

    goto :goto_9

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_d
    :goto_9
    invoke-virtual {p0, v1, v7}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .prologue
    instance-of v0, p1, Lˉˆ/ˊﾞ;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lˉˆ/ˊﾞ;

    iget-object v0, p1, Lᴵˑ/ⁱˊ;->ʾˋ:Landroid/os/Parcelable;

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ʾˋ:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->ˑٴ:Lᵔʾ/ˆʾ;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p1, Lˉˆ/ˊﾞ;->ʽʽ:I

    if-eqz v1, :cond_2

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->ʻˋ:Lˉˆ/ٴʿ;

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lᵔʾ/ˆʾ;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    :cond_2
    iget-boolean p1, p1, Lˉˆ/ˊﾞ;->ˈٴ:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar;->ʽᵔ:Landroidx/leanback/widget/ᵔʾ;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 2

    .prologue
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->ˈ()V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ـˏ:Lˉˆ/ﾞˋ;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-boolean p1, v0, Lˉˆ/ﾞˋ;->ᵎﹶ:Z

    if-ne v1, p1, :cond_1

    return-void

    :cond_1
    iput-boolean v1, v0, Lˉˆ/ﾞˋ;->ᵎﹶ:Z

    iget-boolean p1, v0, Lˉˆ/ﾞˋ;->ᵔᵢ:Z

    if-eqz p1, :cond_7

    const/high16 p1, -0x80000000

    if-eqz v1, :cond_4

    iget v1, v0, Lˉˆ/ﾞˋ;->ˈ:I

    if-eq v1, p1, :cond_2

    goto :goto_1

    :cond_2
    iget v1, v0, Lˉˆ/ﾞˋ;->ˑﹳ:I

    :goto_1
    iput v1, v0, Lˉˆ/ﾞˋ;->ﹳٴ:I

    iget v1, v0, Lˉˆ/ﾞˋ;->ʽ:I

    if-eq v1, p1, :cond_3

    goto :goto_2

    :cond_3
    iget v1, v0, Lˉˆ/ﾞˋ;->ﾞᴵ:I

    :goto_2
    iput v1, v0, Lˉˆ/ﾞˋ;->ⁱˊ:I

    return-void

    :cond_4
    iget v1, v0, Lˉˆ/ﾞˋ;->ʽ:I

    if-eq v1, p1, :cond_5

    goto :goto_3

    :cond_5
    iget v1, v0, Lˉˆ/ﾞˋ;->ˑﹳ:I

    :goto_3
    iput v1, v0, Lˉˆ/ﾞˋ;->ﹳٴ:I

    iget v1, v0, Lˉˆ/ﾞˋ;->ˈ:I

    if-eq v1, p1, :cond_6

    goto :goto_4

    :cond_6
    iget v1, v0, Lˉˆ/ﾞˋ;->ﾞᴵ:I

    :goto_4
    iput v1, v0, Lˉˆ/ﾞˋ;->ⁱˊ:I

    return-void

    :cond_7
    iget p1, v0, Lˉˆ/ﾞˋ;->ˑﹳ:I

    iput p1, v0, Lˉˆ/ﾞˋ;->ﹳٴ:I

    iget p1, v0, Lˉˆ/ﾞˋ;->ﾞᴵ:I

    iput p1, v0, Lˉˆ/ﾞˋ;->ⁱˊ:I

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    new-instance v0, Lˉˆ/ˊﾞ;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lᴵˑ/ⁱˊ;-><init>(Landroid/os/Parcelable;)V

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ʻˋ:Lˉˆ/ٴʿ;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lˉˆ/ٴʿ;->ᴵˊ:Lᵔʾ/ﾞʻ;

    if-eqz v1, :cond_0

    iget v1, v1, Lᵔʾ/ﾞʻ;->ﹳٴ:I

    iput v1, v0, Lˉˆ/ˊﾞ;->ʽʽ:I

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ʾˋ:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v1, :cond_1

    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuView;->ـˏ:Lˉˆ/ٴﹶ;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lˉˆ/ٴﹶ;->ﾞᴵ()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lˉˆ/ˊﾞ;->ˈٴ:Z

    return-object v0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->ᐧﾞ:Z

    :cond_0
    iget-boolean v2, p0, Landroidx/appcompat/widget/Toolbar;->ᐧﾞ:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    iput-boolean v3, p0, Landroidx/appcompat/widget/Toolbar;->ᐧﾞ:Z

    :cond_1
    if-eq v0, v3, :cond_3

    const/4 p1, 0x3

    if-ne v0, p1, :cond_2

    goto :goto_0

    :cond_2
    return v3

    :cond_3
    :goto_0
    iput-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->ᐧﾞ:Z

    return v3
.end method

.method public setBackInvokedCallbackEnabled(Z)V
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroidx/appcompat/widget/Toolbar;->ـᵎ:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroidx/appcompat/widget/Toolbar;->ـᵎ:Z

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->ˏי()V

    :cond_0
    return-void
.end method

.method public setCollapseContentDescription(I)V
    .locals 1

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setCollapseContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCollapseContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->ʽ()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ˉٴ:Lˉˆ/ʾᵎ;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setCollapseIcon(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lᴵˋ/ˊʻ;->ﹳᐧ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setCollapseIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCollapseIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->ʽ()V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ˉٴ:Lˉˆ/ʾᵎ;

    invoke-virtual {v0, p1}, Lˉˆ/ʾᵎ;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar;->ˉٴ:Lˉˆ/ʾᵎ;

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ˊʻ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lˉˆ/ʾᵎ;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public setCollapsible(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/widget/Toolbar;->ˑʼ:Z

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setContentInsetEndWithActions(I)V
    .locals 1

    .prologue
    if-gez p1, :cond_0

    const/high16 p1, -0x80000000

    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->ˈⁱ:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->ˈⁱ:I

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setContentInsetStartWithNavigation(I)V
    .locals 1

    .prologue
    if-gez p1, :cond_0

    const/high16 p1, -0x80000000

    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->ﹳـ:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->ﹳـ:I

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setLogo(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lᴵˋ/ˊʻ;->ﹳᐧ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ᴵᵔ:Landroidx/appcompat/widget/AppCompatImageView;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ᴵᵔ:Landroidx/appcompat/widget/AppCompatImageView;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ᴵᵔ:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->ᵔʾ(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ᴵᵔ:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->ⁱˊ(Landroid/view/View;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ᴵᵔ:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->ᵔʾ(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ᴵᵔ:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ᴵʼ:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ᴵᵔ:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ᴵᵔ:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method public setLogoDescription(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLogoDescription(Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ᴵᵔ:Landroidx/appcompat/widget/AppCompatImageView;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ᴵᵔ:Landroidx/appcompat/widget/AppCompatImageView;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ᴵᵔ:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->ᵎﹶ()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ˈٴ:Lˉˆ/ʾᵎ;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ˈٴ:Lˉˆ/ʾᵎ;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ᵎ;->יـ(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lᴵˋ/ˊʻ;->ﹳᐧ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->ᵎﹶ()V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ˈٴ:Lˉˆ/ʾᵎ;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->ᵔʾ(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ˈٴ:Lˉˆ/ʾᵎ;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->ⁱˊ(Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ˈٴ:Lˉˆ/ʾᵎ;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->ᵔʾ(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ˈٴ:Lˉˆ/ʾᵎ;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ᴵʼ:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ˈٴ:Lˉˆ/ʾᵎ;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ˈٴ:Lˉˆ/ʾᵎ;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lˉˆ/ʾᵎ;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->ᵎﹶ()V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ˈٴ:Lˉˆ/ʾᵎ;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnMenuItemClickListener(Lˉˆ/ˊˊ;)V
    .locals 0

    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->ˑﹳ()V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ʾˋ:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionMenuView;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2

    .prologue
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->ᵎˊ:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->ᵎˊ:I

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->ٴʼ:Landroid/content/Context;

    return-void

    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ٴʼ:Landroid/content/Context;

    :cond_1
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ʽʽ:Lˉˆ/ᐧﾞ;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lˉˆ/ᐧﾞ;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lˉˆ/ᐧﾞ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ʽʽ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ʽʽ:Lˉˆ/ᐧﾞ;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->ˆﾞ:I

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->ʽʽ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v2, v0, v1}, Lˉˆ/ᐧﾞ;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ᵎᵔ:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ʽʽ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ʽʽ:Lˉˆ/ᐧﾞ;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->ᵔʾ(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ʽʽ:Lˉˆ/ᐧﾞ;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->ⁱˊ(Landroid/view/View;Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ʽʽ:Lˉˆ/ᐧﾞ;

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->ᵔʾ(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ʽʽ:Lˉˆ/ᐧﾞ;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ᴵʼ:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ʽʽ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ʽʽ:Lˉˆ/ᐧﾞ;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->ʿ:Ljava/lang/CharSequence;

    return-void
.end method

.method public setSubtitleTextColor(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setSubtitleTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setSubtitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->ᵎᵔ:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ʽʽ:Lˉˆ/ᐧﾞ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ᴵˊ:Lˉˆ/ᐧﾞ;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lˉˆ/ᐧﾞ;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lˉˆ/ᐧﾞ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ᴵˊ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ᴵˊ:Lˉˆ/ᐧﾞ;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->ᵔי:I

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->ᴵˊ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v2, v0, v1}, Lˉˆ/ᐧﾞ;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ʿᵢ:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ᴵˊ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ᴵˊ:Lˉˆ/ᐧﾞ;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->ᵔʾ(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ᴵˊ:Lˉˆ/ᐧﾞ;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->ⁱˊ(Landroid/view/View;Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ᴵˊ:Lˉˆ/ᐧﾞ;

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->ᵔʾ(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ᴵˊ:Lˉˆ/ᐧﾞ;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ᴵʼ:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ᴵˊ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ᴵˊ:Lˉˆ/ᐧﾞ;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->ˉـ:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTitleMarginBottom(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->ʼˈ:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setTitleMarginEnd(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->ˋᵔ:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setTitleMarginStart(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->ˑٴ:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setTitleMarginTop(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->ˊˋ:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitleTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->ʿᵢ:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ᴵˊ:Lˉˆ/ᐧﾞ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public final ʼᐧ(Landroid/view/View;II[I)I
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lˉˆ/ﾞˏ;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v2, 0x1

    aget v3, p4, v2

    sub-int/2addr v1, v3

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr p2, v4

    neg-int v1, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p4, v2

    invoke-virtual {p0, p1, p3}, Landroidx/appcompat/widget/Toolbar;->ˆʾ(Landroid/view/View;I)I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    sub-int v1, p2, p4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p1, v1, p3, p2, v2}, Landroid/view/View;->layout(IIII)V

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p4, p1

    sub-int/2addr p2, p4

    return p2
.end method

.method public final ʽ()V
    .locals 4

    .prologue
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ˉٴ:Lˉˆ/ʾᵎ;

    if-nez v0, :cond_0

    new-instance v0, Lˉˆ/ʾᵎ;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f04068c

    invoke-direct {v0, v1, v2, v3}, Lˉˆ/ʾᵎ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ˉٴ:Lˉˆ/ʾᵎ;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ˊʻ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lˉˆ/ʾᵎ;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ˉٴ:Lˉˆ/ʾᵎ;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ٴᵢ:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroidx/appcompat/widget/Toolbar;->ᵔᵢ()Lˉˆ/ﾞˏ;

    move-result-object v0

    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->ᵔٴ:I

    and-int/lit8 v1, v1, 0x70

    const v2, 0x800003

    or-int/2addr v1, v2

    iput v1, v0, Lˉˆ/ﾞˏ;->ﹳٴ:I

    const/4 v1, 0x2

    iput v1, v0, Lˉˆ/ﾞˏ;->ⁱˊ:I

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ˉٴ:Lˉˆ/ʾᵎ;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ˉٴ:Lˉˆ/ʾᵎ;

    new-instance v1, Landroidx/leanback/widget/ʼʼ;

    const/4 v2, 0x5

    invoke-direct {v1, v2, p0}, Landroidx/leanback/widget/ʼʼ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final ˆʾ(Landroid/view/View;I)I
    .locals 6

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lˉˆ/ﾞˏ;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    sub-int p2, p1, p2

    div-int/lit8 p2, p2, 0x2

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    iget v2, v0, Lˉˆ/ﾞˏ;->ﹳٴ:I

    and-int/lit8 v2, v2, 0x70

    const/16 v3, 0x10

    const/16 v4, 0x50

    const/16 v5, 0x30

    if-eq v2, v3, :cond_1

    if-eq v2, v5, :cond_1

    if-eq v2, v4, :cond_1

    iget v2, p0, Landroidx/appcompat/widget/Toolbar;->ᴵˑ:I

    and-int/lit8 v2, v2, 0x70

    :cond_1
    if-eq v2, v5, :cond_5

    if-eq v2, v4, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int v4, v3, p2

    sub-int/2addr v4, v2

    sub-int/2addr v4, p1

    div-int/lit8 v4, v4, 0x2

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ge v4, v5, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    sub-int/2addr v3, v2

    sub-int/2addr v3, p1

    sub-int/2addr v3, v4

    sub-int/2addr v3, p2

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-ge v3, p1, :cond_3

    sub-int/2addr p1, v3

    sub-int/2addr v4, p1

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_3
    :goto_1
    add-int/2addr p2, v4

    return p2

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, p1

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v1, p1

    sub-int/2addr v1, p2

    return v1

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    sub-int/2addr p1, p2

    return p1
.end method

.method public final ˈ()V
    .locals 3

    .prologue
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ـˏ:Lˉˆ/ﾞˋ;

    if-nez v0, :cond_0

    new-instance v0, Lˉˆ/ﾞˋ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lˉˆ/ﾞˋ;->ﹳٴ:I

    iput v1, v0, Lˉˆ/ﾞˋ;->ⁱˊ:I

    const/high16 v2, -0x80000000

    iput v2, v0, Lˉˆ/ﾞˋ;->ʽ:I

    iput v2, v0, Lˉˆ/ﾞˋ;->ˈ:I

    iput v1, v0, Lˉˆ/ﾞˋ;->ˑﹳ:I

    iput v1, v0, Lˉˆ/ﾞˋ;->ﾞᴵ:I

    iput-boolean v1, v0, Lˉˆ/ﾞˋ;->ᵎﹶ:Z

    iput-boolean v1, v0, Lˉˆ/ﾞˋ;->ᵔᵢ:Z

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ـˏ:Lˉˆ/ﾞˋ;

    :cond_0
    return-void
.end method

.method public final ˉʿ()V
    .locals 5

    .prologue
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ـﹶ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroid/view/MenuItem;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-interface {v4, v3}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentMenuItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->getMenuInflater()Landroid/view/MenuInflater;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ˊᵔ:Lˑי/ʽ;

    iget-object v1, v1, Lˑי/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lˑʼ/ˈʿ;

    iget-object v2, v2, Lˑʼ/ˈʿ;->ﹳٴ:Lˑʼ/ʿ;

    invoke-virtual {v2}, Lˑʼ/ʿ;->ٴﹶ()Z

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentMenuItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ـﹶ:Ljava/util/ArrayList;

    return-void
.end method

.method public final ˉˆ(Landroid/view/View;II[I)I
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lˉˆ/ﾞˏ;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v2, 0x0

    aget v3, p4, v2

    sub-int/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v3, p2

    neg-int p2, v1

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    aput p2, p4, v2

    invoke-virtual {p0, p1, p3}, Landroidx/appcompat/widget/Toolbar;->ˆʾ(Landroid/view/View;I)I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int p4, v3, p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p1, v3, p2, p4, v1}, Landroid/view/View;->layout(IIII)V

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p3, p1

    add-int/2addr p3, v3

    return p3
.end method

.method public final ˏי()V
    .locals 3

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_3

    invoke-static {p0}, Lˉˆ/ᵔⁱ;->ﹳٴ(Landroid/view/View;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ʻˋ:Lˉˆ/ٴʿ;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lˉˆ/ٴʿ;->ᴵˊ:Lᵔʾ/ﾞʻ;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->ـᵎ:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->ᵎʻ:Landroid/window/OnBackInvokedDispatcher;

    if-nez v2, :cond_2

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ٴﹳ:Landroid/window/OnBackInvokedCallback;

    if-nez v1, :cond_1

    new-instance v1, Lˉˆ/ﹶʽ;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lˉˆ/ﹶʽ;-><init>(Landroidx/appcompat/widget/Toolbar;I)V

    invoke-static {v1}, Lˉˆ/ᵔⁱ;->ⁱˊ(Ljava/lang/Runnable;)Landroid/window/OnBackInvokedCallback;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ٴﹳ:Landroid/window/OnBackInvokedCallback;

    :cond_1
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ٴﹳ:Landroid/window/OnBackInvokedCallback;

    invoke-static {v0, v1}, Lˉˆ/ᵔⁱ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ᵎʻ:Landroid/window/OnBackInvokedDispatcher;

    return-void

    :cond_2
    if-nez v1, :cond_3

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ᵎʻ:Landroid/window/OnBackInvokedDispatcher;

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ٴﹳ:Landroid/window/OnBackInvokedCallback;

    invoke-static {v0, v1}, Lˉˆ/ᵔⁱ;->ˈ(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ᵎʻ:Landroid/window/OnBackInvokedDispatcher;

    :cond_3
    return-void
.end method

.method public final ˑﹳ()V
    .locals 3

    .prologue
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->ﾞᴵ()V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ʾˋ:Landroidx/appcompat/widget/ActionMenuView;

    iget-object v1, v0, Landroidx/appcompat/widget/ActionMenuView;->ˑٴ:Lᵔʾ/ˆʾ;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Lᵔʾ/ˆʾ;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ʻˋ:Lˉˆ/ٴʿ;

    if-nez v1, :cond_0

    new-instance v1, Lˉˆ/ٴʿ;

    invoke-direct {v1, p0}, Lˉˆ/ٴʿ;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ʻˋ:Lˉˆ/ٴʿ;

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ʾˋ:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ActionMenuView;->setExpandedActionViewsExclusive(Z)V

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ʻˋ:Lˉˆ/ٴʿ;

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->ٴʼ:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lᵔʾ/ˆʾ;->ⁱˊ(Lᵔʾ/ʽﹳ;Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->ˏי()V

    :cond_1
    return-void
.end method

.method public final יـ(Landroid/view/View;)Z
    .locals 1

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final ᵎﹶ()V
    .locals 4

    .prologue
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ˈٴ:Lˉˆ/ʾᵎ;

    if-nez v0, :cond_0

    new-instance v0, Lˉˆ/ʾᵎ;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f04068c

    invoke-direct {v0, v1, v2, v3}, Lˉˆ/ʾᵎ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ˈٴ:Lˉˆ/ʾᵎ;

    invoke-static {}, Landroidx/appcompat/widget/Toolbar;->ᵔᵢ()Lˉˆ/ﾞˏ;

    move-result-object v0

    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->ᵔٴ:I

    and-int/lit8 v1, v1, 0x70

    const v2, 0x800003

    or-int/2addr v1, v2

    iput v1, v0, Lˉˆ/ﾞˏ;->ﹳٴ:I

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ˈٴ:Lˉˆ/ʾᵎ;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public final ᵔʾ(Landroid/view/View;)Z
    .locals 1

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ᴵʼ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final ᵔﹳ(Landroid/view/View;IIII[I)I
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v2, 0x0

    aget v3, p6, v2

    sub-int/2addr v1, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v4, 0x1

    aget v5, p6, v4

    sub-int/2addr v3, v5

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v6, v5

    neg-int v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p6, v2

    neg-int v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p6, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, p6

    add-int/2addr v1, v6

    add-int/2addr v1, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v1, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p6

    add-int/2addr p6, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p6, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p6, p3

    add-int/2addr p6, p5

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, p6, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    add-int/2addr p1, v6

    return p1
.end method

.method public final ⁱˊ(Landroid/view/View;Z)V
    .locals 2

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/appcompat/widget/Toolbar;->ᵔᵢ()Lˉˆ/ﾞˏ;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Landroidx/appcompat/widget/Toolbar;->ʼˎ(Landroid/view/ViewGroup$LayoutParams;)Lˉˆ/ﾞˏ;

    move-result-object v0

    goto :goto_0

    :cond_1
    check-cast v0, Lˉˆ/ﾞˏ;

    :goto_0
    const/4 v1, 0x1

    iput v1, v0, Lˉˆ/ﾞˏ;->ⁱˊ:I

    if-eqz p2, :cond_2

    iget-object p2, p0, Landroidx/appcompat/widget/Toolbar;->ᵎⁱ:Landroid/view/View;

    if-eqz p2, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Landroidx/appcompat/widget/Toolbar;->ᴵʼ:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final ﹳٴ(ILjava/util/ArrayList;)V
    .locals 8

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v4

    invoke-static {p1, v4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p1

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x3

    const/4 v5, 0x5

    if-eqz v0, :cond_4

    sub-int/2addr v3, v2

    :goto_1
    if-ltz v3, :cond_8

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lˉˆ/ﾞˏ;

    iget v6, v1, Lˉˆ/ﾞˏ;->ⁱˊ:I

    if-nez v6, :cond_3

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->יـ(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget v1, v1, Lˉˆ/ﾞˏ;->ﹳٴ:I

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v6

    invoke-static {v1, v6}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    if-eq v1, v2, :cond_2

    if-eq v1, v4, :cond_2

    if-eq v1, v5, :cond_2

    if-ne v6, v2, :cond_1

    move v1, v5

    goto :goto_2

    :cond_1
    move v1, v4

    :cond_2
    :goto_2
    if-ne v1, p1, :cond_3

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_4
    :goto_3
    if-ge v1, v3, :cond_8

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lˉˆ/ﾞˏ;

    iget v7, v6, Lˉˆ/ﾞˏ;->ⁱˊ:I

    if-nez v7, :cond_7

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->יـ(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget v6, v6, Lˉˆ/ﾞˏ;->ﹳٴ:I

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v7

    invoke-static {v6, v7}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v6

    and-int/lit8 v6, v6, 0x7

    if-eq v6, v2, :cond_6

    if-eq v6, v4, :cond_6

    if-eq v6, v5, :cond_6

    if-ne v7, v2, :cond_5

    move v6, v5

    goto :goto_4

    :cond_5
    move v6, v4

    :cond_6
    :goto_4
    if-ne v6, p1, :cond_7

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    return-void
.end method

.method public final ﹳᐧ(Landroid/view/View;IIII)V
    .locals 3

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v2, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v1

    add-int/2addr v2, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v2, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v1, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p3

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p4

    const/high16 v0, 0x40000000    # 2.0f

    if-eq p4, v0, :cond_1

    if-ltz p5, :cond_1

    if-eqz p4, :cond_0

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p3

    invoke-static {p3, p5}, Ljava/lang/Math;->min(II)I

    move-result p5

    :cond_0
    invoke-static {p5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public final ﾞᴵ()V
    .locals 3

    .prologue
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ʾˋ:Landroidx/appcompat/widget/ActionMenuView;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ʾˋ:Landroidx/appcompat/widget/ActionMenuView;

    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->ᵎˊ:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->setPopupTheme(I)V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ʾˋ:Landroidx/appcompat/widget/ActionMenuView;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ˈˏ:Lˉˆ/ʿ;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->setOnMenuItemClickListener(Lˉˆ/ᵔʾ;)V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ʾˋ:Landroidx/appcompat/widget/ActionMenuView;

    new-instance v1, Landroidx/leanback/widget/ˉˆ;

    const/16 v2, 0x19

    invoke-direct {v1, v2, p0}, Landroidx/leanback/widget/ˉˆ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v0, Landroidx/appcompat/widget/ActionMenuView;->ﹳـ:Landroidx/leanback/widget/ˉˆ;

    invoke-static {}, Landroidx/appcompat/widget/Toolbar;->ᵔᵢ()Lˉˆ/ﾞˏ;

    move-result-object v0

    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->ᵔٴ:I

    and-int/lit8 v1, v1, 0x70

    const v2, 0x800005

    or-int/2addr v1, v2

    iput v1, v0, Lˉˆ/ﾞˏ;->ﹳٴ:I

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ʾˋ:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ʾˋ:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->ⁱˊ(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method
