.class Landroidx/leanback/widget/GuidedActionsRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field public ʽʽ:Landroidx/leanback/widget/ᵎˊ;

.field public final ʾˋ:F

.field public ᴵˊ:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v0, p0, Landroidx/leanback/widget/GuidedActionsRelativeLayout;->ᴵˊ:Z

    invoke-static {p1}, Landroidx/leanback/widget/GuidanceStylingRelativeLayout;->ﹳٴ(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/GuidedActionsRelativeLayout;->ʾˋ:F

    return-void
.end method


# virtual methods
.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionsRelativeLayout;->ʽʽ:Landroidx/leanback/widget/ᵎˊ;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/leanback/widget/ᵎˊ;->ﹳٴ:Landroidx/leanback/widget/ˑٴ;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Landroidx/leanback/widget/ˑٴ;->ﹳᐧ:Landroidx/leanback/widget/ʾᵎ;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/leanback/widget/ʾᵎ;->ﹳٴ()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Landroidx/leanback/widget/ˑٴ;->ﹳٴ(Z)V

    return v2

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    move-object p1, p0

    const/4 p2, 0x0

    iput-boolean p2, p1, Landroidx/leanback/widget/GuidedActionsRelativeLayout;->ᴵˊ:Z

    return-void
.end method

.method public final onMeasure(II)V
    .locals 3

    .prologue
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    if-lez v0, :cond_1

    const v1, 0x7f0b01cb

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-gez v2, :cond_0

    iget-boolean v2, p0, Landroidx/leanback/widget/GuidedActionsRelativeLayout;->ᴵˊ:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/leanback/widget/GuidedActionsRelativeLayout;->ᴵˊ:Z

    :cond_0
    iget-boolean v2, p0, Landroidx/leanback/widget/GuidedActionsRelativeLayout;->ᴵˊ:Z

    if-eqz v2, :cond_1

    iget v2, p0, Landroidx/leanback/widget/GuidedActionsRelativeLayout;->ʾˋ:F

    int-to-float v0, v0

    mul-float/2addr v2, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method
