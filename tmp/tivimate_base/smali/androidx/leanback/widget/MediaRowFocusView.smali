.class Landroidx/leanback/widget/MediaRowFocusView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public ʽʽ:I

.field public final ʾˋ:Landroid/graphics/Paint;

.field public final ᴵˊ:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Landroidx/leanback/widget/MediaRowFocusView;->ᴵˊ:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0600e7

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    iput-object p2, p0, Landroidx/leanback/widget/MediaRowFocusView;->ʾˋ:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/leanback/widget/MediaRowFocusView;->ʽʽ:I

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    neg-int v1, v0

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v0

    int-to-float v0, v3

    iget-object v3, p0, Landroidx/leanback/widget/MediaRowFocusView;->ᴵˊ:Landroid/graphics/RectF;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget v0, p0, Landroidx/leanback/widget/MediaRowFocusView;->ʽʽ:I

    int-to-float v1, v0

    int-to-float v0, v0

    iget-object v2, p0, Landroidx/leanback/widget/MediaRowFocusView;->ʾˋ:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method
