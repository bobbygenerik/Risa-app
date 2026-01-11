.class public Lˊˋ/ʼˎ;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "SourceFile"


# instance fields
.field public final ﹳٴ:Landroidx/leanback/widget/ˉˆ;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/ˉˆ;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    iput-object p1, p0, Lˊˋ/ʼˎ;->ﹳٴ:Landroidx/leanback/widget/ˉˆ;

    return-void
.end method


# virtual methods
.method public final createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .prologue
    iget-object v0, p0, Lˊˋ/ʼˎ;->ﹳٴ:Landroidx/leanback/widget/ˉˆ;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/ˉˆ;->ٴﹶ(I)Lˊˋ/ᵔᵢ;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p1, Lˊˋ/ᵔᵢ;->ﹳٴ:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object p1
.end method

.method public final findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 0

    iget-object p1, p0, Lˊˋ/ʼˎ;->ﹳٴ:Landroidx/leanback/widget/ˉˆ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    return-object p1
.end method

.method public final findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .prologue
    iget-object v0, p0, Lˊˋ/ʼˎ;->ﹳٴ:Landroidx/leanback/widget/ˉˆ;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/ˉˆ;->ʼᐧ(I)Lˊˋ/ᵔᵢ;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p1, Lˊˋ/ᵔᵢ;->ﹳٴ:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object p1
.end method

.method public final performAction(IILandroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Lˊˋ/ʼˎ;->ﹳٴ:Landroidx/leanback/widget/ˉˆ;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/leanback/widget/ˉˆ;->ـˆ(IILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
