.class public Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
.super Lˋˋ/ʻᵎ;
.source "SourceFile"

# interfaces
.implements Lˋˋ/ʽᵔ;


# instance fields
.field public final ʻٴ:Lˋˋ/ٴᵢ;

.field public final ʼʼ:Ljava/util/BitSet;

.field public final ʼᐧ:I

.field public final ʽʽ:I

.field public ʽﹳ:I

.field public ʾˋ:I

.field public ʾᵎ:Z

.field public ˈٴ:Z

.field public final ˉٴ:Lˋˋ/ʾﾞ;

.field public ˊʻ:Lˋˋ/ʻᴵ;

.field public final ˏי:I

.field public final יـ:Lʼﾞ/ᵎⁱ;

.field public ـˆ:Z

.field public ٴʼ:[I

.field public final ٴᵢ:Landroid/graphics/Rect;

.field public final ᴵˊ:Lﹳʽ/ˊʻ;

.field public ᴵᵔ:Z

.field public final ᵎˊ:Landroidx/leanback/widget/ᵔʾ;

.field public final ᵎⁱ:Z

.field public final ᵔﹳ:[Lˋˋ/ـˊ;

.field public ᵢˏ:I

.field public final ﹳᐧ:Lʼﾞ/ᵎⁱ;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    .prologue
    invoke-direct {p0}, Lˋˋ/ʻᵎ;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʼᐧ:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ـˆ:Z

    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʾᵎ:Z

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵢˏ:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʾˋ:I

    new-instance v0, Lﹳʽ/ˊʻ;

    const/16 v2, 0x15

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lﹳʽ/ˊʻ;-><init>(IZ)V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᴵˊ:Lﹳʽ/ˊʻ;

    const/4 v2, 0x2

    iput v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʽʽ:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ٴᵢ:Landroid/graphics/Rect;

    new-instance v2, Lˋˋ/ʾﾞ;

    invoke-direct {v2, p0}, Lˋˋ/ʾﾞ;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V

    iput-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˉٴ:Lˋˋ/ʾﾞ;

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵎⁱ:Z

    new-instance v3, Landroidx/leanback/widget/ᵔʾ;

    const/16 v4, 0x15

    invoke-direct {v3, v4, p0}, Landroidx/leanback/widget/ᵔʾ;-><init>(ILjava/lang/Object;)V

    iput-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵎˊ:Landroidx/leanback/widget/ᵔʾ;

    invoke-static {p1, p2, p3, p4}, Lˋˋ/ʻᵎ;->ᵔٴ(Landroid/content/Context;Landroid/util/AttributeSet;II)Lˋˋ/ᴵʼ;

    move-result-object p1

    iget p2, p1, Lˋˋ/ᴵʼ;->ﹳٴ:I

    if-eqz p2, :cond_1

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid orientation."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʽ(Ljava/lang/String;)V

    iget p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˏי:I

    if-ne p2, p4, :cond_2

    goto :goto_1

    :cond_2
    iput p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˏי:I

    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->יـ:Lʼﾞ/ᵎⁱ;

    iput-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    iput-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->יـ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ـˊ()V

    :goto_1
    iget p2, p1, Lˋˋ/ᴵʼ;->ⁱˊ:I

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʽ(Ljava/lang/String;)V

    iget p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʼᐧ:I

    if-eq p2, p4, :cond_4

    invoke-virtual {v0}, Lﹳʽ/ˊʻ;->ٴﹶ()V

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ـˊ()V

    iput p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʼᐧ:I

    new-instance p2, Ljava/util/BitSet;

    iget p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʼᐧ:I

    invoke-direct {p2, p4}, Ljava/util/BitSet;-><init>(I)V

    iput-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʼʼ:Ljava/util/BitSet;

    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʼᐧ:I

    new-array p2, p2, [Lˋˋ/ـˊ;

    iput-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵔﹳ:[Lˋˋ/ـˊ;

    move p2, v1

    :goto_2
    iget p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʼᐧ:I

    if-ge p2, p4, :cond_3

    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵔﹳ:[Lˋˋ/ـˊ;

    new-instance v0, Lˋˋ/ـˊ;

    invoke-direct {v0, p0, p2}, Lˋˋ/ـˊ;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;I)V

    aput-object v0, p4, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ـˊ()V

    :cond_4
    iget-boolean p1, p1, Lˋˋ/ᴵʼ;->ʽ:Z

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʽ(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˊʻ:Lˋˋ/ʻᴵ;

    if-eqz p2, :cond_5

    iget-boolean p3, p2, Lˋˋ/ʻᴵ;->ˉٴ:Z

    if-eq p3, p1, :cond_5

    iput-boolean p1, p2, Lˋˋ/ʻᴵ;->ˉٴ:Z

    :cond_5
    iput-boolean p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ـˆ:Z

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ـˊ()V

    new-instance p1, Lˋˋ/ٴᵢ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p1, Lˋˋ/ٴᵢ;->ﹳٴ:Z

    iput v1, p1, Lˋˋ/ٴᵢ;->ﾞᴵ:I

    iput v1, p1, Lˋˋ/ٴᵢ;->ᵎﹶ:I

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʻٴ:Lˋˋ/ٴᵢ;

    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˏי:I

    invoke-static {p0, p1}, Lʼﾞ/ᵎⁱ;->ⁱˊ(Lˋˋ/ʻᵎ;I)Lʼﾞ/ᵎⁱ;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˏי:I

    sub-int/2addr v2, p1

    invoke-static {p0, v2}, Lʼﾞ/ᵎⁱ;->ⁱˊ(Lˋˋ/ʻᵎ;I)Lʼﾞ/ᵎⁱ;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->יـ:Lʼﾞ/ᵎⁱ;

    return-void
.end method

.method public static ˉʽ(III)I
    .locals 2

    .prologue
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return p0

    :cond_2
    :goto_1
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    sub-int/2addr p0, p1

    sub-int/2addr p0, p2

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final ʻʼ(ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I
    .locals 3

    .prologue
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˎـ(ILˋˋ/ᐧﹶ;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʻٴ:Lˋˋ/ٴᵢ;

    invoke-virtual {p0, p2, v0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˎˉ(Lˋˋ/ʻˋ;Lˋˋ/ٴᵢ;Lˋˋ/ᐧﹶ;)I

    move-result p3

    iget v2, v0, Lˋˋ/ٴᵢ;->ⁱˊ:I

    if-ge v2, p3, :cond_1

    goto :goto_0

    :cond_1
    if-gez p1, :cond_2

    neg-int p1, p3

    goto :goto_0

    :cond_2
    move p1, p3

    :goto_0
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    neg-int v2, p1

    invoke-virtual {p3, v2}, Lʼﾞ/ᵎⁱ;->ᵔﹳ(I)V

    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʾᵎ:Z

    iput-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˈٴ:Z

    iput v1, v0, Lˋˋ/ٴᵢ;->ⁱˊ:I

    invoke-virtual {p0, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵢʻ(Lˋˋ/ʻˋ;Lˋˋ/ٴᵢ;)V

    return p1

    :cond_3
    :goto_1
    return v1
.end method

.method public final ʻٴ(Landroid/view/ViewGroup$LayoutParams;)Lˋˋ/ˊᵔ;
    .locals 1

    .prologue
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lˋˋ/ⁱˉ;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lˋˋ/ˊᵔ;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_0
    new-instance v0, Lˋˋ/ⁱˉ;

    invoke-direct {v0, p1}, Lˋˋ/ˊᵔ;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final ʻᵎ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;Landroid/view/View;Lˊˋ/ᵔᵢ;)V
    .locals 2

    .prologue
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p2, p1, Lˋˋ/ⁱˉ;

    if-nez p2, :cond_0

    invoke-virtual {p0, p3, p4}, Lˋˋ/ʻᵎ;->ᴵʼ(Landroid/view/View;Lˊˋ/ᵔᵢ;)V

    return-void

    :cond_0
    check-cast p1, Lˋˋ/ⁱˉ;

    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˏי:I

    const/4 p3, 0x0

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-nez p2, :cond_2

    iget-object p1, p1, Lˋˋ/ⁱˉ;->ˑﹳ:Lˋˋ/ـˊ;

    if-nez p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    iget p1, p1, Lˋˋ/ـˊ;->ˑﹳ:I

    :goto_0
    invoke-static {p3, p1, v0, v1, v1}, Lʾﹶ/ʽ;->ˈ(ZIIII)Lʾﹶ/ʽ;

    move-result-object p1

    invoke-virtual {p4, p1}, Lˊˋ/ᵔᵢ;->ﾞʻ(Lʾﹶ/ʽ;)V

    return-void

    :cond_2
    iget-object p1, p1, Lˋˋ/ⁱˉ;->ˑﹳ:Lˋˋ/ـˊ;

    if-nez p1, :cond_3

    move p1, v1

    goto :goto_1

    :cond_3
    iget p1, p1, Lˋˋ/ـˊ;->ˑﹳ:I

    :goto_1
    invoke-static {p3, v1, v1, p1, v0}, Lʾﹶ/ʽ;->ˈ(ZIIII)Lʾﹶ/ʽ;

    move-result-object p1

    invoke-virtual {p4, p1}, Lˊˋ/ᵔᵢ;->ﾞʻ(Lʾﹶ/ʽ;)V

    return-void
.end method

.method public final ʼˈ()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ـˆ:Z

    return v0
.end method

.method public final ʼˎ(IILˋˋ/ᐧﹶ;Lˋˋ/ʽʽ;)V
    .locals 4

    .prologue
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˏי:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result p2

    if-eqz p2, :cond_7

    if-nez p1, :cond_1

    goto :goto_5

    :cond_1
    invoke-virtual {p0, p1, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˎـ(ILˋˋ/ᐧﹶ;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ٴʼ:[I

    if-eqz p1, :cond_2

    array-length p1, p1

    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʼᐧ:I

    if-ge p1, p2, :cond_3

    :cond_2
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʼᐧ:I

    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ٴʼ:[I

    :cond_3
    const/4 p1, 0x0

    move p2, p1

    move v0, p2

    :goto_1
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʼᐧ:I

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʻٴ:Lˋˋ/ٴᵢ;

    if-ge p2, v1, :cond_6

    iget v1, v2, Lˋˋ/ٴᵢ;->ˈ:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_4

    iget v1, v2, Lˋˋ/ٴᵢ;->ﾞᴵ:I

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵔﹳ:[Lˋˋ/ـˊ;

    aget-object v2, v2, p2

    invoke-virtual {v2, v1}, Lˋˋ/ـˊ;->ˆʾ(I)I

    move-result v2

    :goto_2
    sub-int/2addr v1, v2

    goto :goto_3

    :cond_4
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵔﹳ:[Lˋˋ/ـˊ;

    aget-object v1, v1, p2

    iget v3, v2, Lˋˋ/ٴᵢ;->ᵎﹶ:I

    invoke-virtual {v1, v3}, Lˋˋ/ـˊ;->ᵔᵢ(I)I

    move-result v1

    iget v2, v2, Lˋˋ/ٴᵢ;->ᵎﹶ:I

    goto :goto_2

    :goto_3
    if-ltz v1, :cond_5

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ٴʼ:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_6
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ٴʼ:[I

    invoke-static {p2, p1, v0}, Ljava/util/Arrays;->sort([III)V

    :goto_4
    if-ge p1, v0, :cond_7

    iget p2, v2, Lˋˋ/ٴᵢ;->ʽ:I

    if-ltz p2, :cond_7

    invoke-virtual {p3}, Lˋˋ/ᐧﹶ;->ⁱˊ()I

    move-result v1

    if-ge p2, v1, :cond_7

    iget p2, v2, Lˋˋ/ٴᵢ;->ʽ:I

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ٴʼ:[I

    aget v1, v1, p1

    invoke-virtual {p4, p2, v1}, Lˋˋ/ʽʽ;->ⁱˊ(II)V

    iget p2, v2, Lˋˋ/ٴᵢ;->ʽ:I

    iget v1, v2, Lˋˋ/ٴᵢ;->ˈ:I

    add-int/2addr p2, v1

    iput p2, v2, Lˋˋ/ٴᵢ;->ʽ:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    return-void
.end method

.method public final ʼᐧ(Lˋˋ/ᐧﹶ;)I
    .locals 7

    .prologue
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵎⁱ:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵢˋ(Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᵢ(Z)Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵎⁱ:Z

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    move-object v5, p0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lˋˋ/ⁱˊ;->ᵔᵢ(Lˋˋ/ᐧﹶ;Lʼﾞ/ᵎⁱ;Landroid/view/View;Landroid/view/View;Lˋˋ/ʻᵎ;Z)I

    move-result p1

    return p1
.end method

.method public final ʽ(Ljava/lang/String;)V
    .locals 1

    .prologue
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˊʻ:Lˋˋ/ʻᴵ;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lˋˋ/ʻᵎ;->ʽ(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final ʽʾ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;Z)V
    .locals 16

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˊʻ:Lˋˋ/ʻᴵ;

    const/4 v4, -0x1

    iget-object v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˉٴ:Lˋˋ/ʾﾞ;

    if-nez v3, :cond_0

    iget v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵢˏ:I

    if-eq v3, v4, :cond_1

    :cond_0
    invoke-virtual {v2}, Lˋˋ/ᐧﹶ;->ⁱˊ()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual/range {p0 .. p1}, Lˋˋ/ʻᵎ;->ˎᐧ(Lˋˋ/ʻˋ;)V

    invoke-virtual {v5}, Lˋˋ/ʾﾞ;->ﹳٴ()V

    return-void

    :cond_1
    iget-boolean v3, v5, Lˋˋ/ʾﾞ;->ˑﹳ:Z

    iget-object v6, v5, Lˋˋ/ʾﾞ;->ᵎﹶ:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v3, :cond_3

    iget v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵢˏ:I

    if-ne v3, v4, :cond_3

    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˊʻ:Lˋˋ/ʻᴵ;

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v3, v7

    goto :goto_1

    :cond_3
    :goto_0
    move v3, v8

    :goto_1
    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᴵˊ:Lﹳʽ/ˊʻ;

    const/high16 v10, -0x80000000

    if-eqz v3, :cond_25

    invoke-virtual {v5}, Lˋˋ/ʾﾞ;->ﹳٴ()V

    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˊʻ:Lˋˋ/ʻᴵ;

    if-eqz v11, :cond_a

    iget v12, v11, Lˋˋ/ʻᴵ;->ʽʽ:I

    const/4 v13, 0x0

    if-lez v12, :cond_7

    iget v14, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʼᐧ:I

    if-ne v12, v14, :cond_6

    move v11, v7

    :goto_2
    iget v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʼᐧ:I

    if-ge v11, v12, :cond_7

    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵔﹳ:[Lˋˋ/ـˊ;

    aget-object v12, v12, v11

    invoke-virtual {v12}, Lˋˋ/ـˊ;->ⁱˊ()V

    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˊʻ:Lˋˋ/ʻᴵ;

    iget-object v14, v12, Lˋˋ/ʻᴵ;->ˈٴ:[I

    aget v14, v14, v11

    if-eq v14, v10, :cond_5

    iget-boolean v12, v12, Lˋˋ/ʻᴵ;->ᵎⁱ:Z

    if-eqz v12, :cond_4

    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v12}, Lʼﾞ/ᵎⁱ;->ʼˎ()I

    move-result v12

    :goto_3
    add-int/2addr v14, v12

    goto :goto_4

    :cond_4
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v12}, Lʼﾞ/ᵎⁱ;->ˉʿ()I

    move-result v12

    goto :goto_3

    :cond_5
    :goto_4
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵔﹳ:[Lˋˋ/ـˊ;

    aget-object v12, v12, v11

    iput v14, v12, Lˋˋ/ـˊ;->ⁱˊ:I

    iput v14, v12, Lˋˋ/ـˊ;->ʽ:I

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_6
    iput-object v13, v11, Lˋˋ/ʻᴵ;->ˈٴ:[I

    iput v7, v11, Lˋˋ/ʻᴵ;->ʽʽ:I

    iput v7, v11, Lˋˋ/ʻᴵ;->ᴵᵔ:I

    iput-object v13, v11, Lˋˋ/ʻᴵ;->ˊʻ:[I

    iput-object v13, v11, Lˋˋ/ʻᴵ;->ٴᵢ:Ljava/util/ArrayList;

    iget v12, v11, Lˋˋ/ʻᴵ;->ᴵˊ:I

    iput v12, v11, Lˋˋ/ʻᴵ;->ʾˋ:I

    :cond_7
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˊʻ:Lˋˋ/ʻᴵ;

    iget-boolean v12, v11, Lˋˋ/ʻᴵ;->ٴʼ:Z

    iput-boolean v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᴵᵔ:Z

    iget-boolean v11, v11, Lˋˋ/ʻᴵ;->ˉٴ:Z

    invoke-virtual {v0, v13}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʽ(Ljava/lang/String;)V

    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˊʻ:Lˋˋ/ʻᴵ;

    if-eqz v12, :cond_8

    iget-boolean v13, v12, Lˋˋ/ʻᴵ;->ˉٴ:Z

    if-eq v13, v11, :cond_8

    iput-boolean v11, v12, Lˋˋ/ʻᴵ;->ˉٴ:Z

    :cond_8
    iput-boolean v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ـˆ:Z

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ـˊ()V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˆˎ()V

    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˊʻ:Lˋˋ/ʻᴵ;

    iget v12, v11, Lˋˋ/ʻᴵ;->ʾˋ:I

    if-eq v12, v4, :cond_9

    iput v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵢˏ:I

    iget-boolean v12, v11, Lˋˋ/ʻᴵ;->ᵎⁱ:Z

    iput-boolean v12, v5, Lˋˋ/ʾﾞ;->ʽ:Z

    goto :goto_5

    :cond_9
    iget-boolean v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʾᵎ:Z

    iput-boolean v12, v5, Lˋˋ/ʾﾞ;->ʽ:Z

    :goto_5
    iget v12, v11, Lˋˋ/ʻᴵ;->ᴵᵔ:I

    if-le v12, v8, :cond_b

    iget-object v12, v11, Lˋˋ/ʻᴵ;->ˊʻ:[I

    iput-object v12, v9, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    iget-object v11, v11, Lˋˋ/ʻᴵ;->ٴᵢ:Ljava/util/ArrayList;

    iput-object v11, v9, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    goto :goto_6

    :cond_a
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˆˎ()V

    iget-boolean v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʾᵎ:Z

    iput-boolean v11, v5, Lˋˋ/ʾﾞ;->ʽ:Z

    :cond_b
    :goto_6
    iget-boolean v11, v2, Lˋˋ/ᐧﹶ;->ᵎﹶ:Z

    if-nez v11, :cond_20

    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵢˏ:I

    if-ne v11, v4, :cond_c

    goto/16 :goto_10

    :cond_c
    if-ltz v11, :cond_1f

    invoke-virtual {v2}, Lˋˋ/ᐧﹶ;->ⁱˊ()I

    move-result v12

    if-lt v11, v12, :cond_d

    goto/16 :goto_f

    :cond_d
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˊʻ:Lˋˋ/ʻᴵ;

    if-eqz v11, :cond_f

    iget v12, v11, Lˋˋ/ʻᴵ;->ʾˋ:I

    if-eq v12, v4, :cond_f

    iget v11, v11, Lˋˋ/ʻᴵ;->ʽʽ:I

    if-ge v11, v8, :cond_e

    goto :goto_7

    :cond_e
    iput v10, v5, Lˋˋ/ʾﾞ;->ⁱˊ:I

    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵢˏ:I

    iput v11, v5, Lˋˋ/ʾﾞ;->ﹳٴ:I

    goto/16 :goto_14

    :cond_f
    :goto_7
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵢˏ:I

    invoke-virtual {v0, v11}, Lˋˋ/ʻᵎ;->יـ(I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_17

    iget-boolean v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʾᵎ:Z

    if-eqz v12, :cond_10

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ٴʿ()I

    move-result v12

    goto :goto_8

    :cond_10
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵔⁱ()I

    move-result v12

    :goto_8
    iput v12, v5, Lˋˋ/ʾﾞ;->ﹳٴ:I

    iget v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʾˋ:I

    if-eq v12, v10, :cond_12

    iget-boolean v12, v5, Lˋˋ/ʾﾞ;->ʽ:Z

    if-eqz v12, :cond_11

    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v12}, Lʼﾞ/ᵎⁱ;->ʼˎ()I

    move-result v12

    iget v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʾˋ:I

    sub-int/2addr v12, v13

    iget-object v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v13, v11}, Lʼﾞ/ᵎⁱ;->ˈ(Landroid/view/View;)I

    move-result v11

    sub-int/2addr v12, v11

    iput v12, v5, Lˋˋ/ʾﾞ;->ⁱˊ:I

    goto/16 :goto_14

    :cond_11
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v12}, Lʼﾞ/ᵎⁱ;->ˉʿ()I

    move-result v12

    iget v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʾˋ:I

    add-int/2addr v12, v13

    iget-object v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v13, v11}, Lʼﾞ/ᵎⁱ;->ᵎﹶ(Landroid/view/View;)I

    move-result v11

    sub-int/2addr v12, v11

    iput v12, v5, Lˋˋ/ʾﾞ;->ⁱˊ:I

    goto/16 :goto_14

    :cond_12
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v12, v11}, Lʼﾞ/ᵎⁱ;->ˑﹳ(Landroid/view/View;)I

    move-result v12

    iget-object v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v13}, Lʼﾞ/ᵎⁱ;->ᵔʾ()I

    move-result v13

    if-le v12, v13, :cond_14

    iget-boolean v11, v5, Lˋˋ/ʾﾞ;->ʽ:Z

    if-eqz v11, :cond_13

    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v11}, Lʼﾞ/ᵎⁱ;->ʼˎ()I

    move-result v11

    goto :goto_9

    :cond_13
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v11}, Lʼﾞ/ᵎⁱ;->ˉʿ()I

    move-result v11

    :goto_9
    iput v11, v5, Lˋˋ/ʾﾞ;->ⁱˊ:I

    goto/16 :goto_14

    :cond_14
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v12, v11}, Lʼﾞ/ᵎⁱ;->ᵎﹶ(Landroid/view/View;)I

    move-result v12

    iget-object v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v13}, Lʼﾞ/ᵎⁱ;->ˉʿ()I

    move-result v13

    sub-int/2addr v12, v13

    if-gez v12, :cond_15

    neg-int v11, v12

    iput v11, v5, Lˋˋ/ʾﾞ;->ⁱˊ:I

    goto/16 :goto_14

    :cond_15
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v12}, Lʼﾞ/ᵎⁱ;->ʼˎ()I

    move-result v12

    iget-object v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v13, v11}, Lʼﾞ/ᵎⁱ;->ˈ(Landroid/view/View;)I

    move-result v11

    sub-int/2addr v12, v11

    if-gez v12, :cond_16

    iput v12, v5, Lˋˋ/ʾﾞ;->ⁱˊ:I

    goto/16 :goto_14

    :cond_16
    iput v10, v5, Lˋˋ/ʾﾞ;->ⁱˊ:I

    goto/16 :goto_14

    :cond_17
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵢˏ:I

    iput v11, v5, Lˋˋ/ʾﾞ;->ﹳٴ:I

    iget v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʾˋ:I

    if-ne v12, v10, :cond_1d

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v12

    if-nez v12, :cond_18

    iget-boolean v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʾᵎ:Z

    if-eqz v11, :cond_1a

    goto :goto_b

    :cond_18
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵔⁱ()I

    move-result v12

    if-ge v11, v12, :cond_19

    move v11, v8

    goto :goto_a

    :cond_19
    move v11, v7

    :goto_a
    iget-boolean v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʾᵎ:Z

    if-eq v11, v12, :cond_1b

    :cond_1a
    move v11, v7

    goto :goto_c

    :cond_1b
    :goto_b
    move v11, v8

    :goto_c
    iput-boolean v11, v5, Lˋˋ/ʾﾞ;->ʽ:Z

    if-eqz v11, :cond_1c

    iget-object v11, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v11}, Lʼﾞ/ᵎⁱ;->ʼˎ()I

    move-result v11

    goto :goto_d

    :cond_1c
    iget-object v11, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v11}, Lʼﾞ/ᵎⁱ;->ˉʿ()I

    move-result v11

    :goto_d
    iput v11, v5, Lˋˋ/ʾﾞ;->ⁱˊ:I

    goto :goto_e

    :cond_1d
    iget-boolean v11, v5, Lˋˋ/ʾﾞ;->ʽ:Z

    if-eqz v11, :cond_1e

    iget-object v11, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v11}, Lʼﾞ/ᵎⁱ;->ʼˎ()I

    move-result v11

    sub-int/2addr v11, v12

    iput v11, v5, Lˋˋ/ʾﾞ;->ⁱˊ:I

    goto :goto_e

    :cond_1e
    iget-object v11, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v11}, Lʼﾞ/ᵎⁱ;->ˉʿ()I

    move-result v11

    add-int/2addr v11, v12

    iput v11, v5, Lˋˋ/ʾﾞ;->ⁱˊ:I

    :goto_e
    iput-boolean v8, v5, Lˋˋ/ʾﾞ;->ˈ:Z

    goto :goto_14

    :cond_1f
    :goto_f
    iput v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵢˏ:I

    iput v10, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʾˋ:I

    :cond_20
    :goto_10
    iget-boolean v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˈٴ:Z

    if-eqz v11, :cond_23

    invoke-virtual {v2}, Lˋˋ/ᐧﹶ;->ⁱˊ()I

    move-result v11

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v12

    sub-int/2addr v12, v8

    :goto_11
    if-ltz v12, :cond_22

    invoke-virtual {v0, v12}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v13

    invoke-static {v13}, Lˋˋ/ʻᵎ;->ˆﾞ(Landroid/view/View;)I

    move-result v13

    if-ltz v13, :cond_21

    if-ge v13, v11, :cond_21

    goto :goto_13

    :cond_21
    add-int/lit8 v12, v12, -0x1

    goto :goto_11

    :cond_22
    move v13, v7

    goto :goto_13

    :cond_23
    invoke-virtual {v2}, Lˋˋ/ᐧﹶ;->ⁱˊ()I

    move-result v11

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v12

    move v13, v7

    :goto_12
    if-ge v13, v12, :cond_22

    invoke-virtual {v0, v13}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v14

    invoke-static {v14}, Lˋˋ/ʻᵎ;->ˆﾞ(Landroid/view/View;)I

    move-result v14

    if-ltz v14, :cond_24

    if-ge v14, v11, :cond_24

    move v13, v14

    goto :goto_13

    :cond_24
    add-int/lit8 v13, v13, 0x1

    goto :goto_12

    :goto_13
    iput v13, v5, Lˋˋ/ʾﾞ;->ﹳٴ:I

    iput v10, v5, Lˋˋ/ʾﾞ;->ⁱˊ:I

    :goto_14
    iput-boolean v8, v5, Lˋˋ/ʾﾞ;->ˑﹳ:Z

    :cond_25
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˊʻ:Lˋˋ/ʻᴵ;

    if-nez v11, :cond_27

    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵢˏ:I

    if-ne v11, v4, :cond_27

    iget-boolean v11, v5, Lˋˋ/ʾﾞ;->ʽ:Z

    iget-boolean v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˈٴ:Z

    if-ne v11, v12, :cond_26

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˏⁱ()Z

    move-result v11

    iget-boolean v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᴵᵔ:Z

    if-eq v11, v12, :cond_27

    :cond_26
    invoke-virtual {v9}, Lﹳʽ/ˊʻ;->ٴﹶ()V

    iput-boolean v8, v5, Lˋˋ/ʾﾞ;->ˈ:Z

    :cond_27
    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v9

    if-lez v9, :cond_36

    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˊʻ:Lˋˋ/ʻᴵ;

    if-eqz v9, :cond_28

    iget v9, v9, Lˋˋ/ʻᴵ;->ʽʽ:I

    if-ge v9, v8, :cond_36

    :cond_28
    iget-boolean v9, v5, Lˋˋ/ʾﾞ;->ˈ:Z

    if-eqz v9, :cond_2a

    move v3, v7

    :goto_15
    iget v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʼᐧ:I

    if-ge v3, v6, :cond_36

    iget-object v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵔﹳ:[Lˋˋ/ـˊ;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lˋˋ/ـˊ;->ⁱˊ()V

    iget v6, v5, Lˋˋ/ʾﾞ;->ⁱˊ:I

    if-eq v6, v10, :cond_29

    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵔﹳ:[Lˋˋ/ـˊ;

    aget-object v9, v9, v3

    iput v6, v9, Lˋˋ/ـˊ;->ⁱˊ:I

    iput v6, v9, Lˋˋ/ـˊ;->ʽ:I

    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_2a
    if-nez v3, :cond_2c

    iget-object v3, v5, Lˋˋ/ʾﾞ;->ﾞᴵ:[I

    if-nez v3, :cond_2b

    goto :goto_17

    :cond_2b
    move v3, v7

    :goto_16
    iget v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʼᐧ:I

    if-ge v3, v6, :cond_36

    iget-object v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵔﹳ:[Lˋˋ/ـˊ;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lˋˋ/ـˊ;->ⁱˊ()V

    iget-object v9, v5, Lˋˋ/ʾﾞ;->ﾞᴵ:[I

    aget v9, v9, v3

    iput v9, v6, Lˋˋ/ـˊ;->ⁱˊ:I

    iput v9, v6, Lˋˋ/ـˊ;->ʽ:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_2c
    :goto_17
    move v3, v7

    :goto_18
    iget v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʼᐧ:I

    if-ge v3, v9, :cond_33

    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵔﹳ:[Lˋˋ/ـˊ;

    aget-object v9, v9, v3

    iget-boolean v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʾᵎ:Z

    iget v12, v5, Lˋˋ/ʾﾞ;->ⁱˊ:I

    iget-object v13, v9, Lˋˋ/ـˊ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v13, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v11, :cond_2d

    invoke-virtual {v9, v10}, Lˋˋ/ـˊ;->ᵔᵢ(I)I

    move-result v14

    goto :goto_19

    :cond_2d
    invoke-virtual {v9, v10}, Lˋˋ/ـˊ;->ˆʾ(I)I

    move-result v14

    :goto_19
    invoke-virtual {v9}, Lˋˋ/ـˊ;->ⁱˊ()V

    if-ne v14, v10, :cond_2e

    goto :goto_1a

    :cond_2e
    if-eqz v11, :cond_2f

    iget-object v15, v13, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v15}, Lʼﾞ/ᵎⁱ;->ʼˎ()I

    move-result v15

    if-lt v14, v15, :cond_32

    :cond_2f
    if-nez v11, :cond_30

    iget-object v11, v13, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v11}, Lʼﾞ/ᵎⁱ;->ˉʿ()I

    move-result v11

    if-le v14, v11, :cond_30

    goto :goto_1a

    :cond_30
    if-eq v12, v10, :cond_31

    add-int/2addr v14, v12

    :cond_31
    iput v14, v9, Lˋˋ/ـˊ;->ʽ:I

    iput v14, v9, Lˋˋ/ـˊ;->ⁱˊ:I

    :cond_32
    :goto_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_33
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵔﹳ:[Lˋˋ/ـˊ;

    array-length v9, v3

    iget-object v11, v5, Lˋˋ/ʾﾞ;->ﾞᴵ:[I

    if-eqz v11, :cond_34

    array-length v11, v11

    if-ge v11, v9, :cond_35

    :cond_34
    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵔﹳ:[Lˋˋ/ـˊ;

    array-length v6, v6

    new-array v6, v6, [I

    iput-object v6, v5, Lˋˋ/ʾﾞ;->ﾞᴵ:[I

    :cond_35
    move v6, v7

    :goto_1b
    if-ge v6, v9, :cond_36

    iget-object v11, v5, Lˋˋ/ʾﾞ;->ﾞᴵ:[I

    aget-object v12, v3, v6

    invoke-virtual {v12, v10}, Lˋˋ/ـˊ;->ˆʾ(I)I

    move-result v12

    aput v12, v11, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    :cond_36
    invoke-virtual/range {p0 .. p1}, Lˋˋ/ʻᵎ;->ᵔﹳ(Lˋˋ/ʻˋ;)V

    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʻٴ:Lˋˋ/ٴᵢ;

    iput-boolean v7, v3, Lˋˋ/ٴᵢ;->ﹳٴ:Z

    iget-object v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->יـ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v6}, Lʼﾞ/ᵎⁱ;->ᵔʾ()I

    move-result v6

    iget v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʼᐧ:I

    div-int v9, v6, v9

    iput v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʽﹳ:I

    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->יـ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v9}, Lʼﾞ/ᵎⁱ;->ٴﹶ()I

    move-result v9

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    iget v6, v5, Lˋˋ/ʾﾞ;->ﹳٴ:I

    invoke-virtual {v0, v6, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﾞˊ(ILˋˋ/ᐧﹶ;)V

    iget-boolean v6, v5, Lˋˋ/ʾﾞ;->ʽ:Z

    if-eqz v6, :cond_37

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵢᐧ(I)V

    invoke-virtual {v0, v1, v3, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˎˉ(Lˋˋ/ʻˋ;Lˋˋ/ٴᵢ;Lˋˋ/ᐧﹶ;)I

    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵢᐧ(I)V

    iget v4, v5, Lˋˋ/ʾﾞ;->ﹳٴ:I

    iget v6, v3, Lˋˋ/ٴᵢ;->ˈ:I

    add-int/2addr v4, v6

    iput v4, v3, Lˋˋ/ٴᵢ;->ʽ:I

    invoke-virtual {v0, v1, v3, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˎˉ(Lˋˋ/ʻˋ;Lˋˋ/ٴᵢ;Lˋˋ/ᐧﹶ;)I

    goto :goto_1c

    :cond_37
    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵢᐧ(I)V

    invoke-virtual {v0, v1, v3, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˎˉ(Lˋˋ/ʻˋ;Lˋˋ/ٴᵢ;Lˋˋ/ᐧﹶ;)I

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵢᐧ(I)V

    iget v4, v5, Lˋˋ/ʾﾞ;->ﹳٴ:I

    iget v6, v3, Lˋˋ/ٴᵢ;->ˈ:I

    add-int/2addr v4, v6

    iput v4, v3, Lˋˋ/ٴᵢ;->ʽ:I

    invoke-virtual {v0, v1, v3, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˎˉ(Lˋˋ/ʻˋ;Lˋˋ/ٴᵢ;Lˋˋ/ᐧﹶ;)I

    :goto_1c
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->יـ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v3}, Lʼﾞ/ᵎⁱ;->ٴﹶ()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v3, v4, :cond_38

    goto/16 :goto_21

    :cond_38
    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v3

    const/4 v4, 0x0

    move v6, v7

    :goto_1d
    if-ge v6, v3, :cond_3a

    invoke-virtual {v0, v6}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v9

    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->יـ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v11, v9}, Lʼﾞ/ᵎⁱ;->ˑﹳ(Landroid/view/View;)I

    move-result v11

    int-to-float v11, v11

    cmpg-float v12, v11, v4

    if-gez v12, :cond_39

    goto :goto_1e

    :cond_39
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lˋˋ/ⁱˉ;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v11}, Ljava/lang/Math;->max(FF)F

    move-result v4

    :goto_1e
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    :cond_3a
    iget v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʽﹳ:I

    iget v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʼᐧ:I

    int-to-float v9, v9

    mul-float/2addr v4, v9

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->יـ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v9}, Lʼﾞ/ᵎⁱ;->ٴﹶ()I

    move-result v9

    if-ne v9, v10, :cond_3b

    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->יـ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v9}, Lʼﾞ/ᵎⁱ;->ᵔʾ()I

    move-result v9

    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_3b
    iget v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʼᐧ:I

    div-int v9, v4, v9

    iput v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʽﹳ:I

    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->יـ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v9}, Lʼﾞ/ᵎⁱ;->ٴﹶ()I

    move-result v9

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    iget v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʽﹳ:I

    if-ne v4, v6, :cond_3c

    goto :goto_21

    :cond_3c
    move v4, v7

    :goto_1f
    if-ge v4, v3, :cond_3f

    invoke-virtual {v0, v4}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lˋˋ/ⁱˉ;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˏⁱ()Z

    move-result v11

    if-eqz v11, :cond_3d

    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˏי:I

    if-ne v11, v8, :cond_3d

    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʼᐧ:I

    sub-int/2addr v11, v8

    iget-object v10, v10, Lˋˋ/ⁱˉ;->ˑﹳ:Lˋˋ/ـˊ;

    iget v10, v10, Lˋˋ/ـˊ;->ˑﹳ:I

    sub-int/2addr v11, v10

    neg-int v10, v11

    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʽﹳ:I

    mul-int/2addr v11, v10

    mul-int/2addr v10, v6

    sub-int/2addr v11, v10

    invoke-virtual {v9, v11}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_20

    :cond_3d
    iget-object v10, v10, Lˋˋ/ⁱˉ;->ˑﹳ:Lˋˋ/ـˊ;

    iget v10, v10, Lˋˋ/ـˊ;->ˑﹳ:I

    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʽﹳ:I

    mul-int/2addr v11, v10

    mul-int/2addr v10, v6

    iget v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˏי:I

    if-ne v12, v8, :cond_3e

    sub-int/2addr v11, v10

    invoke-virtual {v9, v11}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_20

    :cond_3e
    sub-int/2addr v11, v10

    invoke-virtual {v9, v11}, Landroid/view/View;->offsetTopAndBottom(I)V

    :goto_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_3f
    :goto_21
    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v3

    if-lez v3, :cond_41

    iget-boolean v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʾᵎ:Z

    if-eqz v3, :cond_40

    invoke-virtual {v0, v1, v2, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˋـ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;Z)V

    invoke-virtual {v0, v1, v2, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹶʽ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;Z)V

    goto :goto_22

    :cond_40
    invoke-virtual {v0, v1, v2, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹶʽ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;Z)V

    invoke-virtual {v0, v1, v2, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˋـ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;Z)V

    :cond_41
    :goto_22
    if-eqz p3, :cond_43

    iget-boolean v3, v2, Lˋˋ/ᐧﹶ;->ᵎﹶ:Z

    if-nez v3, :cond_43

    iget v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʽʽ:I

    if-eqz v3, :cond_43

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v3

    if-lez v3, :cond_43

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ـʻ()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_43

    iget-object v3, v0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_42

    iget-object v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵎˊ:Landroidx/leanback/widget/ᵔʾ;

    invoke-virtual {v3, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_42
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˎʾ()Z

    move-result v3

    if-eqz v3, :cond_43

    goto :goto_23

    :cond_43
    move v8, v7

    :goto_23
    iget-boolean v3, v2, Lˋˋ/ᐧﹶ;->ᵎﹶ:Z

    if-eqz v3, :cond_44

    invoke-virtual {v5}, Lˋˋ/ʾﾞ;->ﹳٴ()V

    :cond_44
    iget-boolean v3, v5, Lˋˋ/ʾﾞ;->ʽ:Z

    iput-boolean v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˈٴ:Z

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˏⁱ()Z

    move-result v3

    iput-boolean v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᴵᵔ:Z

    if-eqz v8, :cond_45

    invoke-virtual {v5}, Lˋˋ/ʾﾞ;->ﹳٴ()V

    invoke-virtual {v0, v1, v2, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʽʾ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;Z)V

    :cond_45
    return-void
.end method

.method public final ʽﹳ(Landroid/content/Context;Landroid/util/AttributeSet;)Lˋˋ/ˊᵔ;
    .locals 1

    new-instance v0, Lˋˋ/ⁱˉ;

    invoke-direct {v0, p1, p2}, Lˋˋ/ˊᵔ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final ʾˊ(I)V
    .locals 0

    .prologue
    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˎʾ()Z

    :cond_0
    return-void
.end method

.method public final ʿʽ(ILˋˋ/ʻˋ;)V
    .locals 8

    .prologue
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_4

    invoke-virtual {p0, v0}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v3, v2}, Lʼﾞ/ᵎⁱ;->ᵎﹶ(Landroid/view/View;)I

    move-result v3

    if-lt v3, p1, :cond_4

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v3, v2}, Lʼﾞ/ᵎⁱ;->ʼᐧ(Landroid/view/View;)I

    move-result v3

    if-lt v3, p1, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lˋˋ/ⁱˉ;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v3, Lˋˋ/ⁱˉ;->ˑﹳ:Lˋˋ/ـˊ;

    iget-object v4, v4, Lˋˋ/ـˊ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, v3, Lˋˋ/ⁱˉ;->ˑﹳ:Lˋˋ/ـˊ;

    iget-object v4, v3, Lˋˋ/ـˊ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v6, v5, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lˋˋ/ⁱˉ;

    const/4 v7, 0x0

    iput-object v7, v6, Lˋˋ/ⁱˉ;->ˑﹳ:Lˋˋ/ـˊ;

    iget-object v7, v6, Lˋˋ/ˊᵔ;->ﹳٴ:Lˋˋ/ʼـ;

    invoke-virtual {v7}, Lˋˋ/ʼـ;->ˆʾ()Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v6, v6, Lˋˋ/ˊᵔ;->ﹳٴ:Lˋˋ/ʼـ;

    invoke-virtual {v6}, Lˋˋ/ʼـ;->ˉʿ()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    iget v6, v3, Lˋˋ/ـˊ;->ˈ:I

    iget-object v7, v3, Lˋˋ/ـˊ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v7, v4}, Lʼﾞ/ᵎⁱ;->ˑﹳ(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v6, v4

    iput v6, v3, Lˋˋ/ـˊ;->ˈ:I

    :cond_2
    const/high16 v4, -0x80000000

    if-ne v5, v1, :cond_3

    iput v4, v3, Lˋˋ/ـˊ;->ⁱˊ:I

    :cond_3
    iput v4, v3, Lˋˋ/ـˊ;->ʽ:I

    invoke-virtual {p0, v2, p2}, Lˋˋ/ʻᵎ;->ʽⁱ(Landroid/view/View;Lˋˋ/ʻˋ;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public final ʿـ(ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʻʼ(ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I

    move-result p1

    return p1
.end method

.method public final ˆʻ(Lˋˋ/ـˊ;II)V
    .locals 5

    .prologue
    iget v0, p1, Lˋˋ/ـˊ;->ˈ:I

    iget v1, p1, Lˋˋ/ـˊ;->ˑﹳ:I

    const/4 v2, -0x1

    const/high16 v3, -0x80000000

    const/4 v4, 0x0

    if-ne p2, v2, :cond_1

    iget p2, p1, Lˋˋ/ـˊ;->ⁱˊ:I

    if-eq p2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p1, Lˋˋ/ـˊ;->ﾞᴵ:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lˋˋ/ⁱˉ;

    iget-object v3, p1, Lˋˋ/ـˊ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v3, p2}, Lʼﾞ/ᵎⁱ;->ᵎﹶ(Landroid/view/View;)I

    move-result p2

    iput p2, p1, Lˋˋ/ـˊ;->ⁱˊ:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p2, p1, Lˋˋ/ـˊ;->ⁱˊ:I

    :goto_0
    add-int/2addr p2, v0

    if-gt p2, p3, :cond_3

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʼʼ:Ljava/util/BitSet;

    invoke-virtual {p1, v1, v4}, Ljava/util/BitSet;->set(IZ)V

    return-void

    :cond_1
    iget p2, p1, Lˋˋ/ـˊ;->ʽ:I

    if-eq p2, v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lˋˋ/ـˊ;->ﹳٴ()V

    iget p2, p1, Lˋˋ/ـˊ;->ʽ:I

    :goto_1
    sub-int/2addr p2, v0

    if-lt p2, p3, :cond_3

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʼʼ:Ljava/util/BitSet;

    invoke-virtual {p1, v1, v4}, Ljava/util/BitSet;->set(IZ)V

    :cond_3
    return-void
.end method

.method public final ˆˎ()V
    .locals 2

    .prologue
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˏי:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˏⁱ()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ـˆ:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʾᵎ:Z

    return-void

    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ـˆ:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʾᵎ:Z

    return-void
.end method

.method public final ˆˑ(I)Z
    .locals 4

    .prologue
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˏי:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    if-ne p1, v1, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʾᵎ:Z

    if-eq p1, v0, :cond_1

    return v3

    :cond_1
    return v2

    :cond_2
    if-ne p1, v1, :cond_3

    move p1, v3

    goto :goto_1

    :cond_3
    move p1, v2

    :goto_1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʾᵎ:Z

    if-ne p1, v0, :cond_4

    move p1, v3

    goto :goto_2

    :cond_4
    move p1, v2

    :goto_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˏⁱ()Z

    move-result v0

    if-ne p1, v0, :cond_5

    return v3

    :cond_5
    return v2
.end method

.method public final ˆﹳ(ILˋˋ/ʻˋ;)V
    .locals 6

    .prologue
    :goto_0
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v2, v1}, Lʼﾞ/ᵎⁱ;->ˈ(Landroid/view/View;)I

    move-result v2

    if-gt v2, p1, :cond_4

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v2, v1}, Lʼﾞ/ᵎⁱ;->ˉˆ(Landroid/view/View;)I

    move-result v2

    if-gt v2, p1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lˋˋ/ⁱˉ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v2, Lˋˋ/ⁱˉ;->ˑﹳ:Lˋˋ/ـˊ;

    iget-object v3, v3, Lˋˋ/ـˊ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, v2, Lˋˋ/ⁱˉ;->ˑﹳ:Lˋˋ/ـˊ;

    iget-object v3, v2, Lˋˋ/ـˊ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lˋˋ/ⁱˉ;

    const/4 v5, 0x0

    iput-object v5, v4, Lˋˋ/ⁱˉ;->ˑﹳ:Lˋˋ/ـˊ;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/high16 v5, -0x80000000

    if-nez v3, :cond_1

    iput v5, v2, Lˋˋ/ـˊ;->ʽ:I

    :cond_1
    iget-object v3, v4, Lˋˋ/ˊᵔ;->ﹳٴ:Lˋˋ/ʼـ;

    invoke-virtual {v3}, Lˋˋ/ʼـ;->ˆʾ()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v4, Lˋˋ/ˊᵔ;->ﹳٴ:Lˋˋ/ʼـ;

    invoke-virtual {v3}, Lˋˋ/ʼـ;->ˉʿ()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget v3, v2, Lˋˋ/ـˊ;->ˈ:I

    iget-object v4, v2, Lˋˋ/ـˊ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v4, v0}, Lʼﾞ/ᵎⁱ;->ˑﹳ(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v3, v0

    iput v3, v2, Lˋˋ/ـˊ;->ˈ:I

    :cond_3
    iput v5, v2, Lˋˋ/ـˊ;->ⁱˊ:I

    invoke-virtual {p0, v1, p2}, Lˋˋ/ʻᵎ;->ʽⁱ(Landroid/view/View;Lˋˋ/ʻˋ;)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public final ˈʿ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I
    .locals 0

    .prologue
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˏי:I

    if-nez p1, :cond_0

    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʼᐧ:I

    invoke-virtual {p2}, Lˋˋ/ᐧﹶ;->ⁱˊ()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final ˈˏ()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᴵˊ:Lﹳʽ/ˊʻ;

    invoke-virtual {v0}, Lﹳʽ/ˊʻ;->ٴﹶ()V

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ـˊ()V

    return-void
.end method

.method public final ˈـ()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˊʻ:Lˋˋ/ʻᴵ;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ˈⁱ(I)V
    .locals 4

    .prologue
    invoke-super {p0, p1}, Lˋˋ/ʻᵎ;->ˈⁱ(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʼᐧ:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵔﹳ:[Lˋˋ/ـˊ;

    aget-object v1, v1, v0

    iget v2, v1, Lˋˋ/ـˊ;->ⁱˊ:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_0

    add-int/2addr v2, p1

    iput v2, v1, Lˋˋ/ـˊ;->ⁱˊ:I

    :cond_0
    iget v2, v1, Lˋˋ/ـˊ;->ʽ:I

    if-eq v2, v3, :cond_1

    add-int/2addr v2, p1

    iput v2, v1, Lˋˋ/ـˊ;->ʽ:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final ˉʿ(Lˋˋ/ᐧﹶ;)I
    .locals 7

    .prologue
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵎⁱ:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵢˋ(Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᵢ(Z)Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵎⁱ:Z

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    move-object v5, p0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lˋˋ/ⁱˊ;->ᵔᵢ(Lˋˋ/ᐧﹶ;Lʼﾞ/ᵎⁱ;Landroid/view/View;Landroid/view/View;Lˋˋ/ʻᵎ;Z)I

    move-result p1

    return p1
.end method

.method public final ˉˆ(Lˋˋ/ᐧﹶ;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˑˆ(Lˋˋ/ᐧﹶ;)I

    move-result p1

    return p1
.end method

.method public final ˉـ(Lˋˋ/ᴵˑ;)V
    .locals 1

    .prologue
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᴵˊ:Lﹳʽ/ˊʻ;

    invoke-virtual {p1}, Lﹳʽ/ˊʻ;->ٴﹶ()V

    const/4 p1, 0x0

    :goto_0
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʼᐧ:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵔﹳ:[Lˋˋ/ـˊ;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lˋˋ/ـˊ;->ⁱˊ()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ˊˊ(I)I
    .locals 3

    .prologue
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵔﹳ:[Lˋˋ/ـˊ;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lˋˋ/ـˊ;->ˆʾ(I)I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʼᐧ:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵔﹳ:[Lˋˋ/ـˊ;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lˋˋ/ـˊ;->ˆʾ(I)I

    move-result v2

    if-ge v2, v0, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final ˊˋ()Z
    .locals 1

    .prologue
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʽʽ:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ˊﹳ(Landroid/view/View;II)V
    .locals 5

    .prologue
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ٴᵢ:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lˋˋ/ʻᵎ;->ˈ(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lˋˋ/ⁱˉ;

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    invoke-static {p2, v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˉʽ(III)I

    move-result p2

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v0

    invoke-static {p3, v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˉʽ(III)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3, v1}, Lˋˋ/ʻᵎ;->ʽˑ(Landroid/view/View;IILˋˋ/ˊᵔ;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    :cond_0
    return-void
.end method

.method public final ˊﾞ(III)V
    .locals 9

    .prologue
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʾᵎ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ٴʿ()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵔⁱ()I

    move-result v0

    :goto_0
    const/16 v1, 0x8

    if-ne p3, v1, :cond_2

    if-ge p1, p2, :cond_1

    add-int/lit8 v2, p2, 0x1

    :goto_1
    move v3, p1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, p1, 0x1

    move v3, p2

    goto :goto_2

    :cond_2
    add-int v2, p1, p2

    goto :goto_1

    :goto_2
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᴵˊ:Lﹳʽ/ˊʻ;

    iget-object v5, v4, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v5, [I

    if-nez v5, :cond_3

    goto/16 :goto_9

    :cond_3
    array-length v5, v5

    if-lt v3, v5, :cond_4

    goto/16 :goto_9

    :cond_4
    iget-object v5, v4, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    const/4 v6, -0x1

    if-nez v5, :cond_6

    :cond_5
    move v5, v6

    goto :goto_8

    :cond_6
    if-nez v5, :cond_7

    goto :goto_4

    :cond_7
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_3
    if-ltz v5, :cond_9

    iget-object v7, v4, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lˋˋ/ᐧˎ;

    iget v8, v7, Lˋˋ/ᐧˎ;->ʾˋ:I

    if-ne v8, v3, :cond_8

    goto :goto_5

    :cond_8
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :cond_9
    :goto_4
    const/4 v7, 0x0

    :goto_5
    if-eqz v7, :cond_a

    iget-object v5, v4, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-interface {v5, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_a
    iget-object v5, v4, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v5, :cond_c

    iget-object v8, v4, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lˋˋ/ᐧˎ;

    iget v8, v8, Lˋˋ/ᐧˎ;->ʾˋ:I

    if-lt v8, v3, :cond_b

    goto :goto_7

    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_c
    move v7, v6

    :goto_7
    if-eq v7, v6, :cond_5

    iget-object v5, v4, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lˋˋ/ᐧˎ;

    iget-object v8, v4, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    invoke-interface {v8, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget v5, v5, Lˋˋ/ᐧˎ;->ʾˋ:I

    :goto_8
    if-ne v5, v6, :cond_d

    iget-object v5, v4, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v5, [I

    array-length v7, v5

    invoke-static {v5, v3, v7, v6}, Ljava/util/Arrays;->fill([IIII)V

    iget-object v5, v4, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v5, [I

    array-length v5, v5

    goto :goto_9

    :cond_d
    add-int/lit8 v5, v5, 0x1

    iget-object v7, v4, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v7, [I

    array-length v7, v7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget-object v7, v4, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v7, [I

    invoke-static {v7, v3, v5, v6}, Ljava/util/Arrays;->fill([IIII)V

    :goto_9
    const/4 v5, 0x1

    if-eq p3, v5, :cond_10

    const/4 v6, 0x2

    if-eq p3, v6, :cond_f

    if-eq p3, v1, :cond_e

    goto :goto_a

    :cond_e
    invoke-virtual {v4, p1, v5}, Lﹳʽ/ˊʻ;->ʼʼ(II)V

    invoke-virtual {v4, p2, v5}, Lﹳʽ/ˊʻ;->ʾᵎ(II)V

    goto :goto_a

    :cond_f
    invoke-virtual {v4, p1, p2}, Lﹳʽ/ˊʻ;->ʼʼ(II)V

    goto :goto_a

    :cond_10
    invoke-virtual {v4, p1, p2}, Lﹳʽ/ˊʻ;->ʾᵎ(II)V

    :goto_a
    if-gt v2, v0, :cond_11

    goto :goto_c

    :cond_11
    iget-boolean p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʾᵎ:Z

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵔⁱ()I

    move-result p1

    goto :goto_b

    :cond_12
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ٴʿ()I

    move-result p1

    :goto_b
    if-gt v3, p1, :cond_13

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ـˊ()V

    :cond_13
    :goto_c
    return-void
.end method

.method public final ˋـ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;Z)V
    .locals 2

    .prologue
    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﾞˏ(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v0}, Lʼﾞ/ᵎⁱ;->ʼˎ()I

    move-result v0

    sub-int/2addr v0, v1

    if-lez v0, :cond_1

    neg-int v1, v0

    invoke-virtual {p0, v1, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʻʼ(ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I

    move-result p1

    neg-int p1, p1

    sub-int/2addr v0, p1

    if-eqz p3, :cond_1

    if-lez v0, :cond_1

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {p1, v0}, Lʼﾞ/ᵎⁱ;->ᵔﹳ(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final ˎʾ()Z
    .locals 2

    .prologue
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʽʽ:I

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lˋˋ/ʻᵎ;->ᵎﹶ:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʾᵎ:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ٴʿ()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵔⁱ()I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵔⁱ()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ٴʿ()I

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ـʻ()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᴵˊ:Lﹳʽ/ˊʻ;

    invoke-virtual {v0}, Lﹳʽ/ˊʻ;->ٴﹶ()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lˋˋ/ʻᵎ;->ﾞᴵ:Z

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ـˊ()V

    return v0

    :cond_2
    :goto_1
    return v1
.end method

.method public final ˎˉ(Lˋˋ/ʻˋ;Lˋˋ/ٴᵢ;Lˋˋ/ᐧﹶ;)I
    .locals 19

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʼʼ:Ljava/util/BitSet;

    const/4 v4, 0x0

    iget v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʼᐧ:I

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/BitSet;->set(IIZ)V

    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʻٴ:Lˋˋ/ٴᵢ;

    iget-boolean v5, v3, Lˋˋ/ٴᵢ;->ʼˎ:Z

    if-eqz v5, :cond_1

    iget v5, v2, Lˋˋ/ٴᵢ;->ˑﹳ:I

    if-ne v5, v6, :cond_0

    const v5, 0x7fffffff

    goto :goto_0

    :cond_0
    const/high16 v5, -0x80000000

    goto :goto_0

    :cond_1
    iget v5, v2, Lˋˋ/ٴᵢ;->ˑﹳ:I

    if-ne v5, v6, :cond_2

    iget v5, v2, Lˋˋ/ٴᵢ;->ᵎﹶ:I

    iget v9, v2, Lˋˋ/ٴᵢ;->ⁱˊ:I

    add-int/2addr v5, v9

    goto :goto_0

    :cond_2
    iget v5, v2, Lˋˋ/ٴᵢ;->ﾞᴵ:I

    iget v9, v2, Lˋˋ/ٴᵢ;->ⁱˊ:I

    sub-int/2addr v5, v9

    :goto_0
    iget v9, v2, Lˋˋ/ٴᵢ;->ˑﹳ:I

    move v10, v4

    :goto_1
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʼᐧ:I

    if-ge v10, v11, :cond_4

    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵔﹳ:[Lˋˋ/ـˊ;

    aget-object v11, v11, v10

    iget-object v11, v11, Lˋˋ/ـˊ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_2

    :cond_3
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵔﹳ:[Lˋˋ/ـˊ;

    aget-object v11, v11, v10

    invoke-virtual {v0, v11, v9, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˆʻ(Lˋˋ/ـˊ;II)V

    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_4
    iget-boolean v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʾᵎ:Z

    if-eqz v9, :cond_5

    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v9}, Lʼﾞ/ᵎⁱ;->ʼˎ()I

    move-result v9

    goto :goto_3

    :cond_5
    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v9}, Lʼﾞ/ᵎⁱ;->ˉʿ()I

    move-result v9

    :goto_3
    move v10, v4

    :goto_4
    iget v11, v2, Lˋˋ/ٴᵢ;->ʽ:I

    const/4 v12, -0x1

    if-ltz v11, :cond_1c

    invoke-virtual/range {p3 .. p3}, Lˋˋ/ᐧﹶ;->ⁱˊ()I

    move-result v13

    if-ge v11, v13, :cond_1c

    iget-boolean v11, v3, Lˋˋ/ٴᵢ;->ʼˎ:Z

    if-nez v11, :cond_6

    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʼʼ:Ljava/util/BitSet;

    invoke-virtual {v11}, Ljava/util/BitSet;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1c

    :cond_6
    iget v10, v2, Lˋˋ/ٴᵢ;->ʽ:I

    invoke-virtual {v1, v10}, Lˋˋ/ʻˋ;->ˈ(I)Landroid/view/View;

    move-result-object v10

    iget v11, v2, Lˋˋ/ٴᵢ;->ʽ:I

    iget v13, v2, Lˋˋ/ٴᵢ;->ˈ:I

    add-int/2addr v11, v13

    iput v11, v2, Lˋˋ/ٴᵢ;->ʽ:I

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lˋˋ/ⁱˉ;

    iget-object v13, v11, Lˋˋ/ˊᵔ;->ﹳٴ:Lˋˋ/ʼـ;

    invoke-virtual {v13}, Lˋˋ/ʼـ;->ˈ()I

    move-result v13

    iget-object v14, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᴵˊ:Lﹳʽ/ˊʻ;

    iget-object v15, v14, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v15, [I

    if-eqz v15, :cond_8

    array-length v8, v15

    if-lt v13, v8, :cond_7

    goto :goto_5

    :cond_7
    aget v8, v15, v13

    goto :goto_6

    :cond_8
    :goto_5
    move v8, v12

    :goto_6
    if-ne v8, v12, :cond_e

    iget v8, v2, Lˋˋ/ٴᵢ;->ˑﹳ:I

    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˆˑ(I)Z

    move-result v8

    if-eqz v8, :cond_9

    iget v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʼᐧ:I

    sub-int/2addr v8, v6

    move v15, v12

    move/from16 v16, v15

    goto :goto_7

    :cond_9
    iget v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʼᐧ:I

    move/from16 v16, v6

    move v15, v8

    move v8, v4

    :goto_7
    iget v7, v2, Lˋˋ/ٴᵢ;->ˑﹳ:I

    const/16 v17, 0x0

    if-ne v7, v6, :cond_c

    iget-object v7, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v7}, Lʼﾞ/ᵎⁱ;->ˉʿ()I

    move-result v7

    const v4, 0x7fffffff

    :goto_8
    if-eq v8, v15, :cond_b

    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵔﹳ:[Lˋˋ/ـˊ;

    aget-object v12, v12, v8

    invoke-virtual {v12, v7}, Lˋˋ/ـˊ;->ᵔᵢ(I)I

    move-result v6

    if-ge v6, v4, :cond_a

    move v4, v6

    move-object/from16 v17, v12

    :cond_a
    add-int v8, v8, v16

    const/4 v6, 0x1

    const/4 v12, -0x1

    goto :goto_8

    :cond_b
    move-object/from16 v4, v17

    goto :goto_a

    :cond_c
    iget-object v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v4}, Lʼﾞ/ᵎⁱ;->ʼˎ()I

    move-result v4

    const/high16 v6, -0x80000000

    :goto_9
    if-eq v8, v15, :cond_b

    iget-object v7, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵔﹳ:[Lˋˋ/ـˊ;

    aget-object v7, v7, v8

    invoke-virtual {v7, v4}, Lˋˋ/ـˊ;->ˆʾ(I)I

    move-result v12

    if-le v12, v6, :cond_d

    move-object/from16 v17, v7

    move v6, v12

    :cond_d
    add-int v8, v8, v16

    goto :goto_9

    :goto_a
    invoke-virtual {v14, v13}, Lﹳʽ/ˊʻ;->ʼᐧ(I)V

    iget-object v6, v14, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v6, [I

    iget v7, v4, Lˋˋ/ـˊ;->ˑﹳ:I

    aput v7, v6, v13

    goto :goto_b

    :cond_e
    iget-object v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵔﹳ:[Lˋˋ/ـˊ;

    aget-object v4, v4, v8

    :goto_b
    iput-object v4, v11, Lˋˋ/ⁱˉ;->ˑﹳ:Lˋˋ/ـˊ;

    iget v6, v2, Lˋˋ/ٴᵢ;->ˑﹳ:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_f

    const/4 v6, -0x1

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v10, v8}, Lˋˋ/ʻᵎ;->ⁱˊ(ILandroid/view/View;Z)V

    goto :goto_c

    :cond_f
    const/4 v8, 0x0

    invoke-virtual {v0, v8, v10, v8}, Lˋˋ/ʻᵎ;->ⁱˊ(ILandroid/view/View;Z)V

    :goto_c
    iget v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˏי:I

    if-ne v6, v7, :cond_10

    iget v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʽﹳ:I

    iget v12, v0, Lˋˋ/ʻᵎ;->ﾞʻ:I

    iget v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v8, v6, v12, v8, v13}, Lˋˋ/ʻᵎ;->ʼʼ(ZIIII)I

    move-result v6

    iget v8, v0, Lˋˋ/ʻᵎ;->ˉˆ:I

    iget v12, v0, Lˋˋ/ʻᵎ;->ˉʿ:I

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ᵔי()I

    move-result v13

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ᵎⁱ()I

    move-result v14

    add-int/2addr v14, v13

    iget v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v7, v8, v12, v14, v13}, Lˋˋ/ʻᵎ;->ʼʼ(ZIIII)I

    move-result v8

    invoke-virtual {v0, v10, v6, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˊﹳ(Landroid/view/View;II)V

    goto :goto_d

    :cond_10
    iget v6, v0, Lˋˋ/ʻᵎ;->ᵔʾ:I

    iget v8, v0, Lˋˋ/ʻᵎ;->ﾞʻ:I

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ٴʼ()I

    move-result v12

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ᵎˊ()I

    move-result v13

    add-int/2addr v13, v12

    iget v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v7, v6, v8, v13, v12}, Lˋˋ/ʻᵎ;->ʼʼ(ZIIII)I

    move-result v6

    iget v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʽﹳ:I

    iget v12, v0, Lˋˋ/ʻᵎ;->ˉʿ:I

    iget v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v14, 0x0

    invoke-static {v14, v8, v12, v14, v13}, Lˋˋ/ʻᵎ;->ʼʼ(ZIIII)I

    move-result v8

    invoke-virtual {v0, v10, v6, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˊﹳ(Landroid/view/View;II)V

    :goto_d
    iget v6, v2, Lˋˋ/ٴᵢ;->ˑﹳ:I

    if-ne v6, v7, :cond_11

    invoke-virtual {v4, v9}, Lˋˋ/ـˊ;->ᵔᵢ(I)I

    move-result v6

    iget-object v7, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v7, v10}, Lʼﾞ/ᵎⁱ;->ˑﹳ(Landroid/view/View;)I

    move-result v7

    add-int/2addr v7, v6

    goto :goto_e

    :cond_11
    invoke-virtual {v4, v9}, Lˋˋ/ـˊ;->ˆʾ(I)I

    move-result v7

    iget-object v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v6, v10}, Lʼﾞ/ᵎⁱ;->ˑﹳ(Landroid/view/View;)I

    move-result v6

    sub-int v6, v7, v6

    :goto_e
    iget v8, v2, Lˋˋ/ٴᵢ;->ˑﹳ:I

    const/4 v12, 0x1

    if-ne v8, v12, :cond_15

    iget-object v8, v11, Lˋˋ/ⁱˉ;->ˑﹳ:Lˋˋ/ـˊ;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lˋˋ/ⁱˉ;

    iput-object v8, v11, Lˋˋ/ⁱˉ;->ˑﹳ:Lˋˋ/ـˊ;

    iget-object v13, v8, Lˋˋ/ـˊ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v14, -0x80000000

    iput v14, v8, Lˋˋ/ـˊ;->ʽ:I

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ne v13, v12, :cond_12

    iput v14, v8, Lˋˋ/ـˊ;->ⁱˊ:I

    :cond_12
    iget-object v12, v11, Lˋˋ/ˊᵔ;->ﹳٴ:Lˋˋ/ʼـ;

    invoke-virtual {v12}, Lˋˋ/ʼـ;->ˆʾ()Z

    move-result v12

    if-nez v12, :cond_13

    iget-object v11, v11, Lˋˋ/ˊᵔ;->ﹳٴ:Lˋˋ/ʼـ;

    invoke-virtual {v11}, Lˋˋ/ʼـ;->ˉʿ()Z

    move-result v11

    if-eqz v11, :cond_14

    :cond_13
    iget v11, v8, Lˋˋ/ـˊ;->ˈ:I

    iget-object v12, v8, Lˋˋ/ـˊ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v12, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v12, v12, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v12, v10}, Lʼﾞ/ᵎⁱ;->ˑﹳ(Landroid/view/View;)I

    move-result v12

    add-int/2addr v12, v11

    iput v12, v8, Lˋˋ/ـˊ;->ˈ:I

    :cond_14
    const/high16 v14, -0x80000000

    goto :goto_f

    :cond_15
    iget-object v8, v11, Lˋˋ/ⁱˉ;->ˑﹳ:Lˋˋ/ـˊ;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lˋˋ/ⁱˉ;

    iput-object v8, v11, Lˋˋ/ⁱˉ;->ˑﹳ:Lˋˋ/ـˊ;

    iget-object v12, v8, Lˋˋ/ـˊ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v12, Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v12, v14, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/high16 v14, -0x80000000

    iput v14, v8, Lˋˋ/ـˊ;->ⁱˊ:I

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_16

    iput v14, v8, Lˋˋ/ـˊ;->ʽ:I

    :cond_16
    iget-object v12, v11, Lˋˋ/ˊᵔ;->ﹳٴ:Lˋˋ/ʼـ;

    invoke-virtual {v12}, Lˋˋ/ʼـ;->ˆʾ()Z

    move-result v12

    if-nez v12, :cond_17

    iget-object v11, v11, Lˋˋ/ˊᵔ;->ﹳٴ:Lˋˋ/ʼـ;

    invoke-virtual {v11}, Lˋˋ/ʼـ;->ˉʿ()Z

    move-result v11

    if-eqz v11, :cond_18

    :cond_17
    iget v11, v8, Lˋˋ/ـˊ;->ˈ:I

    iget-object v12, v8, Lˋˋ/ـˊ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v12, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v12, v12, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v12, v10}, Lʼﾞ/ᵎⁱ;->ˑﹳ(Landroid/view/View;)I

    move-result v12

    add-int/2addr v12, v11

    iput v12, v8, Lˋˋ/ـˊ;->ˈ:I

    :cond_18
    :goto_f
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˏⁱ()Z

    move-result v8

    if-eqz v8, :cond_19

    iget v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˏי:I

    const/4 v12, 0x1

    if-ne v8, v12, :cond_19

    iget-object v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->יـ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v8}, Lʼﾞ/ᵎⁱ;->ʼˎ()I

    move-result v8

    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʼᐧ:I

    sub-int/2addr v11, v12

    iget v12, v4, Lˋˋ/ـˊ;->ˑﹳ:I

    sub-int/2addr v11, v12

    iget v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʽﹳ:I

    mul-int/2addr v11, v12

    sub-int/2addr v8, v11

    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->יـ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v11, v10}, Lʼﾞ/ᵎⁱ;->ˑﹳ(Landroid/view/View;)I

    move-result v11

    sub-int v11, v8, v11

    goto :goto_10

    :cond_19
    iget v8, v4, Lˋˋ/ـˊ;->ˑﹳ:I

    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʽﹳ:I

    mul-int/2addr v8, v11

    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->יـ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v11}, Lʼﾞ/ᵎⁱ;->ˉʿ()I

    move-result v11

    add-int/2addr v11, v8

    iget-object v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->יـ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v8, v10}, Lʼﾞ/ᵎⁱ;->ˑﹳ(Landroid/view/View;)I

    move-result v8

    add-int/2addr v8, v11

    :goto_10
    iget v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˏי:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1a

    invoke-static {v10, v11, v6, v8, v7}, Lˋˋ/ʻᵎ;->ﹳـ(Landroid/view/View;IIII)V

    goto :goto_11

    :cond_1a
    invoke-static {v10, v6, v11, v7, v8}, Lˋˋ/ʻᵎ;->ﹳـ(Landroid/view/View;IIII)V

    :goto_11
    iget v6, v3, Lˋˋ/ٴᵢ;->ˑﹳ:I

    invoke-virtual {v0, v4, v6, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˆʻ(Lˋˋ/ـˊ;II)V

    invoke-virtual {v0, v1, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵢʻ(Lˋˋ/ʻˋ;Lˋˋ/ٴᵢ;)V

    iget-boolean v6, v3, Lˋˋ/ٴᵢ;->ᵔᵢ:Z

    if-eqz v6, :cond_1b

    invoke-virtual {v10}, Landroid/view/View;->hasFocusable()Z

    move-result v6

    if-eqz v6, :cond_1b

    iget-object v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʼʼ:Ljava/util/BitSet;

    iget v4, v4, Lˋˋ/ـˊ;->ˑﹳ:I

    const/4 v8, 0x0

    invoke-virtual {v6, v4, v8}, Ljava/util/BitSet;->set(IZ)V

    :cond_1b
    move v6, v13

    move v10, v6

    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_1c
    if-nez v10, :cond_1d

    invoke-virtual {v0, v1, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵢʻ(Lˋˋ/ʻˋ;Lˋˋ/ٴᵢ;)V

    :cond_1d
    iget v1, v3, Lˋˋ/ٴᵢ;->ˑﹳ:I

    const/4 v6, -0x1

    if-ne v1, v6, :cond_1e

    iget-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v1}, Lʼﾞ/ᵎⁱ;->ˉʿ()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˊˊ(I)I

    move-result v1

    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v3}, Lʼﾞ/ᵎⁱ;->ˉʿ()I

    move-result v3

    sub-int/2addr v3, v1

    goto :goto_12

    :cond_1e
    iget-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v1}, Lʼﾞ/ᵎⁱ;->ʼˎ()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﾞˏ(I)I

    move-result v1

    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v3}, Lʼﾞ/ᵎⁱ;->ʼˎ()I

    move-result v3

    sub-int v3, v1, v3

    :goto_12
    if-lez v3, :cond_1f

    iget v1, v2, Lˋˋ/ٴᵢ;->ⁱˊ:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1

    :cond_1f
    const/16 v18, 0x0

    return v18
.end method

.method public final ˎـ(ILˋˋ/ᐧﹶ;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ٴʿ()I

    move-result v1

    move v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵔⁱ()I

    move-result v1

    const/4 v2, -0x1

    :goto_0
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʻٴ:Lˋˋ/ٴᵢ;

    iput-boolean v0, v3, Lˋˋ/ٴᵢ;->ﹳٴ:Z

    invoke-virtual {p0, v1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﾞˊ(ILˋˋ/ᐧﹶ;)V

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵢᐧ(I)V

    iget p2, v3, Lˋˋ/ٴᵢ;->ˈ:I

    add-int/2addr v1, p2

    iput v1, v3, Lˋˋ/ٴᵢ;->ʽ:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iput p1, v3, Lˋˋ/ٴᵢ;->ⁱˊ:I

    return-void
.end method

.method public final ˏי()Lˋˋ/ˊᵔ;
    .locals 3

    .prologue
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˏי:I

    const/4 v1, -0x1

    const/4 v2, -0x2

    if-nez v0, :cond_0

    new-instance v0, Lˋˋ/ⁱˉ;

    invoke-direct {v0, v2, v1}, Lˋˋ/ˊᵔ;-><init>(II)V

    return-object v0

    :cond_0
    new-instance v0, Lˋˋ/ⁱˉ;

    invoke-direct {v0, v1, v2}, Lˋˋ/ˊᵔ;-><init>(II)V

    return-object v0
.end method

.method public final ˏᵢ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;Lˊˋ/ᵔᵢ;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lˋˋ/ʻᵎ;->ˏᵢ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;Lˊˋ/ᵔᵢ;)V

    const-string p1, "androidx.recyclerview.widget.StaggeredGridLayoutManager"

    invoke-virtual {p3, p1}, Lˊˋ/ᵔᵢ;->ˆʾ(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final ˏⁱ()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ˑʼ(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    const/4 p1, 0x4

    invoke-virtual {p0, p2, p3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˊﾞ(III)V

    return-void
.end method

.method public final ˑˆ(Lˋˋ/ᐧﹶ;)I
    .locals 8

    .prologue
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵎⁱ:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵢˋ(Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᵢ(Z)Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵎⁱ:Z

    iget-boolean v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʾᵎ:Z

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    move-object v5, p0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lˋˋ/ⁱˊ;->ᵎﹶ(Lˋˋ/ᐧﹶ;Lʼﾞ/ᵎⁱ;Landroid/view/View;Landroid/view/View;Lˋˋ/ʻᵎ;ZZ)I

    move-result p1

    return p1
.end method

.method public final ˑﹳ()Z
    .locals 1

    .prologue
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˏי:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final י()Landroid/os/Parcelable;
    .locals 5

    .prologue
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˊʻ:Lˋˋ/ʻᴵ;

    if-eqz v0, :cond_0

    new-instance v1, Lˋˋ/ʻᴵ;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget v2, v0, Lˋˋ/ʻᴵ;->ʽʽ:I

    iput v2, v1, Lˋˋ/ʻᴵ;->ʽʽ:I

    iget v2, v0, Lˋˋ/ʻᴵ;->ʾˋ:I

    iput v2, v1, Lˋˋ/ʻᴵ;->ʾˋ:I

    iget v2, v0, Lˋˋ/ʻᴵ;->ᴵˊ:I

    iput v2, v1, Lˋˋ/ʻᴵ;->ᴵˊ:I

    iget-object v2, v0, Lˋˋ/ʻᴵ;->ˈٴ:[I

    iput-object v2, v1, Lˋˋ/ʻᴵ;->ˈٴ:[I

    iget v2, v0, Lˋˋ/ʻᴵ;->ᴵᵔ:I

    iput v2, v1, Lˋˋ/ʻᴵ;->ᴵᵔ:I

    iget-object v2, v0, Lˋˋ/ʻᴵ;->ˊʻ:[I

    iput-object v2, v1, Lˋˋ/ʻᴵ;->ˊʻ:[I

    iget-boolean v2, v0, Lˋˋ/ʻᴵ;->ˉٴ:Z

    iput-boolean v2, v1, Lˋˋ/ʻᴵ;->ˉٴ:Z

    iget-boolean v2, v0, Lˋˋ/ʻᴵ;->ᵎⁱ:Z

    iput-boolean v2, v1, Lˋˋ/ʻᴵ;->ᵎⁱ:Z

    iget-boolean v2, v0, Lˋˋ/ʻᴵ;->ٴʼ:Z

    iput-boolean v2, v1, Lˋˋ/ʻᴵ;->ٴʼ:Z

    iget-object v0, v0, Lˋˋ/ʻᴵ;->ٴᵢ:Ljava/util/ArrayList;

    iput-object v0, v1, Lˋˋ/ʻᴵ;->ٴᵢ:Ljava/util/ArrayList;

    return-object v1

    :cond_0
    new-instance v0, Lˋˋ/ʻᴵ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ـˆ:Z

    iput-boolean v1, v0, Lˋˋ/ʻᴵ;->ˉٴ:Z

    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˈٴ:Z

    iput-boolean v1, v0, Lˋˋ/ʻᴵ;->ᵎⁱ:Z

    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᴵᵔ:Z

    iput-boolean v1, v0, Lˋˋ/ʻᴵ;->ٴʼ:Z

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᴵˊ:Lﹳʽ/ˊʻ;

    if-eqz v2, :cond_1

    iget-object v3, v2, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v3, [I

    if-eqz v3, :cond_1

    iput-object v3, v0, Lˋˋ/ʻᴵ;->ˊʻ:[I

    array-length v3, v3

    iput v3, v0, Lˋˋ/ʻᴵ;->ᴵᵔ:I

    iget-object v2, v2, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, v0, Lˋˋ/ʻᴵ;->ٴᵢ:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iput v1, v0, Lˋˋ/ʻᴵ;->ᴵᵔ:I

    :goto_0
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v2

    const/4 v3, -0x1

    if-lez v2, :cond_8

    iget-boolean v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˈٴ:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ٴʿ()I

    move-result v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵔⁱ()I

    move-result v2

    :goto_1
    iput v2, v0, Lˋˋ/ʻᴵ;->ʾˋ:I

    iget-boolean v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʾᵎ:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᵢ(Z)Landroid/view/View;

    move-result-object v2

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵢˋ(Z)Landroid/view/View;

    move-result-object v2

    :goto_2
    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v2}, Lˋˋ/ʻᵎ;->ˆﾞ(Landroid/view/View;)I

    move-result v3

    :goto_3
    iput v3, v0, Lˋˋ/ʻᴵ;->ᴵˊ:I

    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʼᐧ:I

    iput v2, v0, Lˋˋ/ʻᴵ;->ʽʽ:I

    new-array v2, v2, [I

    iput-object v2, v0, Lˋˋ/ʻᴵ;->ˈٴ:[I

    :goto_4
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʼᐧ:I

    if-ge v1, v2, :cond_7

    iget-boolean v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˈٴ:Z

    const/high16 v3, -0x80000000

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵔﹳ:[Lˋˋ/ـˊ;

    aget-object v2, v2, v1

    invoke-virtual {v2, v3}, Lˋˋ/ـˊ;->ᵔᵢ(I)I

    move-result v2

    if-eq v2, v3, :cond_6

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v3}, Lʼﾞ/ᵎⁱ;->ʼˎ()I

    move-result v3

    :goto_5
    sub-int/2addr v2, v3

    goto :goto_6

    :cond_5
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵔﹳ:[Lˋˋ/ـˊ;

    aget-object v2, v2, v1

    invoke-virtual {v2, v3}, Lˋˋ/ـˊ;->ˆʾ(I)I

    move-result v2

    if-eq v2, v3, :cond_6

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v3}, Lʼﾞ/ᵎⁱ;->ˉʿ()I

    move-result v3

    goto :goto_5

    :cond_6
    :goto_6
    iget-object v3, v0, Lˋˋ/ʻᴵ;->ˈٴ:[I

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    return-object v0

    :cond_8
    iput v3, v0, Lˋˋ/ʻᴵ;->ʾˋ:I

    iput v3, v0, Lˋˋ/ʻᴵ;->ᴵˊ:I

    iput v1, v0, Lˋˋ/ʻᴵ;->ʽʽ:I

    return-object v0
.end method

.method public final יˉ(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    new-instance v0, Lˋˋ/ˆﾞ;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lˋˋ/ˆﾞ;-><init>(Landroid/content/Context;)V

    iput p2, v0, Lˋˋ/ˆﾞ;->ﹳٴ:I

    invoke-virtual {p0, v0}, Lˋˋ/ʻᵎ;->ﾞˋ(Lˋˋ/ˆﾞ;)V

    return-void
.end method

.method public final ـʻ()Landroid/view/View;
    .locals 14

    .prologue
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    new-instance v2, Ljava/util/BitSet;

    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʼᐧ:I

    invoke-direct {v2, v3}, Ljava/util/BitSet;-><init>(I)V

    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʼᐧ:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v3, v5}, Ljava/util/BitSet;->set(IIZ)V

    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˏי:I

    const/4 v6, -0x1

    if-ne v3, v5, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˏⁱ()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v6

    :goto_0
    iget-boolean v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʾᵎ:Z

    if-eqz v7, :cond_1

    move v0, v6

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    if-ge v1, v0, :cond_2

    move v6, v5

    :cond_2
    if-eq v1, v0, :cond_d

    invoke-virtual {p0, v1}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lˋˋ/ⁱˉ;

    iget-object v9, v8, Lˋˋ/ⁱˉ;->ˑﹳ:Lˋˋ/ـˊ;

    iget v9, v9, Lˋˋ/ـˊ;->ˑﹳ:I

    invoke-virtual {v2, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, v8, Lˋˋ/ⁱˉ;->ˑﹳ:Lˋˋ/ـˊ;

    iget-boolean v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʾᵎ:Z

    const/high16 v11, -0x80000000

    if-eqz v10, :cond_4

    iget v10, v9, Lˋˋ/ـˊ;->ʽ:I

    if-eq v10, v11, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v9}, Lˋˋ/ـˊ;->ﹳٴ()V

    iget v10, v9, Lˋˋ/ـˊ;->ʽ:I

    :goto_2
    iget-object v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v11}, Lʼﾞ/ᵎⁱ;->ʼˎ()I

    move-result v11

    if-ge v10, v11, :cond_6

    iget-object v0, v9, Lˋˋ/ـˊ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v5, v0}, Lᐧـ/ˈ;->ᵔʾ(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lˋˋ/ⁱˉ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v7

    :cond_4
    iget v10, v9, Lˋˋ/ـˊ;->ⁱˊ:I

    iget-object v12, v9, Lˋˋ/ـˊ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v12, Ljava/util/ArrayList;

    if-eq v10, v11, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lˋˋ/ⁱˉ;

    iget-object v13, v9, Lˋˋ/ـˊ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v13, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v13, v13, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v13, v10}, Lʼﾞ/ᵎⁱ;->ᵎﹶ(Landroid/view/View;)I

    move-result v10

    iput v10, v9, Lˋˋ/ـˊ;->ⁱˊ:I

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v10, v9, Lˋˋ/ـˊ;->ⁱˊ:I

    :goto_3
    iget-object v9, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v9}, Lʼﾞ/ᵎⁱ;->ˉʿ()I

    move-result v9

    if-le v10, v9, :cond_6

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lˋˋ/ⁱˉ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v7

    :cond_6
    iget-object v9, v8, Lˋˋ/ⁱˉ;->ˑﹳ:Lˋˋ/ـˊ;

    iget v9, v9, Lˋˋ/ـˊ;->ˑﹳ:I

    invoke-virtual {v2, v9}, Ljava/util/BitSet;->clear(I)V

    :cond_7
    add-int/2addr v1, v6

    if-eq v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v9

    iget-boolean v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʾᵎ:Z

    if-eqz v10, :cond_9

    iget-object v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v10, v7}, Lʼﾞ/ᵎⁱ;->ˈ(Landroid/view/View;)I

    move-result v10

    iget-object v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v11, v9}, Lʼﾞ/ᵎⁱ;->ˈ(Landroid/view/View;)I

    move-result v11

    if-ge v10, v11, :cond_8

    goto :goto_7

    :cond_8
    if-ne v10, v11, :cond_2

    goto :goto_4

    :cond_9
    iget-object v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v10, v7}, Lʼﾞ/ᵎⁱ;->ᵎﹶ(Landroid/view/View;)I

    move-result v10

    iget-object v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v11, v9}, Lʼﾞ/ᵎⁱ;->ᵎﹶ(Landroid/view/View;)I

    move-result v11

    if-le v10, v11, :cond_a

    goto :goto_7

    :cond_a
    if-ne v10, v11, :cond_2

    :goto_4
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lˋˋ/ⁱˉ;

    iget-object v8, v8, Lˋˋ/ⁱˉ;->ˑﹳ:Lˋˋ/ـˊ;

    iget v8, v8, Lˋˋ/ـˊ;->ˑﹳ:I

    iget-object v9, v9, Lˋˋ/ⁱˉ;->ˑﹳ:Lˋˋ/ـˊ;

    iget v9, v9, Lˋˋ/ـˊ;->ˑﹳ:I

    sub-int/2addr v8, v9

    if-gez v8, :cond_b

    move v8, v5

    goto :goto_5

    :cond_b
    move v8, v4

    :goto_5
    if-gez v3, :cond_c

    move v9, v5

    goto :goto_6

    :cond_c
    move v9, v4

    :goto_6
    if-eq v8, v9, :cond_2

    :goto_7
    return-object v7

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public final ـﹶ(II)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˊﾞ(III)V

    return-void
.end method

.method public final ٴʿ()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lˋˋ/ʻᵎ;->ˆﾞ(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final ٴᴵ(Landroid/graphics/Rect;II)V
    .locals 5

    .prologue
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ٴʼ()I

    move-result v0

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ᵎˊ()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ᵔי()I

    move-result v0

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ᵎⁱ()I

    move-result v2

    add-int/2addr v2, v0

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˏי:I

    const/4 v3, 0x1

    iget v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʼᐧ:I

    if-ne v0, v3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, v2

    iget-object v0, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v2, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    invoke-static {p3, p1, v0}, Lˋˋ/ʻᵎ;->ᵔᵢ(III)I

    move-result p1

    iget p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʽﹳ:I

    mul-int/2addr p3, v4

    add-int/2addr p3, v1

    iget-object v0, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getMinimumWidth()I

    move-result v0

    invoke-static {p2, p3, v0}, Lˋˋ/ʻᵎ;->ᵔᵢ(III)I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p1, v1

    iget-object v0, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v1, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Landroid/view/View;->getMinimumWidth()I

    move-result v0

    invoke-static {p2, p1, v0}, Lˋˋ/ʻᵎ;->ᵔᵢ(III)I

    move-result p2

    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʽﹳ:I

    mul-int/2addr p1, v4

    add-int/2addr p1, v2

    iget-object v0, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    invoke-static {p3, p1, v0}, Lˋˋ/ʻᵎ;->ᵔᵢ(III)I

    move-result p1

    :goto_0
    iget-object p3, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p3, p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->ᵎﹶ(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method

.method public final ٴﹳ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʽʾ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;Z)V

    return-void
.end method

.method public final ٴﹶ(Lˋˋ/ᐧﹶ;)I
    .locals 7

    .prologue
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵎⁱ:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵢˋ(Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᵢ(Z)Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵎⁱ:Z

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    move-object v5, p0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lˋˋ/ⁱˊ;->ﾞᴵ(Lˋˋ/ᐧﹶ;Lʼﾞ/ᵎⁱ;Landroid/view/View;Landroid/view/View;Lˋˋ/ʻᵎ;Z)I

    move-result p1

    return p1
.end method

.method public final ᐧᴵ(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .prologue
    invoke-super {p0, p1}, Lˋˋ/ʻᵎ;->ᐧᴵ(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵢˋ(Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᵢ(Z)Landroid/view/View;

    move-result-object v0

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lˋˋ/ʻᵎ;->ˆﾞ(Landroid/view/View;)I

    move-result v1

    invoke-static {v0}, Lˋˋ/ʻᵎ;->ˆﾞ(Landroid/view/View;)I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    return-void

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final ᐧﹶ(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    instance-of v0, p1, Lˋˋ/ʻᴵ;

    if-eqz v0, :cond_1

    check-cast p1, Lˋˋ/ʻᴵ;

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˊʻ:Lˋˋ/ʻᴵ;

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵢˏ:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iput v1, p1, Lˋˋ/ʻᴵ;->ʾˋ:I

    iput v1, p1, Lˋˋ/ʻᴵ;->ᴵˊ:I

    const/4 v0, 0x0

    iput-object v0, p1, Lˋˋ/ʻᴵ;->ˈٴ:[I

    const/4 v1, 0x0

    iput v1, p1, Lˋˋ/ʻᴵ;->ʽʽ:I

    iput v1, p1, Lˋˋ/ʻᴵ;->ᴵᵔ:I

    iput-object v0, p1, Lˋˋ/ʻᴵ;->ˊʻ:[I

    iput-object v0, p1, Lˋˋ/ʻᴵ;->ٴᵢ:Ljava/util/ArrayList;

    :cond_0
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ـˊ()V

    :cond_1
    return-void
.end method

.method public final ᐧﾞ(Landroid/view/View;ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)Landroid/view/View;
    .locals 7

    .prologue
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_f

    :cond_0
    invoke-virtual {p0, p1}, Lˋˋ/ʻᵎ;->ﹳᐧ(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    goto/16 :goto_f

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˆˎ()V

    const/high16 v0, -0x80000000

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq p2, v2, :cond_b

    const/4 v3, 0x2

    if-eq p2, v3, :cond_9

    const/16 v3, 0x11

    if-eq p2, v3, :cond_8

    const/16 v3, 0x21

    if-eq p2, v3, :cond_6

    const/16 v3, 0x42

    if-eq p2, v3, :cond_5

    const/16 v3, 0x82

    if-eq p2, v3, :cond_3

    :cond_2
    move p2, v0

    goto :goto_3

    :cond_3
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˏי:I

    if-ne p2, v2, :cond_2

    :cond_4
    :goto_0
    move p2, v2

    goto :goto_3

    :cond_5
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˏי:I

    if-nez p2, :cond_2

    goto :goto_0

    :cond_6
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˏי:I

    if-ne p2, v2, :cond_2

    :cond_7
    :goto_1
    move p2, v1

    goto :goto_3

    :cond_8
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˏי:I

    if-nez p2, :cond_2

    :goto_2
    goto :goto_1

    :cond_9
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˏי:I

    if-ne p2, v2, :cond_a

    goto :goto_0

    :cond_a
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˏⁱ()Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_b
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˏי:I

    if-ne p2, v2, :cond_c

    goto :goto_2

    :cond_c
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˏⁱ()Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_0

    :goto_3
    if-ne p2, v0, :cond_d

    goto/16 :goto_f

    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lˋˋ/ⁱˉ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lˋˋ/ⁱˉ;->ˑﹳ:Lˋˋ/ـˊ;

    if-ne p2, v2, :cond_e

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ٴʿ()I

    move-result v3

    goto :goto_4

    :cond_e
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵔⁱ()I

    move-result v3

    :goto_4
    invoke-virtual {p0, v3, p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﾞˊ(ILˋˋ/ᐧﹶ;)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵢᐧ(I)V

    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʻٴ:Lˋˋ/ٴᵢ;

    iget v5, v4, Lˋˋ/ٴᵢ;->ˈ:I

    add-int/2addr v5, v3

    iput v5, v4, Lˋˋ/ٴᵢ;->ʽ:I

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v5}, Lʼﾞ/ᵎⁱ;->ᵔʾ()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3eaaaaab

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Lˋˋ/ٴᵢ;->ⁱˊ:I

    iput-boolean v2, v4, Lˋˋ/ٴᵢ;->ᵔᵢ:Z

    const/4 v5, 0x0

    iput-boolean v5, v4, Lˋˋ/ٴᵢ;->ﹳٴ:Z

    invoke-virtual {p0, p3, v4, p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˎˉ(Lˋˋ/ʻˋ;Lˋˋ/ٴᵢ;Lˋˋ/ᐧﹶ;)I

    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʾᵎ:Z

    iput-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˈٴ:Z

    invoke-virtual {v0, v3, p2}, Lˋˋ/ـˊ;->ʼˎ(II)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_f

    if-eq p3, p1, :cond_f

    return-object p3

    :cond_f
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˆˑ(I)Z

    move-result p3

    if-eqz p3, :cond_11

    iget p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʼᐧ:I

    sub-int/2addr p3, v2

    :goto_5
    if-ltz p3, :cond_13

    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵔﹳ:[Lˋˋ/ـˊ;

    aget-object p4, p4, p3

    invoke-virtual {p4, v3, p2}, Lˋˋ/ـˊ;->ʼˎ(II)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_10

    if-eq p4, p1, :cond_10

    return-object p4

    :cond_10
    add-int/lit8 p3, p3, -0x1

    goto :goto_5

    :cond_11
    move p3, v5

    :goto_6
    iget p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʼᐧ:I

    if-ge p3, p4, :cond_13

    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵔﹳ:[Lˋˋ/ـˊ;

    aget-object p4, p4, p3

    invoke-virtual {p4, v3, p2}, Lˋˋ/ـˊ;->ʼˎ(II)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_12

    if-eq p4, p1, :cond_12

    return-object p4

    :cond_12
    add-int/lit8 p3, p3, 0x1

    goto :goto_6

    :cond_13
    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ـˆ:Z

    xor-int/2addr p3, v2

    if-ne p2, v1, :cond_14

    move p4, v2

    goto :goto_7

    :cond_14
    move p4, v5

    :goto_7
    if-ne p3, p4, :cond_15

    move p3, v2

    goto :goto_8

    :cond_15
    move p3, v5

    :goto_8
    if-eqz p3, :cond_16

    invoke-virtual {v0}, Lˋˋ/ـˊ;->ˈ()I

    move-result p4

    goto :goto_9

    :cond_16
    invoke-virtual {v0}, Lˋˋ/ـˊ;->ˑﹳ()I

    move-result p4

    :goto_9
    invoke-virtual {p0, p4}, Lˋˋ/ʻᵎ;->יـ(I)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_17

    if-eq p4, p1, :cond_17

    return-object p4

    :cond_17
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˆˑ(I)Z

    move-result p2

    if-eqz p2, :cond_1b

    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʼᐧ:I

    sub-int/2addr p2, v2

    :goto_a
    if-ltz p2, :cond_1e

    iget p4, v0, Lˋˋ/ـˊ;->ˑﹳ:I

    if-ne p2, p4, :cond_18

    goto :goto_c

    :cond_18
    if-eqz p3, :cond_19

    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵔﹳ:[Lˋˋ/ـˊ;

    aget-object p4, p4, p2

    invoke-virtual {p4}, Lˋˋ/ـˊ;->ˈ()I

    move-result p4

    goto :goto_b

    :cond_19
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵔﹳ:[Lˋˋ/ـˊ;

    aget-object p4, p4, p2

    invoke-virtual {p4}, Lˋˋ/ـˊ;->ˑﹳ()I

    move-result p4

    :goto_b
    invoke-virtual {p0, p4}, Lˋˋ/ʻᵎ;->יـ(I)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_1a

    if-eq p4, p1, :cond_1a

    return-object p4

    :cond_1a
    :goto_c
    add-int/lit8 p2, p2, -0x1

    goto :goto_a

    :cond_1b
    :goto_d
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʼᐧ:I

    if-ge v5, p2, :cond_1e

    if-eqz p3, :cond_1c

    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵔﹳ:[Lˋˋ/ـˊ;

    aget-object p2, p2, v5

    invoke-virtual {p2}, Lˋˋ/ـˊ;->ˈ()I

    move-result p2

    goto :goto_e

    :cond_1c
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵔﹳ:[Lˋˋ/ـˊ;

    aget-object p2, p2, v5

    invoke-virtual {p2}, Lˋˋ/ـˊ;->ˑﹳ()I

    move-result p2

    :goto_e
    invoke-virtual {p0, p2}, Lˋˋ/ʻᵎ;->יـ(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1d

    if-eq p2, p1, :cond_1d

    return-object p2

    :cond_1d
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_1e
    :goto_f
    const/4 p1, 0x0

    return-object p1
.end method

.method public final ᴵˑ(I)V
    .locals 4

    .prologue
    invoke-super {p0, p1}, Lˋˋ/ʻᵎ;->ᴵˑ(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʼᐧ:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵔﹳ:[Lˋˋ/ـˊ;

    aget-object v1, v1, v0

    iget v2, v1, Lˋˋ/ـˊ;->ⁱˊ:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_0

    add-int/2addr v2, p1

    iput v2, v1, Lˋˋ/ـˊ;->ⁱˊ:I

    :cond_0
    iget v2, v1, Lˋˋ/ـˊ;->ʽ:I

    if-eq v2, v3, :cond_1

    add-int/2addr v2, p1

    iput v2, v1, Lˋˋ/ـˊ;->ʽ:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final ᵎʻ(Lˋˋ/ᐧﹶ;)V
    .locals 0

    const/4 p1, -0x1

    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵢˏ:I

    const/high16 p1, -0x80000000

    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʾˋ:I

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˊʻ:Lˋˋ/ʻᴵ;

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˉٴ:Lˋˋ/ʾﾞ;

    invoke-virtual {p1}, Lˋˋ/ʾﾞ;->ﹳٴ()V

    return-void
.end method

.method public final ᵎᵔ(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵎˊ:Landroidx/leanback/widget/ᵔʾ;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʼᐧ:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵔﹳ:[Lˋˋ/ـˊ;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lˋˋ/ـˊ;->ⁱˊ()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public final ᵎﹶ(Lˋˋ/ˊᵔ;)Z
    .locals 0

    instance-of p1, p1, Lˋˋ/ⁱˉ;

    return p1
.end method

.method public final ᵔʾ(Lˋˋ/ᐧﹶ;)I
    .locals 7

    .prologue
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵎⁱ:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵢˋ(Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᵢ(Z)Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵎⁱ:Z

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    move-object v5, p0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lˋˋ/ⁱˊ;->ﾞᴵ(Lˋˋ/ᐧﹶ;Lʼﾞ/ᵎⁱ;Landroid/view/View;Landroid/view/View;Lˋˋ/ʻᵎ;Z)I

    move-result p1

    return p1
.end method

.method public final ᵔⁱ()I
    .locals 2

    .prologue
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, v1}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lˋˋ/ʻᵎ;->ˆﾞ(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final ᵢʻ(Lˋˋ/ʻˋ;Lˋˋ/ٴᵢ;)V
    .locals 4

    .prologue
    iget-boolean v0, p2, Lˋˋ/ٴᵢ;->ﹳٴ:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p2, Lˋˋ/ٴᵢ;->ʼˎ:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget v0, p2, Lˋˋ/ٴᵢ;->ⁱˊ:I

    const/4 v1, -0x1

    if-nez v0, :cond_2

    iget v0, p2, Lˋˋ/ٴᵢ;->ˑﹳ:I

    if-ne v0, v1, :cond_1

    iget p2, p2, Lˋˋ/ٴᵢ;->ᵎﹶ:I

    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʿʽ(ILˋˋ/ʻˋ;)V

    return-void

    :cond_1
    iget p2, p2, Lˋˋ/ٴᵢ;->ﾞᴵ:I

    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˆﹳ(ILˋˋ/ʻˋ;)V

    return-void

    :cond_2
    iget v0, p2, Lˋˋ/ٴᵢ;->ˑﹳ:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_6

    iget v0, p2, Lˋˋ/ٴᵢ;->ﾞᴵ:I

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵔﹳ:[Lˋˋ/ـˊ;

    aget-object v1, v1, v3

    invoke-virtual {v1, v0}, Lˋˋ/ـˊ;->ˆʾ(I)I

    move-result v1

    :goto_0
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʼᐧ:I

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵔﹳ:[Lˋˋ/ـˊ;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0}, Lˋˋ/ـˊ;->ˆʾ(I)I

    move-result v3

    if-le v3, v1, :cond_3

    move v1, v3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    sub-int/2addr v0, v1

    if-gez v0, :cond_5

    iget p2, p2, Lˋˋ/ٴᵢ;->ᵎﹶ:I

    goto :goto_1

    :cond_5
    iget v1, p2, Lˋˋ/ٴᵢ;->ᵎﹶ:I

    iget p2, p2, Lˋˋ/ٴᵢ;->ⁱˊ:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int p2, v1, p2

    :goto_1
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʿʽ(ILˋˋ/ʻˋ;)V

    return-void

    :cond_6
    iget v0, p2, Lˋˋ/ٴᵢ;->ᵎﹶ:I

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵔﹳ:[Lˋˋ/ـˊ;

    aget-object v1, v1, v3

    invoke-virtual {v1, v0}, Lˋˋ/ـˊ;->ᵔᵢ(I)I

    move-result v1

    :goto_2
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʼᐧ:I

    if-ge v2, v3, :cond_8

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵔﹳ:[Lˋˋ/ـˊ;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0}, Lˋˋ/ـˊ;->ᵔᵢ(I)I

    move-result v3

    if-ge v3, v1, :cond_7

    move v1, v3

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    iget v0, p2, Lˋˋ/ٴᵢ;->ᵎﹶ:I

    sub-int/2addr v1, v0

    if-gez v1, :cond_9

    iget p2, p2, Lˋˋ/ٴᵢ;->ﾞᴵ:I

    goto :goto_3

    :cond_9
    iget v0, p2, Lˋˋ/ٴᵢ;->ﾞᴵ:I

    iget p2, p2, Lˋˋ/ٴᵢ;->ⁱˊ:I

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/2addr p2, v0

    :goto_3
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˆﹳ(ILˋˋ/ʻˋ;)V

    :cond_a
    :goto_4
    return-void
.end method

.method public final ᵢˋ(Z)Landroid/view/View;
    .locals 8

    .prologue
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v0}, Lʼﾞ/ᵎⁱ;->ˉʿ()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v1}, Lʼﾞ/ᵎⁱ;->ʼˎ()I

    move-result v1

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    invoke-virtual {p0, v4}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v6, v5}, Lʼﾞ/ᵎⁱ;->ᵎﹶ(Landroid/view/View;)I

    move-result v6

    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v7, v5}, Lʼﾞ/ᵎⁱ;->ˈ(Landroid/view/View;)I

    move-result v7

    if-le v7, v0, :cond_3

    if-lt v6, v1, :cond_0

    goto :goto_2

    :cond_0
    if-ge v6, v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    if-nez v3, :cond_3

    move-object v3, v5

    goto :goto_2

    :cond_2
    :goto_1
    return-object v5

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-object v3
.end method

.method public final ᵢˏ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I
    .locals 1

    .prologue
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˏי:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʼᐧ:I

    invoke-virtual {p2}, Lˋˋ/ᐧﹶ;->ⁱˊ()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final ᵢᐧ(I)V
    .locals 4

    .prologue
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʻٴ:Lˋˋ/ٴᵢ;

    iput p1, v0, Lˋˋ/ٴᵢ;->ˑﹳ:I

    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʾᵎ:Z

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-ne v1, p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iput v2, v0, Lˋˋ/ٴᵢ;->ˈ:I

    return-void
.end method

.method public final ⁱי(ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʻʼ(ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I

    move-result p1

    return p1
.end method

.method public final ﹳٴ(I)Landroid/graphics/PointF;
    .locals 3

    .prologue
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʾᵎ:Z

    if-eqz p1, :cond_3

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵔⁱ()I

    move-result v0

    if-ge p1, v0, :cond_2

    move p1, v2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʾᵎ:Z

    if-eq p1, v0, :cond_0

    :cond_3
    :goto_1
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    if-nez v1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˏי:I

    const/4 v2, 0x0

    if-nez v0, :cond_5

    int-to-float v0, v1

    iput v0, p1, Landroid/graphics/PointF;->x:F

    iput v2, p1, Landroid/graphics/PointF;->y:F

    return-object p1

    :cond_5
    iput v2, p1, Landroid/graphics/PointF;->x:F

    int-to-float v0, v1

    iput v0, p1, Landroid/graphics/PointF;->y:F

    return-object p1
.end method

.method public final ﹳᵢ(Z)Landroid/view/View;
    .locals 7

    .prologue
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v0}, Lʼﾞ/ᵎⁱ;->ˉʿ()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v1}, Lʼﾞ/ᵎⁱ;->ʼˎ()I

    move-result v1

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ltz v2, :cond_4

    invoke-virtual {p0, v2}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v5, v4}, Lʼﾞ/ᵎⁱ;->ᵎﹶ(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v6, v4}, Lʼﾞ/ᵎⁱ;->ˈ(Landroid/view/View;)I

    move-result v6

    if-le v6, v0, :cond_3

    if-lt v5, v1, :cond_0

    goto :goto_2

    :cond_0
    if-le v6, v1, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    if-nez v3, :cond_3

    move-object v3, v4

    goto :goto_2

    :cond_2
    :goto_1
    return-object v4

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    return-object v3
.end method

.method public final ﹳⁱ(I)V
    .locals 2

    .prologue
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˊʻ:Lˋˋ/ʻᴵ;

    if-eqz v0, :cond_0

    iget v1, v0, Lˋˋ/ʻᴵ;->ʾˋ:I

    if-eq v1, p1, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, Lˋˋ/ʻᴵ;->ˈٴ:[I

    const/4 v1, 0x0

    iput v1, v0, Lˋˋ/ʻᴵ;->ʽʽ:I

    const/4 v1, -0x1

    iput v1, v0, Lˋˋ/ʻᴵ;->ʾˋ:I

    iput v1, v0, Lˋˋ/ʻᴵ;->ᴵˊ:I

    :cond_0
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵢˏ:I

    const/high16 p1, -0x80000000

    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʾˋ:I

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ـˊ()V

    return-void
.end method

.method public final ﹳﹳ(II)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˊﾞ(III)V

    return-void
.end method

.method public final ﹶʽ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;Z)V
    .locals 2

    .prologue
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˊˊ(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v0}, Lʼﾞ/ᵎⁱ;->ˉʿ()I

    move-result v0

    sub-int/2addr v1, v0

    if-lez v1, :cond_1

    invoke-virtual {p0, v1, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʻʼ(ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I

    move-result p1

    sub-int/2addr v1, p1

    if-eqz p3, :cond_1

    if-lez v1, :cond_1

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    neg-int p2, v1

    invoke-virtual {p1, p2}, Lʼﾞ/ᵎⁱ;->ᵔﹳ(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final ﹶᐧ(II)V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˊﾞ(III)V

    return-void
.end method

.method public final ﾞʻ(Lˋˋ/ᐧﹶ;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˑˆ(Lˋˋ/ᐧﹶ;)I

    move-result p1

    return p1
.end method

.method public final ﾞˊ(ILˋˋ/ᐧﹶ;)V
    .locals 4

    .prologue
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʻٴ:Lˋˋ/ٴᵢ;

    const/4 v1, 0x0

    iput v1, v0, Lˋˋ/ٴᵢ;->ⁱˊ:I

    iput p1, v0, Lˋˋ/ٴᵢ;->ʽ:I

    iget-object v2, p0, Lˋˋ/ʻᵎ;->ˑﹳ:Lˋˋ/ˆﾞ;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iget-boolean v2, v2, Lˋˋ/ˆﾞ;->ˑﹳ:Z

    if-eqz v2, :cond_2

    iget p2, p2, Lˋˋ/ᐧﹶ;->ﹳٴ:I

    const/4 v2, -0x1

    if-eq p2, v2, :cond_2

    iget-boolean v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʾᵎ:Z

    if-ge p2, p1, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-ne v2, p1, :cond_1

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {p1}, Lʼﾞ/ᵎⁱ;->ᵔʾ()I

    move-result p1

    move p2, v1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {p1}, Lʼﾞ/ᵎⁱ;->ᵔʾ()I

    move-result p1

    move p2, p1

    move p1, v1

    goto :goto_1

    :cond_2
    move p1, v1

    move p2, p1

    :goto_1
    iget-object v2, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_3

    iget-boolean v2, v2, Landroidx/recyclerview/widget/RecyclerView;->ˉٴ:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v2}, Lʼﾞ/ᵎⁱ;->ˉʿ()I

    move-result v2

    sub-int/2addr v2, p2

    iput v2, v0, Lˋˋ/ٴᵢ;->ﾞᴵ:I

    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {p2}, Lʼﾞ/ᵎⁱ;->ʼˎ()I

    move-result p2

    add-int/2addr p2, p1

    iput p2, v0, Lˋˋ/ٴᵢ;->ᵎﹶ:I

    goto :goto_2

    :cond_3
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v2}, Lʼﾞ/ᵎⁱ;->ᵔᵢ()I

    move-result v2

    add-int/2addr v2, p1

    iput v2, v0, Lˋˋ/ٴᵢ;->ᵎﹶ:I

    neg-int p1, p2

    iput p1, v0, Lˋˋ/ٴᵢ;->ﾞᴵ:I

    :goto_2
    iput-boolean v1, v0, Lˋˋ/ٴᵢ;->ᵔᵢ:Z

    iput-boolean v3, v0, Lˋˋ/ٴᵢ;->ﹳٴ:Z

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {p1}, Lʼﾞ/ᵎⁱ;->ٴﹶ()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {p1}, Lʼﾞ/ᵎⁱ;->ᵔᵢ()I

    move-result p1

    if-nez p1, :cond_4

    move v1, v3

    :cond_4
    iput-boolean v1, v0, Lˋˋ/ٴᵢ;->ʼˎ:Z

    return-void
.end method

.method public final ﾞˏ(I)I
    .locals 3

    .prologue
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵔﹳ:[Lˋˋ/ـˊ;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lˋˋ/ـˊ;->ᵔᵢ(I)I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ʼᐧ:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ᵔﹳ:[Lˋˋ/ـˊ;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lˋˋ/ـˊ;->ᵔᵢ(I)I

    move-result v2

    if-le v2, v0, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final ﾞᴵ()Z
    .locals 2

    .prologue
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˏי:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
