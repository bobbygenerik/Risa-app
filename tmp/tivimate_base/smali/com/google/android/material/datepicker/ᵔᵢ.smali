.class public final Lcom/google/android/material/datepicker/ᵔᵢ;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# instance fields
.field public final synthetic ˊʻ:Lcom/google/android/material/datepicker/ﾞʻ;

.field public final synthetic ᴵᵔ:I


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/ﾞʻ;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/datepicker/ᵔᵢ;->ˊʻ:Lcom/google/android/material/datepicker/ﾞʻ;

    iput p3, p0, Lcom/google/android/material/datepicker/ᵔᵢ;->ᴵᵔ:I

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final ˎʾ(Lˋˋ/ᐧﹶ;[I)V
    .locals 3

    .prologue
    iget p1, p0, Lcom/google/android/material/datepicker/ᵔᵢ;->ᴵᵔ:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/material/datepicker/ᵔᵢ;->ˊʻ:Lcom/google/android/material/datepicker/ﾞʻ;

    if-nez p1, :cond_0

    iget-object p1, v2, Lcom/google/android/material/datepicker/ﾞʻ;->ʻʿ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    aput p1, p2, v1

    iget-object p1, v2, Lcom/google/android/material/datepicker/ﾞʻ;->ʻʿ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    aput p1, p2, v0

    return-void

    :cond_0
    iget-object p1, v2, Lcom/google/android/material/datepicker/ﾞʻ;->ʻʿ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    aput p1, p2, v1

    iget-object p1, v2, Lcom/google/android/material/datepicker/ﾞʻ;->ʻʿ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    aput p1, p2, v0

    return-void
.end method

.method public final יˉ(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    new-instance v0, Lcom/google/android/material/datepicker/ـˆ;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lˋˋ/ˆﾞ;-><init>(Landroid/content/Context;)V

    iput p2, v0, Lˋˋ/ˆﾞ;->ﹳٴ:I

    invoke-virtual {p0, v0}, Lˋˋ/ʻᵎ;->ﾞˋ(Lˋˋ/ˆﾞ;)V

    return-void
.end method
