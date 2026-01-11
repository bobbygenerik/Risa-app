.class public Lˋⁱ/ʼˎ;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Lˋⁱ/ʼʼ;


# static fields
.field public static final ʻᵎ:[Lˋⁱ/ᵔᵢ;

.field public static final ᴵʼ:Landroid/graphics/Paint;


# instance fields
.field public final ʼˈ:Lˋⁱ/ʼᐧ;

.field public final ʽʽ:[Lˋⁱ/ـˆ;

.field public final ʾˋ:Lˉˆ/ʿ;

.field public ʿ:Lˋⁱ/ᵔʾ;

.field public ʿᵢ:Lˊᵔ/ʼˎ;

.field public final ˆﾞ:Landroid/graphics/Region;

.field public final ˈʿ:Landroid/graphics/Paint;

.field public final ˈٴ:[Lˋⁱ/ـˆ;

.field public final ˈⁱ:Landroid/graphics/RectF;

.field public ˉـ:Z

.field public final ˉٴ:Landroid/graphics/Matrix;

.field public ˊʻ:Z

.field public final ˊˋ:Lˊⁱ/ˑﹳ;

.field public final ˋᵔ:Lʿˊ/ﹳٴ;

.field public ˏᵢ:Lٴˉ/ﹳٴ;

.field public final ˑٴ:Landroid/graphics/Paint;

.field public ـˏ:Landroid/graphics/PorterDuffColorFilter;

.field public final ٴʼ:Landroid/graphics/Path;

.field public ٴᵢ:Z

.field public ᐧᴵ:[F

.field public ᐧﾞ:[F

.field public ᴵˊ:Lˋⁱ/ᵎﹶ;

.field public final ᴵˑ:Z

.field public final ᴵᵔ:Ljava/util/BitSet;

.field public final ᵎˊ:Landroid/graphics/RectF;

.field public final ᵎᵔ:[Lˊᵔ/ᵔᵢ;

.field public final ᵎⁱ:Landroid/graphics/Path;

.field public final ᵔי:Landroid/graphics/RectF;

.field public final ᵔٴ:Landroid/graphics/Region;

.field public ﹳـ:Landroid/graphics/PorterDuffColorFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lˋⁱ/ʼˎ;->ᴵʼ:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v0, 0x4

    new-array v0, v0, [Lˋⁱ/ᵔᵢ;

    sput-object v0, Lˋⁱ/ʼˎ;->ʻᵎ:[Lˋⁱ/ᵔᵢ;

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lˋⁱ/ʼˎ;->ʻᵎ:[Lˋⁱ/ᵔᵢ;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    new-instance v2, Lˋⁱ/ᵔᵢ;

    invoke-direct {v2, v0}, Lˋⁱ/ᵔᵢ;-><init>(I)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lˋⁱ/ᵔʾ;

    invoke-direct {v0}, Lˋⁱ/ᵔʾ;-><init>()V

    invoke-direct {p0, v0}, Lˋⁱ/ʼˎ;-><init>(Lˋⁱ/ᵔʾ;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lˋⁱ/ᵔʾ;->ᵎﹶ(Landroid/content/Context;Landroid/util/AttributeSet;II)Lˋⁱ/ˉʿ;

    move-result-object p1

    invoke-virtual {p1}, Lˋⁱ/ˉʿ;->ﹳٴ()Lˋⁱ/ᵔʾ;

    move-result-object p1

    invoke-direct {p0, p1}, Lˋⁱ/ʼˎ;-><init>(Lˋⁱ/ᵔʾ;)V

    return-void
.end method

.method public constructor <init>(Lˋⁱ/ᵎﹶ;)V
    .locals 6

    .prologue
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Lˉˆ/ʿ;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0}, Lˉˆ/ʿ;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lˋⁱ/ʼˎ;->ʾˋ:Lˉˆ/ʿ;

    const/4 v0, 0x4

    new-array v1, v0, [Lˋⁱ/ـˆ;

    iput-object v1, p0, Lˋⁱ/ʼˎ;->ʽʽ:[Lˋⁱ/ـˆ;

    new-array v1, v0, [Lˋⁱ/ـˆ;

    iput-object v1, p0, Lˋⁱ/ʼˎ;->ˈٴ:[Lˋⁱ/ـˆ;

    new-instance v1, Ljava/util/BitSet;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    iput-object v1, p0, Lˋⁱ/ʼˎ;->ᴵᵔ:Ljava/util/BitSet;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lˋⁱ/ʼˎ;->ˉٴ:Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lˋⁱ/ʼˎ;->ᵎⁱ:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lˋⁱ/ʼˎ;->ٴʼ:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lˋⁱ/ʼˎ;->ᵎˊ:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lˋⁱ/ʼˎ;->ᵔי:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Lˋⁱ/ʼˎ;->ˆﾞ:Landroid/graphics/Region;

    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Lˋⁱ/ʼˎ;->ᵔٴ:Landroid/graphics/Region;

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lˋⁱ/ʼˎ;->ˈʿ:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lˋⁱ/ʼˎ;->ˑٴ:Landroid/graphics/Paint;

    new-instance v4, Lʿˊ/ﹳٴ;

    invoke-direct {v4}, Lʿˊ/ﹳٴ;-><init>()V

    iput-object v4, p0, Lˋⁱ/ʼˎ;->ˋᵔ:Lʿˊ/ﹳٴ;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    if-ne v4, v5, :cond_0

    sget-object v4, Lˋⁱ/ˉˆ;->ﹳٴ:Lˋⁱ/ʼᐧ;

    goto :goto_0

    :cond_0
    new-instance v4, Lˋⁱ/ʼᐧ;

    invoke-direct {v4}, Lˋⁱ/ʼᐧ;-><init>()V

    :goto_0
    iput-object v4, p0, Lˋⁱ/ʼˎ;->ʼˈ:Lˋⁱ/ʼᐧ;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lˋⁱ/ʼˎ;->ˈⁱ:Landroid/graphics/RectF;

    iput-boolean v2, p0, Lˋⁱ/ʼˎ;->ᴵˑ:Z

    iput-boolean v2, p0, Lˋⁱ/ʼˎ;->ˉـ:Z

    new-array v0, v0, [Lˊᵔ/ᵔᵢ;

    iput-object v0, p0, Lˋⁱ/ʼˎ;->ᵎᵔ:[Lˊᵔ/ᵔᵢ;

    iput-object p1, p0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Lˋⁱ/ʼˎ;->יـ()Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lˋⁱ/ʼˎ;->ᵔﹳ([I)Z

    new-instance p1, Lˊⁱ/ˑﹳ;

    const/4 v0, 0x3

    invoke-direct {p1, v0, p0}, Lˊⁱ/ˑﹳ;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lˋⁱ/ʼˎ;->ˊˋ:Lˊⁱ/ˑﹳ;

    return-void
.end method

.method public constructor <init>(Lˋⁱ/ᵔʾ;)V
    .locals 1

    new-instance v0, Lˋⁱ/ᵎﹶ;

    invoke-direct {v0, p1}, Lˋⁱ/ᵎﹶ;-><init>(Lˋⁱ/ﾞʻ;)V

    invoke-direct {p0, v0}, Lˋⁱ/ʼˎ;-><init>(Lˋⁱ/ᵎﹶ;)V

    return-void
.end method

.method public constructor <init>(Lˋⁱ/ﾞʻ;)V
    .locals 1

    new-instance v0, Lˋⁱ/ᵎﹶ;

    invoke-direct {v0, p1}, Lˋⁱ/ᵎﹶ;-><init>(Lˋⁱ/ﾞʻ;)V

    invoke-direct {p0, v0}, Lˋⁱ/ʼˎ;-><init>(Lˋⁱ/ᵎﹶ;)V

    return-void
.end method

.method public static ⁱˊ(Landroid/graphics/RectF;Lˋⁱ/ᵔʾ;[F)F
    .locals 3

    .prologue
    if-nez p2, :cond_0

    invoke-virtual {p1, p0}, Lˋⁱ/ᵔʾ;->ˆʾ(Landroid/graphics/RectF;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p1, p1, Lˋⁱ/ᵔʾ;->ˑﹳ:Lˋⁱ/ˈ;

    invoke-interface {p1, p0}, Lˋⁱ/ˈ;->ﹳٴ(Landroid/graphics/RectF;)F

    move-result p0

    return p0

    :cond_0
    array-length p0, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gt p0, v1, :cond_1

    goto :goto_1

    :cond_1
    aget p0, p2, v0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_3

    aget v2, p2, v1

    cmpl-float v2, v2, p0

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lˋⁱ/ᵔʾ;->ʼˎ()Z

    move-result p0

    if-eqz p0, :cond_4

    aget p0, p2, v0

    return p0

    :cond_4
    :goto_2
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 19

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lˋⁱ/ʼˎ;->ـˏ:Landroid/graphics/PorterDuffColorFilter;

    iget-object v3, v0, Lˋⁱ/ʼˎ;->ˈʿ:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v7

    iget-object v2, v0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget v2, v2, Lˋⁱ/ᵎﹶ;->ٴﹶ:I

    ushr-int/lit8 v4, v2, 0x7

    add-int/2addr v2, v4

    mul-int/2addr v2, v7

    ushr-int/lit8 v2, v2, 0x8

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Lˋⁱ/ʼˎ;->ﹳـ:Landroid/graphics/PorterDuffColorFilter;

    iget-object v8, v0, Lˋⁱ/ʼˎ;->ˑٴ:Landroid/graphics/Paint;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v2, v0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget v2, v2, Lˋⁱ/ᵎﹶ;->ˆʾ:F

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    move-result v9

    iget-object v2, v0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget v2, v2, Lˋⁱ/ᵎﹶ;->ٴﹶ:I

    ushr-int/lit8 v4, v2, 0x7

    add-int/2addr v2, v4

    mul-int/2addr v2, v9

    ushr-int/lit8 v2, v2, 0x8

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget-object v2, v2, Lˋⁱ/ᵎﹶ;->ʼᐧ:Landroid/graphics/Paint$Style;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eq v2, v4, :cond_1

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v3

    goto/16 :goto_5

    :cond_1
    :goto_0
    iget-boolean v2, v0, Lˋⁱ/ʼˎ;->ˊʻ:Z

    move v4, v2

    move-object v2, v3

    iget-object v3, v0, Lˋⁱ/ʼˎ;->ᵎⁱ:Landroid/graphics/Path;

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lˋⁱ/ʼˎ;->ᵎﹶ()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lˋⁱ/ʼˎ;->ﹳٴ(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    iput-boolean v11, v0, Lˋⁱ/ʼˎ;->ˊʻ:Z

    :cond_2
    iget-object v4, v0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, v4, Lˋⁱ/ᵎﹶ;->ᵔʾ:I

    if-lez v5, :cond_9

    iget-object v4, v4, Lˋⁱ/ᵎﹶ;->ﹳٴ:Lˋⁱ/ﾞʻ;

    invoke-interface {v4}, Lˋⁱ/ﾞʻ;->ˈ()Lˋⁱ/ᵔʾ;

    move-result-object v4

    invoke-virtual {v0}, Lˋⁱ/ʼˎ;->ᵎﹶ()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v4, v5}, Lˋⁱ/ᵔʾ;->ˆʾ(Landroid/graphics/RectF;)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, v0, Lˋⁱ/ʼˎ;->ᐧﾞ:[F

    if-eqz v5, :cond_6

    array-length v6, v5

    const/4 v12, 0x1

    if-gt v6, v12, :cond_3

    goto :goto_2

    :cond_3
    aget v6, v5, v11

    :goto_1
    array-length v13, v5

    if-ge v12, v13, :cond_5

    aget v13, v5, v12

    cmpl-float v13, v13, v6

    if-eqz v13, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    invoke-virtual {v4}, Lˋⁱ/ᵔʾ;->ʼˎ()Z

    move-result v4

    if-eqz v4, :cond_6

    goto/16 :goto_4

    :cond_6
    :goto_3
    invoke-virtual {v3}, Landroid/graphics/Path;->isConvex()Z

    move-result v4

    if-nez v4, :cond_9

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-ge v4, v5, :cond_9

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    iget-object v4, v0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget v4, v4, Lˋⁱ/ᵎﹶ;->ˉˆ:I

    int-to-double v4, v4

    int-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v14, v4

    double-to-int v4, v14

    iget-object v5, v0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget v5, v5, Lˋⁱ/ᵎﹶ;->ˉˆ:I

    int-to-double v5, v5

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v12, v5

    double-to-int v5, v12

    int-to-float v4, v4

    int-to-float v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-boolean v4, v0, Lˋⁱ/ʼˎ;->ᴵˑ:Z

    if-nez v4, :cond_7

    invoke-virtual/range {p0 .. p1}, Lˋⁱ/ʼˎ;->ˈ(Landroid/graphics/Canvas;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_4

    :cond_7
    iget-object v4, v0, Lˋⁱ/ʼˎ;->ˈⁱ:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v6, v12

    float-to-int v6, v6

    if-ltz v5, :cond_8

    if-ltz v6, :cond_8

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v12

    float-to-int v12, v12

    iget-object v13, v0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget v13, v13, Lˋⁱ/ᵎﹶ;->ᵔʾ:I

    mul-int/lit8 v13, v13, 0x2

    add-int/2addr v13, v12

    add-int/2addr v13, v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v4, v4

    iget-object v12, v0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget v12, v12, Lˋⁱ/ᵎﹶ;->ᵔʾ:I

    mul-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v4

    add-int/2addr v12, v6

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v12, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    iget v13, v13, Landroid/graphics/Rect;->left:I

    iget-object v14, v0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget v14, v14, Lˋⁱ/ᵎﹶ;->ᵔʾ:I

    sub-int/2addr v13, v14

    sub-int/2addr v13, v5

    int-to-float v5, v13

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    iget v13, v13, Landroid/graphics/Rect;->top:I

    iget-object v14, v0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget v14, v14, Lˋⁱ/ᵎﹶ;->ᵔʾ:I

    sub-int/2addr v13, v14

    sub-int/2addr v13, v6

    int-to-float v6, v13

    neg-float v13, v5

    neg-float v14, v6

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, v12}, Lˋⁱ/ʼˎ;->ˈ(Landroid/graphics/Canvas;)V

    invoke-virtual {v1, v4, v5, v6, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_4

    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Invalid shadow bounds. Check that the treatments result in a valid path."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    :goto_4
    iget-object v4, v0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget-object v4, v4, Lˋⁱ/ᵎﹶ;->ﹳٴ:Lˋⁱ/ﾞʻ;

    invoke-interface {v4}, Lˋⁱ/ﾞʻ;->ˈ()Lˋⁱ/ᵔʾ;

    move-result-object v4

    iget-object v5, v0, Lˋⁱ/ʼˎ;->ᐧﾞ:[F

    invoke-virtual {v0}, Lˋⁱ/ʼˎ;->ᵎﹶ()Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lˋⁱ/ʼˎ;->ˑﹳ(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lˋⁱ/ᵔʾ;[FLandroid/graphics/RectF;)V

    :goto_5
    invoke-virtual {v0}, Lˋⁱ/ʼˎ;->ٴﹶ()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-boolean v1, v0, Lˋⁱ/ʼˎ;->ٴᵢ:Z

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lˋⁱ/ʼˎ;->ʼˎ()Lˋⁱ/ᵔʾ;

    move-result-object v1

    invoke-virtual {v1}, Lˋⁱ/ᵔʾ;->ٴﹶ()Lˋⁱ/ˉʿ;

    move-result-object v3

    iget-object v4, v1, Lˋⁱ/ᵔʾ;->ˑﹳ:Lˋⁱ/ˈ;

    iget-object v5, v0, Lˋⁱ/ʼˎ;->ʾˋ:Lˉˆ/ʿ;

    invoke-virtual {v5, v4}, Lˉˆ/ʿ;->ᵎˊ(Lˋⁱ/ˈ;)Lˋⁱ/ˈ;

    move-result-object v4

    iput-object v4, v3, Lˋⁱ/ˉʿ;->ˑﹳ:Lˋⁱ/ˈ;

    iget-object v4, v1, Lˋⁱ/ᵔʾ;->ﾞᴵ:Lˋⁱ/ˈ;

    invoke-virtual {v5, v4}, Lˉˆ/ʿ;->ᵎˊ(Lˋⁱ/ˈ;)Lˋⁱ/ˈ;

    move-result-object v4

    iput-object v4, v3, Lˋⁱ/ˉʿ;->ﾞᴵ:Lˋⁱ/ˈ;

    iget-object v4, v1, Lˋⁱ/ᵔʾ;->ᵔᵢ:Lˋⁱ/ˈ;

    invoke-virtual {v5, v4}, Lˉˆ/ʿ;->ᵎˊ(Lˋⁱ/ˈ;)Lˋⁱ/ˈ;

    move-result-object v4

    iput-object v4, v3, Lˋⁱ/ˉʿ;->ᵔᵢ:Lˋⁱ/ˈ;

    iget-object v1, v1, Lˋⁱ/ᵔʾ;->ᵎﹶ:Lˋⁱ/ˈ;

    invoke-virtual {v5, v1}, Lˉˆ/ʿ;->ᵎˊ(Lˋⁱ/ˈ;)Lˋⁱ/ˈ;

    move-result-object v1

    iput-object v1, v3, Lˋⁱ/ˉʿ;->ᵎﹶ:Lˋⁱ/ˈ;

    invoke-virtual {v3}, Lˋⁱ/ˉʿ;->ﹳٴ()Lˋⁱ/ᵔʾ;

    move-result-object v1

    iput-object v1, v0, Lˋⁱ/ʼˎ;->ʿ:Lˋⁱ/ᵔʾ;

    iget-object v1, v0, Lˋⁱ/ʼˎ;->ᐧﾞ:[F

    if-nez v1, :cond_a

    iput-object v10, v0, Lˋⁱ/ʼˎ;->ᐧᴵ:[F

    goto :goto_7

    :cond_a
    iget-object v3, v0, Lˋⁱ/ʼˎ;->ᐧᴵ:[F

    if-nez v3, :cond_b

    array-length v1, v1

    new-array v1, v1, [F

    iput-object v1, v0, Lˋⁱ/ʼˎ;->ᐧᴵ:[F

    :cond_b
    invoke-virtual {v0}, Lˋⁱ/ʼˎ;->ˆʾ()F

    move-result v1

    move v3, v11

    :goto_6
    iget-object v4, v0, Lˋⁱ/ʼˎ;->ᐧﾞ:[F

    array-length v5, v4

    if-ge v3, v5, :cond_c

    iget-object v5, v0, Lˋⁱ/ʼˎ;->ᐧᴵ:[F

    aget v4, v4, v3

    sub-float/2addr v4, v1

    const/4 v6, 0x0

    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    aput v4, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_c
    :goto_7
    iget-object v13, v0, Lˋⁱ/ʼˎ;->ʿ:Lˋⁱ/ᵔʾ;

    iget-object v14, v0, Lˋⁱ/ʼˎ;->ᐧᴵ:[F

    iget-object v1, v0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget v15, v1, Lˋⁱ/ᵎﹶ;->ʼˎ:F

    invoke-virtual {v0}, Lˋⁱ/ʼˎ;->ᵎﹶ()Landroid/graphics/RectF;

    move-result-object v1

    iget-object v3, v0, Lˋⁱ/ʼˎ;->ᵔי:Landroid/graphics/RectF;

    invoke-virtual {v3, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {v0}, Lˋⁱ/ʼˎ;->ˆʾ()F

    move-result v1

    invoke-virtual {v3, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    const/16 v17, 0x0

    iget-object v1, v0, Lˋⁱ/ʼˎ;->ٴʼ:Landroid/graphics/Path;

    iget-object v12, v0, Lˋⁱ/ʼˎ;->ʼˈ:Lˋⁱ/ʼᐧ;

    move-object/from16 v18, v1

    move-object/from16 v16, v3

    invoke-virtual/range {v12 .. v18}, Lˋⁱ/ʼᐧ;->ⁱˊ(Lˋⁱ/ᵔʾ;[FFLandroid/graphics/RectF;Lˊⁱ/ˑﹳ;Landroid/graphics/Path;)V

    iput-boolean v11, v0, Lˋⁱ/ʼˎ;->ٴᵢ:Z

    :cond_d
    invoke-virtual/range {p0 .. p1}, Lˋⁱ/ʼˎ;->ﾞᴵ(Landroid/graphics/Canvas;)V

    :cond_e
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public getAlpha()I
    .locals 1

    iget-object v0, p0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget v0, v0, Lˋⁱ/ᵎﹶ;->ٴﹶ:I

    return v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    iget-object v0, p0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 3

    .prologue
    iget-object v0, p0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lˋⁱ/ʼˎ;->ᵎﹶ()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget-object v1, v1, Lˋⁱ/ᵎﹶ;->ﹳٴ:Lˋⁱ/ﾞʻ;

    invoke-interface {v1}, Lˋⁱ/ﾞʻ;->ˈ()Lˋⁱ/ᵔʾ;

    move-result-object v1

    iget-object v2, p0, Lˋⁱ/ʼˎ;->ᐧﾞ:[F

    invoke-static {v0, v1, v2}, Lˋⁱ/ʼˎ;->ⁱˊ(Landroid/graphics/RectF;Lˋⁱ/ᵔʾ;[F)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v2, p0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget v2, v2, Lˋⁱ/ᵎﹶ;->ʼˎ:F

    mul-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void

    :cond_1
    iget-boolean v1, p0, Lˋⁱ/ʼˎ;->ˊʻ:Z

    iget-object v2, p0, Lˋⁱ/ʼˎ;->ᵎⁱ:Landroid/graphics/Path;

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0, v2}, Lˋⁱ/ʼˎ;->ﹳٴ(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lˋⁱ/ʼˎ;->ˊʻ:Z

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_3

    invoke-static {p1, v2}, Lʼˉ/ⁱˊ;->ﹳٴ(Landroid/graphics/Outline;Landroid/graphics/Path;)V

    return-void

    :cond_3
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_4

    :try_start_0
    invoke-static {p1, v2}, Lʼˉ/ﹳٴ;->ﹳٴ(Landroid/graphics/Outline;Landroid/graphics/Path;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :cond_4
    invoke-virtual {v2}, Landroid/graphics/Path;->isConvex()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1, v2}, Lʼˉ/ﹳٴ;->ﹳٴ(Landroid/graphics/Outline;Landroid/graphics/Path;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    .prologue
    iget-object v0, p0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget-object v0, v0, Lˋⁱ/ᵎﹶ;->ᵎﹶ:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public final getTransparentRegion()Landroid/graphics/Region;
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lˋⁱ/ʼˎ;->ˆﾞ:Landroid/graphics/Region;

    invoke-virtual {v1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    invoke-virtual {p0}, Lˋⁱ/ʼˎ;->ᵎﹶ()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v2, p0, Lˋⁱ/ʼˎ;->ᵎⁱ:Landroid/graphics/Path;

    invoke-virtual {p0, v0, v2}, Lˋⁱ/ʼˎ;->ﹳٴ(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    iget-object v0, p0, Lˋⁱ/ʼˎ;->ᵔٴ:Landroid/graphics/Region;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    return-object v1
.end method

.method public final invalidateSelf()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lˋⁱ/ʼˎ;->ˊʻ:Z

    iput-boolean v0, p0, Lˋⁱ/ʼˎ;->ٴᵢ:Z

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget-object v0, v0, Lˋⁱ/ᵎﹶ;->ˑﹳ:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget-object v0, v0, Lˋⁱ/ᵎﹶ;->ˈ:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget-object v0, v0, Lˋⁱ/ᵎﹶ;->ʽ:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget-object v0, v0, Lˋⁱ/ᵎﹶ;->ﹳٴ:Lˋⁱ/ﾞʻ;

    invoke-interface {v0}, Lˋⁱ/ﾞʻ;->ˑﹳ()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    return v0

    :cond_4
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Lˋⁱ/ᵎﹶ;

    iget-object v1, p0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    invoke-direct {v0, v1}, Lˋⁱ/ᵎﹶ;-><init>(Lˋⁱ/ᵎﹶ;)V

    iput-object v0, p0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    return-object p0
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lˋⁱ/ʼˎ;->ˊʻ:Z

    iput-boolean v0, p0, Lˋⁱ/ʼˎ;->ٴᵢ:Z

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget-object v0, v0, Lˋⁱ/ᵎﹶ;->ﹳٴ:Lˋⁱ/ﾞʻ;

    invoke-interface {v0}, Lˋⁱ/ﾞʻ;->ˑﹳ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    iget-boolean v1, p0, Lˋⁱ/ʼˎ;->ˉـ:Z

    invoke-virtual {p0, v1, v0}, Lˋⁱ/ʼˎ;->ﹳᐧ(Z[I)V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    iput-boolean p1, p0, Lˋⁱ/ʼˎ;->ˉـ:Z

    return-void
.end method

.method public onStateChange([I)Z
    .locals 2

    .prologue
    iget-object v0, p0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget-object v0, v0, Lˋⁱ/ᵎﹶ;->ﹳٴ:Lˋⁱ/ﾞʻ;

    invoke-interface {v0}, Lˋⁱ/ﾞʻ;->ˑﹳ()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, p1}, Lˋⁱ/ʼˎ;->ﹳᐧ(Z[I)V

    :cond_0
    invoke-virtual {p0, p1}, Lˋⁱ/ʼˎ;->ᵔﹳ([I)Z

    move-result p1

    invoke-virtual {p0}, Lˋⁱ/ʼˎ;->יـ()Z

    move-result v0

    if-nez p1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    :cond_3
    return v1
.end method

.method public setAlpha(I)V
    .locals 2

    .prologue
    iget-object v0, p0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget v1, v0, Lˋⁱ/ᵎﹶ;->ٴﹶ:I

    if-eq v1, p1, :cond_0

    iput p1, v0, Lˋⁱ/ᵎﹶ;->ٴﹶ:I

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    iget-object p1, p0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setShapeAppearanceModel(Lˋⁱ/ᵔʾ;)V
    .locals 1

    iget-object v0, p0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iput-object p1, v0, Lˋⁱ/ᵎﹶ;->ﹳٴ:Lˋⁱ/ﾞʻ;

    const/4 p1, 0x0

    iput-object p1, p0, Lˋⁱ/ʼˎ;->ᐧﾞ:[F

    iput-object p1, p0, Lˋⁱ/ʼˎ;->ᐧᴵ:[F

    invoke-virtual {p0}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    return-void
.end method

.method public final setTint(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lˋⁱ/ʼˎ;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iput-object p1, v0, Lˋⁱ/ᵎﹶ;->ˑﹳ:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lˋⁱ/ʼˎ;->יـ()Z

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget-object v1, v0, Lˋⁱ/ᵎﹶ;->ﾞᴵ:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Lˋⁱ/ᵎﹶ;->ﾞᴵ:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0}, Lˋⁱ/ʼˎ;->יـ()Z

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final ʼˎ()Lˋⁱ/ᵔʾ;
    .locals 1

    iget-object v0, p0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget-object v0, v0, Lˋⁱ/ᵎﹶ;->ﹳٴ:Lˋⁱ/ﾞʻ;

    invoke-interface {v0}, Lˋⁱ/ﾞʻ;->ˈ()Lˋⁱ/ᵔʾ;

    move-result-object v0

    return-object v0
.end method

.method public final ʼᐧ(Lˋⁱ/ﾞʻ;)V
    .locals 2

    .prologue
    instance-of v0, p1, Lˋⁱ/ᵔʾ;

    if-eqz v0, :cond_0

    check-cast p1, Lˋⁱ/ᵔʾ;

    invoke-virtual {p0, p1}, Lˋⁱ/ʼˎ;->setShapeAppearanceModel(Lˋⁱ/ᵔʾ;)V

    return-void

    :cond_0
    check-cast p1, Lˋⁱ/ʾˋ;

    iget-object v0, p0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget-object v1, v0, Lˋⁱ/ᵎﹶ;->ﹳٴ:Lˋⁱ/ﾞʻ;

    if-eq v1, p1, :cond_1

    iput-object p1, v0, Lˋⁱ/ᵎﹶ;->ﹳٴ:Lˋⁱ/ﾞʻ;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lˋⁱ/ʼˎ;->ﹳᐧ(Z[I)V

    invoke-virtual {p0}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public final ʽ(I)I
    .locals 6

    .prologue
    iget-object v0, p0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget v1, v0, Lˋⁱ/ᵎﹶ;->ˉʿ:F

    const/4 v2, 0x0

    add-float/2addr v1, v2

    iget v3, v0, Lˋⁱ/ᵎﹶ;->ﾞʻ:F

    add-float/2addr v1, v3

    iget-object v0, v0, Lˋⁱ/ᵎﹶ;->ⁱˊ:Lˑˎ/ﹳٴ;

    if-eqz v0, :cond_3

    iget-boolean v3, v0, Lˑˎ/ﹳٴ;->ﹳٴ:Z

    if-eqz v3, :cond_3

    const/16 v3, 0xff

    invoke-static {p1, v3}, Lᵎⁱ/ﹳٴ;->ˈ(II)I

    move-result v4

    iget v5, v0, Lˑˎ/ﹳٴ;->ˈ:I

    if-ne v4, v5, :cond_3

    iget v4, v0, Lˑˎ/ﹳٴ;->ˑﹳ:F

    cmpg-float v5, v4, v2

    if-lez v5, :cond_1

    cmpg-float v5, v1, v2

    if-gtz v5, :cond_0

    goto :goto_0

    :cond_0
    div-float/2addr v1, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->log1p(D)D

    move-result-wide v4

    double-to-float v1, v4

    const/high16 v4, 0x40900000    # 4.5f

    mul-float/2addr v1, v4

    const/high16 v4, 0x40000000    # 2.0f

    add-float/2addr v1, v4

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v1, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    invoke-static {p1, v3}, Lᵎⁱ/ﹳٴ;->ˈ(II)I

    move-result p1

    iget v3, v0, Lˑˎ/ﹳٴ;->ⁱˊ:I

    invoke-static {v1, p1, v3}, Lʽٴ/ˈ;->ˏי(FII)I

    move-result p1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    iget v0, v0, Lˑˎ/ﹳٴ;->ʽ:I

    if-eqz v0, :cond_2

    sget v1, Lˑˎ/ﹳٴ;->ﾞᴵ:I

    invoke-static {v0, v1}, Lᵎⁱ/ﹳٴ;->ˈ(II)I

    move-result v0

    invoke-static {v0, p1}, Lᵎⁱ/ﹳٴ;->ⁱˊ(II)I

    move-result p1

    :cond_2
    invoke-static {p1, v4}, Lᵎⁱ/ﹳٴ;->ˈ(II)I

    move-result p1

    :cond_3
    return p1
.end method

.method public final ˆʾ()F
    .locals 2

    .prologue
    invoke-virtual {p0}, Lˋⁱ/ʼˎ;->ٴﹶ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lˋⁱ/ʼˎ;->ˑٴ:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ˈ(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    iget-object v0, p0, Lˋⁱ/ʼˎ;->ᴵᵔ:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "\u02bc\u02ce"

    const-string v1, "Compatibility shadow requested but can\'t be drawn for all operations in this shape."

    nop

    :cond_0
    iget-object v0, p0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget v0, v0, Lˋⁱ/ᵎﹶ;->ˉˆ:I

    iget-object v1, p0, Lˋⁱ/ʼˎ;->ᵎⁱ:Landroid/graphics/Path;

    iget-object v2, p0, Lˋⁱ/ʼˎ;->ˋᵔ:Lʿˊ/ﹳٴ;

    if-eqz v0, :cond_1

    iget-object v0, v2, Lʿˊ/ﹳٴ;->ﹳٴ:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lˋⁱ/ʼˎ;->ʽʽ:[Lˋⁱ/ـˆ;

    aget-object v4, v4, v3

    iget-object v5, p0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget v5, v5, Lˋⁱ/ᵎﹶ;->ᵔʾ:I

    sget-object v6, Lˋⁱ/ـˆ;->ⁱˊ:Landroid/graphics/Matrix;

    invoke-virtual {v4, v6, v2, v5, p1}, Lˋⁱ/ـˆ;->ﹳٴ(Landroid/graphics/Matrix;Lʿˊ/ﹳٴ;ILandroid/graphics/Canvas;)V

    iget-object v4, p0, Lˋⁱ/ʼˎ;->ˈٴ:[Lˋⁱ/ـˆ;

    aget-object v4, v4, v3

    iget-object v5, p0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget v5, v5, Lˋⁱ/ᵎﹶ;->ᵔʾ:I

    invoke-virtual {v4, v6, v2, v5, p1}, Lˋⁱ/ـˆ;->ﹳٴ(Landroid/graphics/Matrix;Lʿˊ/ﹳٴ;ILandroid/graphics/Canvas;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lˋⁱ/ʼˎ;->ᴵˑ:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget v2, v2, Lˋⁱ/ᵎﹶ;->ˉˆ:I

    int-to-double v2, v2

    int-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v6, v2

    double-to-int v0, v6

    iget-object v2, p0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget v2, v2, Lˋⁱ/ᵎﹶ;->ˉˆ:I

    int-to-double v2, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-int v2, v4

    neg-int v3, v0

    int-to-float v3, v3

    neg-int v4, v2

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    sget-object v3, Lˋⁱ/ʼˎ;->ᴵʼ:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    int-to-float v0, v0

    int-to-float v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_3
    return-void
.end method

.method public final ˉʿ(Lˊᵔ/ʼˎ;)V
    .locals 5

    .prologue
    iget-object v0, p0, Lˋⁱ/ʼˎ;->ʿᵢ:Lˊᵔ/ʼˎ;

    if-eq v0, p1, :cond_2

    iput-object p1, p0, Lˋⁱ/ʼˎ;->ʿᵢ:Lˊᵔ/ʼˎ;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lˋⁱ/ʼˎ;->ᵎᵔ:[Lˊᵔ/ᵔᵢ;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    if-nez v2, :cond_0

    new-instance v2, Lˊᵔ/ᵔᵢ;

    sget-object v3, Lˋⁱ/ʼˎ;->ʻᵎ:[Lˋⁱ/ᵔᵢ;

    aget-object v3, v3, v0

    invoke-direct {v2, p0, v3}, Lˊᵔ/ᵔᵢ;-><init>(Lˋⁱ/ʼʼ;Lcom/google/android/gms/internal/play_billing/י;)V

    aput-object v2, v1, v0

    :cond_0
    aget-object v1, v1, v0

    new-instance v2, Lˊᵔ/ʼˎ;

    invoke-direct {v2}, Lˊᵔ/ʼˎ;-><init>()V

    iget-wide v3, p1, Lˊᵔ/ʼˎ;->ⁱˊ:D

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Lˊᵔ/ʼˎ;->ﹳٴ(F)V

    iget-wide v3, p1, Lˊᵔ/ʼˎ;->ﹳٴ:D

    mul-double/2addr v3, v3

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Lˊᵔ/ʼˎ;->ⁱˊ(F)V

    iput-object v2, v1, Lˊᵔ/ᵔᵢ;->ˉʿ:Lˊᵔ/ʼˎ;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lˋⁱ/ʼˎ;->ﹳᐧ(Z[I)V

    invoke-virtual {p0}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    :cond_2
    return-void
.end method

.method public final ˉˆ(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget-object v1, v0, Lˋⁱ/ᵎﹶ;->ʽ:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Lˋⁱ/ᵎﹶ;->ʽ:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lˋⁱ/ʼˎ;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public final ˏי()V
    .locals 4

    iget-object v0, p0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget v1, v0, Lˋⁱ/ᵎﹶ;->ˉʿ:F

    const/4 v2, 0x0

    add-float/2addr v1, v2

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v2, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v0, Lˋⁱ/ᵎﹶ;->ᵔʾ:I

    iget-object v0, p0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Lˋⁱ/ᵎﹶ;->ˉˆ:I

    invoke-virtual {p0}, Lˋⁱ/ʼˎ;->יـ()Z

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final ˑﹳ(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lˋⁱ/ᵔʾ;[FLandroid/graphics/RectF;)V
    .locals 0

    .prologue
    invoke-static {p6, p4, p5}, Lˋⁱ/ʼˎ;->ⁱˊ(Landroid/graphics/RectF;Lˋⁱ/ᵔʾ;[F)F

    move-result p4

    const/4 p5, 0x0

    cmpl-float p5, p4, p5

    if-ltz p5, :cond_0

    iget-object p3, p0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget p3, p3, Lˋⁱ/ᵎﹶ;->ʼˎ:F

    mul-float/2addr p4, p3

    invoke-virtual {p1, p6, p4, p4, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final יـ()Z
    .locals 7

    .prologue
    iget-object v0, p0, Lˋⁱ/ʼˎ;->ـˏ:Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, Lˋⁱ/ʼˎ;->ﹳـ:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget-object v3, v2, Lˋⁱ/ᵎﹶ;->ˑﹳ:Landroid/content/res/ColorStateList;

    iget-object v2, v2, Lˋⁱ/ᵎﹶ;->ﾞᴵ:Landroid/graphics/PorterDuff$Mode;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    invoke-virtual {p0, v3}, Lˋⁱ/ʼˎ;->ʽ(I)I

    move-result v3

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v5, v3, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v2, p0, Lˋⁱ/ʼˎ;->ˈʿ:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual {p0, v2}, Lˋⁱ/ʼˎ;->ʽ(I)I

    move-result v3

    if-eq v3, v2, :cond_2

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v3, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    iput-object v5, p0, Lˋⁱ/ʼˎ;->ـˏ:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    iput-object v2, p0, Lˋⁱ/ʼˎ;->ﹳـ:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lˋⁱ/ʼˎ;->ـˏ:Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lˋⁱ/ʼˎ;->ﹳـ:Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v1, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    return v0

    :cond_4
    :goto_2
    return v4
.end method

.method public final ٴﹶ()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget-object v0, v0, Lˋⁱ/ᵎﹶ;->ʼᐧ:Landroid/graphics/Paint$Style;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    if-eq v0, v1, :cond_0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lˋⁱ/ʼˎ;->ˑٴ:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final ᵎﹶ()Landroid/graphics/RectF;
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lˋⁱ/ʼˎ;->ᵎˊ:Landroid/graphics/RectF;

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    return-object v1
.end method

.method public final ᵔʾ(F)V
    .locals 2

    .prologue
    iget-object v0, p0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget v1, v0, Lˋⁱ/ᵎﹶ;->ˉʿ:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, Lˋⁱ/ᵎﹶ;->ˉʿ:F

    invoke-virtual {p0}, Lˋⁱ/ʼˎ;->ˏי()V

    :cond_0
    return-void
.end method

.method public final ᵔᵢ()F
    .locals 5

    .prologue
    iget-object v0, p0, Lˋⁱ/ʼˎ;->ᐧﾞ:[F

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v3, v0, v3

    add-float/2addr v2, v3

    const/4 v3, 0x1

    aget v3, v0, v3

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    aget v0, v0, v3

    sub-float/2addr v2, v0

    div-float/2addr v2, v1

    return v2

    :cond_0
    invoke-virtual {p0}, Lˋⁱ/ʼˎ;->ᵎﹶ()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0}, Lˋⁱ/ʼˎ;->ʼˎ()Lˋⁱ/ᵔʾ;

    move-result-object v2

    iget-object v3, p0, Lˋⁱ/ʼˎ;->ʼˈ:Lˋⁱ/ʼᐧ;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lˋⁱ/ᵔʾ;->ˑﹳ:Lˋⁱ/ˈ;

    invoke-interface {v2, v0}, Lˋⁱ/ˈ;->ﹳٴ(Landroid/graphics/RectF;)F

    move-result v2

    invoke-virtual {p0}, Lˋⁱ/ʼˎ;->ʼˎ()Lˋⁱ/ᵔʾ;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v4, Lˋⁱ/ᵔʾ;->ᵔᵢ:Lˋⁱ/ˈ;

    invoke-interface {v4, v0}, Lˋⁱ/ˈ;->ﹳٴ(Landroid/graphics/RectF;)F

    move-result v4

    add-float/2addr v4, v2

    invoke-virtual {p0}, Lˋⁱ/ʼˎ;->ʼˎ()Lˋⁱ/ᵔʾ;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lˋⁱ/ᵔʾ;->ᵎﹶ:Lˋⁱ/ˈ;

    invoke-interface {v2, v0}, Lˋⁱ/ˈ;->ﹳٴ(Landroid/graphics/RectF;)F

    move-result v2

    sub-float/2addr v4, v2

    invoke-virtual {p0}, Lˋⁱ/ʼˎ;->ʼˎ()Lˋⁱ/ᵔʾ;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lˋⁱ/ᵔʾ;->ﾞᴵ:Lˋⁱ/ˈ;

    invoke-interface {v2, v0}, Lˋⁱ/ˈ;->ﹳٴ(Landroid/graphics/RectF;)F

    move-result v0

    sub-float/2addr v4, v0

    div-float/2addr v4, v1

    return v4
.end method

.method public final ᵔﹳ([I)Z
    .locals 5

    .prologue
    iget-object v0, p0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget-object v0, v0, Lˋⁱ/ᵎﹶ;->ʽ:Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lˋⁱ/ʼˎ;->ˈʿ:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    iget-object v3, p0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget-object v3, v3, Lˋⁱ/ᵎﹶ;->ʽ:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    if-eq v2, v3, :cond_0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget-object v2, v2, Lˋⁱ/ᵎﹶ;->ˈ:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lˋⁱ/ʼˎ;->ˑٴ:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    iget-object v4, p0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget-object v4, v4, Lˋⁱ/ᵎﹶ;->ˈ:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    if-eq v3, p1, :cond_1

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    return v1

    :cond_1
    return v0
.end method

.method public final ﹳٴ(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 8

    .prologue
    iget-object v0, p0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget-object v0, v0, Lˋⁱ/ᵎﹶ;->ﹳٴ:Lˋⁱ/ﾞʻ;

    invoke-interface {v0}, Lˋⁱ/ﾞʻ;->ˈ()Lˋⁱ/ᵔʾ;

    move-result-object v2

    iget-object v3, p0, Lˋⁱ/ʼˎ;->ᐧﾞ:[F

    iget-object v0, p0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget v4, v0, Lˋⁱ/ᵎﹶ;->ʼˎ:F

    iget-object v6, p0, Lˋⁱ/ʼˎ;->ˊˋ:Lˊⁱ/ˑﹳ;

    iget-object v1, p0, Lˋⁱ/ʼˎ;->ʼˈ:Lˋⁱ/ʼᐧ;

    move-object v5, p1

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Lˋⁱ/ʼᐧ;->ⁱˊ(Lˋⁱ/ᵔʾ;[FFLandroid/graphics/RectF;Lˊⁱ/ˑﹳ;Landroid/graphics/Path;)V

    iget-object p1, p0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget p1, p1, Lˋⁱ/ᵎﹶ;->ᵔᵢ:F

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lˋⁱ/ʼˎ;->ˉٴ:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    iget-object p2, p0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget p2, p2, Lˋⁱ/ᵎﹶ;->ᵔᵢ:F

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v1

    invoke-virtual {p1, p2, p2, v0, v2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    invoke-virtual {v7, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :cond_0
    iget-object p1, p0, Lˋⁱ/ʼˎ;->ˈⁱ:Landroid/graphics/RectF;

    const/4 p2, 0x1

    invoke-virtual {v7, p1, p2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    return-void
.end method

.method public final ﹳᐧ(Z[I)V
    .locals 7

    .prologue
    invoke-virtual {p0}, Lˋⁱ/ʼˎ;->ᵎﹶ()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget-object v1, v1, Lˋⁱ/ᵎﹶ;->ﹳٴ:Lˋⁱ/ﾞʻ;

    invoke-interface {v1}, Lˋⁱ/ﾞʻ;->ˑﹳ()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_0
    iget-object v1, p0, Lˋⁱ/ʼˎ;->ʿᵢ:Lˊᵔ/ʼˎ;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    or-int/2addr p1, v1

    iget-object v1, p0, Lˋⁱ/ʼˎ;->ᐧﾞ:[F

    const/4 v4, 0x4

    if-nez v1, :cond_2

    new-array v1, v4, [F

    iput-object v1, p0, Lˋⁱ/ʼˎ;->ᐧﾞ:[F

    :cond_2
    iget-object v1, p0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget-object v1, v1, Lˋⁱ/ᵎﹶ;->ﹳٴ:Lˋⁱ/ﾞʻ;

    invoke-interface {v1, p2}, Lˋⁱ/ﾞʻ;->ʽ([I)Lˋⁱ/ᵔʾ;

    move-result-object p2

    :goto_1
    if-ge v2, v4, :cond_8

    iget-object v1, p0, Lˋⁱ/ʼˎ;->ʼˈ:Lˋⁱ/ʼᐧ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq v2, v3, :cond_5

    const/4 v1, 0x2

    if-eq v2, v1, :cond_4

    const/4 v1, 0x3

    if-eq v2, v1, :cond_3

    iget-object v1, p2, Lˋⁱ/ᵔʾ;->ﾞᴵ:Lˋⁱ/ˈ;

    goto :goto_2

    :cond_3
    iget-object v1, p2, Lˋⁱ/ᵔʾ;->ˑﹳ:Lˋⁱ/ˈ;

    goto :goto_2

    :cond_4
    iget-object v1, p2, Lˋⁱ/ᵔʾ;->ᵔᵢ:Lˋⁱ/ˈ;

    goto :goto_2

    :cond_5
    iget-object v1, p2, Lˋⁱ/ᵔʾ;->ᵎﹶ:Lˋⁱ/ˈ;

    :goto_2
    invoke-interface {v1, v0}, Lˋⁱ/ˈ;->ﹳٴ(Landroid/graphics/RectF;)F

    move-result v1

    if-eqz p1, :cond_6

    iget-object v5, p0, Lˋⁱ/ʼˎ;->ᐧﾞ:[F

    aput v1, v5, v2

    :cond_6
    iget-object v5, p0, Lˋⁱ/ʼˎ;->ᵎᵔ:[Lˊᵔ/ᵔᵢ;

    aget-object v6, v5, v2

    if-eqz v6, :cond_7

    invoke-virtual {v6, v1}, Lˊᵔ/ᵔᵢ;->ﹳٴ(F)V

    if-eqz p1, :cond_7

    aget-object v1, v5, v2

    invoke-virtual {v1}, Lˊᵔ/ᵔᵢ;->ˈ()V

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    :cond_9
    :goto_3
    return-void
.end method

.method public final ﾞʻ(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    new-instance v1, Lˑˎ/ﹳٴ;

    invoke-direct {v1, p1}, Lˑˎ/ﹳٴ;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lˋⁱ/ᵎﹶ;->ⁱˊ:Lˑˎ/ﹳٴ;

    invoke-virtual {p0}, Lˋⁱ/ʼˎ;->ˏי()V

    return-void
.end method

.method public ﾞᴵ(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v4, p0, Lˋⁱ/ʼˎ;->ʿ:Lˋⁱ/ᵔʾ;

    iget-object v5, p0, Lˋⁱ/ʼˎ;->ᐧᴵ:[F

    invoke-virtual {p0}, Lˋⁱ/ʼˎ;->ᵎﹶ()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v6, p0, Lˋⁱ/ʼˎ;->ᵔי:Landroid/graphics/RectF;

    invoke-virtual {v6, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Lˋⁱ/ʼˎ;->ˆʾ()F

    move-result v0

    invoke-virtual {v6, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v2, p0, Lˋⁱ/ʼˎ;->ˑٴ:Landroid/graphics/Paint;

    iget-object v3, p0, Lˋⁱ/ʼˎ;->ٴʼ:Landroid/graphics/Path;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lˋⁱ/ʼˎ;->ˑﹳ(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lˋⁱ/ᵔʾ;[FLandroid/graphics/RectF;)V

    return-void
.end method
