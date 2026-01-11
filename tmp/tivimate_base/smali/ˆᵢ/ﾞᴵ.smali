.class public final Lˆᵢ/ﾞᴵ;
.super Lˋⁱ/ʼˎ;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Lˈᐧ/ᵔᵢ;


# static fields
.field public static final ˆˎ:Landroid/graphics/drawable/ShapeDrawable;

.field public static final ˆﹳ:[I


# instance fields
.field public ʻʿ:F

.field public ʻˋ:F

.field public ʻᴵ:Landroid/content/res/ColorStateList;

.field public ʼـ:Landroid/graphics/drawable/RippleDrawable;

.field public final ʼᵢ:Landroid/graphics/RectF;

.field public ʽʾ:Ljava/lang/ref/WeakReference;

.field public final ʽˑ:Landroid/graphics/Paint;

.field public ʽᵔ:Landroid/content/res/ColorStateList;

.field public ʽⁱ:Landroid/text/SpannableStringBuilder;

.field public ʾˊ:Z

.field public ʾﾞ:Z

.field public ʿʽ:Z

.field public ʿـ:F

.field public ˆˑ:Landroid/text/TextUtils$TruncateAt;

.field public ˈˏ:F

.field public final ˈـ:Lˈᐧ/ʼˎ;

.field public ˊˊ:Landroid/graphics/PorterDuffColorFilter;

.field public ˊᵔ:Landroid/content/res/ColorStateList;

.field public ˊﹳ:Landroid/content/res/ColorStateList;

.field public ˊﾞ:Landroid/content/res/ColorStateList;

.field public final ˋˊ:Landroid/graphics/Paint$FontMetrics;

.field public ˋـ:I

.field public ˎʾ:I

.field public ˎˉ:I

.field public ˎـ:Z

.field public ˎᐧ:Landroid/content/res/ColorStateList;

.field public ˏⁱ:[I

.field public ˑ:Landroid/graphics/drawable/Drawable;

.field public ˑʼ:Landroid/content/res/ColorStateList;

.field public ˑˆ:I

.field public י:Z

.field public final יˉ:Landroid/graphics/PointF;

.field public יﹳ:F

.field public ـʻ:Landroid/graphics/PorterDuff$Mode;

.field public ـˊ:Lˑˏ/ⁱˊ;

.field public ـᵎ:Landroid/graphics/drawable/Drawable;

.field public ـᵢ:F

.field public ـﹶ:Landroid/content/res/ColorStateList;

.field public ٴʿ:I

.field public ٴᴵ:F

.field public ٴﹳ:Ljava/lang/CharSequence;

.field public ᐧˎ:Landroid/graphics/drawable/Drawable;

.field public ᐧﹶ:F

.field public ᵎʻ:Z

.field public ᵎʿ:Lˑˏ/ⁱˊ;

.field public ᵔⁱ:I

.field public ᵢʻ:I

.field public ᵢˋ:I

.field public ⁱˉ:Z

.field public ⁱי:F

.field public ⁱᴵ:F

.field public ﹳᵢ:I

.field public ﹳⁱ:F

.field public ﹳﹳ:Landroid/content/res/ColorStateList;

.field public ﹶ:F

.field public ﹶʽ:Z

.field public final ﹶˎ:Landroid/content/Context;

.field public ﹶᐧ:F

.field public final ﾞˋ:Landroid/graphics/Path;

.field public ﾞˏ:Landroid/graphics/ColorFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v0, 0x101009e

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lˆᵢ/ﾞᴵ;->ˆﹳ:[I

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    sput-object v0, Lˆᵢ/ﾞᴵ;->ˆˎ:Landroid/graphics/drawable/ShapeDrawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f040104

    const v1, 0x7f140635

    invoke-direct {p0, p1, p2, v0, v1}, Lˋⁱ/ʼˎ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/high16 p2, -0x40800000    # -1.0f

    iput p2, p0, Lˆᵢ/ﾞᴵ;->ﹶᐧ:F

    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lˆᵢ/ﾞᴵ;->ʽˑ:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {p2}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    iput-object p2, p0, Lˆᵢ/ﾞᴵ;->ˋˊ:Landroid/graphics/Paint$FontMetrics;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lˆᵢ/ﾞᴵ;->ʼᵢ:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lˆᵢ/ﾞᴵ;->יˉ:Landroid/graphics/PointF;

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lˆᵢ/ﾞᴵ;->ﾞˋ:Landroid/graphics/Path;

    const/16 p2, 0xff

    iput p2, p0, Lˆᵢ/ﾞᴵ;->ٴʿ:I

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object p2, p0, Lˆᵢ/ﾞᴵ;->ـʻ:Landroid/graphics/PorterDuff$Mode;

    new-instance p2, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {p2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lˆᵢ/ﾞᴵ;->ʽʾ:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p1}, Lˋⁱ/ʼˎ;->ﾞʻ(Landroid/content/Context;)V

    iput-object p1, p0, Lˆᵢ/ﾞᴵ;->ﹶˎ:Landroid/content/Context;

    new-instance p2, Lˈᐧ/ʼˎ;

    invoke-direct {p2, p0}, Lˈᐧ/ʼˎ;-><init>(Lˆᵢ/ﾞᴵ;)V

    iput-object p2, p0, Lˆᵢ/ﾞᴵ;->ˈـ:Lˈᐧ/ʼˎ;

    const-string v1, ""

    iput-object v1, p0, Lˆᵢ/ﾞᴵ;->ٴﹳ:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iget-object p2, p2, Lˈᐧ/ʼˎ;->ﹳٴ:Landroid/text/TextPaint;

    iput p1, p2, Landroid/text/TextPaint;->density:F

    sget-object p1, Lˆᵢ/ﾞᴵ;->ˆﹳ:[I

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0, p1}, Lˆᵢ/ﾞᴵ;->ʼˈ([I)Z

    iput-boolean v0, p0, Lˆᵢ/ﾞᴵ;->ˎـ:Z

    sget-object p1, Lˆᵢ/ﾞᴵ;->ˆˎ:Landroid/graphics/drawable/ShapeDrawable;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void
.end method

.method public static ʾˋ(Landroid/graphics/drawable/Drawable;)Z
    .locals 0

    .prologue
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static ᐧᴵ(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    return-void
.end method

.method public static ᵢˏ(Landroid/content/res/ColorStateList;)Z
    .locals 0

    .prologue
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 22

    .prologue
    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget v6, v0, Lˆᵢ/ﾞᴵ;->ٴʿ:I

    if-nez v6, :cond_1

    :cond_0
    move-object v13, v0

    goto/16 :goto_a

    :cond_1
    const/16 v8, 0xff

    const/4 v9, 0x0

    if-ge v6, v8, :cond_2

    iget v1, v7, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    iget v1, v7, Landroid/graphics/Rect;->top:I

    int-to-float v3, v1

    iget v1, v7, Landroid/graphics/Rect;->right:I

    int-to-float v4, v1

    iget v1, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFI)I

    move-result v2

    move v10, v2

    goto :goto_0

    :cond_2
    move-object/from16 v1, p1

    move v10, v9

    :goto_0
    iget-boolean v2, v0, Lˆᵢ/ﾞᴵ;->ʿʽ:Z

    move v3, v2

    iget-object v2, v0, Lˆᵢ/ﾞᴵ;->ʽˑ:Landroid/graphics/Paint;

    iget-object v11, v0, Lˆᵢ/ﾞᴵ;->ʼᵢ:Landroid/graphics/RectF;

    if-nez v3, :cond_3

    iget v3, v0, Lˆᵢ/ﾞᴵ;->ˎʾ:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v11, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Lˆᵢ/ﾞᴵ;->ʼʼ()F

    move-result v3

    invoke-virtual {v0}, Lˆᵢ/ﾞᴵ;->ʼʼ()F

    move-result v4

    invoke-virtual {v1, v11, v3, v4, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_3
    iget-boolean v3, v0, Lˆᵢ/ﾞᴵ;->ʿʽ:Z

    if-nez v3, :cond_5

    iget v3, v0, Lˆᵢ/ﾞᴵ;->ˑˆ:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, v0, Lˆᵢ/ﾞᴵ;->ﾞˏ:Landroid/graphics/ColorFilter;

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    iget-object v3, v0, Lˆᵢ/ﾞᴵ;->ˊˊ:Landroid/graphics/PorterDuffColorFilter;

    :goto_1
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {v11, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Lˆᵢ/ﾞᴵ;->ʼʼ()F

    move-result v3

    invoke-virtual {v0}, Lˆᵢ/ﾞᴵ;->ʼʼ()F

    move-result v4

    invoke-virtual {v1, v11, v3, v4, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_5
    iget-boolean v3, v0, Lˆᵢ/ﾞᴵ;->ʿʽ:Z

    if-eqz v3, :cond_6

    invoke-super/range {p0 .. p1}, Lˋⁱ/ʼˎ;->draw(Landroid/graphics/Canvas;)V

    :cond_6
    iget v3, v0, Lˆᵢ/ﾞᴵ;->ʻˋ:F

    const/4 v12, 0x0

    cmpl-float v3, v3, v12

    const/high16 v13, 0x40000000    # 2.0f

    if-lez v3, :cond_9

    iget-boolean v3, v0, Lˆᵢ/ﾞᴵ;->ʿʽ:Z

    if-nez v3, :cond_9

    iget v3, v0, Lˆᵢ/ﾞᴵ;->ﹳᵢ:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-boolean v3, v0, Lˆᵢ/ﾞᴵ;->ʿʽ:Z

    if-nez v3, :cond_8

    iget-object v3, v0, Lˆᵢ/ﾞᴵ;->ﾞˏ:Landroid/graphics/ColorFilter;

    if-eqz v3, :cond_7

    goto :goto_2

    :cond_7
    iget-object v3, v0, Lˆᵢ/ﾞᴵ;->ˊˊ:Landroid/graphics/PorterDuffColorFilter;

    :goto_2
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_8
    iget v3, v7, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v0, Lˆᵢ/ﾞᴵ;->ʻˋ:F

    div-float/2addr v4, v13

    add-float/2addr v3, v4

    iget v5, v7, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float/2addr v5, v4

    iget v6, v7, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    sub-float/2addr v6, v4

    iget v14, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v14, v14

    sub-float/2addr v14, v4

    invoke-virtual {v11, v3, v5, v6, v14}, Landroid/graphics/RectF;->set(FFFF)V

    iget v3, v0, Lˆᵢ/ﾞᴵ;->ﹶᐧ:F

    iget v4, v0, Lˆᵢ/ﾞᴵ;->ʻˋ:F

    div-float/2addr v4, v13

    sub-float/2addr v3, v4

    invoke-virtual {v1, v11, v3, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_9
    iget v3, v0, Lˆᵢ/ﾞᴵ;->ᵢˋ:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v11, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-boolean v3, v0, Lˆᵢ/ﾞᴵ;->ʿʽ:Z

    if-nez v3, :cond_a

    invoke-virtual {v0}, Lˆᵢ/ﾞᴵ;->ʼʼ()F

    move-result v3

    invoke-virtual {v0}, Lˆᵢ/ﾞᴵ;->ʼʼ()F

    move-result v4

    invoke-virtual {v1, v11, v3, v4, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    move/from16 v21, v13

    :goto_3
    move-object v13, v0

    goto :goto_4

    :cond_a
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v4, v0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget-object v4, v4, Lˋⁱ/ᵎﹶ;->ﹳٴ:Lˋⁱ/ﾞʻ;

    invoke-interface {v4}, Lˋⁱ/ﾞʻ;->ˈ()Lˋⁱ/ᵔʾ;

    move-result-object v15

    iget-object v4, v0, Lˋⁱ/ʼˎ;->ᐧﾞ:[F

    iget-object v5, v0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget v5, v5, Lˋⁱ/ᵎﹶ;->ʼˎ:F

    iget-object v6, v0, Lˋⁱ/ʼˎ;->ˊˋ:Lˊⁱ/ˑﹳ;

    iget-object v14, v0, Lˋⁱ/ʼˎ;->ʼˈ:Lˋⁱ/ʼᐧ;

    move/from16 v21, v13

    iget-object v13, v0, Lˆᵢ/ﾞᴵ;->ﾞˋ:Landroid/graphics/Path;

    move-object/from16 v18, v3

    move-object/from16 v16, v4

    move/from16 v17, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v13

    invoke-virtual/range {v14 .. v20}, Lˋⁱ/ʼᐧ;->ⁱˊ(Lˋⁱ/ᵔʾ;[FFLandroid/graphics/RectF;Lˊⁱ/ˑﹳ;Landroid/graphics/Path;)V

    move-object/from16 v3, v20

    invoke-virtual {v0}, Lˋⁱ/ʼˎ;->ᵎﹶ()Landroid/graphics/RectF;

    move-result-object v6

    iget-object v4, v0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget-object v4, v4, Lˋⁱ/ᵎﹶ;->ﹳٴ:Lˋⁱ/ﾞʻ;

    invoke-interface {v4}, Lˋⁱ/ﾞʻ;->ˈ()Lˋⁱ/ᵔʾ;

    move-result-object v4

    iget-object v5, v0, Lˋⁱ/ʼˎ;->ᐧﾞ:[F

    invoke-virtual/range {v0 .. v6}, Lˋⁱ/ʼˎ;->ˑﹳ(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lˋⁱ/ᵔʾ;[FLandroid/graphics/RectF;)V

    goto :goto_3

    :goto_4
    invoke-virtual {v13}, Lˆᵢ/ﾞᴵ;->ᵎᵔ()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v13, v7, v11}, Lˆᵢ/ﾞᴵ;->ʻٴ(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    iget v0, v11, Landroid/graphics/RectF;->left:F

    iget v2, v11, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, v13, Lˆᵢ/ﾞᴵ;->ـᵎ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v9, v9, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, v13, Lˆᵢ/ﾞᴵ;->ـᵎ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-float v0, v0

    neg-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_b
    invoke-virtual {v13}, Lˆᵢ/ﾞᴵ;->ʿᵢ()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v13, v7, v11}, Lˆᵢ/ﾞᴵ;->ʻٴ(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    iget v0, v11, Landroid/graphics/RectF;->left:F

    iget v2, v11, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, v13, Lˆᵢ/ﾞᴵ;->ᐧˎ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v9, v9, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, v13, Lˆᵢ/ﾞᴵ;->ᐧˎ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-float v0, v0

    neg-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_c
    iget-boolean v0, v13, Lˆᵢ/ﾞᴵ;->ˎـ:Z

    if-eqz v0, :cond_15

    iget-object v0, v13, Lˆᵢ/ﾞᴵ;->ٴﹳ:Ljava/lang/CharSequence;

    if-eqz v0, :cond_15

    iget-object v0, v13, Lˆᵢ/ﾞᴵ;->יˉ:Landroid/graphics/PointF;

    invoke-virtual {v0, v12, v12}, Landroid/graphics/PointF;->set(FF)V

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v3, v13, Lˆᵢ/ﾞᴵ;->ٴﹳ:Ljava/lang/CharSequence;

    iget-object v4, v13, Lˆᵢ/ﾞᴵ;->ˈـ:Lˈᐧ/ʼˎ;

    if-eqz v3, :cond_e

    iget v3, v13, Lˆᵢ/ﾞᴵ;->ʿـ:F

    invoke-virtual {v13}, Lˆᵢ/ﾞᴵ;->ـˆ()F

    move-result v5

    add-float/2addr v5, v3

    iget v3, v13, Lˆᵢ/ﾞᴵ;->ʻʿ:F

    add-float/2addr v5, v3

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v3

    if-nez v3, :cond_d

    iget v3, v7, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v3, v5

    iput v3, v0, Landroid/graphics/PointF;->x:F

    goto :goto_5

    :cond_d
    iget v2, v7, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v2, v5

    iput v2, v0, Landroid/graphics/PointF;->x:F

    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    :goto_5
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    iget-object v5, v4, Lˈᐧ/ʼˎ;->ﹳٴ:Landroid/text/TextPaint;

    iget-object v6, v13, Lˆᵢ/ﾞᴵ;->ˋˊ:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    iget v5, v6, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v6, v6, Landroid/graphics/Paint$FontMetrics;->ascent:F

    add-float/2addr v5, v6

    div-float v5, v5, v21

    sub-float/2addr v3, v5

    iput v3, v0, Landroid/graphics/PointF;->y:F

    :cond_e
    invoke-virtual {v11}, Landroid/graphics/RectF;->setEmpty()V

    iget-object v3, v13, Lˆᵢ/ﾞᴵ;->ٴﹳ:Ljava/lang/CharSequence;

    if-eqz v3, :cond_10

    iget v3, v13, Lˆᵢ/ﾞᴵ;->ʿـ:F

    invoke-virtual {v13}, Lˆᵢ/ﾞᴵ;->ـˆ()F

    move-result v5

    add-float/2addr v5, v3

    iget v3, v13, Lˆᵢ/ﾞᴵ;->ʻʿ:F

    add-float/2addr v5, v3

    iget v3, v13, Lˆᵢ/ﾞᴵ;->ⁱᴵ:F

    invoke-virtual {v13}, Lˆᵢ/ﾞᴵ;->ʾᵎ()F

    move-result v6

    add-float/2addr v6, v3

    iget v3, v13, Lˆᵢ/ﾞᴵ;->ﹶ:F

    add-float/2addr v6, v3

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v3

    if-nez v3, :cond_f

    iget v3, v7, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v3, v5

    iput v3, v11, Landroid/graphics/RectF;->left:F

    iget v3, v7, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    sub-float/2addr v3, v6

    iput v3, v11, Landroid/graphics/RectF;->right:F

    goto :goto_6

    :cond_f
    iget v3, v7, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v3, v6

    iput v3, v11, Landroid/graphics/RectF;->left:F

    iget v3, v7, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    sub-float/2addr v3, v5

    iput v3, v11, Landroid/graphics/RectF;->right:F

    :goto_6
    iget v3, v7, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iput v3, v11, Landroid/graphics/RectF;->top:F

    iget v3, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iput v3, v11, Landroid/graphics/RectF;->bottom:F

    :cond_10
    iget-object v3, v4, Lˈᐧ/ʼˎ;->ﾞᴵ:Lﹳ/ˈ;

    iget-object v6, v4, Lˈᐧ/ʼˎ;->ﹳٴ:Landroid/text/TextPaint;

    if-eqz v3, :cond_11

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v3

    iput-object v3, v6, Landroid/text/TextPaint;->drawableState:[I

    iget-object v3, v4, Lˈᐧ/ʼˎ;->ﾞᴵ:Lﹳ/ˈ;

    iget-object v5, v4, Lˈᐧ/ʼˎ;->ⁱˊ:Lˆᵢ/ⁱˊ;

    iget-object v12, v13, Lˆᵢ/ﾞᴵ;->ﹶˎ:Landroid/content/Context;

    invoke-virtual {v3, v12, v6, v5}, Lﹳ/ˈ;->ˈ(Landroid/content/Context;Landroid/text/TextPaint;Lᴵˋ/ˊʻ;)V

    :cond_11
    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v2, v13, Lˆᵢ/ﾞᴵ;->ٴﹳ:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lˈᐧ/ʼˎ;->ﹳٴ(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    if-le v2, v3, :cond_12

    const/4 v2, 0x1

    move v12, v2

    goto :goto_7

    :cond_12
    move v12, v9

    :goto_7
    if-eqz v12, :cond_13

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    invoke-virtual {v1, v11}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    move v14, v2

    goto :goto_8

    :cond_13
    move v14, v9

    :goto_8
    iget-object v2, v13, Lˆᵢ/ﾞᴵ;->ٴﹳ:Ljava/lang/CharSequence;

    if-eqz v12, :cond_14

    iget-object v3, v13, Lˆᵢ/ﾞᴵ;->ˆˑ:Landroid/text/TextUtils$TruncateAt;

    if-eqz v3, :cond_14

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, v13, Lˆᵢ/ﾞᴵ;->ˆˑ:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v2, v6, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v2

    :cond_14
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, v0, Landroid/graphics/PointF;->y:F

    move-object v1, v2

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    move-object v1, v0

    if-eqz v12, :cond_15

    invoke-virtual {v1, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_15
    invoke-virtual {v13}, Lˆᵢ/ﾞᴵ;->ᐧﾞ()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {v11}, Landroid/graphics/RectF;->setEmpty()V

    invoke-virtual {v13}, Lˆᵢ/ﾞᴵ;->ᐧﾞ()Z

    move-result v0

    if-eqz v0, :cond_17

    iget v0, v13, Lˆᵢ/ﾞᴵ;->ⁱᴵ:F

    iget v2, v13, Lˆᵢ/ﾞᴵ;->ٴᴵ:F

    add-float/2addr v0, v2

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v2

    if-nez v2, :cond_16

    iget v2, v7, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    iput v2, v11, Landroid/graphics/RectF;->right:F

    iget v0, v13, Lˆᵢ/ﾞᴵ;->יﹳ:F

    sub-float/2addr v2, v0

    iput v2, v11, Landroid/graphics/RectF;->left:F

    goto :goto_9

    :cond_16
    iget v2, v7, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    iput v2, v11, Landroid/graphics/RectF;->left:F

    iget v0, v13, Lˆᵢ/ﾞᴵ;->יﹳ:F

    add-float/2addr v2, v0

    iput v2, v11, Landroid/graphics/RectF;->right:F

    :goto_9
    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    iget v2, v13, Lˆᵢ/ﾞᴵ;->יﹳ:F

    div-float v3, v2, v21

    sub-float/2addr v0, v3

    iput v0, v11, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v2

    iput v0, v11, Landroid/graphics/RectF;->bottom:F

    :cond_17
    iget v0, v11, Landroid/graphics/RectF;->left:F

    iget v2, v11, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, v13, Lˆᵢ/ﾞᴵ;->ˑ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v9, v9, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, v13, Lˆᵢ/ﾞᴵ;->ʼـ:Landroid/graphics/drawable/RippleDrawable;

    iget-object v4, v13, Lˆᵢ/ﾞᴵ;->ˑ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v3, v13, Lˆᵢ/ﾞᴵ;->ʼـ:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    iget-object v3, v13, Lˆᵢ/ﾞᴵ;->ʼـ:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-float v0, v0

    neg-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_18
    iget v0, v13, Lˆᵢ/ﾞᴵ;->ٴʿ:I

    if-ge v0, v8, :cond_19

    invoke-virtual {v1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_19
    :goto_a
    return-void
.end method

.method public final getAlpha()I
    .locals 1

    iget v0, p0, Lˆᵢ/ﾞᴵ;->ٴʿ:I

    return v0
.end method

.method public final getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    iget-object v0, p0, Lˆᵢ/ﾞᴵ;->ﾞˏ:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Lˆᵢ/ﾞᴵ;->ˈˏ:F

    float-to-int v0, v0

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 3

    iget v0, p0, Lˆᵢ/ﾞᴵ;->ʿـ:F

    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ـˆ()F

    move-result v1

    add-float/2addr v1, v0

    iget v0, p0, Lˆᵢ/ﾞᴵ;->ʻʿ:F

    add-float/2addr v1, v0

    iget-object v0, p0, Lˆᵢ/ﾞᴵ;->ٴﹳ:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lˆᵢ/ﾞᴵ;->ˈـ:Lˈᐧ/ʼˎ;

    invoke-virtual {v2, v0}, Lˈᐧ/ʼˎ;->ﹳٴ(Ljava/lang/String;)F

    move-result v0

    add-float/2addr v0, v1

    iget v1, p0, Lˆᵢ/ﾞᴵ;->ﹶ:F

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ʾᵎ()F

    move-result v1

    add-float/2addr v1, v0

    iget v0, p0, Lˆᵢ/ﾞᴵ;->ⁱᴵ:F

    add-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Lˆᵢ/ﾞᴵ;->ᵢʻ:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public final getOutline(Landroid/graphics/Outline;)V
    .locals 8

    .prologue
    iget-boolean v0, p0, Lˆᵢ/ﾞᴵ;->ʿʽ:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lˋⁱ/ʼˎ;->getOutline(Landroid/graphics/Outline;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lˆᵢ/ﾞᴵ;->ﹶᐧ:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    move-object v2, p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->getIntrinsicWidth()I

    move-result v5

    iget v0, p0, Lˆᵢ/ﾞᴵ;->ˈˏ:F

    float-to-int v6, v0

    iget v7, p0, Lˆᵢ/ﾞᴵ;->ﹶᐧ:F

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    :goto_0
    iget p1, p0, Lˆᵢ/ﾞᴵ;->ٴʿ:I

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    invoke-virtual {v2, p1}, Landroid/graphics/Outline;->setAlpha(F)V

    return-void
.end method

.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public final isStateful()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lˆᵢ/ﾞᴵ;->ˊᵔ:Landroid/content/res/ColorStateList;

    invoke-static {v0}, Lˆᵢ/ﾞᴵ;->ᵢˏ(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lˆᵢ/ﾞᴵ;->ـﹶ:Landroid/content/res/ColorStateList;

    invoke-static {v0}, Lˆᵢ/ﾞᴵ;->ᵢˏ(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lˆᵢ/ﾞᴵ;->ﹳﹳ:Landroid/content/res/ColorStateList;

    invoke-static {v0}, Lˆᵢ/ﾞᴵ;->ᵢˏ(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lˆᵢ/ﾞᴵ;->ˈـ:Lˈᐧ/ʼˎ;

    iget-object v0, v0, Lˈᐧ/ʼˎ;->ﾞᴵ:Lﹳ/ˈ;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lﹳ/ˈ;->ٴﹶ:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lˆᵢ/ﾞᴵ;->ⁱˉ:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lˆᵢ/ﾞᴵ;->ᐧˎ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lˆᵢ/ﾞᴵ;->ʾﾞ:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lˆᵢ/ﾞᴵ;->ـᵎ:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lˆᵢ/ﾞᴵ;->ʾˋ(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lˆᵢ/ﾞᴵ;->ᐧˎ:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lˆᵢ/ﾞᴵ;->ʾˋ(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lˆᵢ/ﾞᴵ;->ˊﾞ:Landroid/content/res/ColorStateList;

    invoke-static {v0}, Lˆᵢ/ﾞᴵ;->ᵢˏ(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0

    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onLayoutDirectionChanged(I)Z
    .locals 2

    .prologue
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLayoutDirectionChanged(I)Z

    move-result v0

    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ᵎᵔ()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lˆᵢ/ﾞᴵ;->ـᵎ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_0
    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ʿᵢ()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lˆᵢ/ﾞᴵ;->ᐧˎ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ᐧﾞ()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lˆᵢ/ﾞᴵ;->ˑ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public final onLevelChange(I)Z
    .locals 2

    .prologue
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    move-result v0

    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ᵎᵔ()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lˆᵢ/ﾞᴵ;->ـᵎ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_0
    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ʿᵢ()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lˆᵢ/ﾞᴵ;->ᐧˎ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ᐧﾞ()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lˆᵢ/ﾞᴵ;->ˑ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    :cond_3
    return v0
.end method

.method public final onStateChange([I)Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lˆᵢ/ﾞᴵ;->ʿʽ:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lˋⁱ/ʼˎ;->onStateChange([I)Z

    :cond_0
    iget-object v0, p0, Lˆᵢ/ﾞᴵ;->ˏⁱ:[I

    invoke-virtual {p0, p1, v0}, Lˆᵢ/ﾞᴵ;->ʽʽ([I[I)Z

    move-result p1

    return p1
.end method

.method public final scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    .prologue
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public final setAlpha(I)V
    .locals 1

    .prologue
    iget v0, p0, Lˆᵢ/ﾞᴵ;->ٴʿ:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lˆᵢ/ﾞᴵ;->ٴʿ:I

    invoke-virtual {p0}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lˆᵢ/ﾞᴵ;->ﾞˏ:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lˆᵢ/ﾞᴵ;->ﾞˏ:Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lˆᵢ/ﾞᴵ;->ˊﾞ:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lˆᵢ/ﾞᴵ;->ˊﾞ:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lˆᵢ/ﾞᴵ;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public final setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 3

    .prologue
    iget-object v0, p0, Lˆᵢ/ﾞᴵ;->ـʻ:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_2

    iput-object p1, p0, Lˆᵢ/ﾞᴵ;->ـʻ:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Lˆᵢ/ﾞᴵ;->ˊﾞ:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v1, v0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    iput-object v1, p0, Lˆᵢ/ﾞᴵ;->ˊˊ:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    :cond_2
    return-void
.end method

.method public final setVisible(ZZ)Z
    .locals 2

    .prologue
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ᵎᵔ()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lˆᵢ/ﾞᴵ;->ـᵎ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_0
    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ʿᵢ()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lˆᵢ/ﾞᴵ;->ᐧˎ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ᐧﾞ()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lˆᵢ/ﾞᴵ;->ˑ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    :cond_3
    return v0
.end method

.method public final unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final ʻٴ(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 5

    .prologue
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ᵎᵔ()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ʿᵢ()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget v0, p0, Lˆᵢ/ﾞᴵ;->ʿـ:F

    iget v1, p0, Lˆᵢ/ﾞᴵ;->ﹳⁱ:F

    add-float/2addr v0, v1

    iget-boolean v1, p0, Lˆᵢ/ﾞᴵ;->ﹶʽ:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lˆᵢ/ﾞᴵ;->ᐧˎ:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lˆᵢ/ﾞᴵ;->ـᵎ:Landroid/graphics/drawable/Drawable;

    :goto_1
    iget v2, p0, Lˆᵢ/ﾞᴵ;->ᐧﹶ:F

    const/4 v3, 0x0

    cmpg-float v4, v2, v3

    if-gtz v4, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v2, v1

    :cond_3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v1

    if-nez v1, :cond_4

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v2

    iput v1, p2, Landroid/graphics/RectF;->right:F

    goto :goto_2

    :cond_4
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    iput v1, p2, Landroid/graphics/RectF;->left:F

    :goto_2
    iget-boolean v0, p0, Lˆᵢ/ﾞᴵ;->ﹶʽ:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lˆᵢ/ﾞᴵ;->ᐧˎ:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lˆᵢ/ﾞᴵ;->ـᵎ:Landroid/graphics/drawable/Drawable;

    :goto_3
    iget v1, p0, Lˆᵢ/ﾞᴵ;->ᐧﹶ:F

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_6

    if-eqz v0, :cond_6

    iget-object v1, p0, Lˆᵢ/ﾞᴵ;->ﹶˎ:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/16 v2, 0x18

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v3, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_6

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v1, v0

    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, v1, v0

    sub-float/2addr p1, v0

    iput p1, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, v1

    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public final ʼʼ()F
    .locals 2

    .prologue
    iget-boolean v0, p0, Lˆᵢ/ﾞᴵ;->ʿʽ:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lˋⁱ/ʼˎ;->ᐧﾞ:[F

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    aget v0, v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget-object v0, v0, Lˋⁱ/ᵎﹶ;->ﹳٴ:Lˋⁱ/ﾞʻ;

    invoke-interface {v0}, Lˋⁱ/ﾞʻ;->ˈ()Lˋⁱ/ᵔʾ;

    move-result-object v0

    iget-object v0, v0, Lˋⁱ/ᵔʾ;->ˑﹳ:Lˋⁱ/ˈ;

    invoke-virtual {p0}, Lˋⁱ/ʼˎ;->ᵎﹶ()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Lˋⁱ/ˈ;->ﹳٴ(Landroid/graphics/RectF;)F

    move-result v0

    return v0

    :cond_1
    iget v0, p0, Lˆᵢ/ﾞᴵ;->ﹶᐧ:F

    return v0
.end method

.method public final ʼˈ([I)Z
    .locals 1

    .prologue
    iget-object v0, p0, Lˆᵢ/ﾞᴵ;->ˏⁱ:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lˆᵢ/ﾞᴵ;->ˏⁱ:[I

    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ᐧﾞ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lˆᵢ/ﾞᴵ;->ʽʽ([I[I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final ʽʽ([I[I)Z
    .locals 9

    .prologue
    invoke-super {p0, p1}, Lˋⁱ/ʼˎ;->onStateChange([I)Z

    move-result v0

    iget-object v1, p0, Lˆᵢ/ﾞᴵ;->ˊᵔ:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v3, p0, Lˆᵢ/ﾞᴵ;->ˎʾ:I

    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Lˋⁱ/ʼˎ;->ʽ(I)I

    move-result v1

    iget v3, p0, Lˆᵢ/ﾞᴵ;->ˎʾ:I

    const/4 v4, 0x1

    if-eq v3, v1, :cond_1

    iput v1, p0, Lˆᵢ/ﾞᴵ;->ˎʾ:I

    move v0, v4

    :cond_1
    iget-object v3, p0, Lˆᵢ/ﾞᴵ;->ـﹶ:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_2

    iget v5, p0, Lˆᵢ/ﾞᴵ;->ˑˆ:I

    invoke-virtual {v3, p1, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    invoke-virtual {p0, v3}, Lˋⁱ/ʼˎ;->ʽ(I)I

    move-result v3

    iget v5, p0, Lˆᵢ/ﾞᴵ;->ˑˆ:I

    if-eq v5, v3, :cond_3

    iput v3, p0, Lˆᵢ/ﾞᴵ;->ˑˆ:I

    move v0, v4

    :cond_3
    invoke-static {v3, v1}, Lᵎⁱ/ﹳٴ;->ⁱˊ(II)I

    move-result v1

    iget v3, p0, Lˆᵢ/ﾞᴵ;->ˎˉ:I

    if-eq v3, v1, :cond_4

    move v3, v4

    goto :goto_2

    :cond_4
    move v3, v2

    :goto_2
    iget-object v5, p0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget-object v5, v5, Lˋⁱ/ᵎﹶ;->ʽ:Landroid/content/res/ColorStateList;

    if-nez v5, :cond_5

    move v5, v4

    goto :goto_3

    :cond_5
    move v5, v2

    :goto_3
    or-int/2addr v3, v5

    if-eqz v3, :cond_6

    iput v1, p0, Lˆᵢ/ﾞᴵ;->ˎˉ:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lˋⁱ/ʼˎ;->ˉˆ(Landroid/content/res/ColorStateList;)V

    move v0, v4

    :cond_6
    iget-object v1, p0, Lˆᵢ/ﾞᴵ;->ﹳﹳ:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_7

    iget v3, p0, Lˆᵢ/ﾞᴵ;->ﹳᵢ:I

    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_4

    :cond_7
    move v1, v2

    :goto_4
    iget v3, p0, Lˆᵢ/ﾞᴵ;->ﹳᵢ:I

    if-eq v3, v1, :cond_8

    iput v1, p0, Lˆᵢ/ﾞᴵ;->ﹳᵢ:I

    move v0, v4

    :cond_8
    iget-object v1, p0, Lˆᵢ/ﾞᴵ;->ˊﹳ:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_e

    sget-object v1, Lﹶʼ/ﹳٴ;->ﹳٴ:[I

    array-length v1, p1

    move v3, v2

    move v5, v3

    move v6, v5

    :goto_5
    if-ge v3, v1, :cond_d

    aget v7, p1, v3

    const v8, 0x101009e

    if-ne v7, v8, :cond_9

    move v5, v4

    goto :goto_7

    :cond_9
    const v8, 0x101009c

    if-ne v7, v8, :cond_a

    :goto_6
    move v6, v4

    goto :goto_7

    :cond_a
    const v8, 0x10100a7

    if-ne v7, v8, :cond_b

    goto :goto_6

    :cond_b
    const v8, 0x1010367

    if-ne v7, v8, :cond_c

    goto :goto_6

    :cond_c
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_d
    if-eqz v5, :cond_e

    if-eqz v6, :cond_e

    iget-object v1, p0, Lˆᵢ/ﾞᴵ;->ˊﹳ:Landroid/content/res/ColorStateList;

    iget v3, p0, Lˆᵢ/ﾞᴵ;->ᵢˋ:I

    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_8

    :cond_e
    move v1, v2

    :goto_8
    iget v3, p0, Lˆᵢ/ﾞᴵ;->ᵢˋ:I

    if-eq v3, v1, :cond_f

    iput v1, p0, Lˆᵢ/ﾞᴵ;->ᵢˋ:I

    :cond_f
    iget-object v1, p0, Lˆᵢ/ﾞᴵ;->ˈـ:Lˈᐧ/ʼˎ;

    iget-object v1, v1, Lˈᐧ/ʼˎ;->ﾞᴵ:Lﹳ/ˈ;

    if-eqz v1, :cond_10

    iget-object v1, v1, Lﹳ/ˈ;->ٴﹶ:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_10

    iget v3, p0, Lˆᵢ/ﾞᴵ;->ˋـ:I

    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_9

    :cond_10
    move v1, v2

    :goto_9
    iget v3, p0, Lˆᵢ/ﾞᴵ;->ˋـ:I

    if-eq v3, v1, :cond_11

    iput v1, p0, Lˆᵢ/ﾞᴵ;->ˋـ:I

    move v0, v4

    :cond_11
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    if-nez v1, :cond_12

    goto :goto_b

    :cond_12
    array-length v3, v1

    move v5, v2

    :goto_a
    if-ge v5, v3, :cond_14

    aget v6, v1, v5

    const v7, 0x10100a0

    if-ne v6, v7, :cond_13

    iget-boolean v1, p0, Lˆᵢ/ﾞᴵ;->ʾﾞ:Z

    if-eqz v1, :cond_14

    move v1, v4

    goto :goto_c

    :cond_13
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_14
    :goto_b
    move v1, v2

    :goto_c
    iget-boolean v3, p0, Lˆᵢ/ﾞᴵ;->ﹶʽ:Z

    if-eq v3, v1, :cond_16

    iget-object v3, p0, Lˆᵢ/ﾞᴵ;->ᐧˎ:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_16

    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ـˆ()F

    move-result v0

    iput-boolean v1, p0, Lˆᵢ/ﾞᴵ;->ﹶʽ:Z

    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ـˆ()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_15

    move v0, v4

    move v1, v0

    goto :goto_d

    :cond_15
    move v1, v2

    move v0, v4

    goto :goto_d

    :cond_16
    move v1, v2

    :goto_d
    iget-object v3, p0, Lˆᵢ/ﾞᴵ;->ˊﾞ:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_17

    iget v5, p0, Lˆᵢ/ﾞᴵ;->ᵔⁱ:I

    invoke-virtual {v3, p1, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    goto :goto_e

    :cond_17
    move v3, v2

    :goto_e
    iget v5, p0, Lˆᵢ/ﾞᴵ;->ᵔⁱ:I

    if-eq v5, v3, :cond_1a

    iput v3, p0, Lˆᵢ/ﾞᴵ;->ᵔⁱ:I

    iget-object v0, p0, Lˆᵢ/ﾞᴵ;->ˊﾞ:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Lˆᵢ/ﾞᴵ;->ـʻ:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_19

    if-nez v3, :cond_18

    goto :goto_f

    :cond_18
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v5

    invoke-virtual {v0, v5, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v5, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_10

    :cond_19
    :goto_f
    const/4 v5, 0x0

    :goto_10
    iput-object v5, p0, Lˆᵢ/ﾞᴵ;->ˊˊ:Landroid/graphics/PorterDuffColorFilter;

    goto :goto_11

    :cond_1a
    move v4, v0

    :goto_11
    iget-object v0, p0, Lˆᵢ/ﾞᴵ;->ـᵎ:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lˆᵢ/ﾞᴵ;->ʾˋ(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lˆᵢ/ﾞᴵ;->ـᵎ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v4, v0

    :cond_1b
    iget-object v0, p0, Lˆᵢ/ﾞᴵ;->ᐧˎ:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lˆᵢ/ﾞᴵ;->ʾˋ(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lˆᵢ/ﾞᴵ;->ᐧˎ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v4, v0

    :cond_1c
    iget-object v0, p0, Lˆᵢ/ﾞᴵ;->ˑ:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lˆᵢ/ﾞᴵ;->ʾˋ(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1d

    array-length v0, p1

    array-length v3, p2

    add-int/2addr v0, v3

    new-array v0, v0, [I

    array-length v3, p1

    invoke-static {p1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    array-length v3, p2

    invoke-static {p2, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lˆᵢ/ﾞᴵ;->ˑ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    or-int/2addr v4, p1

    :cond_1d
    iget-object p1, p0, Lˆᵢ/ﾞᴵ;->ʼـ:Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p1}, Lˆᵢ/ﾞᴵ;->ʾˋ(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lˆᵢ/ﾞᴵ;->ʼـ:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    or-int/2addr v4, p1

    :cond_1e
    if-eqz v4, :cond_1f

    invoke-virtual {p0}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    :cond_1f
    if-eqz v1, :cond_20

    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ᴵˊ()V

    :cond_20
    return v4
.end method

.method public final ʽﹳ(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    iget-object v0, p0, Lˆᵢ/ﾞᴵ;->ˑ:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lˆᵢ/ﾞᴵ;->ˎᐧ:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lˆᵢ/ﾞᴵ;->ˏⁱ:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void

    :cond_1
    iget-object v0, p0, Lˆᵢ/ﾞᴵ;->ـᵎ:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_2

    iget-boolean v1, p0, Lˆᵢ/ﾞᴵ;->י:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lˆᵢ/ﾞᴵ;->ʽᵔ:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public final ʾᵎ()F
    .locals 2

    .prologue
    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ᐧﾞ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lˆᵢ/ﾞᴵ;->ـᵢ:F

    iget v1, p0, Lˆᵢ/ﾞᴵ;->יﹳ:F

    add-float/2addr v0, v1

    iget v1, p0, Lˆᵢ/ﾞᴵ;->ٴᴵ:F

    add-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ʿ(Lﹳ/ˈ;)V
    .locals 5

    .prologue
    iget-object v0, p0, Lˆᵢ/ﾞᴵ;->ˈـ:Lˈᐧ/ʼˎ;

    iget-object v1, v0, Lˈᐧ/ʼˎ;->ⁱˊ:Lˆᵢ/ⁱˊ;

    iget-object v2, v0, Lˈᐧ/ʼˎ;->ﹳٴ:Landroid/text/TextPaint;

    iget-object v3, v0, Lˈᐧ/ʼˎ;->ﾞᴵ:Lﹳ/ˈ;

    if-eq v3, p1, :cond_2

    iput-object p1, v0, Lˈᐧ/ʼˎ;->ﾞᴵ:Lﹳ/ˈ;

    if-eqz p1, :cond_1

    iget-object v3, p0, Lˆᵢ/ﾞᴵ;->ﹶˎ:Landroid/content/Context;

    invoke-virtual {p1, v3, v2, v1}, Lﹳ/ˈ;->ˑﹳ(Landroid/content/Context;Landroid/text/TextPaint;Lᴵˋ/ˊʻ;)V

    iget-object v4, v0, Lˈᐧ/ʼˎ;->ˑﹳ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lˈᐧ/ᵔᵢ;

    if-eqz v4, :cond_0

    invoke-interface {v4}, Lˈᐧ/ᵔᵢ;->getState()[I

    move-result-object v4

    iput-object v4, v2, Landroid/text/TextPaint;->drawableState:[I

    :cond_0
    invoke-virtual {p1, v3, v2, v1}, Lﹳ/ˈ;->ˈ(Landroid/content/Context;Landroid/text/TextPaint;Lᴵˋ/ˊʻ;)V

    const/4 p1, 0x1

    iput-boolean p1, v0, Lˈᐧ/ʼˎ;->ˈ:Z

    :cond_1
    iget-object p1, v0, Lˈᐧ/ʼˎ;->ˑﹳ:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lˈᐧ/ᵔᵢ;

    if-eqz p1, :cond_2

    move-object v0, p1

    check-cast v0, Lˆᵢ/ﾞᴵ;

    invoke-virtual {v0}, Lˆᵢ/ﾞᴵ;->ᴵˊ()V

    invoke-virtual {v0}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    invoke-interface {p1}, Lˈᐧ/ᵔᵢ;->getState()[I

    move-result-object p1

    invoke-virtual {v0, p1}, Lˆᵢ/ﾞᴵ;->onStateChange([I)Z

    :cond_2
    return-void
.end method

.method public final ʿᵢ()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lˆᵢ/ﾞᴵ;->ⁱˉ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lˆᵢ/ﾞᴵ;->ᐧˎ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lˆᵢ/ﾞᴵ;->ﹶʽ:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ˆﾞ(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lˆᵢ/ﾞᴵ;->ﹳﹳ:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lˆᵢ/ﾞᴵ;->ﹳﹳ:Landroid/content/res/ColorStateList;

    iget-boolean v0, p0, Lˆᵢ/ﾞᴵ;->ʿʽ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget-object v1, v0, Lˋⁱ/ᵎﹶ;->ˈ:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Lˋⁱ/ᵎﹶ;->ˈ:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lˆᵢ/ﾞᴵ;->onStateChange([I)Z

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lˆᵢ/ﾞᴵ;->onStateChange([I)Z

    :cond_1
    return-void
.end method

.method public final ˈʿ(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .prologue
    iget-object v0, p0, Lˆᵢ/ﾞᴵ;->ˑ:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v2, v0, Lٴʼ/ﹳٴ;

    if-eqz v2, :cond_1

    check-cast v0, Lٴʼ/ﹳٴ;

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    if-eq v0, p1, :cond_4

    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ʾᵎ()F

    move-result v2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_2
    iput-object v1, p0, Lˆᵢ/ﾞᴵ;->ˑ:Landroid/graphics/drawable/Drawable;

    new-instance p1, Landroid/graphics/drawable/RippleDrawable;

    iget-object v1, p0, Lˆᵢ/ﾞᴵ;->ˑʼ:Landroid/content/res/ColorStateList;

    invoke-static {v1}, Lﹶʼ/ﹳٴ;->ﹳٴ(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iget-object v3, p0, Lˆᵢ/ﾞᴵ;->ˑ:Landroid/graphics/drawable/Drawable;

    sget-object v4, Lˆᵢ/ﾞᴵ;->ˆˎ:Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {p1, v1, v3, v4}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lˆᵢ/ﾞᴵ;->ʼـ:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ʾᵎ()F

    move-result p1

    invoke-static {v0}, Lˆᵢ/ﾞᴵ;->ᐧᴵ(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ᐧﾞ()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lˆᵢ/ﾞᴵ;->ˑ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lˆᵢ/ﾞᴵ;->ʽﹳ(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    invoke-virtual {p0}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    cmpl-float p1, v2, p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ᴵˊ()V

    :cond_4
    return-void
.end method

.method public final ˈٴ(Z)V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lˆᵢ/ﾞᴵ;->ʾﾞ:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lˆᵢ/ﾞᴵ;->ʾﾞ:Z

    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ـˆ()F

    move-result v0

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lˆᵢ/ﾞᴵ;->ﹶʽ:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lˆᵢ/ﾞᴵ;->ﹶʽ:Z

    :cond_0
    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ـˆ()F

    move-result p1

    invoke-virtual {p0}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ᴵˊ()V

    :cond_1
    return-void
.end method

.method public final ˈⁱ(F)V
    .locals 1

    .prologue
    iget v0, p0, Lˆᵢ/ﾞᴵ;->ⁱי:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ـˆ()F

    move-result v0

    iput p1, p0, Lˆᵢ/ﾞᴵ;->ⁱי:F

    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ـˆ()F

    move-result p1

    invoke-virtual {p0}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ᴵˊ()V

    :cond_0
    return-void
.end method

.method public final ˉـ(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lˆᵢ/ﾞᴵ;->ˑʼ:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lˆᵢ/ﾞᴵ;->ˑʼ:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    iput-object p1, p0, Lˆᵢ/ﾞᴵ;->ˊﹳ:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lˆᵢ/ﾞᴵ;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public final ˉٴ(F)V
    .locals 1

    .prologue
    iget v0, p0, Lˆᵢ/ﾞᴵ;->ﹶᐧ:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lˆᵢ/ﾞᴵ;->ﹶᐧ:F

    invoke-virtual {p0}, Lˋⁱ/ʼˎ;->ʼˎ()Lˋⁱ/ᵔʾ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lˋⁱ/ᵔʾ;->ⁱˊ(F)Lˋⁱ/ᵔʾ;

    move-result-object p1

    invoke-virtual {p0, p1}, Lˋⁱ/ʼˎ;->setShapeAppearanceModel(Lˋⁱ/ᵔʾ;)V

    :cond_0
    return-void
.end method

.method public final ˊʻ(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lˆᵢ/ﾞᴵ;->ʻᴵ:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lˆᵢ/ﾞᴵ;->ʻᴵ:Landroid/content/res/ColorStateList;

    iget-boolean v0, p0, Lˆᵢ/ﾞᴵ;->ⁱˉ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lˆᵢ/ﾞᴵ;->ᐧˎ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lˆᵢ/ﾞᴵ;->ʾﾞ:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lˆᵢ/ﾞᴵ;->onStateChange([I)Z

    :cond_1
    return-void
.end method

.method public final ˊˋ(F)V
    .locals 1

    .prologue
    iget v0, p0, Lˆᵢ/ﾞᴵ;->ـᵢ:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lˆᵢ/ﾞᴵ;->ـᵢ:F

    invoke-virtual {p0}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ᐧﾞ()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ᴵˊ()V

    :cond_0
    return-void
.end method

.method public final ˋᵔ(F)V
    .locals 1

    .prologue
    iget v0, p0, Lˆᵢ/ﾞᴵ;->יﹳ:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lˆᵢ/ﾞᴵ;->יﹳ:F

    invoke-virtual {p0}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ᐧﾞ()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ᴵˊ()V

    :cond_0
    return-void
.end method

.method public final ˑٴ(F)V
    .locals 1

    .prologue
    iget v0, p0, Lˆᵢ/ﾞᴵ;->ٴᴵ:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lˆᵢ/ﾞᴵ;->ٴᴵ:F

    invoke-virtual {p0}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ᐧﾞ()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ᴵˊ()V

    :cond_0
    return-void
.end method

.method public final ـˆ()F
    .locals 4

    .prologue
    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ᵎᵔ()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ʿᵢ()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    iget v0, p0, Lˆᵢ/ﾞᴵ;->ﹳⁱ:F

    iget-boolean v2, p0, Lˆᵢ/ﾞᴵ;->ﹶʽ:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lˆᵢ/ﾞᴵ;->ᐧˎ:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lˆᵢ/ﾞᴵ;->ـᵎ:Landroid/graphics/drawable/Drawable;

    :goto_1
    iget v3, p0, Lˆᵢ/ﾞᴵ;->ᐧﹶ:F

    cmpg-float v1, v3, v1

    if-gtz v1, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v3, v1

    :cond_3
    add-float/2addr v3, v0

    iget v0, p0, Lˆᵢ/ﾞᴵ;->ⁱי:F

    add-float/2addr v3, v0

    return v3
.end method

.method public final ـˏ(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lˆᵢ/ﾞᴵ;->ˎᐧ:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lˆᵢ/ﾞᴵ;->ˎᐧ:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ᐧﾞ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lˆᵢ/ﾞᴵ;->ˑ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lˆᵢ/ﾞᴵ;->onStateChange([I)Z

    :cond_1
    return-void
.end method

.method public final ٴʼ(F)V
    .locals 1

    .prologue
    iget v0, p0, Lˆᵢ/ﾞᴵ;->ᐧﹶ:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ـˆ()F

    move-result v0

    iput p1, p0, Lˆᵢ/ﾞᴵ;->ᐧﹶ:F

    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ـˆ()F

    move-result p1

    invoke-virtual {p0}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ᴵˊ()V

    :cond_0
    return-void
.end method

.method public final ٴᵢ(Z)V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lˆᵢ/ﾞᴵ;->ⁱˉ:Z

    if-eq v0, p1, :cond_1

    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ʿᵢ()Z

    move-result v0

    iput-boolean p1, p0, Lˆᵢ/ﾞᴵ;->ⁱˉ:Z

    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ʿᵢ()Z

    move-result p1

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lˆᵢ/ﾞᴵ;->ᐧˎ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lˆᵢ/ﾞᴵ;->ʽﹳ(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lˆᵢ/ﾞᴵ;->ᐧˎ:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lˆᵢ/ﾞᴵ;->ᐧᴵ(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {p0}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ᴵˊ()V

    :cond_1
    return-void
.end method

.method public final ᐧﾞ()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lˆᵢ/ﾞᴵ;->ʾˊ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lˆᵢ/ﾞᴵ;->ˑ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ᴵˊ()V
    .locals 2

    .prologue
    iget-object v0, p0, Lˆᵢ/ﾞᴵ;->ʽʾ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˆᵢ/ˑﹳ;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/google/android/material/chip/Chip;

    iget v1, v0, Lcom/google/android/material/chip/Chip;->ˑٴ:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->ⁱˊ(I)V

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {v0}, Landroid/view/View;->invalidateOutline()V

    :cond_0
    return-void
.end method

.method public final ᴵˑ(F)V
    .locals 1

    .prologue
    iget v0, p0, Lˆᵢ/ﾞᴵ;->ﹳⁱ:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ـˆ()F

    move-result v0

    iput p1, p0, Lˆᵢ/ﾞᴵ;->ﹳⁱ:F

    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ـˆ()F

    move-result p1

    invoke-virtual {p0}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ᴵˊ()V

    :cond_0
    return-void
.end method

.method public final ᴵᵔ(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lˆᵢ/ﾞᴵ;->ᐧˎ:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ـˆ()F

    move-result v0

    iput-object p1, p0, Lˆᵢ/ﾞᴵ;->ᐧˎ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ـˆ()F

    move-result p1

    iget-object v1, p0, Lˆᵢ/ﾞᴵ;->ᐧˎ:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Lˆᵢ/ﾞᴵ;->ᐧᴵ(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lˆᵢ/ﾞᴵ;->ᐧˎ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lˆᵢ/ﾞᴵ;->ʽﹳ(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ᴵˊ()V

    :cond_0
    return-void
.end method

.method public final ᵎˊ(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lˆᵢ/ﾞᴵ;->י:Z

    iget-object v0, p0, Lˆᵢ/ﾞᴵ;->ʽᵔ:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lˆᵢ/ﾞᴵ;->ʽᵔ:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ᵎᵔ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lˆᵢ/ﾞᴵ;->ـᵎ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lˆᵢ/ﾞᴵ;->onStateChange([I)Z

    :cond_1
    return-void
.end method

.method public final ᵎᵔ()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lˆᵢ/ﾞᴵ;->ᵎʻ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lˆᵢ/ﾞᴵ;->ـᵎ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ᵎⁱ(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    iget-object v0, p0, Lˆᵢ/ﾞᴵ;->ـᵎ:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v2, v0, Lٴʼ/ﹳٴ;

    if-eqz v2, :cond_1

    check-cast v0, Lٴʼ/ﹳٴ;

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    if-eq v0, p1, :cond_4

    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ـˆ()F

    move-result v2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_2
    iput-object v1, p0, Lˆᵢ/ﾞᴵ;->ـᵎ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ـˆ()F

    move-result p1

    invoke-static {v0}, Lˆᵢ/ﾞᴵ;->ᐧᴵ(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ᵎᵔ()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lˆᵢ/ﾞᴵ;->ـᵎ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lˆᵢ/ﾞᴵ;->ʽﹳ(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    invoke-virtual {p0}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    cmpl-float p1, v2, p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ᴵˊ()V

    :cond_4
    return-void
.end method

.method public final ᵔי(Z)V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lˆᵢ/ﾞᴵ;->ᵎʻ:Z

    if-eq v0, p1, :cond_1

    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ᵎᵔ()Z

    move-result v0

    iput-boolean p1, p0, Lˆᵢ/ﾞᴵ;->ᵎʻ:Z

    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ᵎᵔ()Z

    move-result p1

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lˆᵢ/ﾞᴵ;->ـᵎ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lˆᵢ/ﾞᴵ;->ʽﹳ(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lˆᵢ/ﾞᴵ;->ـᵎ:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lˆᵢ/ﾞᴵ;->ᐧᴵ(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {p0}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ᴵˊ()V

    :cond_1
    return-void
.end method

.method public final ᵔٴ(F)V
    .locals 1

    .prologue
    iget v0, p0, Lˆᵢ/ﾞᴵ;->ʻˋ:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    iput p1, p0, Lˆᵢ/ﾞᴵ;->ʻˋ:F

    iget-object v0, p0, Lˆᵢ/ﾞᴵ;->ʽˑ:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-boolean v0, p0, Lˆᵢ/ﾞᴵ;->ʿʽ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iput p1, v0, Lˋⁱ/ᵎﹶ;->ˆʾ:F

    invoke-virtual {p0}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    :cond_0
    invoke-virtual {p0}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public final ﹳـ(Z)V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lˆᵢ/ﾞᴵ;->ʾˊ:Z

    if-eq v0, p1, :cond_1

    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ᐧﾞ()Z

    move-result v0

    iput-boolean p1, p0, Lˆᵢ/ﾞᴵ;->ʾˊ:Z

    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ᐧﾞ()Z

    move-result p1

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lˆᵢ/ﾞᴵ;->ˑ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lˆᵢ/ﾞᴵ;->ʽﹳ(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lˆᵢ/ﾞᴵ;->ˑ:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lˆᵢ/ﾞᴵ;->ᐧᴵ(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {p0}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    invoke-virtual {p0}, Lˆᵢ/ﾞᴵ;->ᴵˊ()V

    :cond_1
    return-void
.end method
