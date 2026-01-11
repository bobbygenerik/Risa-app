.class public final synthetic Lʽᵢ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# instance fields
.field public final synthetic ʽ:Lʽʽ/ﹳٴ;

.field public final synthetic ⁱˊ:Landroid/view/View;

.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(Lʽʽ/ﹳٴ;Landroid/view/View;I)V
    .locals 0

    iput p3, p0, Lʽᵢ/ﹳٴ;->ﹳٴ:I

    iput-object p1, p0, Lʽᵢ/ﹳٴ;->ʽ:Lʽʽ/ﹳٴ;

    iput-object p2, p0, Lʽᵢ/ﹳٴ;->ⁱˊ:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouchExplorationStateChanged(Z)V
    .locals 2

    .prologue
    iget v0, p0, Lʽᵢ/ﹳٴ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʽᵢ/ﹳٴ;->ʽ:Lʽʽ/ﹳٴ;

    check-cast v0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;

    if-eqz p1, :cond_0

    iget p1, v0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->ˆʾ:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lʽᵢ/ﹳٴ;->ⁱˊ:Landroid/view/View;

    invoke-virtual {v0, p1}, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->יـ(Landroid/view/View;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lʽᵢ/ﹳٴ;->ʽ:Lʽʽ/ﹳٴ;

    check-cast v0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;

    if-eqz p1, :cond_1

    iget p1, v0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->ˆʾ:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lʽᵢ/ﹳٴ;->ⁱˊ:Landroid/view/View;

    invoke-virtual {v0, p1}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->ﹳᐧ(Landroid/view/View;)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
