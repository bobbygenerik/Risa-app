.class public final Lcom/google/android/material/datepicker/ʼˎ;
.super Lˋˋ/ˏᵢ;
.source "SourceFile"


# virtual methods
.method public final ⁱˊ(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .prologue
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lˋˋ/ᴵˑ;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/material/datepicker/ʾˋ;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lˋˋ/ʻᵎ;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lˋˋ/ᴵˑ;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/ʾˋ;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lˋˋ/ʻᵎ;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
