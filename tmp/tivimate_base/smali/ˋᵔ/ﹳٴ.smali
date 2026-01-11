.class public final Lˋᵔ/ﹳٴ;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# instance fields
.field public final ﹳٴ:Lˋᵔ/ⁱˊ;


# direct methods
.method public constructor <init>(Lˋᵔ/ⁱˊ;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    iput-object p1, p0, Lˋᵔ/ﹳٴ;->ﹳٴ:Lˋᵔ/ⁱˊ;

    return-void
.end method


# virtual methods
.method public final dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Lˋᵔ/ﹳٴ;->ﹳٴ:Lˋᵔ/ⁱˊ;

    invoke-virtual {v0, p1, p2}, Lˋᵔ/ⁱˊ;->ﹳٴ(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public final getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .prologue
    iget-object v0, p0, Lˋᵔ/ﹳٴ;->ﹳٴ:Lˋᵔ/ⁱˊ;

    invoke-virtual {v0, p1}, Lˋᵔ/ⁱˊ;->ⁱˊ(Landroid/view/View;)Landroidx/leanback/widget/ˉˆ;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroidx/leanback/widget/ˉˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeProvider;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Lˋᵔ/ﹳٴ;->ﹳٴ:Lˋᵔ/ⁱˊ;

    invoke-virtual {v0, p1, p2}, Lˋᵔ/ⁱˊ;->ʽ(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 17

    .prologue
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    new-instance v2, Lˊˋ/ᵔᵢ;

    invoke-direct {v2, v1}, Lˊˋ/ᵔᵢ;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    sget-object v3, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x0

    const-class v5, Ljava/lang/Boolean;

    const/16 v6, 0x1c

    if-lt v3, v6, :cond_0

    invoke-static {v0}, Lˋᵔ/ˊʻ;->ʽ(Landroid/view/View;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    :cond_0
    const v3, 0x7f0b038d

    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    check-cast v3, Ljava/lang/Boolean;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v8

    goto :goto_1

    :cond_2
    move v3, v7

    :goto_1
    invoke-virtual {v2, v3}, Lˊˋ/ᵔᵢ;->ʼᐧ(Z)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v6, :cond_3

    invoke-static {v0}, Lˋᵔ/ˊʻ;->ⁱˊ(Landroid/view/View;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_2

    :cond_3
    const v3, 0x7f0b0387

    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    move-object v3, v4

    :goto_2
    check-cast v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    move v8, v7

    :goto_3
    invoke-virtual {v2, v8}, Lˊˋ/ᵔᵢ;->ˉʿ(Z)V

    invoke-static {v0}, Lˋᵔ/ᵎˊ;->ˑﹳ(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lˊˋ/ᵔᵢ;->ˉˆ(Ljava/lang/CharSequence;)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1e

    if-lt v3, v5, :cond_6

    invoke-static {v0}, Lˋᵔ/ˉٴ;->ⁱˊ(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_4

    :cond_6
    const v3, 0x7f0b038e

    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    const-class v6, Ljava/lang/CharSequence;

    invoke-virtual {v6, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_4

    :cond_7
    move-object v3, v4

    :goto_4
    check-cast v3, Ljava/lang/CharSequence;

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v5, :cond_8

    invoke-static {v1, v3}, Lˊˋ/ˈ;->ˑﹳ(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V

    :goto_5
    move-object/from16 v3, p0

    goto :goto_6

    :cond_8
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v8, "androidx.view.accessibility.AccessibilityNodeInfoCompat.STATE_DESCRIPTION_KEY"

    invoke-virtual {v5, v8, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_5

    :goto_6
    iget-object v5, v3, Lˋᵔ/ﹳٴ;->ﹳٴ:Lˋᵔ/ⁱˊ;

    invoke-virtual {v5, v0, v2}, Lˋᵔ/ⁱˊ;->ˈ(Landroid/view/View;Lˊˋ/ᵔᵢ;)V

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    const/16 v8, 0x1a

    if-ge v6, v8, :cond_10

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v8, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v9, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v10, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY"

    invoke-virtual {v6, v10}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v11, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const v6, 0x7f0b0386

    invoke-virtual {v0, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseArray;

    if-eqz v12, :cond_b

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move v14, v7

    :goto_7
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v15

    if-ge v14, v15, :cond_a

    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/ref/WeakReference;

    invoke-virtual {v15}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_9

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    :cond_a
    move v14, v7

    :goto_8
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v14, v15, :cond_b

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v12, v15}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    :cond_b
    instance-of v12, v5, Landroid/text/Spanned;

    if-eqz v12, :cond_c

    move-object v4, v5

    check-cast v4, Landroid/text/Spanned;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v12

    const-class v13, Landroid/text/style/ClickableSpan;

    invoke-interface {v4, v7, v12, v13}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/ClickableSpan;

    :cond_c
    if-eqz v4, :cond_10

    array-length v12, v4

    if-lez v12, :cond_10

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v12, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY"

    const v13, 0x7f0b0015

    invoke-virtual {v1, v12, v13}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-nez v1, :cond_d

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v0, v6, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_d
    move v6, v7

    :goto_9
    array-length v12, v4

    if-ge v6, v12, :cond_10

    aget-object v12, v4, v6

    move v13, v7

    :goto_a
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v14

    if-ge v13, v14, :cond_f

    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/ref/WeakReference;

    invoke-virtual {v14}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/text/style/ClickableSpan;

    invoke-virtual {v12, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    goto :goto_b

    :cond_e
    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    :cond_f
    sget v12, Lˊˋ/ᵔᵢ;->ʽ:I

    add-int/lit8 v13, v12, 0x1

    sput v13, Lˊˋ/ᵔᵢ;->ʽ:I

    :goto_b
    new-instance v13, Ljava/lang/ref/WeakReference;

    aget-object v14, v4, v6

    invoke-direct {v13, v14}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    aget-object v13, v4, v6

    move-object v14, v5

    check-cast v14, Landroid/text/Spanned;

    invoke-virtual {v2, v8}, Lˊˋ/ᵔᵢ;->ʽ(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-interface {v14, v13}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v15, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v9}, Lˊˋ/ᵔᵢ;->ʽ(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-interface {v14, v13}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v10}, Lˊˋ/ᵔᵢ;->ʽ(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-interface {v14, v13}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v11}, Lˊˋ/ᵔᵢ;->ʽ(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x0

    goto :goto_9

    :cond_10
    const v1, 0x7f0b0385

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_11

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_11
    const/4 v7, 0x0

    :goto_c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v7, v1, :cond_12

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˊˋ/ʽ;

    invoke-virtual {v2, v1}, Lˊˋ/ᵔᵢ;->ⁱˊ(Lˊˋ/ʽ;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_12
    return-void
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Lˋᵔ/ﹳٴ;->ﹳٴ:Lˋᵔ/ⁱˊ;

    invoke-virtual {v0, p1, p2}, Lˋᵔ/ⁱˊ;->ˑﹳ(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Lˋᵔ/ﹳٴ;->ﹳٴ:Lˋᵔ/ⁱˊ;

    invoke-virtual {v0, p1, p2, p3}, Lˋᵔ/ⁱˊ;->ﾞᴵ(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Lˋᵔ/ﹳٴ;->ﹳٴ:Lˋᵔ/ⁱˊ;

    invoke-virtual {v0, p1, p2, p3}, Lˋᵔ/ⁱˊ;->ᵎﹶ(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public final sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lˋᵔ/ﹳٴ;->ﹳٴ:Lˋᵔ/ⁱˊ;

    invoke-virtual {v0, p1, p2}, Lˋᵔ/ⁱˊ;->ᵔᵢ(Landroid/view/View;I)V

    return-void
.end method

.method public final sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Lˋᵔ/ﹳٴ;->ﹳٴ:Lˋᵔ/ⁱˊ;

    invoke-virtual {v0, p1, p2}, Lˋᵔ/ⁱˊ;->ʼˎ(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
