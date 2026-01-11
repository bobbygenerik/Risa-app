.class public abstract Lʽˊ/ᵔﹳ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Landroid/content/Context;

.field public final ˈ:Lcom/google/android/material/internal/CheckableImageButton;

.field public final ⁱˊ:Lʽˊ/ʼᐧ;

.field public final ﹳٴ:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method public constructor <init>(Lʽˊ/ʼᐧ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lʽˊ/ʼᐧ;->ʾˋ:Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lʽˊ/ᵔﹳ;->ﹳٴ:Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p1, p0, Lʽˊ/ᵔﹳ;->ⁱˊ:Lʽˊ/ʼᐧ;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lʽˊ/ᵔﹳ;->ʽ:Landroid/content/Context;

    iget-object p1, p1, Lʽˊ/ʼᐧ;->ٴᵢ:Lcom/google/android/material/internal/CheckableImageButton;

    iput-object p1, p0, Lʽˊ/ᵔﹳ;->ˈ:Lcom/google/android/material/internal/CheckableImageButton;

    return-void
.end method


# virtual methods
.method public ʼˎ(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final ʼᐧ()V
    .locals 2

    iget-object v0, p0, Lʽˊ/ᵔﹳ;->ⁱˊ:Lʽˊ/ʼᐧ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lʽˊ/ʼᐧ;->ﾞᴵ(Z)V

    return-void
.end method

.method public ʽ()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ˆʾ()Z
    .locals 1

    instance-of v0, p0, Lʽˊ/ٴﹶ;

    return v0
.end method

.method public ˈ()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ˉʿ(Lˊˋ/ᵔᵢ;)V
    .locals 0

    return-void
.end method

.method public ˉˆ(Z)V
    .locals 0

    return-void
.end method

.method public ˑﹳ()Landroid/view/View$OnFocusChangeListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public ٴﹶ()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ᵎﹶ()Landroid/view/View$OnFocusChangeListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public ᵔʾ(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    return-void
.end method

.method public ᵔᵢ()Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public ᵔﹳ()V
    .locals 0

    return-void
.end method

.method public ⁱˊ()V
    .locals 0

    return-void
.end method

.method public ﹳٴ()V
    .locals 0

    return-void
.end method

.method public ﹳᐧ()V
    .locals 0

    return-void
.end method

.method public ﾞʻ(Landroid/widget/EditText;)V
    .locals 0

    return-void
.end method

.method public ﾞᴵ()Landroid/view/View$OnClickListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
