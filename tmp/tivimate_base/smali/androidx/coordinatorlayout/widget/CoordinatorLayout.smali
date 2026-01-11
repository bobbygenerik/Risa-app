.class public Landroidx/coordinatorlayout/widget/CoordinatorLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Lˋᵔ/ˉʿ;
.implements Lˋᵔ/ᵔʾ;


# static fields
.field public static final ˈⁱ:Ljava/lang/ThreadLocal;

.field public static final ˉـ:Lˑٴ/ˈ;

.field public static final ـˏ:Ljava/lang/String;

.field public static final ᴵˑ:Lʻٴ/ˑﹳ;

.field public static final ﹳـ:[Ljava/lang/Class;


# instance fields
.field public final ʼˈ:Lʻʿ/ˉˆ;

.field public final ʽʽ:Ljava/util/ArrayList;

.field public final ʾˋ:Ljava/util/ArrayList;

.field public ˆﾞ:Z

.field public ˈʿ:Z

.field public final ˈٴ:Ljava/util/ArrayList;

.field public ˉٴ:Z

.field public final ˊʻ:[I

.field public ˊˋ:Lﹳי/ʽ;

.field public ˋᵔ:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field public ˑٴ:Landroid/graphics/drawable/Drawable;

.field public ٴʼ:Landroid/view/View;

.field public ٴᵢ:Z

.field public final ᴵˊ:Lˏˆ/ﹳٴ;

.field public final ᴵᵔ:[I

.field public ᵎˊ:Landroid/view/View;

.field public final ᵎⁱ:[I

.field public ᵔי:Lʾˎ/ⁱˊ;

.field public ᵔٴ:Lˋᵔ/ᐧﹶ;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-class v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ـˏ:Ljava/lang/String;

    new-instance v0, Lʻٴ/ˑﹳ;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lʻٴ/ˑﹳ;-><init>(I)V

    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᴵˑ:Lʻٴ/ˑﹳ;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ﹳـ:[Ljava/lang/Class;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ˈⁱ:Ljava/lang/ThreadLocal;

    new-instance v0, Lˑٴ/ˈ;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lˑٴ/ˈ;-><init>(I)V

    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ˉـ:Lˑٴ/ˈ;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    const v5, 0x7f0401b0

    invoke-direct {p0, p1, p2, v5}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ʾˋ:Ljava/util/ArrayList;

    new-instance v0, Lˏˆ/ﹳٴ;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lˏˆ/ﹳٴ;-><init>(I)V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᴵˊ:Lˏˆ/ﹳٴ;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ʽʽ:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ˈٴ:Ljava/util/ArrayList;

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᴵᵔ:[I

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ˊʻ:[I

    new-instance v0, Lʻʿ/ˉˆ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ʼˈ:Lʻʿ/ˉˆ;

    sget-object v2, Lᴵˊ/ﹳٴ;->ﹳٴ:[I

    const/4 v7, 0x0

    invoke-virtual {p1, p2, v2, v5, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Landroid/view/ViewGroup;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    :goto_0
    invoke-virtual {v4, v7, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᵎⁱ:[I

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    array-length p1, p1

    :goto_1
    if-ge v7, p1, :cond_1

    iget-object v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᵎⁱ:[I

    aget v2, v1, v7

    int-to-float v2, v2

    mul-float/2addr v2, p2

    float-to-int v2, v2

    aput v2, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    invoke-virtual {v4, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ˑٴ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ـˆ()V

    new-instance p2, Lʽʽ/ʽ;

    invoke-direct {p2, p0}, Lʽʽ/ʽ;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    invoke-super {p0, p2}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    sget-object p2, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_2
    return-void
.end method

.method public static ʻٴ(Landroid/view/View;I)V
    .locals 3

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lʽʽ/ˈ;

    iget v1, v0, Lʽʽ/ˈ;->ˆʾ:I

    if-eq v1, p1, :cond_0

    sub-int v1, p1, v1

    sget-object v2, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-virtual {p0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    iput p1, v0, Lʽʽ/ˈ;->ˆʾ:I

    :cond_0
    return-void
.end method

.method public static ʽﹳ(Landroid/view/View;I)V
    .locals 3

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lʽʽ/ˈ;

    iget v1, v0, Lʽʽ/ˈ;->ʼˎ:I

    if-eq v1, p1, :cond_0

    sub-int v1, p1, v1

    sget-object v2, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-virtual {p0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    iput p1, v0, Lʽʽ/ˈ;->ʼˎ:I

    :cond_0
    return-void
.end method

.method public static ᵎﹶ()Landroid/graphics/Rect;
    .locals 1

    .prologue
    sget-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ˉـ:Lˑٴ/ˈ;

    invoke-virtual {v0}, Lˑٴ/ˈ;->ﾞᴵ()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    return-object v0
.end method

.method public static ᵔʾ(Landroid/view/View;)Lʽʽ/ˈ;
    .locals 5

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lʽʽ/ˈ;

    iget-boolean v1, v0, Lʽʽ/ˈ;->ⁱˊ:Z

    if-nez v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    if-eqz p0, :cond_0

    const-class v2, Lʽʽ/ⁱˊ;

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lʽʽ/ⁱˊ;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    if-eqz v2, :cond_2

    :try_start_0
    invoke-interface {v2}, Lʽʽ/ⁱˊ;->value()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lʽʽ/ﹳٴ;

    iget-object v3, v0, Lʽʽ/ˈ;->ﹳٴ:Lʽʽ/ﹳٴ;

    if-eq v3, v1, :cond_2

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lʽʽ/ﹳٴ;->ˑﹳ()V

    :cond_1
    iput-object v1, v0, Lʽʽ/ˈ;->ﹳٴ:Lʽʽ/ﹳٴ;

    iput-boolean p0, v0, Lʽʽ/ˈ;->ⁱˊ:Z

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lʽʽ/ﹳٴ;->ʽ(Lʽʽ/ˈ;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Default behavior class "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lʽʽ/ⁱˊ;->value()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " could not be instantiated. Did you forget a default constructor?"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CoordinatorLayout"

    nop

    :cond_2
    :goto_1
    iput-boolean p0, v0, Lʽʽ/ˈ;->ⁱˊ:Z

    :cond_3
    return-object v0
.end method

.method public static ﾞʻ(ILandroid/graphics/Rect;Landroid/graphics/Rect;Lʽʽ/ˈ;II)V
    .locals 6

    .prologue
    iget v0, p3, Lʽʽ/ˈ;->ʽ:I

    if-nez v0, :cond_0

    const/16 v0, 0x11

    :cond_0
    invoke-static {v0, p0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    iget p3, p3, Lʽʽ/ˈ;->ˈ:I

    and-int/lit8 v1, p3, 0x7

    if-nez v1, :cond_1

    const v1, 0x800003

    or-int/2addr p3, v1

    :cond_1
    and-int/lit8 v1, p3, 0x70

    if-nez v1, :cond_2

    or-int/lit8 p3, p3, 0x30

    :cond_2
    invoke-static {p3, p0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p0

    and-int/lit8 p3, v0, 0x7

    and-int/lit8 v0, v0, 0x70

    and-int/lit8 v1, p0, 0x7

    and-int/lit8 p0, p0, 0x70

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    if-eq v1, v2, :cond_3

    iget v1, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_3
    iget v1, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_4
    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    :goto_0
    const/16 v4, 0x50

    const/16 v5, 0x10

    if-eq p0, v5, :cond_6

    if-eq p0, v4, :cond_5

    iget p0, p1, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :cond_5
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_6
    iget p0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p0, p1

    :goto_1
    if-eq p3, v3, :cond_7

    if-eq p3, v2, :cond_8

    sub-int/2addr v1, p4

    goto :goto_2

    :cond_7
    div-int/lit8 p1, p4, 0x2

    sub-int/2addr v1, p1

    :cond_8
    :goto_2
    if-eq v0, v5, :cond_9

    if-eq v0, v4, :cond_a

    sub-int/2addr p0, p5

    goto :goto_3

    :cond_9
    div-int/lit8 p1, p5, 0x2

    sub-int/2addr p0, p1

    :cond_a
    :goto_3
    add-int/2addr p4, v1

    add-int/2addr p5, p0

    invoke-virtual {p2, v1, p0, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method


# virtual methods
.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    instance-of v0, p1, Lʽʽ/ˈ;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    .prologue
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lʽʽ/ˈ;

    iget-object v0, v0, Lʽʽ/ˈ;->ﹳٴ:Lʽʽ/ﹳٴ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public final drawableStateChanged()V
    .locals 3

    .prologue
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ˑٴ:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lʽʽ/ˈ;

    invoke-direct {v0}, Lʽʽ/ˈ;-><init>()V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Lʽʽ/ˈ;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lʽʽ/ˈ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    instance-of v0, p1, Lʽʽ/ˈ;

    if-eqz v0, :cond_0

    new-instance v0, Lʽʽ/ˈ;

    check-cast p1, Lʽʽ/ˈ;

    invoke-direct {v0, p1}, Lʽʽ/ˈ;-><init>(Lʽʽ/ˈ;)V

    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Lʽʽ/ˈ;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lʽʽ/ˈ;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_1
    new-instance v0, Lʽʽ/ˈ;

    invoke-direct {v0, p1}, Lʽʽ/ˈ;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final getDependencySortedChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->יـ()V

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ʾˋ:Ljava/util/ArrayList;

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getLastWindowInsets()Lˋᵔ/ᐧﹶ;
    .locals 1

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᵔٴ:Lˋᵔ/ᐧﹶ;

    return-object v0
.end method

.method public getNestedScrollAxes()I
    .locals 2

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ʼˈ:Lʻʿ/ˉˆ;

    iget v1, v0, Lʻʿ/ˉˆ;->ﹳٴ:I

    iget v0, v0, Lʻʿ/ˉˆ;->ⁱˊ:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getStatusBarBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ˑٴ:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSuggestedMinimumHeight()I
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getSuggestedMinimumWidth()I
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final onAttachedToWindow()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ˏי(Z)V

    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ˆﾞ:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᵔי:Lʾˎ/ⁱˊ;

    if-nez v0, :cond_0

    new-instance v0, Lʾˎ/ⁱˊ;

    invoke-direct {v0, p0}, Lʾˎ/ⁱˊ;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᵔי:Lʾˎ/ⁱˊ;

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᵔי:Lʾˎ/ⁱˊ;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᵔٴ:Lˋᵔ/ᐧﹶ;

    if-nez v0, :cond_2

    sget-object v0, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lˋᵔ/ʾˋ;->ʽ(Landroid/view/View;)V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ˉٴ:Z

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    .prologue
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ˏי(Z)V

    iget-boolean v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ˆﾞ:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᵔי:Lʾˎ/ⁱˊ;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᵔי:Lʾˎ/ⁱˊ;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᵎˊ:Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ⁱˊ(Landroid/view/View;I)V

    :cond_1
    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ˉٴ:Z

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ˈʿ:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ˑٴ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᵔٴ:Lˋᵔ/ᐧﹶ;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lˋᵔ/ᐧﹶ;->ˈ()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-lez v0, :cond_1

    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ˑٴ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2, v1, v1, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ˑٴ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ˏי(Z)V

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ﹳᐧ(Landroid/view/MotionEvent;I)Z

    move-result p1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    return p1

    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ˏי(Z)V

    return p1
.end method

.method public final onLayout(ZIIII)V
    .locals 2

    .prologue
    sget-object p1, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    iget-object p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ʾˋ:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_3

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lʽʽ/ˈ;

    iget-object v0, v0, Lʽʽ/ˈ;->ﹳٴ:Lʽʽ/ﹳٴ;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0, p5, p1}, Lʽʽ/ﹳٴ;->ᵎﹶ(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0, p5, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᵔﹳ(Landroid/view/View;I)V

    :cond_2
    :goto_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final onMeasure(II)V
    .locals 26

    .prologue
    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->יـ()V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v6, 0x0

    move v2, v6

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᴵˊ:Lˏˆ/ﹳٴ;

    iget-object v5, v5, Lˏˆ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v5, Lיـ/ﹳᐧ;

    iget v7, v5, Lיـ/ﹳᐧ;->ʽʽ:I

    move v8, v6

    :goto_1
    if-ge v8, v7, :cond_1

    invoke-virtual {v5, v8}, Lיـ/ﹳᐧ;->ˆʾ(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    if-eqz v9, :cond_0

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v1, v3

    goto :goto_2

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v1, v6

    :goto_2
    iget-boolean v2, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ˆﾞ:Z

    if-eq v1, v2, :cond_7

    if-eqz v1, :cond_5

    iget-boolean v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ˉٴ:Z

    if-eqz v1, :cond_4

    iget-object v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᵔי:Lʾˎ/ⁱˊ;

    if-nez v1, :cond_3

    new-instance v1, Lʾˎ/ⁱˊ;

    invoke-direct {v1, v0}, Lʾˎ/ⁱˊ;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    iput-object v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᵔי:Lʾˎ/ⁱˊ;

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᵔי:Lʾˎ/ⁱˊ;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_4
    iput-boolean v3, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ˆﾞ:Z

    goto :goto_3

    :cond_5
    iget-boolean v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ˉٴ:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᵔי:Lʾˎ/ⁱˊ;

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᵔי:Lʾˎ/ⁱˊ;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_6
    iput-boolean v6, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ˆﾞ:Z

    :cond_7
    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sget-object v4, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v9

    if-ne v9, v3, :cond_8

    move v10, v3

    goto :goto_4

    :cond_8
    move v10, v6

    :goto_4
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    add-int v15, v7, v8

    add-int v16, v1, v2

    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getSuggestedMinimumHeight()I

    move-result v2

    iget-object v4, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᵔٴ:Lˋᵔ/ᐧﹶ;

    if-eqz v4, :cond_9

    invoke-virtual {v0}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v4

    if-eqz v4, :cond_9

    move/from16 v17, v3

    goto :goto_5

    :cond_9
    move/from16 v17, v6

    :goto_5
    iget-object v3, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ʾˋ:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v6

    move/from16 v18, v5

    :goto_6
    if-ge v5, v4, :cond_16

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/view/View;

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getVisibility()I

    move-result v6

    move/from16 v21, v1

    const/16 v1, 0x8

    if-ne v6, v1, :cond_a

    move-object/from16 v23, v3

    move/from16 v22, v4

    move/from16 v19, v5

    move/from16 v20, v7

    move/from16 v1, v21

    const/16 v24, 0x0

    move/from16 v21, v8

    goto/16 :goto_e

    :cond_a
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lʽʽ/ˈ;

    iget v1, v6, Lʽʽ/ˈ;->ˑﹳ:I

    if-ltz v1, :cond_12

    if-eqz v11, :cond_12

    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ˉʿ(I)I

    move-result v1

    move/from16 v22, v1

    iget v1, v6, Lʽʽ/ˈ;->ʽ:I

    if-nez v1, :cond_b

    const v1, 0x800035

    :cond_b
    invoke-static {v1, v9}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    move/from16 v23, v2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_c

    if-eqz v10, :cond_d

    :cond_c
    const/4 v2, 0x5

    if-ne v1, v2, :cond_e

    if-eqz v10, :cond_e

    :cond_d
    sub-int v1, v12, v8

    sub-int v1, v1, v22

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_7
    move/from16 v25, v4

    move v4, v1

    move/from16 v1, v25

    goto :goto_a

    :cond_e
    if-ne v1, v2, :cond_f

    if-eqz v10, :cond_10

    :cond_f
    const/4 v2, 0x3

    if-ne v1, v2, :cond_11

    if-eqz v10, :cond_11

    :cond_10
    sub-int v1, v22, v7

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_7

    :cond_11
    :goto_8
    const/4 v2, 0x0

    goto :goto_9

    :cond_12
    move/from16 v23, v2

    goto :goto_8

    :goto_9
    move v1, v4

    move v4, v2

    :goto_a
    if-eqz v17, :cond_13

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v20

    if-nez v20, :cond_13

    iget-object v2, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᵔٴ:Lˋᵔ/ᐧﹶ;

    invoke-virtual {v2}, Lˋᵔ/ᐧﹶ;->ⁱˊ()I

    move-result v2

    move/from16 v22, v1

    iget-object v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᵔٴ:Lˋᵔ/ᐧﹶ;

    invoke-virtual {v1}, Lˋᵔ/ᐧﹶ;->ʽ()I

    move-result v1

    add-int/2addr v1, v2

    iget-object v2, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᵔٴ:Lˋᵔ/ᐧﹶ;

    invoke-virtual {v2}, Lˋᵔ/ᐧﹶ;->ˈ()I

    move-result v2

    move/from16 v24, v1

    iget-object v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᵔٴ:Lˋᵔ/ᐧﹶ;

    invoke-virtual {v1}, Lˋᵔ/ᐧﹶ;->ﹳٴ()I

    move-result v1

    add-int/2addr v1, v2

    sub-int v2, v12, v24

    invoke-static {v2, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    sub-int v1, v14, v1

    invoke-static {v1, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_b

    :cond_13
    move/from16 v22, v1

    move/from16 v2, p1

    move/from16 v1, p2

    :goto_b
    iget-object v0, v6, Lʽʽ/ˈ;->ﹳٴ:Lʽʽ/ﹳٴ;

    if-eqz v0, :cond_15

    const/16 v24, 0x0

    move/from16 v20, v7

    move/from16 v7, v21

    move/from16 v21, v8

    move/from16 v8, v23

    move-object/from16 v23, v3

    move v3, v2

    move-object/from16 v2, v19

    move/from16 v19, v5

    move v5, v1

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v5}, Lʽʽ/ﹳٴ;->ᵔᵢ(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)Z

    move-result v0

    move-object v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    if-nez v0, :cond_14

    goto :goto_c

    :cond_14
    move-object/from16 v0, p0

    goto :goto_d

    :cond_15
    move/from16 v20, v7

    move/from16 v7, v21

    const/16 v24, 0x0

    move/from16 v21, v8

    move/from16 v8, v23

    move-object/from16 v23, v3

    move v3, v4

    move v4, v1

    move-object/from16 v1, v19

    move/from16 v19, v5

    :goto_c
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    :goto_d
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v15

    iget v3, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v3, v3, v16

    iget v4, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    move/from16 v6, v18

    invoke-static {v6, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v18

    move v1, v2

    move v2, v3

    :goto_e
    add-int/lit8 v5, v19, 0x1

    move/from16 v7, v20

    move/from16 v8, v21

    move/from16 v4, v22

    move-object/from16 v3, v23

    move/from16 v6, v24

    goto/16 :goto_6

    :cond_16
    move v7, v1

    move v8, v2

    move/from16 v6, v18

    const/high16 v1, -0x1000000

    and-int/2addr v1, v6

    move/from16 v2, p1

    invoke-static {v7, v2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    shl-int/lit8 v2, v6, 0x10

    move/from16 v3, p2

    invoke-static {v8, v3, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onNestedFling(Landroid/view/View;FFZ)Z
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p3, p1, :cond_2

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Lʽʽ/ˈ;

    invoke-virtual {p4, p2}, Lʽʽ/ˈ;->ﹳٴ(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p4, p4, Lʽʽ/ˈ;->ﹳٴ:Lʽʽ/ﹳٴ;

    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return p2
.end method

.method public final onNestedPreFling(Landroid/view/View;FF)Z
    .locals 5

    .prologue
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 p3, 0x0

    move v0, p3

    move v1, v0

    :goto_0
    if-ge v0, p2, :cond_3

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lʽʽ/ˈ;

    invoke-virtual {v2, p3}, Lʽʽ/ˈ;->ﹳٴ(I)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, v2, Lʽʽ/ˈ;->ﹳٴ:Lʽʽ/ﹳٴ;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Lʽʽ/ﹳٴ;->ʼˎ(Landroid/view/View;)Z

    move-result v2

    or-int/2addr v1, v2

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public final onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ʽ(Landroid/view/View;II[II)V

    return-void
.end method

.method public final onNestedScroll(Landroid/view/View;IIII)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ˑﹳ(Landroid/view/View;IIIII)V

    return-void
.end method

.method public final onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ﹳٴ(Landroid/view/View;Landroid/view/View;II)V

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6

    .prologue
    instance-of v0, p1, Lʽʽ/ﾞᴵ;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lʽʽ/ﾞᴵ;

    iget-object v0, p1, Lᴵˑ/ⁱˊ;->ʾˋ:Landroid/os/Parcelable;

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object p1, p1, Lʽʽ/ﾞᴵ;->ʽʽ:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    invoke-static {v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᵔʾ(Landroid/view/View;)Lʽʽ/ˈ;

    move-result-object v4

    iget-object v4, v4, Lʽʽ/ˈ;->ﹳٴ:Lʽʽ/ﹳٴ;

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    if-eqz v3, :cond_1

    invoke-virtual {v4, v2, v3}, Lʽʽ/ﹳٴ;->ˉʿ(Landroid/view/View;Landroid/os/Parcelable;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    .prologue
    new-instance v0, Lʽʽ/ﾞᴵ;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lᴵˑ/ⁱˊ;-><init>(Landroid/os/Parcelable;)V

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lʽʽ/ˈ;

    iget-object v6, v6, Lʽʽ/ˈ;->ﹳٴ:Lʽʽ/ﹳٴ;

    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    if-eqz v6, :cond_0

    invoke-virtual {v6, v4}, Lʽʽ/ﹳٴ;->ᵔʾ(Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v5, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iput-object v1, v0, Lʽʽ/ﾞᴵ;->ʽʽ:Landroid/util/SparseArray;

    return-object v0
.end method

.method public final onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ﾞᴵ(Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public final onStopNestedScroll(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ⁱˊ(Landroid/view/View;I)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    iget-object v3, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ٴʼ:Landroid/view/View;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_1

    invoke-virtual {v0, v1, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ﹳᐧ(Landroid/view/MotionEvent;I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v6, v5

    goto :goto_1

    :cond_1
    move v3, v5

    :goto_0
    iget-object v6, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ٴʼ:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lʽʽ/ˈ;

    iget-object v6, v6, Lʽʽ/ˈ;->ﹳٴ:Lʽʽ/ﹳٴ;

    if-eqz v6, :cond_0

    iget-object v7, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ٴʼ:Landroid/view/View;

    invoke-virtual {v6, v7, v1}, Lʽʽ/ﹳٴ;->ᵔﹳ(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v6

    :goto_1
    iget-object v7, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ٴʼ:Landroid/view/View;

    const/4 v8, 0x0

    if-nez v7, :cond_2

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v6, v1

    goto :goto_2

    :cond_2
    if-eqz v3, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v13, 0x3

    const/4 v14, 0x0

    move-wide v11, v9

    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    invoke-super {v0, v8}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_3
    :goto_2
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    :cond_4
    if-eq v2, v4, :cond_6

    const/4 v1, 0x3

    if-ne v2, v1, :cond_5

    goto :goto_3

    :cond_5
    return v6

    :cond_6
    :goto_3
    invoke-virtual {v0, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ˏי(Z)V

    return v6
.end method

.method public final requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lʽʽ/ˈ;

    iget-object v0, v0, Lʽʽ/ˈ;->ﹳٴ:Lʽʽ/ﹳٴ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lʽʽ/ﹳٴ;->ﾞʻ(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result p1

    return p1
.end method

.method public final requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .prologue
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ٴᵢ:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ˏי(Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ٴᵢ:Z

    :cond_0
    return-void
.end method

.method public setFitsSystemWindows(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ـˆ()V

    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ˋᵔ:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ˑٴ:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_5

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ˑٴ:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ˑٴ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_2
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ˑٴ:Landroid/graphics/drawable/Drawable;

    sget-object v0, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ˑٴ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ˑٴ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_4
    sget-object p1, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_5
    return-void
.end method

.method public setStatusBarBackgroundColor(I)V
    .locals 1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setStatusBarBackgroundResource(I)V
    .locals 1

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .prologue
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ˑٴ:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eq v1, p1, :cond_1

    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ˑٴ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    return-void
.end method

.method public final verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ˑٴ:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final ʼˎ(Landroid/view/View;Landroid/graphics/Rect;Z)V
    .locals 2

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ٴﹶ(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-virtual {p2, p3, v0, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_2
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public final ʼᐧ(I)V
    .locals 22

    .prologue
    move-object/from16 v0, p0

    move/from16 v1, p1

    sget-object v2, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v3

    iget-object v2, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ʾˋ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᵎﹶ()Landroid/graphics/Rect;

    move-result-object v10

    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᵎﹶ()Landroid/graphics/Rect;

    move-result-object v11

    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᵎﹶ()Landroid/graphics/Rect;

    move-result-object v12

    const/4 v14, 0x0

    :goto_0
    sget-object v15, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ˉـ:Lˑٴ/ˈ;

    if-ge v14, v9, :cond_1d

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lʽʽ/ˈ;

    if-nez v1, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_0

    move-object v5, v2

    move v2, v9

    move-object v4, v12

    move/from16 v20, v14

    const/4 v6, 0x0

    goto/16 :goto_e

    :cond_0
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v14, :cond_7

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    iget-object v7, v5, Lʽʽ/ˈ;->ﾞʻ:Landroid/view/View;

    if-ne v7, v8, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lʽʽ/ˈ;

    iget-object v8, v7, Lʽʽ/ˈ;->ٴﹶ:Landroid/view/View;

    if-eqz v8, :cond_6

    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᵎﹶ()Landroid/graphics/Rect;

    move-result-object v8

    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᵎﹶ()Landroid/graphics/Rect;

    move-result-object v13

    move-object/from16 v17, v5

    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᵎﹶ()Landroid/graphics/Rect;

    move-result-object v5

    move/from16 v18, v3

    iget-object v3, v7, Lʽʽ/ˈ;->ٴﹶ:Landroid/view/View;

    invoke-virtual {v0, v3, v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ٴﹶ(Landroid/view/View;Landroid/graphics/Rect;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v4, v13, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ʼˎ(Landroid/view/View;Landroid/graphics/Rect;Z)V

    move v3, v6

    move-object v6, v7

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    move-object/from16 v19, v4

    move-object v4, v8

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    move-object/from16 v20, v17

    move-object/from16 v17, v2

    move-object/from16 v2, v20

    move/from16 v20, v18

    move/from16 v18, v3

    move/from16 v3, v20

    move/from16 v20, v14

    move-object/from16 v14, v19

    invoke-static/range {v3 .. v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ﾞʻ(ILandroid/graphics/Rect;Landroid/graphics/Rect;Lʽʽ/ˈ;II)V

    move/from16 v19, v9

    iget v9, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v21, v12

    iget v12, v13, Landroid/graphics/Rect;->left:I

    if-ne v9, v12, :cond_2

    iget v9, v5, Landroid/graphics/Rect;->top:I

    iget v12, v13, Landroid/graphics/Rect;->top:I

    if-eq v9, v12, :cond_1

    goto :goto_2

    :cond_1
    const/16 v16, 0x0

    goto :goto_3

    :cond_2
    :goto_2
    const/16 v16, 0x1

    :goto_3
    invoke-virtual {v0, v6, v5, v7, v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᵔᵢ(Lʽʽ/ˈ;Landroid/graphics/Rect;II)V

    iget v7, v5, Landroid/graphics/Rect;->left:I

    iget v8, v13, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    iget v8, v5, Landroid/graphics/Rect;->top:I

    iget v9, v13, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    if-eqz v7, :cond_3

    sget-object v9, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-virtual {v14, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_3
    if-eqz v8, :cond_4

    sget-object v7, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-virtual {v14, v8}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_4
    if-eqz v16, :cond_5

    iget-object v7, v6, Lʽʽ/ˈ;->ﹳٴ:Lʽʽ/ﹳٴ;

    if-eqz v7, :cond_5

    iget-object v6, v6, Lʽʽ/ˈ;->ٴﹶ:Landroid/view/View;

    invoke-virtual {v7, v0, v14, v6}, Lʽʽ/ﹳٴ;->ˈ(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    :cond_5
    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {v15, v4}, Lˑٴ/ˈ;->ˑﹳ(Ljava/lang/Object;)Z

    invoke-virtual {v13}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {v15, v13}, Lˑٴ/ˈ;->ˑﹳ(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {v15, v5}, Lˑٴ/ˈ;->ˑﹳ(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    move-object/from16 v17, v2

    move-object v2, v5

    move/from16 v18, v6

    move/from16 v19, v9

    move-object/from16 v21, v12

    move/from16 v20, v14

    move-object v14, v4

    :goto_4
    add-int/lit8 v6, v18, 0x1

    move-object v5, v2

    move-object v4, v14

    move-object/from16 v2, v17

    move/from16 v9, v19

    move/from16 v14, v20

    move-object/from16 v12, v21

    goto/16 :goto_1

    :cond_7
    move-object/from16 v17, v2

    move-object v2, v5

    move/from16 v19, v9

    move-object/from16 v21, v12

    move/from16 v20, v14

    move-object v14, v4

    const/4 v4, 0x1

    invoke-virtual {v0, v14, v11, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ʼˎ(Landroid/view/View;Landroid/graphics/Rect;Z)V

    iget v5, v2, Lʽʽ/ˈ;->ᵎﹶ:I

    const/4 v6, 0x5

    const/4 v7, 0x3

    const/16 v8, 0x50

    const/16 v9, 0x30

    if-eqz v5, :cond_c

    invoke-virtual {v11}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c

    iget v5, v2, Lʽʽ/ˈ;->ᵎﹶ:I

    invoke-static {v5, v3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v5

    and-int/lit8 v12, v5, 0x70

    if-eq v12, v9, :cond_9

    if-eq v12, v8, :cond_8

    goto :goto_5

    :cond_8
    iget v12, v10, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v13

    iget v4, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v10, Landroid/graphics/Rect;->bottom:I

    goto :goto_5

    :cond_9
    iget v4, v10, Landroid/graphics/Rect;->top:I

    iget v12, v11, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v10, Landroid/graphics/Rect;->top:I

    :goto_5
    and-int/lit8 v4, v5, 0x7

    if-eq v4, v7, :cond_b

    if-eq v4, v6, :cond_a

    goto :goto_6

    :cond_a
    iget v4, v10, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    iget v12, v11, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v12

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v10, Landroid/graphics/Rect;->right:I

    goto :goto_6

    :cond_b
    iget v4, v10, Landroid/graphics/Rect;->left:I

    iget v5, v11, Landroid/graphics/Rect;->right:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v10, Landroid/graphics/Rect;->left:I

    :cond_c
    :goto_6
    iget v2, v2, Lʽʽ/ˈ;->ᵔᵢ:I

    if-eqz v2, :cond_18

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_18

    sget-object v2, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-virtual {v14}, Landroid/view/View;->isLaidOut()Z

    move-result v2

    if-nez v2, :cond_d

    goto/16 :goto_a

    :cond_d
    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v2

    if-lez v2, :cond_18

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v2

    if-gtz v2, :cond_e

    goto/16 :goto_a

    :cond_e
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lʽʽ/ˈ;

    iget-object v4, v2, Lʽʽ/ˈ;->ﹳٴ:Lʽʽ/ﹳٴ;

    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᵎﹶ()Landroid/graphics/Rect;

    move-result-object v5

    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᵎﹶ()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v12, v13, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz v4, :cond_10

    invoke-virtual {v4, v14}, Lʽʽ/ﹳٴ;->ﹳٴ(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {v12, v5}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_f

    goto :goto_7

    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Rect should be within the child\'s bounds. Rect:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " | Bounds:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    invoke-virtual {v5, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_7
    invoke-virtual {v12}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {v15, v12}, Lˑٴ/ˈ;->ˑﹳ(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {v15, v5}, Lˑٴ/ˈ;->ˑﹳ(Ljava/lang/Object;)Z

    goto/16 :goto_a

    :cond_11
    iget v4, v2, Lʽʽ/ˈ;->ᵔᵢ:I

    invoke-static {v4, v3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v4

    and-int/lit8 v6, v4, 0x30

    if-ne v6, v9, :cond_12

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v6, v7

    iget v7, v2, Lʽʽ/ˈ;->ˆʾ:I

    sub-int/2addr v6, v7

    iget v7, v10, Landroid/graphics/Rect;->top:I

    if-ge v6, v7, :cond_12

    sub-int/2addr v7, v6

    invoke-static {v14, v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ʻٴ(Landroid/view/View;I)V

    const/4 v7, 0x1

    goto :goto_8

    :cond_12
    const/4 v7, 0x0

    :goto_8
    and-int/lit8 v6, v4, 0x50

    const/16 v8, 0x50

    if-ne v6, v8, :cond_13

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v8

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v6, v8

    iget v8, v2, Lʽʽ/ˈ;->ˆʾ:I

    add-int/2addr v6, v8

    iget v8, v10, Landroid/graphics/Rect;->bottom:I

    if-ge v6, v8, :cond_13

    sub-int/2addr v6, v8

    invoke-static {v14, v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ʻٴ(Landroid/view/View;I)V

    const/4 v7, 0x1

    :cond_13
    if-nez v7, :cond_14

    const/4 v6, 0x0

    invoke-static {v14, v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ʻٴ(Landroid/view/View;I)V

    :cond_14
    and-int/lit8 v6, v4, 0x3

    const/4 v7, 0x3

    if-ne v6, v7, :cond_15

    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v6, v7

    iget v7, v2, Lʽʽ/ˈ;->ʼˎ:I

    sub-int/2addr v6, v7

    iget v7, v10, Landroid/graphics/Rect;->left:I

    if-ge v6, v7, :cond_15

    sub-int/2addr v7, v6

    invoke-static {v14, v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ʽﹳ(Landroid/view/View;I)V

    const/4 v7, 0x1

    goto :goto_9

    :cond_15
    const/4 v7, 0x0

    :goto_9
    and-int/lit8 v4, v4, 0x5

    const/4 v6, 0x5

    if-ne v4, v6, :cond_16

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget v6, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v6

    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v4, v6

    iget v2, v2, Lʽʽ/ˈ;->ʼˎ:I

    add-int/2addr v4, v2

    iget v2, v10, Landroid/graphics/Rect;->right:I

    if-ge v4, v2, :cond_16

    sub-int/2addr v4, v2

    invoke-static {v14, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ʽﹳ(Landroid/view/View;I)V

    const/4 v7, 0x1

    :cond_16
    const/4 v6, 0x0

    if-nez v7, :cond_17

    invoke-static {v14, v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ʽﹳ(Landroid/view/View;I)V

    :cond_17
    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {v15, v5}, Lˑٴ/ˈ;->ˑﹳ(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_18
    :goto_a
    const/4 v6, 0x0

    :goto_b
    const/4 v2, 0x2

    if-eq v1, v2, :cond_1a

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lʽʽ/ˈ;

    iget-object v2, v2, Lʽʽ/ˈ;->ˉˆ:Landroid/graphics/Rect;

    move-object/from16 v4, v21

    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v4, v11}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    move-object/from16 v5, v17

    move/from16 v2, v19

    goto :goto_e

    :cond_19
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lʽʽ/ˈ;

    iget-object v2, v2, Lʽʽ/ˈ;->ˉˆ:Landroid/graphics/Rect;

    invoke-virtual {v2, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_c

    :cond_1a
    move-object/from16 v4, v21

    :goto_c
    add-int/lit8 v14, v20, 0x1

    move/from16 v2, v19

    :goto_d
    move-object/from16 v5, v17

    if-ge v14, v2, :cond_1c

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lʽʽ/ˈ;

    iget-object v8, v8, Lʽʽ/ˈ;->ﹳٴ:Lʽʽ/ﹳٴ;

    if-eqz v8, :cond_1b

    invoke-virtual {v8, v7}, Lʽʽ/ﹳٴ;->ⁱˊ(Landroid/view/View;)V

    :cond_1b
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v17, v5

    goto :goto_d

    :cond_1c
    :goto_e
    add-int/lit8 v14, v20, 0x1

    move v9, v2

    move-object v12, v4

    move-object v2, v5

    goto/16 :goto_0

    :cond_1d
    move-object v4, v12

    invoke-virtual {v10}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {v15, v10}, Lˑٴ/ˈ;->ˑﹳ(Ljava/lang/Object;)Z

    invoke-virtual {v11}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {v15, v11}, Lˑٴ/ˈ;->ˑﹳ(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {v15, v4}, Lˑٴ/ˈ;->ˑﹳ(Ljava/lang/Object;)Z

    return-void
.end method

.method public final ʽ(Landroid/view/View;II[II)V
    .locals 14

    .prologue
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    const/4 v9, 0x0

    move v0, v9

    move v10, v0

    move v11, v10

    move v12, v11

    :goto_0
    const/4 v13, 0x1

    if-ge v10, v8, :cond_5

    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    goto :goto_5

    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lʽʽ/ˈ;

    move/from16 v7, p5

    invoke-virtual {v3, v7}, Lʽʽ/ˈ;->ﹳٴ(I)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_5

    :cond_1
    iget-object v3, v3, Lʽʽ/ˈ;->ﹳٴ:Lʽʽ/ﹳٴ;

    if-eqz v3, :cond_4

    iget-object v6, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᴵᵔ:[I

    aput v9, v6, v9

    aput v9, v6, v13

    move-object v1, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move-object v0, v3

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lʽʽ/ﹳٴ;->ˆʾ(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V

    if-lez p2, :cond_2

    aget v0, v6, v9

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_1
    move v11, v0

    goto :goto_2

    :cond_2
    aget v0, v6, v9

    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    :goto_2
    if-lez p3, :cond_3

    aget v0, v6, v13

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_3
    move v12, v0

    goto :goto_4

    :cond_3
    aget v0, v6, v13

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_3

    :goto_4
    move v0, v13

    :cond_4
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_5
    aput v11, p4, v9

    aput v12, p4, v13

    if-eqz v0, :cond_6

    invoke-virtual {p0, v13}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ʼᐧ(I)V

    :cond_6
    return-void
.end method

.method public final ˆʾ(Landroid/view/View;)Ljava/util/ArrayList;
    .locals 5

    .prologue
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᴵˊ:Lˏˆ/ﹳٴ;

    iget-object v0, v0, Lˏˆ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Lיـ/ﹳᐧ;

    iget v1, v0, Lיـ/ﹳᐧ;->ʽʽ:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {v0, v3}, Lיـ/ﹳᐧ;->ˆʾ(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-virtual {v0, v3}, Lיـ/ﹳᐧ;->ﾞᴵ(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ˈٴ:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    if-eqz v2, :cond_3

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    return-object p1
.end method

.method public final ˈ(Landroid/view/View;IIIII[I)V
    .locals 14

    .prologue
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v1, p1, :cond_5

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_0

    move/from16 v13, p6

    goto :goto_3

    :cond_0
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lʽʽ/ˈ;

    move/from16 v13, p6

    invoke-virtual {v6, v13}, Lʽʽ/ˈ;->ﹳٴ(I)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_3

    :cond_1
    iget-object v6, v6, Lʽʽ/ˈ;->ﹳٴ:Lʽʽ/ﹳٴ;

    if-eqz v6, :cond_4

    iget-object v12, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᴵᵔ:[I

    aput v0, v12, v0

    aput v0, v12, v5

    move-object v7, p0

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-virtual/range {v6 .. v12}, Lʽʽ/ﹳٴ;->ٴﹶ(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III[I)V

    if-lez p4, :cond_2

    aget v4, v12, v0

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_1

    :cond_2
    aget v4, v12, v0

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_1
    if-lez p5, :cond_3

    aget v4, v12, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_2

    :cond_3
    aget v4, v12, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_2
    move v4, v5

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    aget p1, p7, v0

    add-int/2addr p1, v2

    aput p1, p7, v0

    aget p1, p7, v5

    add-int/2addr p1, v3

    aput p1, p7, v5

    if-eqz v4, :cond_6

    invoke-virtual {p0, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ʼᐧ(I)V

    :cond_6
    return-void
.end method

.method public final ˉʿ(I)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    const-string v1, "CoordinatorLayout"

    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᵎⁱ:[I

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No keylines defined for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " - attempted index lookup "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    return v0

    :cond_0
    if-ltz p1, :cond_2

    array-length v3, v2

    if-lt p1, v3, :cond_1

    goto :goto_0

    :cond_1
    aget p1, v2, p1

    return p1

    :cond_2
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Keyline index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " out of range for "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    return v0
.end method

.method public final ˉˆ(Landroid/view/View;II)Z
    .locals 2

    .prologue
    sget-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ˉـ:Lˑٴ/ˈ;

    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᵎﹶ()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ٴﹶ(Landroid/view/View;Landroid/graphics/Rect;)V

    :try_start_0
    invoke-virtual {v1, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {v0, v1}, Lˑٴ/ˈ;->ˑﹳ(Ljava/lang/Object;)Z

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {v0, v1}, Lˑٴ/ˈ;->ˑﹳ(Ljava/lang/Object;)Z

    throw p1
.end method

.method public final ˏי(Z)V
    .locals 13

    .prologue
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lʽʽ/ˈ;

    iget-object v4, v4, Lʽʽ/ˈ;->ﹳٴ:Lʽʽ/ﹳٴ;

    if-eqz v4, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x0

    move-wide v7, v5

    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v5

    if-eqz p1, :cond_0

    invoke-virtual {v4, p0, v3, v5}, Lʽʽ/ﹳٴ;->ﾞᴵ(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v4, v3, v5}, Lʽʽ/ﹳٴ;->ᵔﹳ(Landroid/view/View;Landroid/view/MotionEvent;)Z

    :goto_1
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_2
    if-ge p1, v0, :cond_3

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lʽʽ/ˈ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ٴʼ:Landroid/view/View;

    iput-boolean v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ٴᵢ:Z

    return-void
.end method

.method public final ˑﹳ(Landroid/view/View;IIIII)V
    .locals 8

    const/4 v6, 0x0

    iget-object v7, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ˊʻ:[I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ˈ(Landroid/view/View;IIIII[I)V

    return-void
.end method

.method public final יـ()V
    .locals 15

    .prologue
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ʾˋ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᴵˊ:Lˏˆ/ﹳٴ;

    iget-object v2, v1, Lˏˆ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v2, Lיـ/ﹳᐧ;

    iget-object v3, v1, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v3, Lʻٴ/ˈ;

    iget-object v4, v1, Lˏˆ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v4, Lיـ/ﹳᐧ;

    iget v5, v2, Lיـ/ﹳᐧ;->ʽʽ:I

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_1

    invoke-virtual {v2, v7}, Lיـ/ﹳᐧ;->ˆʾ(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v3, v8}, Lʻٴ/ˈ;->ˑﹳ(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lיـ/ﹳᐧ;->clear()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v5, v6

    :goto_1
    if-ge v5, v2, :cond_1b

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᵔʾ(Landroid/view/View;)Lʽʽ/ˈ;

    move-result-object v8

    iget v9, v8, Lʽʽ/ˈ;->ﾞᴵ:I

    const/4 v10, -0x1

    const/4 v11, 0x0

    if-ne v9, v10, :cond_2

    iput-object v11, v8, Lʽʽ/ˈ;->ﾞʻ:Landroid/view/View;

    iput-object v11, v8, Lʽʽ/ˈ;->ٴﹶ:Landroid/view/View;

    goto/16 :goto_6

    :cond_2
    iget-object v10, v8, Lʽʽ/ˈ;->ٴﹶ:Landroid/view/View;

    if-eqz v10, :cond_8

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v10

    if-eq v10, v9, :cond_3

    goto :goto_4

    :cond_3
    iget-object v10, v8, Lʽʽ/ˈ;->ٴﹶ:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    :goto_2
    if-eq v12, p0, :cond_7

    if-eqz v12, :cond_6

    if-ne v12, v7, :cond_4

    goto :goto_3

    :cond_4
    instance-of v13, v12, Landroid/view/View;

    if-eqz v13, :cond_5

    move-object v10, v12

    check-cast v10, Landroid/view/View;

    :cond_5
    invoke-interface {v12}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    goto :goto_2

    :cond_6
    :goto_3
    iput-object v11, v8, Lʽʽ/ˈ;->ﾞʻ:Landroid/view/View;

    iput-object v11, v8, Lʽʽ/ˈ;->ٴﹶ:Landroid/view/View;

    goto :goto_4

    :cond_7
    iput-object v10, v8, Lʽʽ/ˈ;->ﾞʻ:Landroid/view/View;

    goto :goto_6

    :cond_8
    :goto_4
    invoke-virtual {p0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, v8, Lʽʽ/ˈ;->ٴﹶ:Landroid/view/View;

    if-eqz v10, :cond_f

    if-ne v10, p0, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v9

    if-eqz v9, :cond_9

    iput-object v11, v8, Lʽʽ/ˈ;->ﾞʻ:Landroid/view/View;

    iput-object v11, v8, Lʽʽ/ˈ;->ٴﹶ:Landroid/view/View;

    goto :goto_6

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "View can not be anchored to the the parent CoordinatorLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    :goto_5
    if-eq v9, p0, :cond_e

    if-eqz v9, :cond_e

    if-ne v9, v7, :cond_c

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v9

    if-eqz v9, :cond_b

    iput-object v11, v8, Lʽʽ/ˈ;->ﾞʻ:Landroid/view/View;

    iput-object v11, v8, Lʽʽ/ˈ;->ٴﹶ:Landroid/view/View;

    goto :goto_6

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Anchor must not be a descendant of the anchored view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    instance-of v12, v9, Landroid/view/View;

    if-eqz v12, :cond_d

    move-object v10, v9

    check-cast v10, Landroid/view/View;

    :cond_d
    invoke-interface {v9}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    goto :goto_5

    :cond_e
    iput-object v10, v8, Lʽʽ/ˈ;->ﾞʻ:Landroid/view/View;

    goto :goto_6

    :cond_f
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v10

    if-eqz v10, :cond_1a

    iput-object v11, v8, Lʽʽ/ˈ;->ﾞʻ:Landroid/view/View;

    iput-object v11, v8, Lʽʽ/ˈ;->ٴﹶ:Landroid/view/View;

    :goto_6
    invoke-virtual {v4, v7}, Lיـ/ﹳᐧ;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_10

    invoke-virtual {v4, v7, v11}, Lיـ/ﹳᐧ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    move v9, v6

    :goto_7
    if-ge v9, v2, :cond_19

    if-ne v9, v5, :cond_11

    goto :goto_9

    :cond_11
    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    iget-object v12, v8, Lʽʽ/ˈ;->ﾞʻ:Landroid/view/View;

    if-eq v10, v12, :cond_13

    sget-object v12, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v12

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lʽʽ/ˈ;

    iget v13, v13, Lʽʽ/ˈ;->ᵎﹶ:I

    invoke-static {v13, v12}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v13

    if-eqz v13, :cond_12

    iget v14, v8, Lʽʽ/ˈ;->ᵔᵢ:I

    invoke-static {v14, v12}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v12

    and-int/2addr v12, v13

    if-ne v12, v13, :cond_12

    goto :goto_8

    :cond_12
    iget-object v10, v8, Lʽʽ/ˈ;->ﹳٴ:Lʽʽ/ﹳٴ;

    if-eqz v10, :cond_17

    invoke-virtual {v10, v7}, Lʽʽ/ﹳٴ;->ⁱˊ(Landroid/view/View;)V

    goto :goto_9

    :cond_13
    :goto_8
    invoke-virtual {v4, v10}, Lיـ/ﹳᐧ;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_14

    invoke-virtual {v4, v10}, Lיـ/ﹳᐧ;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_14

    invoke-virtual {v4, v10, v11}, Lיـ/ﹳᐧ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    invoke-virtual {v4, v10}, Lיـ/ﹳᐧ;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_18

    invoke-virtual {v4, v7}, Lיـ/ﹳᐧ;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_18

    invoke-virtual {v4, v10}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    if-nez v12, :cond_16

    invoke-virtual {v3}, Lʻٴ/ˈ;->ﾞᴵ()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    if-nez v12, :cond_15

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    :cond_15
    invoke-virtual {v4, v10, v12}, Lיـ/ﹳᐧ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    :goto_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "All nodes must be present in the graph before being added as an edge"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not find CoordinatorLayout descendant view with id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to anchor view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    iget-object v2, v1, Lˏˆ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v3, v1, Lˏˆ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    iget v5, v4, Lיـ/ﹳᐧ;->ʽʽ:I

    :goto_a
    if-ge v6, v5, :cond_1c

    invoke-virtual {v4, v6}, Lיـ/ﹳᐧ;->ﾞᴵ(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v7, v2, v3}, Lˏˆ/ﹳٴ;->ᵔʾ(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_1c
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-void
.end method

.method public final ـˆ()V
    .locals 1

    .prologue
    sget-object v0, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ˊˋ:Lﹳי/ʽ;

    if-nez v0, :cond_0

    new-instance v0, Lﹳי/ʽ;

    invoke-direct {v0, p0}, Lﹳי/ʽ;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ˊˋ:Lﹳי/ʽ;

    :cond_0
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ˊˋ:Lﹳי/ʽ;

    invoke-static {p0, v0}, Lˋᵔ/ʽʽ;->ˆʾ(Landroid/view/View;Lˋᵔ/ˉˆ;)V

    const/16 v0, 0x500

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lˋᵔ/ʽʽ;->ˆʾ(Landroid/view/View;Lˋᵔ/ˉˆ;)V

    return-void
.end method

.method public final ٴﹶ(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    sget-object v0, Lʽʽ/ᵎﹶ;->ﹳٴ:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v0, Lʽʽ/ᵎﹶ;->ﹳٴ:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Matrix;

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    :goto_0
    invoke-static {p0, p1, v1}, Lʽʽ/ᵎﹶ;->ﹳٴ(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Matrix;)V

    sget-object p1, Lʽʽ/ᵎﹶ;->ⁱˊ:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget p1, v0, Landroid/graphics/RectF;->left:F

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p1, v1

    float-to-int p1, p1

    iget v2, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v1

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v1

    float-to-int v3, v3

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p2, p1, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public final ᵔᵢ(Lʽʽ/ˈ;Landroid/graphics/Rect;II)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v0, v4

    sub-int/2addr v0, p3

    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v0, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v1, v4

    sub-int/2addr v1, p4

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v1, p1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p3, v0

    add-int/2addr p4, p1

    invoke-virtual {p2, v0, p1, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public final ᵔﹳ(Landroid/view/View;I)V
    .locals 12

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lʽʽ/ˈ;

    iget-object v1, v0, Lʽʽ/ˈ;->ٴﹶ:Landroid/view/View;

    if-nez v1, :cond_1

    iget v2, v0, Lʽʽ/ˈ;->ﾞᴵ:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    sget-object v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ˉـ:Lˑٴ/ˈ;

    if-eqz v1, :cond_2

    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᵎﹶ()Landroid/graphics/Rect;

    move-result-object v4

    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᵎﹶ()Landroid/graphics/Rect;

    move-result-object v5

    :try_start_0
    invoke-virtual {p0, v1, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ٴﹶ(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lʽʽ/ˈ;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    move v3, p2

    invoke-static/range {v3 .. v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ﾞʻ(ILandroid/graphics/Rect;Landroid/graphics/Rect;Lʽʽ/ˈ;II)V

    invoke-virtual {p0, v6, v5, v7, v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᵔᵢ(Lʽʽ/ˈ;Landroid/graphics/Rect;II)V

    iget p2, v5, Landroid/graphics/Rect;->left:I

    iget v0, v5, Landroid/graphics/Rect;->top:I

    iget v1, v5, Landroid/graphics/Rect;->right:I

    iget v3, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p2, v0, v1, v3}, Landroid/view/View;->layout(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {v2, v4}, Lˑٴ/ˈ;->ˑﹳ(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {v2, v5}, Lˑٴ/ˈ;->ˑﹳ(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {v2, v4}, Lˑٴ/ˈ;->ˑﹳ(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {v2, v5}, Lˑٴ/ˈ;->ˑﹳ(Ljava/lang/Object;)Z

    throw p1

    :cond_2
    move v3, p2

    iget p2, v0, Lʽʽ/ˈ;->ˑﹳ:I

    if-ltz p2, :cond_9

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lʽʽ/ˈ;

    iget v1, v0, Lʽʽ/ˈ;->ʽ:I

    if-nez v1, :cond_3

    const v1, 0x800035

    :cond_3
    invoke-static {v1, v3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    and-int/lit8 v2, v1, 0x7

    and-int/lit8 v1, v1, 0x70

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    const/4 v8, 0x1

    if-ne v3, v8, :cond_4

    sub-int p2, v4, p2

    :cond_4
    invoke-virtual {p0, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ˉʿ(I)I

    move-result p2

    sub-int/2addr p2, v6

    if-eq v2, v8, :cond_6

    const/4 v3, 0x5

    if-eq v2, v3, :cond_5

    goto :goto_1

    :cond_5
    add-int/2addr p2, v6

    goto :goto_1

    :cond_6
    div-int/lit8 v2, v6, 0x2

    add-int/2addr p2, v2

    :goto_1
    const/16 v2, 0x10

    if-eq v1, v2, :cond_8

    const/16 v2, 0x50

    if-eq v1, v2, :cond_7

    const/4 v1, 0x0

    goto :goto_2

    :cond_7
    move v1, v7

    goto :goto_2

    :cond_8
    div-int/lit8 v1, v7, 0x2

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v4, v3

    sub-int/2addr v4, v6

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v4, v3

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v5, v3

    sub-int/2addr v5, v7

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v5, v0

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v6, p2

    add-int/2addr v7, v0

    invoke-virtual {p1, p2, v0, v6, v7}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lʽʽ/ˈ;

    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᵎﹶ()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget v4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v5, v6

    invoke-virtual {v9, v0, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᵔٴ:Lˋᵔ/ᐧﹶ;

    if-eqz v0, :cond_a

    sget-object v0, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v0

    if-nez v0, :cond_a

    iget v0, v9, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᵔٴ:Lˋᵔ/ᐧﹶ;

    invoke-virtual {v1}, Lˋᵔ/ᐧﹶ;->ⁱˊ()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, v9, Landroid/graphics/Rect;->left:I

    iget v0, v9, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᵔٴ:Lˋᵔ/ᐧﹶ;

    invoke-virtual {v1}, Lˋᵔ/ᐧﹶ;->ˈ()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, v9, Landroid/graphics/Rect;->top:I

    iget v0, v9, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᵔٴ:Lˋᵔ/ᐧﹶ;

    invoke-virtual {v1}, Lˋᵔ/ᐧﹶ;->ʽ()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, v9, Landroid/graphics/Rect;->right:I

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᵔٴ:Lˋᵔ/ᐧﹶ;

    invoke-virtual {v1}, Lˋᵔ/ᐧﹶ;->ﹳٴ()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    :cond_a
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᵎﹶ()Landroid/graphics/Rect;

    move-result-object v10

    iget p2, p2, Lʽʽ/ˈ;->ʽ:I

    and-int/lit8 v0, p2, 0x7

    if-nez v0, :cond_b

    const v0, 0x800003

    or-int/2addr p2, v0

    :cond_b
    and-int/lit8 v0, p2, 0x70

    if-nez v0, :cond_c

    or-int/lit8 p2, p2, 0x30

    :cond_c
    move v6, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    move v11, v3

    invoke-static/range {v6 .. v11}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    iget p2, v10, Landroid/graphics/Rect;->left:I

    iget v0, v10, Landroid/graphics/Rect;->top:I

    iget v1, v10, Landroid/graphics/Rect;->right:I

    iget v3, v10, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p2, v0, v1, v3}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v9}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {v2, v9}, Lˑٴ/ˈ;->ˑﹳ(Ljava/lang/Object;)Z

    invoke-virtual {v10}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {v2, v10}, Lˑٴ/ˈ;->ˑﹳ(Ljava/lang/Object;)Z

    return-void
.end method

.method public final ⁱˊ(Landroid/view/View;I)V
    .locals 7

    .prologue
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ʼˈ:Lʻʿ/ˉˆ;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    iput v1, v0, Lʻʿ/ˉˆ;->ⁱˊ:I

    goto :goto_0

    :cond_0
    iput v1, v0, Lʻʿ/ˉˆ;->ﹳٴ:I

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_5

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lʽʽ/ˈ;

    invoke-virtual {v5, p2}, Lʽʽ/ˈ;->ﹳٴ(I)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    iget-object v6, v5, Lʽʽ/ˈ;->ﹳٴ:Lʽʽ/ﹳٴ;

    if-eqz v6, :cond_2

    invoke-virtual {v6, v4, p1, p2}, Lʽʽ/ﹳٴ;->ʼᐧ(Landroid/view/View;Landroid/view/View;I)V

    :cond_2
    if-eqz p2, :cond_4

    if-eq p2, v2, :cond_3

    goto :goto_2

    :cond_3
    iput-boolean v1, v5, Lʽʽ/ˈ;->ᵔʾ:Z

    goto :goto_2

    :cond_4
    iput-boolean v1, v5, Lʽʽ/ˈ;->ˉʿ:Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᵎˊ:Landroid/view/View;

    return-void
.end method

.method public final ﹳٴ(Landroid/view/View;Landroid/view/View;II)V
    .locals 1

    .prologue
    const/4 p1, 0x1

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ʼˈ:Lʻʿ/ˉˆ;

    if-ne p4, p1, :cond_0

    iput p3, v0, Lʻʿ/ˉˆ;->ⁱˊ:I

    goto :goto_0

    :cond_0
    iput p3, v0, Lʻʿ/ˉˆ;->ﹳٴ:I

    :goto_0
    iput-object p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᵎˊ:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_1
    if-ge p2, p1, :cond_1

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Lʽʽ/ˈ;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final ﹳᐧ(Landroid/view/MotionEvent;I)Z
    .locals 20

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    iget-object v4, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ʽʽ:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v5

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/lit8 v7, v6, -0x1

    :goto_0
    if-ltz v7, :cond_1

    if-eqz v5, :cond_0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v8

    goto :goto_1

    :cond_0
    move v8, v7

    :goto_1
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    :cond_1
    sget-object v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ᴵˑ:Lʻٴ/ˑﹳ;

    if-eqz v5, :cond_2

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, v7

    move v7, v6

    :goto_2
    if-ge v6, v5, :cond_b

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lʽʽ/ˈ;

    iget-object v10, v10, Lʽʽ/ˈ;->ﹳٴ:Lʽʽ/ﹳٴ;

    const/4 v11, 0x1

    if-nez v7, :cond_3

    goto :goto_3

    :cond_3
    if-eqz v3, :cond_7

    if-eqz v10, :cond_a

    if-nez v8, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v16, 0x3

    const/16 v17, 0x0

    move-wide v14, v12

    invoke-static/range {v12 .. v19}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    :cond_4
    if-eqz v2, :cond_6

    if-eq v2, v11, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v10, v9, v8}, Lʽʽ/ﹳٴ;->ᵔﹳ(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_5

    :cond_6
    invoke-virtual {v10, v0, v9, v8}, Lʽʽ/ﹳٴ;->ﾞᴵ(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_5

    :cond_7
    :goto_3
    if-nez v7, :cond_a

    if-eqz v10, :cond_a

    if-eqz v2, :cond_9

    if-eq v2, v11, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v10, v9, v1}, Lʽʽ/ﹳٴ;->ᵔﹳ(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v7

    goto :goto_4

    :cond_9
    invoke-virtual {v10, v0, v9, v1}, Lʽʽ/ﹳٴ;->ﾞᴵ(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v7

    :goto_4
    if-eqz v7, :cond_a

    iput-object v9, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ٴʼ:Landroid/view/View;

    :cond_a
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_b
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    return v7
.end method

.method public final ﾞᴵ(Landroid/view/View;Landroid/view/View;II)Z
    .locals 6

    .prologue
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    move v0, p2

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_6

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lʽʽ/ˈ;

    iget-object v4, v3, Lʽʽ/ˈ;->ﹳٴ:Lʽʽ/ﹳٴ;

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    invoke-virtual {v4, v2, p3, p4}, Lʽʽ/ﹳٴ;->ˉˆ(Landroid/view/View;II)Z

    move-result v2

    or-int/2addr v1, v2

    if-eqz p4, :cond_2

    if-eq p4, v5, :cond_1

    goto :goto_1

    :cond_1
    iput-boolean v2, v3, Lʽʽ/ˈ;->ᵔʾ:Z

    goto :goto_1

    :cond_2
    iput-boolean v2, v3, Lʽʽ/ˈ;->ˉʿ:Z

    goto :goto_1

    :cond_3
    if-eqz p4, :cond_5

    if-eq p4, v5, :cond_4

    goto :goto_1

    :cond_4
    iput-boolean p2, v3, Lʽʽ/ˈ;->ᵔʾ:Z

    goto :goto_1

    :cond_5
    iput-boolean p2, v3, Lʽʽ/ˈ;->ˉʿ:Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    return v1
.end method
