.class public final Landroidx/leanback/widget/ᵎᵔ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʼˎ:F

.field public ʽ:F

.field public final synthetic ˆʾ:Landroidx/leanback/widget/PagingIndicator;

.field public ˈ:F

.field public ˑﹳ:F

.field public ᵎﹶ:F

.field public ᵔᵢ:F

.field public ⁱˊ:I

.field public ﹳٴ:F

.field public ﾞᴵ:F


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/PagingIndicator;)V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/leanback/widget/ᵎᵔ;->ˆʾ:Landroidx/leanback/widget/PagingIndicator;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/leanback/widget/ᵎᵔ;->ᵔᵢ:F

    iget-boolean p1, p1, Landroidx/leanback/widget/PagingIndicator;->ʾˋ:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    iput v0, p0, Landroidx/leanback/widget/ᵎᵔ;->ʼˎ:F

    return-void
.end method


# virtual methods
.method public final ⁱˊ()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Landroidx/leanback/widget/ᵎᵔ;->ʽ:F

    iput v0, p0, Landroidx/leanback/widget/ᵎᵔ;->ˈ:F

    iget-object v1, p0, Landroidx/leanback/widget/ᵎᵔ;->ˆʾ:Landroidx/leanback/widget/PagingIndicator;

    iget v2, v1, Landroidx/leanback/widget/PagingIndicator;->ᴵˊ:I

    int-to-float v2, v2

    iput v2, p0, Landroidx/leanback/widget/ᵎᵔ;->ˑﹳ:F

    iget v2, v1, Landroidx/leanback/widget/PagingIndicator;->ʽʽ:I

    int-to-float v2, v2

    iput v2, p0, Landroidx/leanback/widget/ᵎᵔ;->ﾞᴵ:F

    iget v1, v1, Landroidx/leanback/widget/PagingIndicator;->ˈⁱ:F

    mul-float/2addr v2, v1

    iput v2, p0, Landroidx/leanback/widget/ᵎᵔ;->ᵎﹶ:F

    iput v0, p0, Landroidx/leanback/widget/ᵎᵔ;->ﹳٴ:F

    invoke-virtual {p0}, Landroidx/leanback/widget/ᵎᵔ;->ﹳٴ()V

    return-void
.end method

.method public final ﹳٴ()V
    .locals 4

    const/high16 v0, 0x437f0000    # 255.0f

    iget v1, p0, Landroidx/leanback/widget/ᵎᵔ;->ﹳٴ:F

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Landroidx/leanback/widget/ᵎᵔ;->ˆʾ:Landroidx/leanback/widget/PagingIndicator;

    iget v2, v1, Landroidx/leanback/widget/PagingIndicator;->ˑٴ:I

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    iget v3, v1, Landroidx/leanback/widget/PagingIndicator;->ˑٴ:I

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    iget v1, v1, Landroidx/leanback/widget/PagingIndicator;->ˑٴ:I

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {v0, v2, v3, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/ᵎᵔ;->ⁱˊ:I

    return-void
.end method
