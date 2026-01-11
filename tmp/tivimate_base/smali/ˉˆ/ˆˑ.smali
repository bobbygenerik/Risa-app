.class public final Lˉˆ/ˆˑ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# static fields
.field public static ᵎˊ:Lˉˆ/ˆˑ;

.field public static ᵔי:Lˉˆ/ˆˑ;


# instance fields
.field public final ʽʽ:I

.field public final ʾˋ:Landroid/view/View;

.field public final ˈٴ:Lˉˆ/ʽʾ;

.field public ˉٴ:Lˉˆ/ˎـ;

.field public ˊʻ:I

.field public ٴʼ:Z

.field public ٴᵢ:I

.field public final ᴵˊ:Ljava/lang/CharSequence;

.field public final ᴵᵔ:Lˉˆ/ʽʾ;

.field public ᵎⁱ:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lˉˆ/ʽʾ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lˉˆ/ʽʾ;-><init>(Lˉˆ/ˆˑ;I)V

    iput-object v0, p0, Lˉˆ/ˆˑ;->ˈٴ:Lˉˆ/ʽʾ;

    new-instance v0, Lˉˆ/ʽʾ;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lˉˆ/ʽʾ;-><init>(Lˉˆ/ˆˑ;I)V

    iput-object v0, p0, Lˉˆ/ˆˑ;->ᴵᵔ:Lˉˆ/ʽʾ;

    iput-object p1, p0, Lˉˆ/ˆˑ;->ʾˋ:Landroid/view/View;

    iput-object p2, p0, Lˉˆ/ˆˑ;->ᴵˊ:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    sget-object v0, Lˋᵔ/ᵔי;->ﹳٴ:Ljava/lang/reflect/Method;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_0

    invoke-static {p2}, Lʼᐧ/ʽ;->ٴﹶ(Landroid/view/ViewConfiguration;)I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    :goto_0
    iput p2, p0, Lˉˆ/ˆˑ;->ʽʽ:I

    iput-boolean v1, p0, Lˉˆ/ˆˑ;->ٴʼ:Z

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method public static ⁱˊ(Lˉˆ/ˆˑ;)V
    .locals 3

    .prologue
    sget-object v0, Lˉˆ/ˆˑ;->ᵎˊ:Lˉˆ/ˆˑ;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lˉˆ/ˆˑ;->ʾˋ:Landroid/view/View;

    iget-object v0, v0, Lˉˆ/ˆˑ;->ˈٴ:Lˉˆ/ʽʾ;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    sput-object p0, Lˉˆ/ˆˑ;->ᵎˊ:Lˉˆ/ˆˑ;

    if-eqz p0, :cond_1

    iget-object v0, p0, Lˉˆ/ˆˑ;->ʾˋ:Landroid/view/View;

    iget-object p0, p0, Lˉˆ/ˆˑ;->ˈٴ:Lˉˆ/ʽʾ;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public final onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    iget-object p1, p0, Lˉˆ/ˆˑ;->ˉٴ:Lˉˆ/ˎـ;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lˉˆ/ˆˑ;->ᵎⁱ:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lˉˆ/ˆˑ;->ʾˋ:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_3

    const/16 p1, 0xa

    if-eq v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lˉˆ/ˆˑ;->ٴʼ:Z

    invoke-virtual {p0}, Lˉˆ/ˆˑ;->ﹳٴ()V

    return v0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lˉˆ/ˆˑ;->ˉٴ:Lˉˆ/ˎـ;

    if-nez p1, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    iget-boolean v1, p0, Lˉˆ/ˆˑ;->ٴʼ:Z

    if-nez v1, :cond_4

    iget v1, p0, Lˉˆ/ˆˑ;->ˊʻ:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lˉˆ/ˆˑ;->ʽʽ:I

    if-gt v1, v2, :cond_4

    iget v1, p0, Lˉˆ/ˆˑ;->ٴᵢ:I

    sub-int v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v2, :cond_5

    :cond_4
    iput p1, p0, Lˉˆ/ˆˑ;->ˊʻ:I

    iput p2, p0, Lˉˆ/ˆˑ;->ٴᵢ:I

    iput-boolean v0, p0, Lˉˆ/ˆˑ;->ٴʼ:Z

    invoke-static {p0}, Lˉˆ/ˆˑ;->ⁱˊ(Lˉˆ/ˆˑ;)V

    :cond_5
    :goto_0
    return v0
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lˉˆ/ˆˑ;->ˊʻ:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lˉˆ/ˆˑ;->ٴᵢ:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lˉˆ/ˆˑ;->ʽ(Z)V

    return p1
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lˉˆ/ˆˑ;->ﹳٴ()V

    return-void
.end method

.method public final ʽ(Z)V
    .locals 21

    .prologue
    move-object/from16 v0, p0

    iget-object v1, v0, Lˉˆ/ˆˑ;->ʾˋ:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Lˉˆ/ˆˑ;->ⁱˊ(Lˉˆ/ˆˑ;)V

    sget-object v2, Lˉˆ/ˆˑ;->ᵔי:Lˉˆ/ˆˑ;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lˉˆ/ˆˑ;->ﹳٴ()V

    :cond_1
    sput-object v0, Lˉˆ/ˆˑ;->ᵔי:Lˉˆ/ˆˑ;

    move/from16 v2, p1

    iput-boolean v2, v0, Lˉˆ/ˆˑ;->ᵎⁱ:Z

    new-instance v2, Lˉˆ/ˎـ;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lˉˆ/ˎـ;-><init>(Landroid/content/Context;)V

    iget-object v3, v2, Lˉˆ/ˎـ;->ⁱˊ:Ljava/lang/Object;

    check-cast v3, Landroid/view/View;

    iget-object v4, v2, Lˉˆ/ˎـ;->ﹳٴ:Ljava/lang/Object;

    check-cast v4, Landroid/content/Context;

    iput-object v2, v0, Lˉˆ/ˆˑ;->ˉٴ:Lˉˆ/ˎـ;

    iget v5, v0, Lˉˆ/ˆˑ;->ˊʻ:I

    iget v6, v0, Lˉˆ/ˆˑ;->ٴᵢ:I

    iget-boolean v7, v0, Lˉˆ/ˆˑ;->ᵎⁱ:Z

    iget-object v8, v2, Lˉˆ/ˎـ;->ˈ:Ljava/lang/Object;

    check-cast v8, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    const-string v10, "window"

    if-eqz v9, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v4, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    invoke-interface {v9, v3}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object v9, v2, Lˉˆ/ˎـ;->ʽ:Ljava/lang/Object;

    check-cast v9, Landroid/widget/TextView;

    iget-object v11, v0, Lˉˆ/ˆˑ;->ᴵˊ:Ljava/lang/CharSequence;

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, v2, Lˉˆ/ˎـ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v9, [I

    iget-object v11, v2, Lˉˆ/ˎـ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v11, [I

    iget-object v2, v2, Lˉˆ/ˎـ;->ˑﹳ:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v12

    iput-object v12, v8, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f070569

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v12

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v13

    const/4 v14, 0x2

    if-lt v13, v12, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/2addr v5, v14

    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v13

    if-lt v13, v12, :cond_4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f070568

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v12

    add-int v13, v6, v12

    sub-int/2addr v6, v12

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v13

    const/4 v6, 0x0

    :goto_1
    const/16 v12, 0x31

    iput v12, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    if-eqz v7, :cond_5

    const v16, 0x7f07056c

    :goto_2
    move/from16 v15, v16

    goto :goto_3

    :cond_5
    const v16, 0x7f07056b

    goto :goto_2

    :goto_3
    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v12

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    move/from16 v17, v5

    instance-of v5, v14, Landroid/view/WindowManager$LayoutParams;

    if-eqz v5, :cond_6

    check-cast v14, Landroid/view/WindowManager$LayoutParams;

    iget v5, v14, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v14, 0x2

    if-ne v5, v14, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    :goto_4
    instance-of v14, v5, Landroid/content/ContextWrapper;

    if-eqz v14, :cond_8

    instance-of v14, v5, Landroid/app/Activity;

    if-eqz v14, :cond_7

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v15

    goto :goto_5

    :cond_7
    check-cast v5, Landroid/content/ContextWrapper;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    goto :goto_4

    :cond_8
    :goto_5
    if-nez v15, :cond_9

    const-string v2, "TooltipPopup"

    const-string v6, "Cannot find app view"

    nop

    const/16 v18, 0x1

    goto/16 :goto_8

    :cond_9
    invoke-virtual {v15, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v14, v2, Landroid/graphics/Rect;->left:I

    if-gez v14, :cond_b

    iget v14, v2, Landroid/graphics/Rect;->top:I

    if-gez v14, :cond_b

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const/16 v18, 0x1

    const-string v5, "dimen"

    move/from16 v19, v6

    const-string v6, "android"

    move/from16 v20, v7

    const-string v7, "status_bar_height"

    invoke-virtual {v14, v7, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v14, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_6

    :cond_a
    const/4 v5, 0x0

    :goto_6
    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v7, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v14, 0x0

    invoke-virtual {v2, v14, v5, v7, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_7

    :cond_b
    move/from16 v19, v6

    move/from16 v20, v7

    const/4 v14, 0x0

    const/16 v18, 0x1

    :goto_7
    invoke-virtual {v15, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v1, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v5, v11, v14

    aget v6, v9, v14

    sub-int/2addr v5, v6

    aput v5, v11, v14

    aget v6, v11, v18

    aget v7, v9, v18

    sub-int/2addr v6, v7

    aput v6, v11, v18

    add-int v5, v5, v17

    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    move-result v6

    const/16 v16, 0x2

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iput v5, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {v14, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v5, v5}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    aget v6, v11, v18

    add-int v7, v6, v19

    sub-int/2addr v7, v12

    sub-int/2addr v7, v5

    add-int/2addr v6, v13

    add-int/2addr v6, v12

    if-eqz v20, :cond_d

    if-ltz v7, :cond_c

    iput v7, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_8

    :cond_c
    iput v6, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_8

    :cond_d
    add-int/2addr v5, v6

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-gt v5, v2, :cond_e

    iput v6, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_8

    :cond_e
    iput v7, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_8
    invoke-virtual {v4, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2, v3, v8}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-boolean v2, v0, Lˉˆ/ˆˑ;->ᵎⁱ:Z

    if-eqz v2, :cond_f

    const-wide/16 v2, 0x9c4

    goto :goto_a

    :cond_f
    sget-object v2, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    move/from16 v3, v18

    if-ne v2, v3, :cond_10

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0xbb8

    :goto_9
    sub-long v2, v4, v2

    goto :goto_a

    :cond_10
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3a98

    goto :goto_9

    :goto_a
    iget-object v4, v0, Lˉˆ/ˆˑ;->ᴵᵔ:Lˉˆ/ʽʾ;

    invoke-virtual {v1, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {v1, v4, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final ﹳٴ()V
    .locals 5

    .prologue
    sget-object v0, Lˉˆ/ˆˑ;->ᵔי:Lˉˆ/ˆˑ;

    iget-object v1, p0, Lˉˆ/ˆˑ;->ʾˋ:Landroid/view/View;

    const/4 v2, 0x0

    if-ne v0, p0, :cond_2

    sput-object v2, Lˉˆ/ˆˑ;->ᵔי:Lˉˆ/ˆˑ;

    iget-object v0, p0, Lˉˆ/ˆˑ;->ˉٴ:Lˉˆ/ˎـ;

    if-eqz v0, :cond_1

    iget-object v3, v0, Lˉˆ/ˎـ;->ⁱˊ:Ljava/lang/Object;

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v0, v0, Lˉˆ/ˎـ;->ﹳٴ:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0, v3}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object v2, p0, Lˉˆ/ˆˑ;->ˉٴ:Lˉˆ/ˎـ;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lˉˆ/ˆˑ;->ٴʼ:Z

    invoke-virtual {v1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_0

    :cond_1
    const-string v0, "TooltipCompatHandler"

    const-string v3, "sActiveHandler.mPopup == null"

    nop

    :cond_2
    :goto_0
    sget-object v0, Lˉˆ/ˆˑ;->ᵎˊ:Lˉˆ/ˆˑ;

    if-ne v0, p0, :cond_3

    invoke-static {v2}, Lˉˆ/ˆˑ;->ⁱˊ(Lˉˆ/ˆˑ;)V

    :cond_3
    iget-object v0, p0, Lˉˆ/ˆˑ;->ᴵᵔ:Lˉˆ/ʽʾ;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
