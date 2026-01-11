.class public Lᵔʾ/יـ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʼˎ:Lᵔʾ/ˏי;

.field public final ʽ:Z

.field public ˆʾ:Lᵔʾ/ﹳᐧ;

.field public final ˈ:I

.field public final ˑﹳ:I

.field public ٴﹶ:Landroid/widget/PopupWindow$OnDismissListener;

.field public ᵎﹶ:I

.field public ᵔᵢ:Z

.field public final ⁱˊ:Lᵔʾ/ˆʾ;

.field public final ﹳٴ:Landroid/content/Context;

.field public final ﾞʻ:Lˉˆ/ⁱᴵ;

.field public ﾞᴵ:Landroid/view/View;


# direct methods
.method public constructor <init>(IILandroid/content/Context;Landroid/view/View;Lᵔʾ/ˆʾ;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x800003

    iput v0, p0, Lᵔʾ/יـ;->ᵎﹶ:I

    new-instance v0, Lˉˆ/ⁱᴵ;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lˉˆ/ⁱᴵ;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lᵔʾ/יـ;->ﾞʻ:Lˉˆ/ⁱᴵ;

    iput-object p3, p0, Lᵔʾ/יـ;->ﹳٴ:Landroid/content/Context;

    iput-object p5, p0, Lᵔʾ/יـ;->ⁱˊ:Lᵔʾ/ˆʾ;

    iput-object p4, p0, Lᵔʾ/יـ;->ﾞᴵ:Landroid/view/View;

    iput-boolean p6, p0, Lᵔʾ/יـ;->ʽ:Z

    iput p1, p0, Lᵔʾ/יـ;->ˈ:I

    iput p2, p0, Lᵔʾ/יـ;->ˑﹳ:I

    return-void
.end method


# virtual methods
.method public ʽ()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Lᵔʾ/יـ;->ˆʾ:Lᵔʾ/ﹳᐧ;

    iget-object v0, p0, Lᵔʾ/יـ;->ٴﹶ:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_0
    return-void
.end method

.method public final ˈ(IIZZ)V
    .locals 3

    .prologue
    invoke-virtual {p0}, Lᵔʾ/יـ;->ﹳٴ()Lᵔʾ/ﹳᐧ;

    move-result-object v0

    invoke-virtual {v0, p4}, Lᵔʾ/ﹳᐧ;->יـ(Z)V

    if-eqz p3, :cond_1

    iget p3, p0, Lᵔʾ/יـ;->ᵎﹶ:I

    iget-object p4, p0, Lᵔʾ/יـ;->ﾞᴵ:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getLayoutDirection()I

    move-result p4

    invoke-static {p3, p4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p3

    and-int/lit8 p3, p3, 0x7

    const/4 p4, 0x5

    if-ne p3, p4, :cond_0

    iget-object p3, p0, Lᵔʾ/יـ;->ﾞᴵ:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    sub-int/2addr p1, p3

    :cond_0
    invoke-virtual {v0, p1}, Lᵔʾ/ﹳᐧ;->ᵔﹳ(I)V

    invoke-virtual {v0, p2}, Lᵔʾ/ﹳᐧ;->ˏי(I)V

    iget-object p3, p0, Lᵔʾ/יـ;->ﹳٴ:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    const/high16 p4, 0x42400000    # 48.0f

    mul-float/2addr p3, p4

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    float-to-int p3, p3

    new-instance p4, Landroid/graphics/Rect;

    sub-int v1, p1, p3

    sub-int v2, p2, p3

    add-int/2addr p1, p3

    add-int/2addr p2, p3

    invoke-direct {p4, v1, v2, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p4, v0, Lᵔʾ/ﹳᐧ;->ʾˋ:Landroid/graphics/Rect;

    :cond_1
    invoke-interface {v0}, Lᵔʾ/ʼʼ;->ˑﹳ()V

    return-void
.end method

.method public final ⁱˊ()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lᵔʾ/יـ;->ˆʾ:Lᵔʾ/ﹳᐧ;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lᵔʾ/ʼʼ;->ﹳٴ()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ﹳٴ()Lᵔʾ/ﹳᐧ;
    .locals 10

    .prologue
    iget-object v0, p0, Lᵔʾ/יـ;->ˆʾ:Lᵔʾ/ﹳᐧ;

    if-nez v0, :cond_1

    const-string v0, "window"

    iget-object v1, p0, Lᵔʾ/יـ;->ﹳٴ:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v0, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-lt v0, v1, :cond_0

    new-instance v2, Lᵔʾ/ˈ;

    iget-object v4, p0, Lᵔʾ/יـ;->ﾞᴵ:Landroid/view/View;

    iget v6, p0, Lᵔʾ/יـ;->ˑﹳ:I

    iget-boolean v7, p0, Lᵔʾ/יـ;->ʽ:Z

    iget-object v3, p0, Lᵔʾ/יـ;->ﹳٴ:Landroid/content/Context;

    iget v5, p0, Lᵔʾ/יـ;->ˈ:I

    invoke-direct/range {v2 .. v7}, Lᵔʾ/ˈ;-><init>(Landroid/content/Context;Landroid/view/View;IIZ)V

    goto :goto_0

    :cond_0
    new-instance v3, Lᵔʾ/ᵢˏ;

    iget-object v7, p0, Lᵔʾ/יـ;->ﾞᴵ:Landroid/view/View;

    iget v5, p0, Lᵔʾ/יـ;->ˑﹳ:I

    iget-boolean v9, p0, Lᵔʾ/יـ;->ʽ:Z

    iget v4, p0, Lᵔʾ/יـ;->ˈ:I

    iget-object v6, p0, Lᵔʾ/יـ;->ﹳٴ:Landroid/content/Context;

    iget-object v8, p0, Lᵔʾ/יـ;->ⁱˊ:Lᵔʾ/ˆʾ;

    invoke-direct/range {v3 .. v9}, Lᵔʾ/ᵢˏ;-><init>(IILandroid/content/Context;Landroid/view/View;Lᵔʾ/ˆʾ;Z)V

    move-object v2, v3

    :goto_0
    iget-object v0, p0, Lᵔʾ/יـ;->ⁱˊ:Lᵔʾ/ˆʾ;

    invoke-virtual {v2, v0}, Lᵔʾ/ﹳᐧ;->ﾞʻ(Lᵔʾ/ˆʾ;)V

    iget-object v0, p0, Lᵔʾ/יـ;->ﾞʻ:Lˉˆ/ⁱᴵ;

    invoke-virtual {v2, v0}, Lᵔʾ/ﹳᐧ;->ﹳᐧ(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v0, p0, Lᵔʾ/יـ;->ﾞᴵ:Landroid/view/View;

    invoke-virtual {v2, v0}, Lᵔʾ/ﹳᐧ;->ᵔʾ(Landroid/view/View;)V

    iget-object v0, p0, Lᵔʾ/יـ;->ʼˎ:Lᵔʾ/ˏי;

    invoke-interface {v2, v0}, Lᵔʾ/ʽﹳ;->ᵔᵢ(Lᵔʾ/ˏי;)V

    iget-boolean v0, p0, Lᵔʾ/יـ;->ᵔᵢ:Z

    invoke-virtual {v2, v0}, Lᵔʾ/ﹳᐧ;->ˉˆ(Z)V

    iget v0, p0, Lᵔʾ/יـ;->ᵎﹶ:I

    invoke-virtual {v2, v0}, Lᵔʾ/ﹳᐧ;->ʼᐧ(I)V

    iput-object v2, p0, Lᵔʾ/יـ;->ˆʾ:Lᵔʾ/ﹳᐧ;

    :cond_1
    iget-object v0, p0, Lᵔʾ/יـ;->ˆʾ:Lᵔʾ/ﹳᐧ;

    return-object v0
.end method
