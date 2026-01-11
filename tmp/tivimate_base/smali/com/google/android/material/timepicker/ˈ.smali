.class public final Lcom/google/android/material/timepicker/ˈ;
.super Lˋᵔ/ⁱˊ;
.source "SourceFile"


# instance fields
.field public final synthetic ˈ:Lcom/google/android/material/timepicker/ClockFaceView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/timepicker/ClockFaceView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/timepicker/ˈ;->ˈ:Lcom/google/android/material/timepicker/ClockFaceView;

    invoke-direct {p0}, Lˋᵔ/ⁱˊ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ˈ(Landroid/view/View;Lˊˋ/ᵔᵢ;)V
    .locals 4

    .prologue
    iget-object v0, p2, Lˊˋ/ᵔᵢ;->ﹳٴ:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v1, p0, Lˋᵔ/ⁱˊ;->ﹳٴ:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v1, p1, v0}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const v1, 0x7f0b027f

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/google/android/material/timepicker/ˈ;->ˈ:Lcom/google/android/material/timepicker/ClockFaceView;

    iget-object v2, v2, Lcom/google/android/material/timepicker/ClockFaceView;->ˉـ:Landroid/util/SparseArray;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalAfter(Landroid/view/View;)V

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    const/4 v3, 0x1

    invoke-static {p1, v2, v3, v1, v3}, Lʾﹶ/ʽ;->ˈ(ZIIII)Lʾﹶ/ʽ;

    move-result-object p1

    invoke-virtual {p2, p1}, Lˊˋ/ᵔᵢ;->ﾞʻ(Lʾﹶ/ʽ;)V

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    sget-object p1, Lˊˋ/ʽ;->ˑﹳ:Lˊˋ/ʽ;

    invoke-virtual {p2, p1}, Lˊˋ/ᵔᵢ;->ⁱˊ(Lˊˋ/ʽ;)V

    return-void
.end method

.method public final ᵎﹶ(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 9

    .prologue
    const/16 v0, 0x10

    if-ne p2, v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object p2, p0, Lcom/google/android/material/timepicker/ˈ;->ˈ:Lcom/google/android/material/timepicker/ClockFaceView;

    iget-object p3, p2, Lcom/google/android/material/timepicker/ClockFaceView;->ﹳـ:Landroid/graphics/Rect;

    invoke-virtual {p1, p3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object p1, p2, Lcom/google/android/material/timepicker/ClockFaceView;->ﹳـ:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    int-to-float v6, p1

    iget-object p1, p2, Lcom/google/android/material/timepicker/ClockFaceView;->ﹳـ:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    int-to-float v7, p1

    iget-object p1, p2, Lcom/google/android/material/timepicker/ClockFaceView;->ـˏ:Lcom/google/android/material/timepicker/ClockHandView;

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-wide v3, v1

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/google/android/material/timepicker/ClockHandView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object p1, p2, Lcom/google/android/material/timepicker/ClockFaceView;->ـˏ:Lcom/google/android/material/timepicker/ClockHandView;

    const/4 v5, 0x1

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/timepicker/ClockHandView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lˋᵔ/ⁱˊ;->ᵎﹶ(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
