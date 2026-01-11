.class public final Lˋˋ/ʼˈ;
.super Lˋˋ/ـﹶ;
.source "SourceFile"


# instance fields
.field public ʽ:Lˋˋ/ˋᵔ;

.field public ˈ:Lˋˋ/ˋᵔ;

.field public final ⁱˊ:Lˋˋ/ʽⁱ;

.field public ﹳٴ:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lˋˋ/ʽⁱ;

    invoke-direct {v0, p0}, Lˋˋ/ʽⁱ;-><init>(Lˋˋ/ʼˈ;)V

    iput-object v0, p0, Lˋˋ/ʼˈ;->ⁱˊ:Lˋˋ/ʽⁱ;

    return-void
.end method

.method public static ʽ(Lˋˋ/ʻᵎ;Lʼﾞ/ᵎⁱ;)Landroid/view/View;
    .locals 8

    .prologue
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Lʼﾞ/ᵎⁱ;->ˉʿ()I

    move-result v2

    invoke-virtual {p1}, Lʼﾞ/ᵎⁱ;->ᵔʾ()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    const v2, 0x7fffffff

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    invoke-virtual {p0, v4}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p1, v5}, Lʼﾞ/ᵎⁱ;->ᵎﹶ(Landroid/view/View;)I

    move-result v6

    invoke-virtual {p1, v5}, Lʼﾞ/ᵎⁱ;->ˑﹳ(Landroid/view/View;)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    sub-int/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v2, :cond_1

    move-object v1, v5

    move v2, v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static ⁱˊ(Landroid/view/View;Lʼﾞ/ᵎⁱ;)I
    .locals 1

    invoke-virtual {p1, p0}, Lʼﾞ/ᵎⁱ;->ᵎﹶ(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1, p0}, Lʼﾞ/ᵎⁱ;->ˑﹳ(Landroid/view/View;)I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p0, v0

    invoke-virtual {p1}, Lʼﾞ/ᵎⁱ;->ˉʿ()I

    move-result v0

    invoke-virtual {p1}, Lʼﾞ/ᵎⁱ;->ᵔʾ()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v0

    sub-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public final ˈ(Lˋˋ/ʻᵎ;)Lʼﾞ/ᵎⁱ;
    .locals 2

    .prologue
    iget-object v0, p0, Lˋˋ/ʼˈ;->ˈ:Lˋˋ/ˋᵔ;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lʼﾞ/ᵎⁱ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lˋˋ/ʻᵎ;

    if-eq v0, p1, :cond_1

    :cond_0
    new-instance v0, Lˋˋ/ˋᵔ;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lˋˋ/ˋᵔ;-><init>(Lˋˋ/ʻᵎ;I)V

    iput-object v0, p0, Lˋˋ/ʼˈ;->ˈ:Lˋˋ/ˋᵔ;

    :cond_1
    iget-object p1, p0, Lˋˋ/ʼˈ;->ˈ:Lˋˋ/ˋᵔ;

    return-object p1
.end method

.method public final ˑﹳ(Lˋˋ/ʻᵎ;)Lʼﾞ/ᵎⁱ;
    .locals 2

    .prologue
    iget-object v0, p0, Lˋˋ/ʼˈ;->ʽ:Lˋˋ/ˋᵔ;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lʼﾞ/ᵎⁱ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lˋˋ/ʻᵎ;

    if-eq v0, p1, :cond_1

    :cond_0
    new-instance v0, Lˋˋ/ˋᵔ;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lˋˋ/ˋᵔ;-><init>(Lˋˋ/ʻᵎ;I)V

    iput-object v0, p0, Lˋˋ/ʼˈ;->ʽ:Lˋˋ/ˋᵔ;

    :cond_1
    iget-object p1, p0, Lˋˋ/ʼˈ;->ʽ:Lˋˋ/ˋᵔ;

    return-object p1
.end method

.method public final ﹳٴ(Lˋˋ/ʻᵎ;Landroid/view/View;)[I
    .locals 4

    .prologue
    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1}, Lˋˋ/ʻᵎ;->ˑﹳ()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lˋˋ/ʼˈ;->ˈ(Lˋˋ/ʻᵎ;)Lʼﾞ/ᵎⁱ;

    move-result-object v1

    invoke-static {p2, v1}, Lˋˋ/ʼˈ;->ⁱˊ(Landroid/view/View;Lʼﾞ/ᵎⁱ;)I

    move-result v1

    aput v1, v0, v2

    goto :goto_0

    :cond_0
    aput v2, v0, v2

    :goto_0
    invoke-virtual {p1}, Lˋˋ/ʻᵎ;->ﾞᴵ()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lˋˋ/ʼˈ;->ˑﹳ(Lˋˋ/ʻᵎ;)Lʼﾞ/ᵎⁱ;

    move-result-object p1

    invoke-static {p2, p1}, Lˋˋ/ʼˈ;->ⁱˊ(Landroid/view/View;Lʼﾞ/ᵎⁱ;)I

    move-result p1

    aput p1, v0, v3

    return-object v0

    :cond_1
    aput v2, v0, v3

    return-object v0
.end method

.method public final ﾞᴵ()V
    .locals 4

    .prologue
    iget-object v0, p0, Lˋˋ/ʼˈ;->ﹳٴ:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lˋˋ/ʻᵎ;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ﾞᴵ()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lˋˋ/ʼˈ;->ˑﹳ(Lˋˋ/ʻᵎ;)Lʼﾞ/ᵎⁱ;

    move-result-object v1

    invoke-static {v0, v1}, Lˋˋ/ʼˈ;->ʽ(Lˋˋ/ʻᵎ;Lʼﾞ/ᵎⁱ;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ˑﹳ()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lˋˋ/ʼˈ;->ˈ(Lˋˋ/ʻᵎ;)Lʼﾞ/ᵎⁱ;

    move-result-object v1

    invoke-static {v0, v1}, Lˋˋ/ʼˈ;->ʽ(Lˋˋ/ʻᵎ;Lʼﾞ/ᵎⁱ;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0, v1}, Lˋˋ/ʼˈ;->ﹳٴ(Lˋˋ/ʻᵎ;Landroid/view/View;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    if-nez v1, :cond_6

    aget v3, v0, v2

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    return-void

    :cond_6
    :goto_2
    iget-object v3, p0, Lˋˋ/ʼˈ;->ﹳٴ:Landroidx/recyclerview/widget/RecyclerView;

    aget v0, v0, v2

    invoke-virtual {v3, v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->ʻˋ(II)V

    return-void
.end method
