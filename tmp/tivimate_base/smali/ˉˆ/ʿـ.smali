.class public Lˉˆ/ʿـ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᵔʾ/ʼʼ;


# static fields
.field public static final ᐧᴵ:Ljava/lang/reflect/Method;

.field public static final ᐧﾞ:Ljava/lang/reflect/Method;

.field public static final ᵎᵔ:Ljava/lang/reflect/Method;


# instance fields
.field public final ʼˈ:Lˉˆ/ᵎʿ;

.field public ʽʽ:Lˉˆ/ʾˊ;

.field public final ʾˋ:Landroid/content/Context;

.field public ʿ:Z

.field public final ʿᵢ:Lˉˆ/ᵢˏ;

.field public final ˆﾞ:I

.field public ˈʿ:Landroid/view/View;

.field public final ˈٴ:I

.field public final ˈⁱ:Landroid/os/Handler;

.field public ˉـ:Landroid/graphics/Rect;

.field public final ˉٴ:I

.field public ˊʻ:I

.field public final ˊˋ:Lˉˆ/ᐧˎ;

.field public ˋᵔ:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public ˑٴ:Landroid/widget/AdapterView$OnItemClickListener;

.field public final ـˏ:Lˉˆ/ـˊ;

.field public ٴʼ:Z

.field public ٴᵢ:I

.field public ᴵˊ:Landroid/widget/ListAdapter;

.field public final ᴵˑ:Landroid/graphics/Rect;

.field public ᴵᵔ:I

.field public ᵎˊ:Z

.field public ᵎⁱ:Z

.field public ᵔי:I

.field public ᵔٴ:Lˉˆ/ʻᴵ;

.field public final ﹳـ:Lˉˆ/ᐧˎ;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x0

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v5, "ListPopupWindow"

    const-class v6, Landroid/widget/PopupWindow;

    if-gt v0, v1, :cond_0

    :try_start_0
    const-string v0, "setClipToScreenEnabled"

    new-array v1, v3, [Ljava/lang/Class;

    aput-object v4, v1, v2

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lˉˆ/ʿـ;->ᵎᵔ:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well."

    nop

    :goto_0
    :try_start_1
    const-string v0, "setEpicenterBounds"

    new-array v1, v3, [Ljava/lang/Class;

    const-class v7, Landroid/graphics/Rect;

    aput-object v7, v1, v2

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lˉˆ/ʿـ;->ᐧᴵ:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string v0, "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well."

    nop

    :cond_0
    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_1

    :try_start_2
    const-string v0, "getMaxAvailableHeight"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const-class v7, Landroid/view/View;

    aput-object v7, v1, v2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object v4, v1, v2

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lˉˆ/ʿـ;->ᐧﾞ:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    const-string v0, "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well."

    nop

    :cond_1
    :goto_2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Lˉˆ/ʿـ;->ˈٴ:I

    iput v0, p0, Lˉˆ/ʿـ;->ᴵᵔ:I

    const/16 v0, 0x3ea

    iput v0, p0, Lˉˆ/ʿـ;->ˉٴ:I

    const/4 v0, 0x0

    iput v0, p0, Lˉˆ/ʿـ;->ᵔי:I

    const v1, 0x7fffffff

    iput v1, p0, Lˉˆ/ʿـ;->ˆﾞ:I

    new-instance v1, Lˉˆ/ᐧˎ;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lˉˆ/ᐧˎ;-><init>(Lˉˆ/ʿـ;I)V

    iput-object v1, p0, Lˉˆ/ʿـ;->ˊˋ:Lˉˆ/ᐧˎ;

    new-instance v1, Lˉˆ/ᵎʿ;

    invoke-direct {v1, p0}, Lˉˆ/ᵎʿ;-><init>(Lˉˆ/ʿـ;)V

    iput-object v1, p0, Lˉˆ/ʿـ;->ʼˈ:Lˉˆ/ᵎʿ;

    new-instance v1, Lˉˆ/ـˊ;

    invoke-direct {v1, p0}, Lˉˆ/ـˊ;-><init>(Lˉˆ/ʿـ;)V

    iput-object v1, p0, Lˉˆ/ʿـ;->ـˏ:Lˉˆ/ـˊ;

    new-instance v1, Lˉˆ/ᐧˎ;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lˉˆ/ᐧˎ;-><init>(Lˉˆ/ʿـ;I)V

    iput-object v1, p0, Lˉˆ/ʿـ;->ﹳـ:Lˉˆ/ᐧˎ;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lˉˆ/ʿـ;->ᴵˑ:Landroid/graphics/Rect;

    iput-object p1, p0, Lˉˆ/ʿـ;->ʾˋ:Landroid/content/Context;

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lˉˆ/ʿـ;->ˈⁱ:Landroid/os/Handler;

    sget-object v1, Lᵎﹶ/ﹳٴ;->ˉˆ:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lˉˆ/ʿـ;->ˊʻ:I

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Lˉˆ/ʿـ;->ٴᵢ:I

    if-eqz v3, :cond_0

    iput-boolean v2, p0, Lˉˆ/ʿـ;->ᵎⁱ:Z

    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v1, Lˉˆ/ᵢˏ;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v3, Lᵎﹶ/ﹳٴ;->יـ:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {v1, p3}, Landroid/widget/PopupWindow;->setOverlapAnchor(Z)V

    :cond_1
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eqz p3, :cond_2

    invoke-static {p1, p3}, Lᴵˋ/ˊʻ;->ﹳᐧ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    iput-object v1, p0, Lˉˆ/ʿـ;->ʿᵢ:Lˉˆ/ᵢˏ;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 2

    iget-object v0, p0, Lˉˆ/ʿـ;->ʿᵢ:Lˉˆ/ᵢˏ;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iput-object v1, p0, Lˉˆ/ʿـ;->ʽʽ:Lˉˆ/ʾˊ;

    iget-object v0, p0, Lˉˆ/ʿـ;->ˈⁱ:Landroid/os/Handler;

    iget-object v1, p0, Lˉˆ/ʿـ;->ˊˋ:Lˉˆ/ᐧˎ;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final ʼˎ(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lˉˆ/ʿـ;->ʿᵢ:Lˉˆ/ᵢˏ;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public ʼᐧ(Landroid/widget/ListAdapter;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lˉˆ/ʿـ;->ᵔٴ:Lˉˆ/ʻᴵ;

    if-nez v0, :cond_0

    new-instance v0, Lˉˆ/ʻᴵ;

    invoke-direct {v0, p0}, Lˉˆ/ʻᴵ;-><init>(Lˉˆ/ʿـ;)V

    iput-object v0, p0, Lˉˆ/ʿـ;->ᵔٴ:Lˉˆ/ʻᴵ;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lˉˆ/ʿـ;->ᴵˊ:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    :goto_0
    iput-object p1, p0, Lˉˆ/ʿـ;->ᴵˊ:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lˉˆ/ʿـ;->ᵔٴ:Lˉˆ/ʻᴵ;

    invoke-interface {p1, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_2
    iget-object p1, p0, Lˉˆ/ʿـ;->ʽʽ:Lˉˆ/ʾˊ;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lˉˆ/ʿـ;->ᴵˊ:Landroid/widget/ListAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_3
    return-void
.end method

.method public final ʽ()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lˉˆ/ʿـ;->ʿᵢ:Lˉˆ/ᵢˏ;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final ˆʾ(I)V
    .locals 0

    iput p1, p0, Lˉˆ/ʿـ;->ٴᵢ:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lˉˆ/ʿـ;->ᵎⁱ:Z

    return-void
.end method

.method public final ˑﹳ()V
    .locals 14

    .prologue
    iget-object v0, p0, Lˉˆ/ʿـ;->ʽʽ:Lˉˆ/ʾˊ;

    iget-object v1, p0, Lˉˆ/ʿـ;->ʾˋ:Landroid/content/Context;

    const/4 v2, 0x1

    iget-object v3, p0, Lˉˆ/ʿـ;->ʿᵢ:Lˉˆ/ᵢˏ;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lˉˆ/ʿـ;->ʿ:Z

    xor-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Lˉˆ/ʿـ;->ᵔﹳ(Landroid/content/Context;Z)Lˉˆ/ʾˊ;

    move-result-object v0

    iput-object v0, p0, Lˉˆ/ʿـ;->ʽʽ:Lˉˆ/ʾˊ;

    iget-object v4, p0, Lˉˆ/ʿـ;->ᴵˊ:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lˉˆ/ʿـ;->ʽʽ:Lˉˆ/ʾˊ;

    iget-object v4, p0, Lˉˆ/ʿـ;->ˑٴ:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lˉˆ/ʿـ;->ʽʽ:Lˉˆ/ʾˊ;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lˉˆ/ʿـ;->ʽʽ:Lˉˆ/ʾˊ;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lˉˆ/ʿـ;->ʽʽ:Lˉˆ/ʾˊ;

    new-instance v4, Lʻᐧ/ⁱˊ;

    invoke-direct {v4, v2, p0}, Lʻᐧ/ⁱˊ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v4}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lˉˆ/ʿـ;->ʽʽ:Lˉˆ/ʾˊ;

    iget-object v4, p0, Lˉˆ/ʿـ;->ـˏ:Lˉˆ/ـˊ;

    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lˉˆ/ʿـ;->ˋᵔ:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_0

    iget-object v4, p0, Lˉˆ/ʿـ;->ʽʽ:Lˉˆ/ʾˊ;

    invoke-virtual {v4, v0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_0
    iget-object v0, p0, Lˉˆ/ʿـ;->ʽʽ:Lˉˆ/ʾˊ;

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :goto_0
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v4, p0, Lˉˆ/ʿـ;->ᴵˑ:Landroid/graphics/Rect;

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v0, v4, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v0

    iget-boolean v7, p0, Lˉˆ/ʿـ;->ᵎⁱ:Z

    if-nez v7, :cond_3

    neg-int v0, v0

    iput v0, p0, Lˉˆ/ʿـ;->ٴᵢ:I

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    move v6, v5

    :cond_3
    :goto_1
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v7, 0x2

    if-ne v0, v7, :cond_4

    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v5

    :goto_2
    iget-object v8, p0, Lˉˆ/ʿـ;->ˈʿ:Landroid/view/View;

    iget v9, p0, Lˉˆ/ʿـ;->ٴᵢ:I

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x17

    const-string v12, "ListPopupWindow"

    if-gt v10, v11, :cond_6

    sget-object v10, Lˉˆ/ʿـ;->ᐧﾞ:Ljava/lang/reflect/Method;

    if-eqz v10, :cond_5

    :try_start_0
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v8, v13, v5

    aput-object v11, v13, v2

    aput-object v0, v13, v7

    invoke-virtual {v10, v3, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const-string v0, "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version."

    nop

    :cond_5
    invoke-virtual {v3, v8, v9}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v0

    goto :goto_3

    :cond_6
    invoke-static {v3, v8, v9, v0}, Lˉˆ/ʾﾞ;->ﹳٴ(Landroid/widget/PopupWindow;Landroid/view/View;IZ)I

    move-result v0

    :goto_3
    iget v8, p0, Lˉˆ/ʿـ;->ˈٴ:I

    const/4 v9, -0x2

    const/4 v10, -0x1

    if-ne v8, v10, :cond_7

    add-int/2addr v0, v6

    goto :goto_6

    :cond_7
    iget v11, p0, Lˉˆ/ʿـ;->ᴵᵔ:I

    if-eq v11, v9, :cond_9

    const/high16 v13, 0x40000000    # 2.0f

    if-eq v11, v10, :cond_8

    invoke-static {v11, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_4

    :cond_8
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v11, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v4

    sub-int/2addr v1, v11

    invoke-static {v1, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_4

    :cond_9
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v11, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v4

    sub-int/2addr v1, v11

    const/high16 v4, -0x80000000

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_4
    iget-object v4, p0, Lˉˆ/ʿـ;->ʽʽ:Lˉˆ/ʾˊ;

    invoke-virtual {v4, v1, v0}, Lˉˆ/ʾˊ;->ﹳٴ(II)I

    move-result v0

    if-lez v0, :cond_a

    iget-object v1, p0, Lˉˆ/ʿـ;->ʽʽ:Lˉˆ/ʾˊ;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-object v4, p0, Lˉˆ/ʿـ;->ʽʽ:Lˉˆ/ʾˊ;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int/2addr v4, v1

    add-int/2addr v4, v6

    goto :goto_5

    :cond_a
    move v4, v5

    :goto_5
    add-int/2addr v0, v4

    :goto_6
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v1

    if-ne v1, v7, :cond_b

    move v1, v2

    goto :goto_7

    :cond_b
    move v1, v5

    :goto_7
    iget v4, p0, Lˉˆ/ʿـ;->ˉٴ:I

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_17

    iget-object v4, p0, Lˉˆ/ʿـ;->ˈʿ:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v4

    if-nez v4, :cond_c

    goto/16 :goto_11

    :cond_c
    iget v4, p0, Lˉˆ/ʿـ;->ᴵᵔ:I

    if-ne v4, v10, :cond_d

    move v4, v10

    goto :goto_8

    :cond_d
    if-ne v4, v9, :cond_e

    iget-object v4, p0, Lˉˆ/ʿـ;->ˈʿ:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    :cond_e
    :goto_8
    if-ne v8, v10, :cond_13

    if-eqz v1, :cond_f

    move v8, v0

    goto :goto_9

    :cond_f
    move v8, v10

    :goto_9
    if-eqz v1, :cond_11

    iget v0, p0, Lˉˆ/ʿـ;->ᴵᵔ:I

    if-ne v0, v10, :cond_10

    move v0, v10

    goto :goto_a

    :cond_10
    move v0, v5

    :goto_a
    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_b

    :cond_11
    iget v0, p0, Lˉˆ/ʿـ;->ᴵᵔ:I

    if-ne v0, v10, :cond_12

    move v5, v10

    :cond_12
    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v3, v10}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_b

    :cond_13
    if-ne v8, v9, :cond_14

    move v8, v0

    :cond_14
    :goto_b
    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    move v0, v4

    iget-object v4, p0, Lˉˆ/ʿـ;->ˈʿ:Landroid/view/View;

    iget v5, p0, Lˉˆ/ʿـ;->ˊʻ:I

    iget v6, p0, Lˉˆ/ʿـ;->ٴᵢ:I

    if-gez v0, :cond_15

    move v7, v10

    goto :goto_c

    :cond_15
    move v7, v0

    :goto_c
    if-gez v8, :cond_16

    move v8, v10

    :cond_16
    invoke-virtual/range {v3 .. v8}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    goto/16 :goto_11

    :cond_17
    iget v1, p0, Lˉˆ/ʿـ;->ᴵᵔ:I

    if-ne v1, v10, :cond_18

    move v1, v10

    goto :goto_d

    :cond_18
    if-ne v1, v9, :cond_19

    iget-object v1, p0, Lˉˆ/ʿـ;->ˈʿ:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    :cond_19
    :goto_d
    if-ne v8, v10, :cond_1a

    move v8, v10

    goto :goto_e

    :cond_1a
    if-ne v8, v9, :cond_1b

    move v8, v0

    :cond_1b
    :goto_e
    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v3, v8}, Landroid/widget/PopupWindow;->setHeight(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_1c

    sget-object v0, Lˉˆ/ʿـ;->ᵎᵔ:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1d

    :try_start_1
    new-array v4, v2, [Ljava/lang/Object;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_f

    :catch_1
    const-string v0, "Could not call setClipToScreenEnabled() on PopupWindow. Oh well."

    nop

    goto :goto_f

    :cond_1c
    invoke-static {v3, v2}, Lˉˆ/ⁱˉ;->ⁱˊ(Landroid/widget/PopupWindow;Z)V

    :cond_1d
    :goto_f
    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lˉˆ/ʿـ;->ʼˈ:Lˉˆ/ᵎʿ;

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    iget-boolean v0, p0, Lˉˆ/ʿـ;->ᵎˊ:Z

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lˉˆ/ʿـ;->ٴʼ:Z

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setOverlapAnchor(Z)V

    :cond_1e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v1, :cond_1f

    sget-object v0, Lˉˆ/ʿـ;->ᐧᴵ:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_20

    :try_start_2
    iget-object v1, p0, Lˉˆ/ʿـ;->ˉـ:Landroid/graphics/Rect;

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_10

    :catch_2
    move-exception v0

    const-string v1, "Could not invoke setEpicenterBounds on PopupWindow"

    nop

    goto :goto_10

    :cond_1f
    iget-object v0, p0, Lˉˆ/ʿـ;->ˉـ:Landroid/graphics/Rect;

    invoke-static {v3, v0}, Lˉˆ/ⁱˉ;->ﹳٴ(Landroid/widget/PopupWindow;Landroid/graphics/Rect;)V

    :cond_20
    :goto_10
    iget-object v0, p0, Lˉˆ/ʿـ;->ˈʿ:Landroid/view/View;

    iget v1, p0, Lˉˆ/ʿـ;->ˊʻ:I

    iget v4, p0, Lˉˆ/ʿـ;->ٴᵢ:I

    iget v5, p0, Lˉˆ/ʿـ;->ᵔי:I

    invoke-virtual {v3, v0, v1, v4, v5}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    iget-object v0, p0, Lˉˆ/ʿـ;->ʽʽ:Lˉˆ/ʾˊ;

    invoke-virtual {v0, v10}, Landroid/widget/AdapterView;->setSelection(I)V

    iget-boolean v0, p0, Lˉˆ/ʿـ;->ʿ:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lˉˆ/ʿـ;->ʽʽ:Lˉˆ/ʾˊ;

    invoke-virtual {v0}, Lˉˆ/ʾˊ;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_21
    iget-object v0, p0, Lˉˆ/ʿـ;->ʽʽ:Lˉˆ/ʾˊ;

    if-eqz v0, :cond_22

    invoke-virtual {v0, v2}, Lˉˆ/ʾˊ;->setListSelectionHidden(Z)V

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_22
    iget-boolean v0, p0, Lˉˆ/ʿـ;->ʿ:Z

    if-nez v0, :cond_23

    iget-object v0, p0, Lˉˆ/ʿـ;->ˈⁱ:Landroid/os/Handler;

    iget-object v1, p0, Lˉˆ/ʿـ;->ﹳـ:Lˉˆ/ᐧˎ;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_23
    :goto_11
    return-void
.end method

.method public final ᵔʾ()I
    .locals 1

    .prologue
    iget-boolean v0, p0, Lˉˆ/ʿـ;->ᵎⁱ:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lˉˆ/ʿـ;->ٴᵢ:I

    return v0
.end method

.method public ᵔﹳ(Landroid/content/Context;Z)Lˉˆ/ʾˊ;
    .locals 1

    new-instance v0, Lˉˆ/ʾˊ;

    invoke-direct {v0, p1, p2}, Lˉˆ/ʾˊ;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public final ⁱˊ()I
    .locals 1

    iget v0, p0, Lˉˆ/ʿـ;->ˊʻ:I

    return v0
.end method

.method public final ﹳٴ()Z
    .locals 1

    iget-object v0, p0, Lˉˆ/ʿـ;->ʿᵢ:Lˉˆ/ᵢˏ;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public final ﹳᐧ(I)V
    .locals 2

    .prologue
    iget-object v0, p0, Lˉˆ/ʿـ;->ʿᵢ:Lˉˆ/ᵢˏ;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lˉˆ/ʿـ;->ᴵˑ:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v0, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lˉˆ/ʿـ;->ᴵᵔ:I

    return-void

    :cond_0
    iput p1, p0, Lˉˆ/ʿـ;->ᴵᵔ:I

    return-void
.end method

.method public final ﾞʻ(I)V
    .locals 0

    iput p1, p0, Lˉˆ/ʿـ;->ˊʻ:I

    return-void
.end method

.method public final ﾞᴵ()Lˉˆ/ʾˊ;
    .locals 1

    iget-object v0, p0, Lˉˆ/ʿـ;->ʽʽ:Lˉˆ/ʾˊ;

    return-object v0
.end method
