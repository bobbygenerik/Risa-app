.class public final Lcom/google/android/material/datepicker/ﾞʻ;
.super Lcom/google/android/material/datepicker/ʻٴ;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/material/datepicker/\u02bb\u0674;"
    }
.end annotation


# instance fields
.field public ʻʿ:Landroidx/recyclerview/widget/RecyclerView;

.field public ʻᴵ:I

.field public ʽˑ:Landroid/view/accessibility/AccessibilityManager;

.field public ʿـ:I

.field public ـˊ:Lcom/google/android/material/datepicker/ⁱˊ;

.field public ـᵢ:Landroid/view/View;

.field public ٴᴵ:Landroid/view/View;

.field public ᵎʿ:Lcom/google/android/material/datepicker/ᵔﹳ;

.field public ⁱי:Landroidx/recyclerview/widget/RecyclerView;

.field public ⁱᴵ:Landroid/view/View;

.field public ﹳⁱ:Lcom/google/android/material/datepicker/ʽ;

.field public ﹶ:Landroid/view/View;

.field public ﹶˎ:Lcom/google/android/material/button/MaterialButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/datepicker/ʻٴ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ʽᵔ(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    invoke-super {p0, p1}, Lˑʼ/ᴵᵔ;->ʽᵔ(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lˑʼ/ᴵᵔ;->ˊʻ:Landroid/os/Bundle;

    :cond_0
    const-string v0, "THEME_RES_ID_KEY"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ʻᴵ:I

    const-string v0, "GRID_SELECTOR_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/ⁱˊ;

    iput-object v0, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ـˊ:Lcom/google/android/material/datepicker/ⁱˊ;

    const-string v0, "DAY_VIEW_DECORATOR_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "CURRENT_MONTH_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/datepicker/ᵔﹳ;

    iput-object p1, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ᵎʿ:Lcom/google/android/material/datepicker/ᵔﹳ;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method

.method public final ʾﾞ(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "THEME_RES_ID_KEY"

    iget v1, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ʻᴵ:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "GRID_SELECTOR_KEY"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    iget-object v2, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ـˊ:Lcom/google/android/material/datepicker/ⁱˊ;

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "DAY_VIEW_DECORATOR_KEY"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "CURRENT_MONTH_KEY"

    iget-object v1, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ᵎʿ:Lcom/google/android/material/datepicker/ᵔﹳ;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public final ˈـ(Lcom/google/android/material/datepicker/ᵔﹳ;)V
    .locals 6

    .prologue
    iget-object v0, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ʻʿ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lˋˋ/ᴵˑ;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/ʽﹳ;

    iget-object v1, v0, Lcom/google/android/material/datepicker/ʽﹳ;->ˈ:Lcom/google/android/material/datepicker/ⁱˊ;

    iget-object v1, v1, Lcom/google/android/material/datepicker/ⁱˊ;->ʾˋ:Lcom/google/android/material/datepicker/ᵔﹳ;

    invoke-virtual {v1, p1}, Lcom/google/android/material/datepicker/ᵔﹳ;->ˈ(Lcom/google/android/material/datepicker/ᵔﹳ;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ʽˑ:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object p1, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ᵎʿ:Lcom/google/android/material/datepicker/ᵔﹳ;

    iget-object p1, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ʻʿ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->ﹶᐧ(I)V

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ᵎʿ:Lcom/google/android/material/datepicker/ᵔﹳ;

    iget-object v0, v0, Lcom/google/android/material/datepicker/ʽﹳ;->ˈ:Lcom/google/android/material/datepicker/ⁱˊ;

    iget-object v0, v0, Lcom/google/android/material/datepicker/ⁱˊ;->ʾˋ:Lcom/google/android/material/datepicker/ᵔﹳ;

    invoke-virtual {v0, v2}, Lcom/google/android/material/datepicker/ᵔﹳ;->ˈ(Lcom/google/android/material/datepicker/ᵔﹳ;)I

    move-result v0

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-le v2, v5, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    if-lez v0, :cond_2

    move v3, v4

    :cond_2
    iput-object p1, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ᵎʿ:Lcom/google/android/material/datepicker/ᵔﹳ;

    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    iget-object p1, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ʻʿ:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 v0, v1, -0x3

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->ﹶᐧ(I)V

    iget-object p1, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ʻʿ:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/leanback/widget/ˏᵢ;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p0}, Landroidx/leanback/widget/ˏᵢ;-><init>(IILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    iget-object p1, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ʻʿ:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 v0, v1, 0x3

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->ﹶᐧ(I)V

    iget-object p1, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ʻʿ:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/leanback/widget/ˏᵢ;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p0}, Landroidx/leanback/widget/ˏᵢ;-><init>(IILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ʻʿ:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/leanback/widget/ˏᵢ;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p0}, Landroidx/leanback/widget/ˏᵢ;-><init>(IILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_1
    invoke-virtual {p0, v1}, Lcom/google/android/material/datepicker/ﾞʻ;->ˎˉ(I)V

    return-void
.end method

.method public final ˎʾ(I)V
    .locals 4

    .prologue
    iput p1, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ʿـ:I

    const/4 v0, 0x2

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ⁱי:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lˋˋ/ʻᵎ;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ⁱי:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lˋˋ/ᴵˑ;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/ʾˋ;

    iget-object v3, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ᵎʿ:Lcom/google/android/material/datepicker/ᵔﹳ;

    iget v3, v3, Lcom/google/android/material/datepicker/ᵔﹳ;->ʽʽ:I

    iget-object v0, v0, Lcom/google/android/material/datepicker/ʾˋ;->ˈ:Lcom/google/android/material/datepicker/ﾞʻ;

    iget-object v0, v0, Lcom/google/android/material/datepicker/ﾞʻ;->ـˊ:Lcom/google/android/material/datepicker/ⁱˊ;

    iget-object v0, v0, Lcom/google/android/material/datepicker/ⁱˊ;->ʾˋ:Lcom/google/android/material/datepicker/ᵔﹳ;

    iget v0, v0, Lcom/google/android/material/datepicker/ᵔﹳ;->ʽʽ:I

    sub-int/2addr v3, v0

    invoke-virtual {p1, v3}, Lˋˋ/ʻᵎ;->ﹳⁱ(I)V

    iget-object p1, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ٴᴵ:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ⁱᴵ:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ﹶ:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ـᵢ:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ٴᴵ:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ⁱᴵ:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ﹶ:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ـᵢ:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ᵎʿ:Lcom/google/android/material/datepicker/ᵔﹳ;

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/ﾞʻ;->ˈـ(Lcom/google/android/material/datepicker/ᵔﹳ;)V

    :cond_1
    return-void
.end method

.method public final ˎˉ(I)V
    .locals 5

    .prologue
    iget-object v0, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ـᵢ:Landroid/view/View;

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ʻʿ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lˋˋ/ᴵˑ;

    move-result-object v2

    invoke-virtual {v2}, Lˋˋ/ᴵˑ;->ﹳٴ()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ﹶ:Landroid/view/View;

    sub-int/2addr p1, v4

    if-ltz p1, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final ˑˆ(Landroid/view/View;)V
    .locals 2

    .prologue
    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ʿـ:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const v0, 0x7f13015a

    invoke-virtual {p0, v0}, Lˑʼ/ᴵᵔ;->ᐧᴵ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lˋᵔ/ᵎˊ;->ᵔʾ(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const v0, 0x7f130159

    invoke-virtual {p0, v0}, Lˑʼ/ᴵᵔ;->ᐧᴵ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lˋᵔ/ᵎˊ;->ᵔʾ(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final ᐧﹶ(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    .prologue
    new-instance p3, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ʿ()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ʻᴵ:I

    invoke-direct {p3, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lcom/google/android/material/datepicker/ʽ;

    invoke-direct {v0, p3}, Lcom/google/android/material/datepicker/ʽ;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ﹳⁱ:Lcom/google/android/material/datepicker/ʽ;

    invoke-virtual {p1, p3}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ʻʿ()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ʽˑ:Landroid/view/accessibility/AccessibilityManager;

    iget-object v0, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ـˊ:Lcom/google/android/material/datepicker/ⁱˊ;

    iget-object v0, v0, Lcom/google/android/material/datepicker/ⁱˊ;->ʾˋ:Lcom/google/android/material/datepicker/ᵔﹳ;

    const v1, 0x101020d

    invoke-static {p3, v1}, Lcom/google/android/material/datepicker/ˉˆ;->ﹶʽ(Landroid/content/Context;I)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    const v2, 0x7f0e0104

    move v5, v4

    goto :goto_0

    :cond_0
    const v2, 0x7f0e00ff

    move v5, v3

    :goto_0
    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ʻʿ()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f0704b6

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v6, 0x7f0704b7

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    add-int/2addr v6, v2

    const v2, 0x7f0704b5

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v2, v6

    const v6, 0x7f0704a6

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sget v7, Lcom/google/android/material/datepicker/ﹳᐧ;->ˈ:I

    const v8, 0x7f0704a1

    invoke-virtual {p2, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    mul-int/2addr v8, v7

    sub-int/2addr v7, v4

    const v9, 0x7f0704b4

    invoke-virtual {p2, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    mul-int/2addr v9, v7

    add-int/2addr v9, v8

    const v7, 0x7f07049e

    invoke-virtual {p2, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    add-int/2addr v2, v6

    add-int/2addr v2, v9

    add-int/2addr v2, p2

    invoke-virtual {p1, v2}, Landroid/view/View;->setMinimumHeight(I)V

    const p2, 0x7f0b029a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/GridView;

    new-instance v2, Lcom/google/android/material/datepicker/ᵎﹶ;

    const/4 v6, 0x0

    invoke-direct {v2, v6}, Lcom/google/android/material/datepicker/ᵎﹶ;-><init>(I)V

    invoke-static {p2, v2}, Lˋᵔ/ᵎˊ;->ˉʿ(Landroid/view/View;Lˋᵔ/ⁱˊ;)V

    iget-object v2, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ـˊ:Lcom/google/android/material/datepicker/ⁱˊ;

    iget v2, v2, Lcom/google/android/material/datepicker/ⁱˊ;->ᴵᵔ:I

    new-instance v6, Lcom/google/android/material/datepicker/ˑﹳ;

    if-lez v2, :cond_1

    invoke-direct {v6, v2}, Lcom/google/android/material/datepicker/ˑﹳ;-><init>(I)V

    goto :goto_1

    :cond_1
    invoke-direct {v6}, Lcom/google/android/material/datepicker/ˑﹳ;-><init>()V

    :goto_1
    invoke-virtual {p2, v6}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget v0, v0, Lcom/google/android/material/datepicker/ᵔﹳ;->ˈٴ:I

    invoke-virtual {p2, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setEnabled(Z)V

    const p2, 0x7f0b029d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ʻʿ:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/google/android/material/datepicker/ᵔᵢ;

    invoke-direct {p2, p0, v5, v5}, Lcom/google/android/material/datepicker/ᵔᵢ;-><init>(Lcom/google/android/material/datepicker/ﾞʻ;II)V

    iget-object v0, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ʻʿ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lˋˋ/ʻᵎ;)V

    iget-object p2, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ʻʿ:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "MONTHS_VIEW_GROUP_TAG"

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance p2, Lcom/google/android/material/datepicker/ʽﹳ;

    iget-object v0, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ـˊ:Lcom/google/android/material/datepicker/ⁱˊ;

    new-instance v2, Landroidx/leanback/widget/ˉˆ;

    const/4 v3, 0x3

    invoke-direct {v2, v3, p0}, Landroidx/leanback/widget/ˉˆ;-><init>(ILjava/lang/Object;)V

    invoke-direct {p2, p3, v0, v2}, Lcom/google/android/material/datepicker/ʽﹳ;-><init>(Landroid/view/ContextThemeWrapper;Lcom/google/android/material/datepicker/ⁱˊ;Landroidx/leanback/widget/ˉˆ;)V

    iget-object v0, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ʻʿ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lˋˋ/ᴵˑ;)V

    invoke-virtual {p3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0060

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const v2, 0x7f0b02a0

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v3, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ⁱי:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object v3, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ⁱי:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v5, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lˋˋ/ʻᵎ;)V

    iget-object v0, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ⁱי:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/google/android/material/datepicker/ʾˋ;

    invoke-direct {v3, p0}, Lcom/google/android/material/datepicker/ʾˋ;-><init>(Lcom/google/android/material/datepicker/ﾞʻ;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lˋˋ/ᴵˑ;)V

    iget-object v0, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ⁱי:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/google/android/material/datepicker/ʼˎ;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/google/android/material/datepicker/ʼʼ;->ʽ(Ljava/util/Calendar;)Ljava/util/Calendar;

    invoke-static {v5}, Lcom/google/android/material/datepicker/ʼʼ;->ʽ(Ljava/util/Calendar;)Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->ʼˎ(Lˋˋ/ˏᵢ;)V

    :cond_2
    const v0, 0x7f0b0293

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v5, p2, Lcom/google/android/material/datepicker/ʽﹳ;->ˈ:Lcom/google/android/material/datepicker/ⁱˊ;

    if-eqz v3, :cond_3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ﹶˎ:Lcom/google/android/material/button/MaterialButton;

    const-string v3, "SELECTOR_TOGGLE_TAG"

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ﹶˎ:Lcom/google/android/material/button/MaterialButton;

    new-instance v3, Lcom/google/android/material/datepicker/ˆʾ;

    const/4 v6, 0x0

    invoke-direct {v3, v6, p0}, Lcom/google/android/material/datepicker/ˆʾ;-><init>(ILjava/lang/Object;)V

    invoke-static {v0, v3}, Lˋᵔ/ᵎˊ;->ˉʿ(Landroid/view/View;Lˋᵔ/ⁱˊ;)V

    const v0, 0x7f0b0295

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ﹶ:Landroid/view/View;

    const-string v3, "NAVIGATION_PREV_TAG"

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0b0294

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ـᵢ:Landroid/view/View;

    const-string v3, "NAVIGATION_NEXT_TAG"

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ٴᴵ:Landroid/view/View;

    const v0, 0x7f0b0299

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ⁱᴵ:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/google/android/material/datepicker/ﾞʻ;->ˎʾ(I)V

    iget-object v0, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ﹶˎ:Lcom/google/android/material/button/MaterialButton;

    iget-object v2, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ᵎʿ:Lcom/google/android/material/datepicker/ᵔﹳ;

    invoke-virtual {v2}, Lcom/google/android/material/datepicker/ᵔﹳ;->ʽ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ʻʿ:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/google/android/material/datepicker/ٴﹶ;

    invoke-direct {v2, p0, p2}, Lcom/google/android/material/datepicker/ٴﹶ;-><init>(Lcom/google/android/material/datepicker/ﾞʻ;Lcom/google/android/material/datepicker/ʽﹳ;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->ˆʾ(Lˋˋ/ˈˏ;)V

    iget-object v0, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ﹶˎ:Lcom/google/android/material/button/MaterialButton;

    new-instance v2, Landroidx/leanback/widget/ʼʼ;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p0}, Landroidx/leanback/widget/ʼʼ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ـᵢ:Landroid/view/View;

    new-instance v2, Lcom/google/android/material/datepicker/ﾞᴵ;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p2, v3}, Lcom/google/android/material/datepicker/ﾞᴵ;-><init>(Lcom/google/android/material/datepicker/ﾞʻ;Lcom/google/android/material/datepicker/ʽﹳ;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ﹶ:Landroid/view/View;

    new-instance v2, Lcom/google/android/material/datepicker/ﾞᴵ;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p2, v3}, Lcom/google/android/material/datepicker/ﾞᴵ;-><init>(Lcom/google/android/material/datepicker/ﾞʻ;Lcom/google/android/material/datepicker/ʽﹳ;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ᵎʿ:Lcom/google/android/material/datepicker/ᵔﹳ;

    iget-object v0, v5, Lcom/google/android/material/datepicker/ⁱˊ;->ʾˋ:Lcom/google/android/material/datepicker/ᵔﹳ;

    invoke-virtual {v0, p2}, Lcom/google/android/material/datepicker/ᵔﹳ;->ˈ(Lcom/google/android/material/datepicker/ᵔﹳ;)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/datepicker/ﾞʻ;->ˎˉ(I)V

    :cond_3
    invoke-static {p3, v1}, Lcom/google/android/material/datepicker/ˉˆ;->ﹶʽ(Landroid/content/Context;I)Z

    move-result p2

    if-nez p2, :cond_8

    new-instance p2, Lˋˋ/ʼˈ;

    invoke-direct {p2}, Lˋˋ/ʼˈ;-><init>()V

    iget-object p3, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ʻʿ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p2, Lˋˋ/ʼˈ;->ﹳٴ:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v0, p3, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p2, Lˋˋ/ʼˈ;->ⁱˊ:Lˋˋ/ʽⁱ;

    if-eqz v0, :cond_6

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->ﹳⁱ:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_5
    iget-object v0, p2, Lˋˋ/ʼˈ;->ﹳٴ:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Lˋˋ/ـﹶ;)V

    :cond_6
    iput-object p3, p2, Lˋˋ/ʼˈ;->ﹳٴ:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p3, :cond_8

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getOnFlingListener()Lˋˋ/ـﹶ;

    move-result-object p3

    if-nez p3, :cond_7

    iget-object p3, p2, Lˋˋ/ʼˈ;->ﹳٴ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, v1}, Landroidx/recyclerview/widget/RecyclerView;->ˆʾ(Lˋˋ/ˈˏ;)V

    iget-object p3, p2, Lˋˋ/ʼˈ;->ﹳٴ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Lˋˋ/ـﹶ;)V

    new-instance p3, Landroid/widget/Scroller;

    iget-object v0, p2, Lˋˋ/ʼˈ;->ﹳٴ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {p3, v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    invoke-virtual {p2}, Lˋˋ/ʼˈ;->ﾞᴵ()V

    goto :goto_2

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "An instance of OnFlingListener already set."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_2
    iget-object p2, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ʻʿ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ᵎʿ:Lcom/google/android/material/datepicker/ᵔﹳ;

    iget-object v0, v5, Lcom/google/android/material/datepicker/ⁱˊ;->ʾˋ:Lcom/google/android/material/datepicker/ᵔﹳ;

    invoke-virtual {v0, p3}, Lcom/google/android/material/datepicker/ᵔﹳ;->ˈ(Lcom/google/android/material/datepicker/ᵔﹳ;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->ﹶᐧ(I)V

    iget-object p2, p0, Lcom/google/android/material/datepicker/ﾞʻ;->ʻʿ:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Lcom/google/android/material/datepicker/ᵎﹶ;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Lcom/google/android/material/datepicker/ᵎﹶ;-><init>(I)V

    invoke-static {p2, p3}, Lˋᵔ/ᵎˊ;->ˉʿ(Landroid/view/View;Lˋᵔ/ⁱˊ;)V

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/ﾞʻ;->ˑˆ(Landroid/view/View;)V

    return-object p1
.end method

.method public final ﾞˋ(Lᵎˉ/ⁱˊ;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/datepicker/ʻٴ;->ᐧˎ:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
