.class public Landroidx/leanback/widget/HorizontalGridView;
.super Landroidx/leanback/widget/ᵔᵢ;
.source "SourceFile"


# instance fields
.field public ʻʼ:Z

.field public ʻˆ:I

.field public ˆʻ:Landroid/graphics/LinearGradient;

.field public ˆˎ:Z

.field public ˉʽ:I

.field public ˎʼ:I

.field public final ˏʻ:Landroid/graphics/Rect;

.field public ˑﹶ:Landroid/graphics/LinearGradient;

.field public יʿ:I

.field public ᴵٴ:Landroid/graphics/Bitmap;

.field public final ᵢᐧ:Landroid/graphics/Paint;

.field public ﾞˊ:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/leanback/widget/HorizontalGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    invoke-direct {p0, p1, p2}, Landroidx/leanback/widget/ᵔᵢ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Landroidx/leanback/widget/HorizontalGridView;->ᵢᐧ:Landroid/graphics/Paint;

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Landroidx/leanback/widget/HorizontalGridView;->ˏʻ:Landroid/graphics/Rect;

    iget-object p3, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroidx/leanback/widget/GridLayoutManager;->ˎʼ(I)V

    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/ᵔᵢ;->ˑ(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v3, Landroidx/leanback/widget/ᐧᴵ;->ⁱˊ:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lˋᵔ/ᵎˊ;->ﾞʻ(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    invoke-virtual {p0, v5}, Landroidx/leanback/widget/HorizontalGridView;->setRowHeight(Landroid/content/res/TypedArray;)V

    const/4 p1, 0x1

    invoke-virtual {v5, v0, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/HorizontalGridView;->setNumRows(I)V

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroidx/leanback/widget/HorizontalGridView;->ˎᐧ()V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, v1, Landroidx/leanback/widget/HorizontalGridView;->ᵢᐧ:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method private getTempBitmapHigh()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/HorizontalGridView;->ᴵٴ:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroidx/leanback/widget/HorizontalGridView;->ˎʼ:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/leanback/widget/HorizontalGridView;->ᴵٴ:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/HorizontalGridView;->ˎʼ:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/widget/HorizontalGridView;->ᴵٴ:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Landroidx/leanback/widget/HorizontalGridView;->ᴵٴ:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private getTempBitmapLow()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/HorizontalGridView;->ﾞˊ:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroidx/leanback/widget/HorizontalGridView;->ˉʽ:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/leanback/widget/HorizontalGridView;->ﾞˊ:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/HorizontalGridView;->ˉʽ:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/widget/HorizontalGridView;->ﾞˊ:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Landroidx/leanback/widget/HorizontalGridView;->ﾞˊ:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 18

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Landroidx/leanback/widget/HorizontalGridView;->ˆˎ:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    :cond_0
    move v2, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_0

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, v0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/leanback/widget/ﹳᐧ;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, v7, Landroidx/leanback/widget/ﹳᐧ;->ˑﹳ:I

    add-int/2addr v6, v7

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    iget v8, v0, Landroidx/leanback/widget/HorizontalGridView;->יʿ:I

    sub-int/2addr v7, v8

    if-ge v6, v7, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :goto_1
    iget-boolean v5, v0, Landroidx/leanback/widget/HorizontalGridView;->ʻʼ:Z

    if-nez v5, :cond_4

    :cond_3
    move v3, v4

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v3

    :goto_2
    if-ltz v5, :cond_3

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, v0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/leanback/widget/ﹳᐧ;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    iget v7, v7, Landroidx/leanback/widget/ﹳᐧ;->ᵎﹶ:I

    sub-int/2addr v6, v7

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, v0, Landroidx/leanback/widget/HorizontalGridView;->ʻˆ:I

    add-int/2addr v7, v8

    if-le v6, v7, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :goto_3
    const/4 v5, 0x0

    if-nez v2, :cond_6

    iput-object v5, v0, Landroidx/leanback/widget/HorizontalGridView;->ﾞˊ:Landroid/graphics/Bitmap;

    :cond_6
    if-nez v3, :cond_7

    iput-object v5, v0, Landroidx/leanback/widget/HorizontalGridView;->ᴵٴ:Landroid/graphics/Bitmap;

    :cond_7
    if-nez v2, :cond_8

    if-nez v3, :cond_8

    invoke-super/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_8
    iget-boolean v6, v0, Landroidx/leanback/widget/HorizontalGridView;->ˆˎ:Z

    if-eqz v6, :cond_9

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    iget v7, v0, Landroidx/leanback/widget/HorizontalGridView;->יʿ:I

    sub-int/2addr v6, v7

    iget v7, v0, Landroidx/leanback/widget/HorizontalGridView;->ˉʽ:I

    sub-int/2addr v6, v7

    goto :goto_4

    :cond_9
    move v6, v4

    :goto_4
    iget-boolean v7, v0, Landroidx/leanback/widget/HorizontalGridView;->ʻʼ:Z

    if-eqz v7, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, v0, Landroidx/leanback/widget/HorizontalGridView;->ʻˆ:I

    add-int/2addr v7, v8

    iget v8, v0, Landroidx/leanback/widget/HorizontalGridView;->ˎʼ:I

    add-int/2addr v7, v8

    goto :goto_5

    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    :goto_5
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    iget-boolean v9, v0, Landroidx/leanback/widget/HorizontalGridView;->ˆˎ:Z

    if-eqz v9, :cond_b

    iget v9, v0, Landroidx/leanback/widget/HorizontalGridView;->ˉʽ:I

    goto :goto_6

    :cond_b
    move v9, v4

    :goto_6
    add-int/2addr v9, v6

    iget-boolean v10, v0, Landroidx/leanback/widget/HorizontalGridView;->ʻʼ:Z

    if-eqz v10, :cond_c

    iget v10, v0, Landroidx/leanback/widget/HorizontalGridView;->ˎʼ:I

    goto :goto_7

    :cond_c
    move v10, v4

    :goto_7
    sub-int v10, v7, v10

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v11

    invoke-virtual {v1, v9, v4, v10, v11}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    invoke-super/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12}, Landroid/graphics/Canvas;-><init>()V

    iget-object v8, v0, Landroidx/leanback/widget/HorizontalGridView;->ˏʻ:Landroid/graphics/Rect;

    iput v4, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v9

    iput v9, v8, Landroid/graphics/Rect;->bottom:I

    const/4 v9, 0x0

    if-eqz v2, :cond_d

    iget v2, v0, Landroidx/leanback/widget/HorizontalGridView;->ˉʽ:I

    if-lez v2, :cond_d

    invoke-direct {v0}, Landroidx/leanback/widget/HorizontalGridView;->getTempBitmapLow()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    invoke-virtual {v12, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v12}, Landroid/graphics/Canvas;->save()I

    move-result v10

    iget v11, v0, Landroidx/leanback/widget/HorizontalGridView;->ˉʽ:I

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v13

    invoke-virtual {v12, v4, v4, v11, v13}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    neg-int v11, v6

    int-to-float v11, v11

    invoke-virtual {v12, v11, v9}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-super {v0, v12}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v12, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object v10, v0, Landroidx/leanback/widget/HorizontalGridView;->ᵢᐧ:Landroid/graphics/Paint;

    iget-object v13, v0, Landroidx/leanback/widget/HorizontalGridView;->ˆʻ:Landroid/graphics/LinearGradient;

    invoke-virtual {v10, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget v10, v0, Landroidx/leanback/widget/HorizontalGridView;->ˉʽ:I

    int-to-float v15, v10

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    iget-object v13, v0, Landroidx/leanback/widget/HorizontalGridView;->ᵢᐧ:Landroid/graphics/Paint;

    move-object/from16 v17, v13

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v16, v10

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iput v4, v8, Landroid/graphics/Rect;->left:I

    iget v10, v0, Landroidx/leanback/widget/HorizontalGridView;->ˉʽ:I

    iput v10, v8, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    invoke-virtual {v1, v6, v9}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v1, v2, v8, v8, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v1, v11, v9}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_d
    if-eqz v3, :cond_e

    iget v2, v0, Landroidx/leanback/widget/HorizontalGridView;->ˎʼ:I

    if-lez v2, :cond_e

    invoke-direct {v0}, Landroidx/leanback/widget/HorizontalGridView;->getTempBitmapHigh()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    invoke-virtual {v12, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v12}, Landroid/graphics/Canvas;->save()I

    move-result v3

    iget v6, v0, Landroidx/leanback/widget/HorizontalGridView;->ˎʼ:I

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-virtual {v12, v4, v4, v6, v10}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget v6, v0, Landroidx/leanback/widget/HorizontalGridView;->ˎʼ:I

    sub-int v6, v7, v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v12, v6, v9}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-super {v0, v12}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v12, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object v3, v0, Landroidx/leanback/widget/HorizontalGridView;->ᵢᐧ:Landroid/graphics/Paint;

    iget-object v6, v0, Landroidx/leanback/widget/HorizontalGridView;->ˑﹶ:Landroid/graphics/LinearGradient;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget v3, v0, Landroidx/leanback/widget/HorizontalGridView;->ˎʼ:I

    int-to-float v15, v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v6, v0, Landroidx/leanback/widget/HorizontalGridView;->ᵢᐧ:Landroid/graphics/Paint;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v16, v3

    move-object/from16 v17, v6

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iput v4, v8, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroidx/leanback/widget/HorizontalGridView;->ˎʼ:I

    iput v3, v8, Landroid/graphics/Rect;->right:I

    sub-int v3, v7, v3

    int-to-float v3, v3

    invoke-virtual {v1, v3, v9}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v1, v2, v8, v8, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget v2, v0, Landroidx/leanback/widget/HorizontalGridView;->ˎʼ:I

    sub-int/2addr v7, v2

    neg-int v2, v7

    int-to-float v2, v2

    invoke-virtual {v1, v2, v9}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_e
    return-void
.end method

.method public final getFadingLeftEdge()Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "GetterSetterNames"
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/leanback/widget/HorizontalGridView;->ˆˎ:Z

    return v0
.end method

.method public final getFadingLeftEdgeLength()I
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/HorizontalGridView;->ˉʽ:I

    return v0
.end method

.method public final getFadingLeftEdgeOffset()I
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/HorizontalGridView;->יʿ:I

    return v0
.end method

.method public final getFadingRightEdge()Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "GetterSetterNames"
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/leanback/widget/HorizontalGridView;->ʻʼ:Z

    return v0
.end method

.method public final getFadingRightEdgeLength()I
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/HorizontalGridView;->ˎʼ:I

    return v0
.end method

.method public final getFadingRightEdgeOffset()I
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/HorizontalGridView;->ʻˆ:I

    return v0
.end method

.method public final setFadingLeftEdge(Z)V
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroidx/leanback/widget/HorizontalGridView;->ˆˎ:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Landroidx/leanback/widget/HorizontalGridView;->ˆˎ:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/leanback/widget/HorizontalGridView;->ﾞˊ:Landroid/graphics/Bitmap;

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroidx/leanback/widget/HorizontalGridView;->ˎᐧ()V

    :cond_1
    return-void
.end method

.method public final setFadingLeftEdgeLength(I)V
    .locals 9

    .prologue
    iget v0, p0, Landroidx/leanback/widget/HorizontalGridView;->ˉʽ:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Landroidx/leanback/widget/HorizontalGridView;->ˉʽ:I

    if-eqz p1, :cond_0

    new-instance v1, Landroid/graphics/LinearGradient;

    iget p1, p0, Landroidx/leanback/widget/HorizontalGridView;->ˉʽ:I

    int-to-float v4, p1

    const/high16 v7, -0x1000000

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Landroidx/leanback/widget/HorizontalGridView;->ˆʻ:Landroid/graphics/LinearGradient;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/leanback/widget/HorizontalGridView;->ˆʻ:Landroid/graphics/LinearGradient;

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public final setFadingLeftEdgeOffset(I)V
    .locals 1

    .prologue
    iget v0, p0, Landroidx/leanback/widget/HorizontalGridView;->יʿ:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroidx/leanback/widget/HorizontalGridView;->יʿ:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setFadingRightEdge(Z)V
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroidx/leanback/widget/HorizontalGridView;->ʻʼ:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Landroidx/leanback/widget/HorizontalGridView;->ʻʼ:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/leanback/widget/HorizontalGridView;->ᴵٴ:Landroid/graphics/Bitmap;

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroidx/leanback/widget/HorizontalGridView;->ˎᐧ()V

    :cond_1
    return-void
.end method

.method public final setFadingRightEdgeLength(I)V
    .locals 9

    .prologue
    iget v0, p0, Landroidx/leanback/widget/HorizontalGridView;->ˎʼ:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Landroidx/leanback/widget/HorizontalGridView;->ˎʼ:I

    if-eqz p1, :cond_0

    new-instance v1, Landroid/graphics/LinearGradient;

    iget p1, p0, Landroidx/leanback/widget/HorizontalGridView;->ˎʼ:I

    int-to-float v4, p1

    const/4 v7, 0x0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/high16 v6, -0x1000000

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Landroidx/leanback/widget/HorizontalGridView;->ˑﹶ:Landroid/graphics/LinearGradient;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/leanback/widget/HorizontalGridView;->ˑﹶ:Landroid/graphics/LinearGradient;

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public final setFadingRightEdgeOffset(I)V
    .locals 1

    .prologue
    iget v0, p0, Landroidx/leanback/widget/HorizontalGridView;->ʻˆ:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroidx/leanback/widget/HorizontalGridView;->ʻˆ:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setNumRows(I)V
    .locals 1

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    if-ltz p1, :cond_0

    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->ᴵˑ:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setRowHeight(I)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/GridLayoutManager;->ʻˆ(I)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setRowHeight(Landroid/content/res/TypedArray;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/HorizontalGridView;->setRowHeight(I)V

    :cond_0
    return-void
.end method

.method public final ˎᐧ()V
    .locals 3

    .prologue
    iget-boolean v0, p0, Landroidx/leanback/widget/HorizontalGridView;->ˆˎ:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/leanback/widget/HorizontalGridView;->ʻʼ:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method
