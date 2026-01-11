.class public Lˋᵔ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Landroid/view/View$AccessibilityDelegate;


# instance fields
.field public final ⁱˊ:Lˋᵔ/ﹳٴ;

.field public final ﹳٴ:Landroid/view/View$AccessibilityDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/View$AccessibilityDelegate;

    invoke-direct {v0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    sput-object v0, Lˋᵔ/ⁱˊ;->ʽ:Landroid/view/View$AccessibilityDelegate;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lˋᵔ/ⁱˊ;->ʽ:Landroid/view/View$AccessibilityDelegate;

    invoke-direct {p0, v0}, Lˋᵔ/ⁱˊ;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View$AccessibilityDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˋᵔ/ⁱˊ;->ﹳٴ:Landroid/view/View$AccessibilityDelegate;

    new-instance p1, Lˋᵔ/ﹳٴ;

    invoke-direct {p1, p0}, Lˋᵔ/ﹳٴ;-><init>(Lˋᵔ/ⁱˊ;)V

    iput-object p1, p0, Lˋᵔ/ⁱˊ;->ⁱˊ:Lˋᵔ/ﹳٴ;

    return-void
.end method


# virtual methods
.method public ʼˎ(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Lˋᵔ/ⁱˊ;->ﹳٴ:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public ʽ(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Lˋᵔ/ⁱˊ;->ﹳٴ:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public ˈ(Landroid/view/View;Lˊˋ/ᵔᵢ;)V
    .locals 1

    iget-object v0, p0, Lˋᵔ/ⁱˊ;->ﹳٴ:Landroid/view/View$AccessibilityDelegate;

    iget-object p2, p2, Lˊˋ/ᵔᵢ;->ﹳٴ:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method public ˑﹳ(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Lˋᵔ/ⁱˊ;->ﹳٴ:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public ᵎﹶ(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 6

    .prologue
    const v0, 0x7f0b0385

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lˊˋ/ʽ;

    invoke-virtual {v3}, Lˊˋ/ʽ;->ﹳٴ()I

    move-result v5

    if-ne v5, p2, :cond_3

    iget-object v0, v3, Lˊˋ/ʽ;->ʽ:Ljava/lang/Class;

    iget-object v2, v3, Lˊˋ/ʽ;->ˈ:Lˊˋ/ﹳᐧ;

    if-eqz v2, :cond_4

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    :try_start_0
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    throw v4

    :catch_0
    move-exception v3

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/ClassCastException;

    invoke-direct {v3}, Ljava/lang/ClassCastException;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "Failed to execute command with argument class ViewCommandArgument: "

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "A11yActionCompat"

    nop

    :goto_2
    invoke-interface {v2, p1}, Lˊˋ/ﹳᐧ;->ˈ(Landroid/view/View;)Z

    move-result v0

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_3
    if-nez v0, :cond_5

    iget-object v0, p0, Lˋᵔ/ⁱˊ;->ﹳٴ:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    :cond_5
    if-nez v0, :cond_9

    const v2, 0x7f0b0015

    if-ne p2, v2, :cond_9

    if-eqz p3, :cond_9

    const-string p2, "ACCESSIBILITY_CLICKABLE_SPAN_ID"

    const/4 v0, -0x1

    invoke-virtual {p3, p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    const p3, 0x7f0b0386

    invoke-virtual {p1, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/SparseArray;

    if-eqz p3, :cond_8

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/text/style/ClickableSpan;

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    instance-of v0, p3, Landroid/text/Spanned;

    if-eqz v0, :cond_6

    move-object v0, p3

    check-cast v0, Landroid/text/Spanned;

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    const-class v2, Landroid/text/style/ClickableSpan;

    invoke-interface {v0, v1, p3, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p3

    move-object v4, p3

    check-cast v4, [Landroid/text/style/ClickableSpan;

    :cond_6
    move p3, v1

    :goto_4
    if-eqz v4, :cond_8

    array-length v0, v4

    if-ge p3, v0, :cond_8

    aget-object v0, v4, p3

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p2, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    const/4 v1, 0x1

    goto :goto_5

    :cond_7
    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    :cond_8
    :goto_5
    move v0, v1

    :cond_9
    return v0
.end method

.method public ᵔᵢ(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lˋᵔ/ⁱˊ;->ﹳٴ:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    return-void
.end method

.method public ⁱˊ(Landroid/view/View;)Landroidx/leanback/widget/ˉˆ;
    .locals 2

    .prologue
    iget-object v0, p0, Lˋᵔ/ⁱˊ;->ﹳٴ:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1}, Landroid/view/View$AccessibilityDelegate;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Landroidx/leanback/widget/ˉˆ;

    const/16 v1, 0x1c

    invoke-direct {v0, v1, p1}, Landroidx/leanback/widget/ˉˆ;-><init>(ILjava/lang/Object;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public ﹳٴ(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Lˋᵔ/ⁱˊ;->ﹳٴ:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public ﾞᴵ(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Lˋᵔ/ⁱˊ;->ﹳٴ:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method
