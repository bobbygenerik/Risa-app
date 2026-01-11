.class public Lcom/google/android/material/internal/CheckableImageButton;
.super Lˉˆ/ʾᵎ;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field public static final ˉٴ:[I


# instance fields
.field public ˈٴ:Z

.field public ˊʻ:Z

.field public ٴᵢ:Lˈᐧ/ﹳٴ;

.field public ᴵᵔ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x10100a0

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/internal/CheckableImageButton;->ˉٴ:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f040329

    invoke-direct {p0, p1, p2, v0}, Lˉˆ/ʾᵎ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/internal/CheckableImageButton;->ᴵᵔ:Z

    iput-boolean p1, p0, Lcom/google/android/material/internal/CheckableImageButton;->ˊʻ:Z

    new-instance p1, Lcom/google/android/material/datepicker/ˆʾ;

    const/4 p2, 0x2

    invoke-direct {p1, p2, p0}, Lcom/google/android/material/datepicker/ˆʾ;-><init>(ILjava/lang/Object;)V

    invoke-static {p0, p1}, Lˋᵔ/ᵎˊ;->ˉʿ(Landroid/view/View;Lˋᵔ/ⁱˊ;)V

    return-void
.end method


# virtual methods
.method public final isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/internal/CheckableImageButton;->ˈٴ:Z

    return v0
.end method

.method public final onCreateDrawableState(I)[I
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/google/android/material/internal/CheckableImageButton;->ˈٴ:Z

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onCreateDrawableState(I)[I

    move-result-object p1

    sget-object v0, Lcom/google/android/material/internal/CheckableImageButton;->ˉٴ:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onCreateDrawableState(I)[I

    move-result-object p1

    return-object p1
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/internal/CheckableImageButton;->ٴᵢ:Lˈᐧ/ﹳٴ;

    invoke-super {p0}, Landroid/widget/ImageButton;->onDetachedFromWindow()V

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    instance-of v0, p1, Lˈᐧ/ⁱˊ;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lˈᐧ/ⁱˊ;

    iget-object v0, p1, Lᴵˑ/ⁱˊ;->ʾˋ:Landroid/os/Parcelable;

    invoke-super {p0, v0}, Landroid/widget/ImageButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean p1, p1, Lˈᐧ/ⁱˊ;->ʽʽ:Z

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/widget/ImageButton;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lˈᐧ/ⁱˊ;

    invoke-direct {v1, v0}, Lᴵˑ/ⁱˊ;-><init>(Landroid/os/Parcelable;)V

    iget-boolean v0, p0, Lcom/google/android/material/internal/CheckableImageButton;->ˈٴ:Z

    iput-boolean v0, v1, Lˈᐧ/ⁱˊ;->ʽʽ:Z

    return-object v1
.end method

.method public setCheckable(Z)V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/google/android/material/internal/CheckableImageButton;->ᴵᵔ:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/material/internal/CheckableImageButton;->ᴵᵔ:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/google/android/material/internal/CheckableImageButton;->ᴵᵔ:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/internal/CheckableImageButton;->ˈٴ:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/material/internal/CheckableImageButton;->ˈٴ:Z

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    const/16 p1, 0x800

    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public setFocusable(Z)V
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    if-eq v0, p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/internal/CheckableImageButton;->ٴᵢ:Lˈᐧ/ﹳٴ;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lˈᐧ/ﹳٴ;->ʼˎ()V

    :cond_0
    return-void
.end method

.method public setOnFocusableChangedListener(Lˈᐧ/ﹳٴ;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/internal/CheckableImageButton;->ٴᵢ:Lˈᐧ/ﹳٴ;

    return-void
.end method

.method public setPressable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/internal/CheckableImageButton;->ˊʻ:Z

    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/google/android/material/internal/CheckableImageButton;->ˊʻ:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setPressed(Z)V

    :cond_0
    return-void
.end method

.method public final toggle()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/internal/CheckableImageButton;->ˈٴ:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    return-void
.end method
