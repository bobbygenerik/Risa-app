.class public final Lˋˋ/ٴﹳ;
.super Lˋˋ/ʿ;
.source "SourceFile"


# instance fields
.field public final synthetic ﹳٴ:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˋˋ/ٴﹳ;->ﹳٴ:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public final ʽ(II)V
    .locals 4

    .prologue
    iget-object v0, p0, Lˋˋ/ٴﹳ;->ﹳٴ:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->ٴﹶ(Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->ᴵᵔ:Lʻᴵ/ʼʼ;

    iget-object v2, v0, Lʻᴵ/ʼʼ;->ʽ:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    if-ge p2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, v3, p1, p2}, Lʻᴵ/ʼʼ;->ᵔʾ(Ljava/lang/Object;III)Lˋˋ/ﹳٴ;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, v0, Lʻᴵ/ʼʼ;->ﹳٴ:I

    or-int/2addr p1, v3

    iput p1, v0, Lʻᴵ/ʼʼ;->ﹳٴ:I

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v3, :cond_1

    invoke-virtual {p0}, Lˋˋ/ٴﹳ;->ᵎﹶ()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final ˈ(II)V
    .locals 4

    .prologue
    iget-object v0, p0, Lˋˋ/ٴﹳ;->ﹳٴ:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->ٴﹶ(Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->ᴵᵔ:Lʻᴵ/ʼʼ;

    iget-object v2, v0, Lʻᴵ/ʼʼ;->ʽ:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    invoke-virtual {v0, v1, v3, p1, p2}, Lʻᴵ/ʼʼ;->ᵔʾ(Ljava/lang/Object;III)Lˋˋ/ﹳٴ;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, v0, Lʻᴵ/ʼʼ;->ﹳٴ:I

    or-int/2addr p1, v3

    iput p1, v0, Lʻᴵ/ʼʼ;->ﹳٴ:I

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    invoke-virtual {p0}, Lˋˋ/ٴﹳ;->ᵎﹶ()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final ˑﹳ(II)V
    .locals 5

    .prologue
    iget-object v0, p0, Lˋˋ/ٴﹳ;->ﹳٴ:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->ٴﹶ(Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->ᴵᵔ:Lʻᴵ/ʼʼ;

    iget-object v2, v0, Lʻᴵ/ʼʼ;->ʽ:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    if-ge p2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    invoke-virtual {v0, v1, v4, p1, p2}, Lʻᴵ/ʼʼ;->ᵔʾ(Ljava/lang/Object;III)Lˋˋ/ﹳٴ;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, v0, Lʻᴵ/ʼʼ;->ﹳٴ:I

    or-int/2addr p1, v4

    iput p1, v0, Lʻᴵ/ʼʼ;->ﹳٴ:I

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v3, :cond_1

    invoke-virtual {p0}, Lˋˋ/ٴﹳ;->ᵎﹶ()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final ᵎﹶ()V
    .locals 3

    .prologue
    iget-object v0, p0, Lˋˋ/ٴﹳ;->ﹳٴ:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->ﹳـ:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->ـˏ:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->ᵎⁱ:Lˋˋ/ـˏ;

    sget-object v2, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->ᐧﾞ:Z

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public final ⁱˊ(IILjava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lˋˋ/ٴﹳ;->ﹳٴ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->ٴﹶ(Ljava/lang/String;)V

    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->ᴵᵔ:Lʻᴵ/ʼʼ;

    iget-object v1, v0, Lʻᴵ/ʼʼ;->ʽ:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    if-ge p2, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    invoke-virtual {v0, p3, v3, p1, p2}, Lʻᴵ/ʼʼ;->ᵔʾ(Ljava/lang/Object;III)Lˋˋ/ﹳٴ;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, v0, Lʻᴵ/ʼʼ;->ﹳٴ:I

    or-int/2addr p1, v3

    iput p1, v0, Lʻᴵ/ʼʼ;->ﹳٴ:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v2, :cond_1

    invoke-virtual {p0}, Lˋˋ/ٴﹳ;->ᵎﹶ()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final ﹳٴ()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lˋˋ/ٴﹳ;->ﹳٴ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->ٴﹶ(Ljava/lang/String;)V

    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->ᵎʿ:Lˋˋ/ᐧﹶ;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lˋˋ/ᐧﹶ;->ﾞᴵ:Z

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->ᐧﾞ(Z)V

    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->ᴵᵔ:Lʻᴵ/ʼʼ;

    invoke-virtual {v0}, Lʻᴵ/ʼʼ;->ﾞʻ()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final ﾞᴵ()V
    .locals 4

    .prologue
    iget-object v0, p0, Lˋˋ/ٴﹳ;->ﹳٴ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->ˈٴ:Lˋˋ/ᵎʻ;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->ˆﾞ:Lˋˋ/ᴵˑ;

    if-eqz v1, :cond_2

    iget v2, v1, Lˋˋ/ᴵˑ;->ʽ:I

    invoke-static {v2}, Lʻٴ/ᵎﹶ;->ˈ(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v1, 0x2

    if-eq v2, v1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lˋˋ/ᴵˑ;->ﹳٴ()I

    move-result v1

    if-lez v1, :cond_2

    :goto_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_2
    :goto_1
    return-void
.end method
