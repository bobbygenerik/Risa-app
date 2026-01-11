.class public final Lʽˊ/ˉˆ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lʽˊ/ˉˆ;->ʾˋ:I

    iput-object p2, p0, Lʽˊ/ˉˆ;->ᴵˊ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final ʽ(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private final ˈ(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private final ˑﹳ(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private final ⁱˊ(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private final ﹳٴ(Landroid/view/View;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    .prologue
    iget p1, p0, Lʽˊ/ˉˆ;->ʾˋ:I

    iget-object v0, p0, Lʽˊ/ˉˆ;->ᴵˊ:Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_1
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    sget-object p1, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-static {v0}, Lˋᵔ/ʾˋ;->ʽ(Landroid/view/View;)V

    :pswitch_2
    return-void

    :pswitch_3
    check-cast v0, Lʽˊ/ʼᐧ;

    iget-object p1, v0, Lʽˊ/ʼᐧ;->ـˏ:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, v0, Lʽˊ/ʼᐧ;->ﹳـ:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lʽˊ/ʼᐧ;->ﹳـ:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .prologue
    iget v0, p0, Lʽˊ/ˉˆ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʽˊ/ˉˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lᵔʾ/ᵢˏ;

    iget-object v1, v0, Lᵔʾ/ᵢˏ;->ˑٴ:Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iput-object v1, v0, Lᵔʾ/ᵢˏ;->ˑٴ:Landroid/view/ViewTreeObserver;

    :cond_0
    iget-object v1, v0, Lᵔʾ/ᵢˏ;->ˑٴ:Landroid/view/ViewTreeObserver;

    iget-object v0, v0, Lᵔʾ/ᵢˏ;->ٴʼ:Lˉˆ/ˉٴ;

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lʽˊ/ˉˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lᵔʾ/ˈ;

    iget-object v1, v0, Lᵔʾ/ˈ;->ʿ:Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iput-object v1, v0, Lᵔʾ/ˈ;->ʿ:Landroid/view/ViewTreeObserver;

    :cond_2
    iget-object v1, v0, Lᵔʾ/ˈ;->ʿ:Landroid/view/ViewTreeObserver;

    iget-object v0, v0, Lᵔʾ/ˈ;->ٴʼ:Lˉˆ/ˉٴ;

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :pswitch_1
    return-void

    :pswitch_2
    iget-object p1, p0, Lʽˊ/ˉˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;

    iget-object v0, p1, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->ʽ:Lʽᵢ/ﹳٴ;

    if-eqz v0, :cond_4

    iget-object v1, p1, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->ⁱˊ:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->ʽ:Lʽᵢ/ﹳٴ;

    :cond_4
    return-void

    :pswitch_3
    iget-object p1, p0, Lʽˊ/ˉˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;

    iget-object v0, p1, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->ᵔᵢ:Lʽᵢ/ﹳٴ;

    if-eqz v0, :cond_5

    iget-object v1, p1, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->ᵎﹶ:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->ᵔᵢ:Lʽᵢ/ﹳٴ;

    :cond_5
    return-void

    :pswitch_4
    iget-object p1, p0, Lʽˊ/ˉˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Lʽˊ/ʼᐧ;

    iget-object v0, p1, Lʽˊ/ʼᐧ;->ﹳـ:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    if-eqz v0, :cond_6

    iget-object p1, p1, Lʽˊ/ʼᐧ;->ـˏ:Landroid/view/accessibility/AccessibilityManager;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
