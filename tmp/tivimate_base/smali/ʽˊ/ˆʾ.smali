.class public final synthetic Lʽˊ/ˆʾ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# instance fields
.field public final synthetic ﹳٴ:Lʽˊ/ٴﹶ;


# direct methods
.method public synthetic constructor <init>(Lʽˊ/ٴﹶ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʽˊ/ˆʾ;->ﹳٴ:Lʽˊ/ٴﹶ;

    return-void
.end method


# virtual methods
.method public final onTouchExplorationStateChanged(Z)V
    .locals 2

    .prologue
    iget-object v0, p0, Lʽˊ/ˆʾ;->ﹳٴ:Lʽˊ/ٴﹶ;

    iget-object v1, v0, Lʽˊ/ٴﹶ;->ᵔᵢ:Landroid/widget/AutoCompleteTextView;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lˈˊ/ᵔʾ;->יـ(Landroid/widget/EditText;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lʽˊ/ᵔﹳ;->ˈ:Lcom/google/android/material/internal/CheckableImageButton;

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_1
    return-void
.end method
