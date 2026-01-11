.class public final Landroidx/appcompat/view/menu/ExpandedMenuView;
.super Landroid/widget/ListView;
.source "SourceFile"

# interfaces
.implements Lᵔʾ/ʼˎ;
.implements Lᵔʾ/ـˆ;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field public static final ᴵˊ:[I


# instance fields
.field public ʾˋ:Lᵔʾ/ˆʾ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v0, 0x10100d4

    const v1, 0x1010129

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/ExpandedMenuView;->ᴵˊ:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x1010074

    const/4 v1, 0x0

    sget-object v2, Landroidx/appcompat/view/menu/ExpandedMenuView;->ᴵˊ:[I

    invoke-static {v0, v1, p1, p2, v2}, Lcom/parse/ٴʼ;->ʿᵢ(IILandroid/content/Context;Landroid/util/AttributeSet;[I)Lcom/parse/ٴʼ;

    move-result-object p1

    iget-object p2, p1, Lcom/parse/ٴʼ;->ᴵˊ:Ljava/lang/Object;

    check-cast p2, Landroid/content/res/TypedArray;

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Lcom/parse/ٴʼ;->ˑٴ(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1, v0}, Lcom/parse/ٴʼ;->ˑٴ(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {p1}, Lcom/parse/ٴʼ;->ᐧᴵ()V

    return-void
.end method


# virtual methods
.method public getWindowAnimations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lᵔʾ/ﾞʻ;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ExpandedMenuView;->ʽ(Lᵔʾ/ﾞʻ;)Z

    return-void
.end method

.method public final ʽ(Lᵔʾ/ﾞʻ;)Z
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/ExpandedMenuView;->ʾˋ:Lᵔʾ/ˆʾ;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lᵔʾ/ˆʾ;->ᵔﹳ(Landroid/view/MenuItem;Lᵔʾ/ʽﹳ;I)Z

    move-result p1

    return p1
.end method

.method public final ⁱˊ(Lᵔʾ/ˆʾ;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/ExpandedMenuView;->ʾˋ:Lᵔʾ/ˆʾ;

    return-void
.end method
