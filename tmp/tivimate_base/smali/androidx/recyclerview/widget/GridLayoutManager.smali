.class public Landroidx/recyclerview/widget/GridLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# static fields
.field public static final ˑٴ:Ljava/util/Set;


# instance fields
.field public ˆﾞ:I

.field public ˈʿ:I

.field public ˉٴ:[Landroid/view/View;

.field public ˊʻ:I

.field public final ٴʼ:Landroid/util/SparseIntArray;

.field public ٴᵢ:[I

.field public ᴵᵔ:Z

.field public final ᵎˊ:Lﹶﾞ/ⁱי;

.field public final ᵎⁱ:Landroid/util/SparseIntArray;

.field public final ᵔי:Landroid/graphics/Rect;

.field public ᵔٴ:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x42

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x21

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x82

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const/4 v1, 0x2

    aput-object v3, v5, v1

    const/4 v1, 0x3

    aput-object v4, v5, v1

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroidx/recyclerview/widget/GridLayoutManager;->ˑٴ:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ᴵᵔ:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ˊʻ:I

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ᵎⁱ:Landroid/util/SparseIntArray;

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ٴʼ:Landroid/util/SparseIntArray;

    new-instance v1, Lﹶﾞ/ⁱי;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Lﹶﾞ/ⁱי;-><init>(I)V

    iput-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ᵎˊ:Lﹶﾞ/ⁱי;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ᵔי:Landroid/graphics/Rect;

    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ˆﾞ:I

    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ᵔٴ:I

    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ˈʿ:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->ˑˉ(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ᴵᵔ:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ˊʻ:I

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ᵎⁱ:Landroid/util/SparseIntArray;

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ٴʼ:Landroid/util/SparseIntArray;

    new-instance v1, Lﹶﾞ/ⁱי;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Lﹶﾞ/ⁱי;-><init>(I)V

    iput-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ᵎˊ:Lﹶﾞ/ⁱי;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ᵔי:Landroid/graphics/Rect;

    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ˆﾞ:I

    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ᵔٴ:I

    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ˈʿ:I

    invoke-static {p1, p2, p3, p4}, Lˋˋ/ʻᵎ;->ᵔٴ(Landroid/content/Context;Landroid/util/AttributeSet;II)Lˋˋ/ᴵʼ;

    move-result-object p1

    iget p1, p1, Lˋˋ/ᴵʼ;->ⁱˊ:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->ˑˉ(I)V

    return-void
.end method


# virtual methods
.method public final ʻˆ(I)V
    .locals 7

    .prologue
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ٴᵢ:[I

    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ˊʻ:I

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    array-length v3, v0

    add-int/lit8 v4, v1, 0x1

    if-ne v3, v4, :cond_0

    array-length v3, v0

    sub-int/2addr v3, v2

    aget v3, v0, v3

    if-eq v3, p1, :cond_1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    new-array v0, v0, [I

    :cond_1
    const/4 v3, 0x0

    aput v3, v0, v3

    div-int v4, p1, v1

    rem-int/2addr p1, v1

    move v5, v3

    :goto_0
    if-gt v2, v1, :cond_3

    add-int/2addr v3, p1

    if-lez v3, :cond_2

    sub-int v6, v1, v3

    if-ge v6, p1, :cond_2

    add-int/lit8 v6, v4, 0x1

    sub-int/2addr v3, v1

    goto :goto_1

    :cond_2
    move v6, v4

    :goto_1
    add-int/2addr v5, v6

    aput v5, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ٴᵢ:[I

    return-void
.end method

.method public final ʻٴ(Landroid/view/ViewGroup$LayoutParams;)Lˋˋ/ˊᵔ;
    .locals 3

    .prologue
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    new-instance v0, Lˋˋ/ˊʻ;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lˋˋ/ˊᵔ;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    iput v2, v0, Lˋˋ/ˊʻ;->ˑﹳ:I

    iput v1, v0, Lˋˋ/ˊʻ;->ﾞᴵ:I

    return-object v0

    :cond_0
    new-instance v0, Lˋˋ/ˊʻ;

    invoke-direct {v0, p1}, Lˋˋ/ˊᵔ;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iput v2, v0, Lˋˋ/ˊʻ;->ˑﹳ:I

    iput v1, v0, Lˋˋ/ˊʻ;->ﾞᴵ:I

    return-object v0
.end method

.method public final ʻᵎ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;Landroid/view/View;Lˊˋ/ᵔᵢ;)V
    .locals 2

    .prologue
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Lˋˋ/ˊʻ;

    if-nez v1, :cond_0

    invoke-virtual {p0, p3, p4}, Lˋˋ/ʻᵎ;->ᴵʼ(Landroid/view/View;Lˊˋ/ᵔᵢ;)V

    return-void

    :cond_0
    check-cast v0, Lˋˋ/ˊʻ;

    iget-object p3, v0, Lˋˋ/ˊᵔ;->ﹳٴ:Lˋˋ/ʼـ;

    invoke-virtual {p3}, Lˋˋ/ʼـ;->ˈ()I

    move-result p3

    invoke-virtual {p0, p3, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->ᐧˏ(ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I

    move-result p1

    iget p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʼᐧ:I

    const/4 p3, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_1

    iget p2, v0, Lˋˋ/ˊʻ;->ˑﹳ:I

    iget v0, v0, Lˋˋ/ˊʻ;->ﾞᴵ:I

    invoke-static {p3, p2, v0, p1, v1}, Lʾﹶ/ʽ;->ˈ(ZIIII)Lʾﹶ/ʽ;

    move-result-object p1

    invoke-virtual {p4, p1}, Lˊˋ/ᵔᵢ;->ﾞʻ(Lʾﹶ/ʽ;)V

    return-void

    :cond_1
    iget p2, v0, Lˋˋ/ˊʻ;->ˑﹳ:I

    iget v0, v0, Lˋˋ/ˊʻ;->ﾞᴵ:I

    invoke-static {p3, p1, v1, p2, v0}, Lʾﹶ/ʽ;->ˈ(ZIIII)Lʾﹶ/ʽ;

    move-result-object p1

    invoke-virtual {p4, p1}, Lˊˋ/ᵔᵢ;->ﾞʻ(Lʾﹶ/ʽ;)V

    return-void
.end method

.method public final ʼᐧ(Lˋˋ/ᐧﹶ;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵢˋ(Lˋˋ/ᐧﹶ;)I

    move-result p1

    return p1
.end method

.method public final ʽᐧ(I)I
    .locals 2

    .prologue
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʼᐧ:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->ʽʽ:Lˋˋ/ʻˋ;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->ᵎʿ:Lˋˋ/ᐧﹶ;

    invoke-virtual {p0, p1, v1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->ᐧˏ(ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->ʽʽ:Lˋˋ/ʻˋ;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->ᵎʿ:Lˋˋ/ᐧﹶ;

    invoke-virtual {p0, p1, v1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->ـˑ(ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I

    move-result p1

    return p1
.end method

.method public final ʽﹳ(Landroid/content/Context;Landroid/util/AttributeSet;)Lˋˋ/ˊᵔ;
    .locals 1

    new-instance v0, Lˋˋ/ˊʻ;

    invoke-direct {v0, p1, p2}, Lˋˋ/ˊᵔ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, v0, Lˋˋ/ˊʻ;->ˑﹳ:I

    const/4 p1, 0x0

    iput p1, v0, Lˋˋ/ˊʻ;->ﾞᴵ:I

    return-object v0
.end method

.method public final ʾˏ(II)I
    .locals 3

    .prologue
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʼᐧ:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ʿʽ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ٴᵢ:[I

    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ˊʻ:I

    sub-int v2, v1, p1

    aget v2, v0, v2

    sub-int/2addr v1, p1

    sub-int/2addr v1, p2

    aget p1, v0, v1

    sub-int/2addr v2, p1

    return v2

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ٴᵢ:[I

    add-int/2addr p2, p1

    aget p2, v0, p2

    aget p1, v0, p1

    sub-int/2addr p2, p1

    return p2
.end method

.method public final ʿˎ()V
    .locals 2

    .prologue
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʼᐧ:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lˋˋ/ʻᵎ;->ᵔʾ:I

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ᵎˊ()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ٴʼ()I

    move-result v1

    :goto_0
    sub-int/2addr v0, v1

    goto :goto_1

    :cond_0
    iget v0, p0, Lˋˋ/ʻᵎ;->ˉˆ:I

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ᵎⁱ()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ᵔי()I

    move-result v1

    goto :goto_0

    :goto_1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->ʻˆ(I)V

    return-void
.end method

.method public final ʿـ(ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->ʿˎ()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->ˏʻ()V

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->ʿـ(ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I

    move-result p1

    return p1
.end method

.method public final ˆˎ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;Lˋˋ/ˉٴ;I)V
    .locals 4

    .prologue
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->ʿˎ()V

    invoke-virtual {p2}, Lˋˋ/ᐧﹶ;->ⁱˊ()I

    move-result v0

    if-lez v0, :cond_3

    iget-boolean v0, p2, Lˋˋ/ᐧﹶ;->ᵎﹶ:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    move p4, v0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    iget v1, p3, Lˋˋ/ˉٴ;->ⁱˊ:I

    invoke-virtual {p0, v1, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->ـˑ(ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I

    move-result v1

    if-eqz p4, :cond_1

    :goto_1
    if-lez v1, :cond_3

    iget p4, p3, Lˋˋ/ˉٴ;->ⁱˊ:I

    if-lez p4, :cond_3

    add-int/lit8 p4, p4, -0x1

    iput p4, p3, Lˋˋ/ˉٴ;->ⁱˊ:I

    invoke-virtual {p0, p4, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->ـˑ(ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lˋˋ/ᐧﹶ;->ⁱˊ()I

    move-result p4

    sub-int/2addr p4, v0

    iget v0, p3, Lˋˋ/ˉٴ;->ⁱˊ:I

    :goto_2
    if-ge v0, p4, :cond_2

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->ـˑ(ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I

    move-result v3

    if-le v3, v1, :cond_2

    move v0, v2

    move v1, v3

    goto :goto_2

    :cond_2
    iput v0, p3, Lˋˋ/ˉٴ;->ⁱˊ:I

    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->ˏʻ()V

    return-void
.end method

.method public final ˆﹳ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;Lˋˋ/ٴʼ;Lˋˋ/ᵎⁱ;)V
    .locals 18

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    iget-object v5, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v5}, Lʼﾞ/ᵎⁱ;->ﾞʻ()I

    move-result v5

    const/4 v6, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    if-eq v5, v8, :cond_0

    move v9, v6

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v10

    if-lez v10, :cond_1

    iget-object v10, v0, Landroidx/recyclerview/widget/GridLayoutManager;->ٴᵢ:[I

    iget v11, v0, Landroidx/recyclerview/widget/GridLayoutManager;->ˊʻ:I

    aget v10, v10, v11

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    if-eqz v9, :cond_2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->ʿˎ()V

    :cond_2
    iget v11, v3, Lˋˋ/ٴʼ;->ˑﹳ:I

    if-ne v11, v6, :cond_3

    move v11, v6

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    :goto_2
    iget v12, v0, Landroidx/recyclerview/widget/GridLayoutManager;->ˊʻ:I

    if-nez v11, :cond_4

    iget v12, v3, Lˋˋ/ٴʼ;->ˈ:I

    invoke-virtual {v0, v12, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->ـˑ(ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I

    move-result v12

    iget v13, v3, Lˋˋ/ٴʼ;->ˈ:I

    invoke-virtual {v0, v13, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->ˊـ(ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I

    move-result v13

    add-int/2addr v12, v13

    :cond_4
    const/4 v13, 0x0

    :goto_3
    iget v14, v0, Landroidx/recyclerview/widget/GridLayoutManager;->ˊʻ:I

    if-ge v13, v14, :cond_8

    iget v14, v3, Lˋˋ/ٴʼ;->ˈ:I

    if-ltz v14, :cond_8

    invoke-virtual {v2}, Lˋˋ/ᐧﹶ;->ⁱˊ()I

    move-result v15

    if-ge v14, v15, :cond_8

    if-lez v12, :cond_8

    iget v14, v3, Lˋˋ/ٴʼ;->ˈ:I

    invoke-virtual {v0, v14, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->ˊـ(ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I

    move-result v15

    iget v8, v0, Landroidx/recyclerview/widget/GridLayoutManager;->ˊʻ:I

    if-gt v15, v8, :cond_7

    sub-int/2addr v12, v15

    if-gez v12, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v3, v1}, Lˋˋ/ٴʼ;->ⁱˊ(Lˋˋ/ʻˋ;)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_6

    goto :goto_4

    :cond_6
    iget-object v14, v0, Landroidx/recyclerview/widget/GridLayoutManager;->ˉٴ:[Landroid/view/View;

    aput-object v8, v14, v13

    add-int/lit8 v13, v13, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    goto :goto_3

    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, " requires "

    const-string v3, " spans but GridLayoutManager has only "

    const-string v4, "Item at position "

    invoke-static {v4, v14, v2, v15, v3}, Lᐧـ/ˈ;->ﹳᐧ(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroidx/recyclerview/widget/GridLayoutManager;->ˊʻ:I

    const-string v4, " spans."

    invoke-static {v2, v3, v4}, Lʼﾞ/ˊˋ;->ˏי(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    :goto_4
    if-nez v13, :cond_9

    iput-boolean v6, v4, Lˋˋ/ᵎⁱ;->ⁱˊ:Z

    return-void

    :cond_9
    if-eqz v11, :cond_a

    move v15, v6

    move v14, v13

    const/4 v12, 0x0

    goto :goto_5

    :cond_a
    add-int/lit8 v12, v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    :goto_5
    const/4 v6, 0x0

    :goto_6
    if-eq v12, v14, :cond_b

    iget-object v7, v0, Landroidx/recyclerview/widget/GridLayoutManager;->ˉٴ:[Landroid/view/View;

    aget-object v7, v7, v12

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Lˋˋ/ˊʻ;

    invoke-static {v7}, Lˋˋ/ʻᵎ;->ˆﾞ(Landroid/view/View;)I

    move-result v7

    invoke-virtual {v0, v7, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->ˊـ(ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I

    move-result v7

    iput v7, v8, Lˋˋ/ˊʻ;->ﾞᴵ:I

    iput v6, v8, Lˋˋ/ˊʻ;->ˑﹳ:I

    add-int/2addr v6, v7

    add-int/2addr v12, v15

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_7
    if-ge v2, v13, :cond_11

    iget-object v7, v0, Landroidx/recyclerview/widget/GridLayoutManager;->ˉٴ:[Landroid/view/View;

    aget-object v7, v7, v2

    iget-object v8, v3, Lˋˋ/ٴʼ;->ٴﹶ:Ljava/util/List;

    if-nez v8, :cond_d

    if-eqz v11, :cond_c

    const/4 v8, -0x1

    const/4 v12, 0x0

    invoke-virtual {v0, v8, v7, v12}, Lˋˋ/ʻᵎ;->ⁱˊ(ILandroid/view/View;Z)V

    goto :goto_8

    :cond_c
    const/4 v8, -0x1

    const/4 v12, 0x0

    invoke-virtual {v0, v12, v7, v12}, Lˋˋ/ʻᵎ;->ⁱˊ(ILandroid/view/View;Z)V

    goto :goto_8

    :cond_d
    const/4 v8, -0x1

    const/4 v12, 0x0

    if-eqz v11, :cond_e

    const/4 v14, 0x1

    invoke-virtual {v0, v8, v7, v14}, Lˋˋ/ʻᵎ;->ⁱˊ(ILandroid/view/View;Z)V

    goto :goto_8

    :cond_e
    const/4 v14, 0x1

    invoke-virtual {v0, v12, v7, v14}, Lˋˋ/ʻᵎ;->ⁱˊ(ILandroid/view/View;Z)V

    :goto_8
    iget-object v8, v0, Landroidx/recyclerview/widget/GridLayoutManager;->ᵔי:Landroid/graphics/Rect;

    invoke-virtual {v0, v7, v8}, Lˋˋ/ʻᵎ;->ˈ(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v5, v7, v12}, Landroidx/recyclerview/widget/GridLayoutManager;->ᵢי(ILandroid/view/View;Z)V

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v8, v7}, Lʼﾞ/ᵎⁱ;->ˑﹳ(Landroid/view/View;)I

    move-result v8

    if-le v8, v6, :cond_f

    move v6, v8

    :cond_f
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lˋˋ/ˊʻ;

    iget-object v12, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v12, v7}, Lʼﾞ/ᵎⁱ;->ﾞᴵ(Landroid/view/View;)I

    move-result v7

    int-to-float v7, v7

    const/high16 v12, 0x3f800000    # 1.0f

    mul-float/2addr v7, v12

    iget v8, v8, Lˋˋ/ˊʻ;->ﾞᴵ:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    cmpl-float v8, v7, v1

    if-lez v8, :cond_10

    move v1, v7

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_11
    if-eqz v9, :cond_13

    iget v2, v0, Landroidx/recyclerview/widget/GridLayoutManager;->ˊʻ:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->ʻˆ(I)V

    const/4 v6, 0x0

    const/4 v12, 0x0

    :goto_9
    if-ge v12, v13, :cond_13

    iget-object v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;->ˉٴ:[Landroid/view/View;

    aget-object v1, v1, v12

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v14, 0x1

    invoke-virtual {v0, v2, v1, v14}, Landroidx/recyclerview/widget/GridLayoutManager;->ᵢי(ILandroid/view/View;Z)V

    iget-object v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v2, v1}, Lʼﾞ/ᵎⁱ;->ˑﹳ(Landroid/view/View;)I

    move-result v1

    if-le v1, v6, :cond_12

    move v6, v1

    :cond_12
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :cond_13
    const/4 v12, 0x0

    :goto_a
    if-ge v12, v13, :cond_17

    iget-object v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;->ˉٴ:[Landroid/view/View;

    aget-object v1, v1, v12

    iget-object v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v2, v1}, Lʼﾞ/ᵎⁱ;->ˑﹳ(Landroid/view/View;)I

    move-result v2

    if-eq v2, v6, :cond_15

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lˋˋ/ˊʻ;

    iget-object v5, v2, Lˋˋ/ˊᵔ;->ⁱˊ:Landroid/graphics/Rect;

    iget v7, v5, Landroid/graphics/Rect;->top:I

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v7, v8

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    iget v8, v5, Landroid/graphics/Rect;->left:I

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v5

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v8, v5

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v8, v5

    iget v5, v2, Lˋˋ/ˊʻ;->ˑﹳ:I

    iget v9, v2, Lˋˋ/ˊʻ;->ﾞᴵ:I

    invoke-virtual {v0, v5, v9}, Landroidx/recyclerview/widget/GridLayoutManager;->ʾˏ(II)I

    move-result v5

    iget v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʼᐧ:I

    const/4 v14, 0x1

    if-ne v9, v14, :cond_14

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v9, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v9, v5, v10, v8, v2}, Lˋˋ/ʻᵎ;->ʼʼ(ZIIII)I

    move-result v2

    sub-int v5, v6, v7

    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_b

    :cond_14
    const/4 v9, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    sub-int v8, v6, v8

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v9, v5, v10, v7, v2}, Lˋˋ/ʻᵎ;->ʼʼ(ZIIII)I

    move-result v5

    move v2, v8

    :goto_b
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lˋˋ/ˊᵔ;

    invoke-virtual {v0, v1, v2, v5, v7}, Lˋˋ/ʻᵎ;->ʼᵢ(Landroid/view/View;IILˋˋ/ˊᵔ;)Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-virtual {v1, v2, v5}, Landroid/view/View;->measure(II)V

    goto :goto_c

    :cond_15
    const/4 v9, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    :cond_16
    :goto_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    :cond_17
    const/4 v9, 0x0

    iput v6, v4, Lˋˋ/ᵎⁱ;->ﹳٴ:I

    iget v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʼᐧ:I

    const/4 v14, 0x1

    if-ne v1, v14, :cond_19

    iget v1, v3, Lˋˋ/ٴʼ;->ﾞᴵ:I

    const/4 v8, -0x1

    if-ne v1, v8, :cond_18

    iget v12, v3, Lˋˋ/ٴʼ;->ⁱˊ:I

    sub-int v1, v12, v6

    move v3, v1

    move v1, v9

    move v2, v1

    goto :goto_e

    :cond_18
    iget v12, v3, Lˋˋ/ٴʼ;->ⁱˊ:I

    add-int v1, v12, v6

    move v2, v9

    move v3, v12

    move v12, v1

    move v1, v2

    goto :goto_e

    :cond_19
    const/4 v8, -0x1

    iget v1, v3, Lˋˋ/ٴʼ;->ﾞᴵ:I

    if-ne v1, v8, :cond_1a

    iget v12, v3, Lˋˋ/ٴʼ;->ⁱˊ:I

    sub-int v1, v12, v6

    move v3, v9

    move v2, v12

    :goto_d
    move v12, v3

    goto :goto_e

    :cond_1a
    iget v12, v3, Lˋˋ/ٴʼ;->ⁱˊ:I

    add-int v1, v12, v6

    move v2, v1

    move v3, v9

    move v1, v12

    goto :goto_d

    :goto_e
    move v7, v9

    :goto_f
    if-ge v7, v13, :cond_1f

    iget-object v5, v0, Landroidx/recyclerview/widget/GridLayoutManager;->ˉٴ:[Landroid/view/View;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lˋˋ/ˊʻ;

    iget v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʼᐧ:I

    const/4 v14, 0x1

    if-ne v8, v14, :cond_1c

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ʿʽ()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ٴʼ()I

    move-result v1

    iget-object v2, v0, Landroidx/recyclerview/widget/GridLayoutManager;->ٴᵢ:[I

    iget v8, v0, Landroidx/recyclerview/widget/GridLayoutManager;->ˊʻ:I

    iget v9, v6, Lˋˋ/ˊʻ;->ˑﹳ:I

    sub-int/2addr v8, v9

    aget v2, v2, v8

    add-int/2addr v1, v2

    iget-object v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v2, v5}, Lʼﾞ/ᵎⁱ;->ﾞᴵ(Landroid/view/View;)I

    move-result v2

    sub-int v2, v1, v2

    move/from16 v17, v2

    move v2, v1

    move/from16 v1, v17

    goto :goto_10

    :cond_1b
    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ٴʼ()I

    move-result v1

    iget-object v2, v0, Landroidx/recyclerview/widget/GridLayoutManager;->ٴᵢ:[I

    iget v8, v6, Lˋˋ/ˊʻ;->ˑﹳ:I

    aget v2, v2, v8

    add-int/2addr v1, v2

    iget-object v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v2, v5}, Lʼﾞ/ᵎⁱ;->ﾞᴵ(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v1

    goto :goto_10

    :cond_1c
    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ᵔי()I

    move-result v3

    iget-object v8, v0, Landroidx/recyclerview/widget/GridLayoutManager;->ٴᵢ:[I

    iget v9, v6, Lˋˋ/ˊʻ;->ˑﹳ:I

    aget v8, v8, v9

    add-int/2addr v3, v8

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v8, v5}, Lʼﾞ/ᵎⁱ;->ﾞᴵ(Landroid/view/View;)I

    move-result v8

    add-int/2addr v8, v3

    move v12, v8

    :goto_10
    invoke-static {v5, v1, v3, v2, v12}, Lˋˋ/ʻᵎ;->ﹳـ(Landroid/view/View;IIII)V

    iget-object v8, v6, Lˋˋ/ˊᵔ;->ﹳٴ:Lˋˋ/ʼـ;

    invoke-virtual {v8}, Lˋˋ/ʼـ;->ˆʾ()Z

    move-result v8

    if-nez v8, :cond_1d

    iget-object v6, v6, Lˋˋ/ˊᵔ;->ﹳٴ:Lˋˋ/ʼـ;

    invoke-virtual {v6}, Lˋˋ/ʼـ;->ˉʿ()Z

    move-result v6

    if-eqz v6, :cond_1e

    :cond_1d
    const/4 v14, 0x1

    goto :goto_11

    :cond_1e
    const/4 v14, 0x1

    goto :goto_12

    :goto_11
    iput-boolean v14, v4, Lˋˋ/ᵎⁱ;->ʽ:Z

    :goto_12
    iget-boolean v6, v4, Lˋˋ/ᵎⁱ;->ˈ:Z

    invoke-virtual {v5}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    or-int/2addr v5, v6

    iput-boolean v5, v4, Lˋˋ/ᵎⁱ;->ˈ:Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    :cond_1f
    iget-object v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;->ˉٴ:[Landroid/view/View;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final ˈʿ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I
    .locals 2

    .prologue
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʼᐧ:I

    if-nez v0, :cond_0

    iget p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ˊʻ:I

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ˉٴ()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p2}, Lˋˋ/ᐧﹶ;->ⁱˊ()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p2}, Lˋˋ/ᐧﹶ;->ⁱˊ()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->ᐧˏ(ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I

    move-result p1

    add-int/2addr p1, v1

    return p1
.end method

.method public final ˈˏ()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ᵎˊ:Lﹶﾞ/ⁱי;

    invoke-virtual {v0}, Lﹶﾞ/ⁱי;->ʻٴ()V

    iget-object v0, v0, Lﹶﾞ/ⁱי;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final ˈـ()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵢˏ:Lˋˋ/ᵔי;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ᴵᵔ:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ˉʿ(Lˋˋ/ᐧﹶ;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵢˋ(Lˋˋ/ᐧﹶ;)I

    move-result p1

    return p1
.end method

.method public final ˉˆ(Lˋˋ/ᐧﹶ;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᵢ(Lˋˋ/ᐧﹶ;)I

    move-result p1

    return p1
.end method

.method public final ˊـ(ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I
    .locals 3

    .prologue
    iget-boolean p3, p3, Lˋˋ/ᐧﹶ;->ᵎﹶ:Z

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ᵎˊ:Lﹶﾞ/ⁱי;

    const/4 v1, 0x1

    if-nez p3, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v1

    :cond_0
    iget-object p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ᵎⁱ:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {p3, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p3

    if-eq p3, v2, :cond_1

    return p3

    :cond_1
    invoke-virtual {p2, p1}, Lˋˋ/ʻˋ;->ⁱˊ(I)I

    move-result p2

    if-ne p2, v2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GridLayoutManager"

    nop

    return v1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v1
.end method

.method public final ˊﹳ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;ZZ)Landroid/view/View;
    .locals 9

    .prologue
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result p3

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result p3

    sub-int/2addr p3, v0

    const/4 p4, -0x1

    move v0, p4

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    move v8, p4

    move p4, p3

    move p3, v8

    :goto_0
    invoke-virtual {p2}, Lˋˋ/ᐧﹶ;->ⁱˊ()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹶʽ()V

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v2}, Lʼﾞ/ᵎⁱ;->ˉʿ()I

    move-result v2

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v3}, Lʼﾞ/ᵎⁱ;->ʼˎ()I

    move-result v3

    const/4 v4, 0x0

    move-object v5, v4

    :goto_1
    if-eq p3, p4, :cond_6

    invoke-virtual {p0, p3}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lˋˋ/ʻᵎ;->ˆﾞ(Landroid/view/View;)I

    move-result v7

    if-ltz v7, :cond_5

    if-ge v7, v1, :cond_5

    invoke-virtual {p0, v7, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->ـˑ(ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lˋˋ/ˊᵔ;

    iget-object v7, v7, Lˋˋ/ˊᵔ;->ﹳٴ:Lˋˋ/ʼـ;

    invoke-virtual {v7}, Lˋˋ/ʼـ;->ˆʾ()Z

    move-result v7

    if-eqz v7, :cond_2

    if-nez v5, :cond_5

    move-object v5, v6

    goto :goto_3

    :cond_2
    iget-object v7, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v7, v6}, Lʼﾞ/ᵎⁱ;->ᵎﹶ(Landroid/view/View;)I

    move-result v7

    if-ge v7, v3, :cond_4

    iget-object v7, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v7, v6}, Lʼﾞ/ᵎⁱ;->ˈ(Landroid/view/View;)I

    move-result v7

    if-ge v7, v2, :cond_3

    goto :goto_2

    :cond_3
    return-object v6

    :cond_4
    :goto_2
    if-nez v4, :cond_5

    move-object v4, v6

    :cond_5
    :goto_3
    add-int/2addr p3, v0

    goto :goto_1

    :cond_6
    if-eqz v4, :cond_7

    return-object v4

    :cond_7
    return-object v5
.end method

.method public final ˎᵎ(II)Ljava/util/HashSet;
    .locals 3

    .prologue
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->ʽʽ:Lˋˋ/ʻˋ;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->ᵎʿ:Lˋˋ/ᐧﹶ;

    invoke-virtual {p0, p2, v2, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->ˊـ(ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I

    move-result p2

    move v1, p1

    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final ˏʻ()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ˉٴ:[Landroid/view/View;

    if-eqz v0, :cond_1

    array-length v0, v0

    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ˊʻ:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ˊʻ:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ˉٴ:[Landroid/view/View;

    return-void
.end method

.method public final ˏי()Lˋˋ/ˊᵔ;
    .locals 3

    .prologue
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʼᐧ:I

    const/4 v1, -0x1

    const/4 v2, -0x2

    if-nez v0, :cond_0

    new-instance v0, Lˋˋ/ˊʻ;

    invoke-direct {v0, v2, v1}, Lˋˋ/ˊʻ;-><init>(II)V

    return-object v0

    :cond_0
    new-instance v0, Lˋˋ/ˊʻ;

    invoke-direct {v0, v1, v2}, Lˋˋ/ˊʻ;-><init>(II)V

    return-object v0
.end method

.method public final ˏᵢ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;Lˊˋ/ᵔᵢ;)V
    .locals 0

    .prologue
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->ˏᵢ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;Lˊˋ/ᵔᵢ;)V

    const-class p1, Landroid/widget/GridView;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lˊˋ/ᵔᵢ;->ˆʾ(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->ˆﾞ:Lˋˋ/ᴵˑ;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lˋˋ/ᴵˑ;->ﹳٴ()I

    move-result p1

    const/4 p2, 0x1

    if-le p1, p2, :cond_0

    sget-object p1, Lˊˋ/ʽ;->ˉˆ:Lˊˋ/ʽ;

    invoke-virtual {p3, p1}, Lˊˋ/ᵔᵢ;->ⁱˊ(Lˊˋ/ʽ;)V

    :cond_0
    return-void
.end method

.method public final ˑ(ILandroid/os/Bundle;)Z
    .locals 11

    .prologue
    sget-object v0, Lˊˋ/ʽ;->ˉˆ:Lˊˋ/ʽ;

    invoke-virtual {v0}, Lˊˋ/ʽ;->ﹳٴ()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne p1, v0, :cond_31

    if-eq p1, v3, :cond_31

    move p1, v2

    :goto_0
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_2

    goto/16 :goto_11

    :cond_2
    if-nez p2, :cond_3

    goto/16 :goto_11

    :cond_3
    const-string v0, "android.view.accessibility.action.ARGUMENT_DIRECTION_INT"

    invoke-virtual {p2, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    sget-object v0, Landroidx/recyclerview/widget/GridLayoutManager;->ˑٴ:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_11

    :cond_4
    iget-object v0, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->ˆﾞ(Landroid/view/View;)Lˋˋ/ʼـ;

    move-result-object p1

    if-nez p1, :cond_5

    goto/16 :goto_11

    :cond_5
    invoke-virtual {p1}, Lˋˋ/ʼـ;->ⁱˊ()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->ʽᐧ(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->יⁱ(I)I

    move-result v4

    if-ltz v0, :cond_37

    if-gez v4, :cond_6

    goto/16 :goto_11

    :cond_6
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->ⁱʾ(I)Ljava/util/HashSet;

    move-result-object v5

    iget v6, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ᵔٴ:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->יⁱ(I)I

    move-result v5

    invoke-virtual {p0, v5, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->ˎᵎ(II)Ljava/util/HashSet;

    move-result-object v5

    iget v6, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ˈʿ:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    :cond_7
    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ᵔٴ:I

    iput v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ˈʿ:I

    :cond_8
    iget v5, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ᵔٴ:I

    if-ne v5, v3, :cond_9

    move v5, v0

    :cond_9
    iget v6, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ˈʿ:I

    if-ne v6, v3, :cond_a

    goto :goto_2

    :cond_a
    move v4, v6

    :goto_2
    const/16 v6, 0x42

    const/16 v7, 0x11

    if-eq p2, v7, :cond_1b

    const/16 v8, 0x21

    if-eq p2, v8, :cond_17

    if-eq p2, v6, :cond_11

    const/16 v8, 0x82

    if-eq p2, v8, :cond_b

    goto/16 :goto_11

    :cond_b
    add-int/2addr p1, v1

    :goto_3
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ˉٴ()I

    move-result v8

    if-ge p1, v8, :cond_10

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->ʽᐧ(I)I

    move-result v8

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->יⁱ(I)I

    move-result v9

    if-ltz v8, :cond_10

    if-gez v9, :cond_c

    goto :goto_4

    :cond_c
    iget v10, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʼᐧ:I

    if-ne v10, v1, :cond_e

    if-le v8, v5, :cond_f

    if-eq v9, v4, :cond_d

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->יⁱ(I)I

    move-result v9

    invoke-virtual {p0, v9, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->ˎᵎ(II)Ljava/util/HashSet;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    :cond_d
    iput v8, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ᵔٴ:I

    goto/16 :goto_8

    :cond_e
    if-le v8, v5, :cond_f

    if-ne v9, v4, :cond_f

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->ʽᐧ(I)I

    move-result v4

    iput v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ᵔٴ:I

    goto/16 :goto_8

    :cond_f
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_10
    :goto_4
    move p1, v3

    goto/16 :goto_8

    :cond_11
    add-int/2addr p1, v1

    :goto_5
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ˉٴ()I

    move-result v8

    if-ge p1, v8, :cond_10

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->ʽᐧ(I)I

    move-result v8

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->יⁱ(I)I

    move-result v9

    if-ltz v8, :cond_10

    if-gez v9, :cond_12

    goto :goto_4

    :cond_12
    iget v10, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʼᐧ:I

    if-ne v10, v1, :cond_15

    if-ne v8, v5, :cond_13

    if-gt v9, v4, :cond_14

    :cond_13
    if-le v8, v5, :cond_16

    :cond_14
    iput v8, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ᵔٴ:I

    iput v9, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ˈʿ:I

    goto/16 :goto_8

    :cond_15
    if-le v9, v4, :cond_16

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->ⁱʾ(I)Ljava/util/HashSet;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    iput v9, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ˈʿ:I

    goto/16 :goto_8

    :cond_16
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_17
    sub-int/2addr p1, v1

    :goto_6
    if-ltz p1, :cond_10

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->ʽᐧ(I)I

    move-result v8

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->יⁱ(I)I

    move-result v9

    if-ltz v8, :cond_10

    if-gez v9, :cond_18

    goto :goto_4

    :cond_18
    iget v10, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʼᐧ:I

    if-ne v10, v1, :cond_19

    if-ge v8, v5, :cond_1a

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->יⁱ(I)I

    move-result v9

    invoke-virtual {p0, v9, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->ˎᵎ(II)Ljava/util/HashSet;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a

    iput v8, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ᵔٴ:I

    goto :goto_8

    :cond_19
    if-ge v8, v5, :cond_1a

    if-ne v9, v4, :cond_1a

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->ⁱʾ(I)Ljava/util/HashSet;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ᵔٴ:I

    goto :goto_8

    :cond_1a
    add-int/lit8 p1, p1, -0x1

    goto :goto_6

    :cond_1b
    sub-int/2addr p1, v1

    :goto_7
    if-ltz p1, :cond_10

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->ʽᐧ(I)I

    move-result v8

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->יⁱ(I)I

    move-result v9

    if-ltz v8, :cond_10

    if-gez v9, :cond_1c

    goto/16 :goto_4

    :cond_1c
    iget v10, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʼᐧ:I

    if-ne v10, v1, :cond_1f

    if-ne v8, v5, :cond_1d

    if-lt v9, v4, :cond_1e

    :cond_1d
    if-ge v8, v5, :cond_20

    :cond_1e
    iput v8, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ᵔٴ:I

    iput v9, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ˈʿ:I

    goto :goto_8

    :cond_1f
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->ⁱʾ(I)Ljava/util/HashSet;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    if-ge v9, v4, :cond_20

    iput v9, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ˈʿ:I

    goto :goto_8

    :cond_20
    add-int/lit8 p1, p1, -0x1

    goto :goto_7

    :goto_8
    if-ne p1, v3, :cond_30

    iget v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʼᐧ:I

    if-nez v4, :cond_30

    if-ne p2, v7, :cond_28

    if-gez v0, :cond_22

    :cond_21
    :goto_9
    move p1, v3

    goto/16 :goto_e

    :cond_22
    if-ne v4, v1, :cond_23

    goto :goto_9

    :cond_23
    new-instance p1, Ljava/util/TreeMap;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    move p2, v2

    :goto_a
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ˉٴ()I

    move-result v4

    if-ge p2, v4, :cond_26

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->ⁱʾ(I)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gez v6, :cond_24

    goto :goto_9

    :cond_24
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_25
    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    :cond_26
    invoke-virtual {p1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_27
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v5, v0, :cond_27

    invoke-virtual {p1, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput v5, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ᵔٴ:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->יⁱ(I)I

    move-result p2

    iput p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ˈʿ:I

    goto/16 :goto_e

    :cond_28
    if-ne p2, v6, :cond_30

    if-gez v0, :cond_29

    goto :goto_9

    :cond_29
    if-ne v4, v1, :cond_2a

    goto :goto_9

    :cond_2a
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    move p2, v2

    :goto_c
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ˉٴ()I

    move-result v4

    if-ge p2, v4, :cond_2e

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->ⁱʾ(I)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2b
    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gez v6, :cond_2c

    goto/16 :goto_9

    :cond_2c
    invoke-virtual {p1, v5}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2b

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_2d
    add-int/lit8 p2, p2, 0x1

    goto :goto_c

    :cond_2e
    invoke-virtual {p1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v5, v0, :cond_2f

    invoke-virtual {p1, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput v5, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ᵔٴ:I

    iput v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ˈʿ:I

    :cond_30
    :goto_e
    if-eq p1, v3, :cond_37

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳⁱ(I)V

    iput p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ˆﾞ:I

    return v1

    :cond_31
    const v0, 0x1020037

    if-ne p1, v0, :cond_38

    if-eqz p2, :cond_38

    const-string p1, "android.view.accessibility.action.ARGUMENT_ROW_INT"

    invoke-virtual {p2, p1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "android.view.accessibility.action.ARGUMENT_COLUMN_INT"

    invoke-virtual {p2, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-eq p1, v3, :cond_37

    if-ne p2, v3, :cond_32

    goto :goto_11

    :cond_32
    iget-object v0, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->ˆﾞ:Lˋˋ/ᴵˑ;

    invoke-virtual {v0}, Lˋˋ/ᴵˑ;->ﹳٴ()I

    move-result v0

    move v4, v2

    :goto_f
    if-ge v4, v0, :cond_35

    iget-object v5, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView;->ʽʽ:Lˋˋ/ʻˋ;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->ᵎʿ:Lˋˋ/ᐧﹶ;

    invoke-virtual {p0, v4, v6, v5}, Landroidx/recyclerview/widget/GridLayoutManager;->ـˑ(ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I

    move-result v5

    iget-object v6, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, v6, Landroidx/recyclerview/widget/RecyclerView;->ʽʽ:Lˋˋ/ʻˋ;

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->ᵎʿ:Lˋˋ/ᐧﹶ;

    invoke-virtual {p0, v4, v7, v6}, Landroidx/recyclerview/widget/GridLayoutManager;->ᐧˏ(ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I

    move-result v6

    iget v7, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʼᐧ:I

    if-ne v7, v1, :cond_33

    if-ne v5, p2, :cond_34

    if-ne v6, p1, :cond_34

    goto :goto_10

    :cond_33
    if-ne v5, p1, :cond_34

    if-ne v6, p2, :cond_34

    goto :goto_10

    :cond_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_35
    move v4, v3

    :goto_10
    if-le v4, v3, :cond_37

    iput v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʾᵎ:I

    iput v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʼʼ:I

    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵢˏ:Lˋˋ/ᵔי;

    if-eqz p1, :cond_36

    iput v3, p1, Lˋˋ/ᵔי;->ʾˋ:I

    :cond_36
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ـˊ()V

    return v1

    :cond_37
    :goto_11
    return v2

    :cond_38
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->ˑ(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public final ˑʼ(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ᵎˊ:Lﹶﾞ/ⁱי;

    invoke-virtual {p1}, Lﹶﾞ/ⁱי;->ʻٴ()V

    iget-object p1, p1, Lﹶﾞ/ⁱי;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final ˑˆ(Lˋˋ/ᐧﹶ;Lˋˋ/ٴʼ;Lˋˋ/ʽʽ;)V
    .locals 5

    .prologue
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ˊʻ:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ˊʻ:I

    if-ge v2, v3, :cond_0

    iget v3, p2, Lˋˋ/ٴʼ;->ˈ:I

    if-ltz v3, :cond_0

    invoke-virtual {p1}, Lˋˋ/ᐧﹶ;->ⁱˊ()I

    move-result v4

    if-ge v3, v4, :cond_0

    if-lez v0, :cond_0

    iget v3, p2, Lˋˋ/ٴʼ;->ˈ:I

    iget v4, p2, Lˋˋ/ٴʼ;->ᵎﹶ:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p3, v3, v4}, Lˋˋ/ʽʽ;->ⁱˊ(II)V

    iget-object v3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ᵎˊ:Lﹶﾞ/ⁱי;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v0, v0, -0x1

    iget v3, p2, Lˋˋ/ٴʼ;->ˈ:I

    iget v4, p2, Lˋˋ/ٴʼ;->ˑﹳ:I

    add-int/2addr v3, v4

    iput v3, p2, Lˋˋ/ٴʼ;->ˈ:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ˑˉ(I)V
    .locals 2

    .prologue
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ˊʻ:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ᴵᵔ:Z

    if-lt p1, v0, :cond_1

    iput p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ˊʻ:I

    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ᵎˊ:Lﹶﾞ/ⁱי;

    invoke-virtual {p1}, Lﹶﾞ/ⁱי;->ʻٴ()V

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ـˊ()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Span count should be at least 1. Provided "

    invoke-static {p1, v1}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final יʿ(Z)V
    .locals 1

    .prologue
    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->יʿ(Z)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "GridLayoutManager does not support stack from end. Consider using reverse layout"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final יⁱ(I)I
    .locals 2

    .prologue
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʼᐧ:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->ʽʽ:Lˋˋ/ʻˋ;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->ᵎʿ:Lˋˋ/ᐧﹶ;

    invoke-virtual {p0, p1, v1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->ᐧˏ(ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->ʽʽ:Lˋˋ/ʻˋ;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->ᵎʿ:Lˋˋ/ᐧﹶ;

    invoke-virtual {p0, p1, v1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->ـˑ(ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I

    move-result p1

    return p1
.end method

.method public final ـˑ(ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I
    .locals 2

    .prologue
    iget-boolean p3, p3, Lˋˋ/ᐧﹶ;->ᵎﹶ:Z

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ᵎˊ:Lﹶﾞ/ⁱי;

    if-nez p3, :cond_0

    iget p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ˊʻ:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    rem-int/2addr p1, p2

    return p1

    :cond_0
    iget-object p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ٴʼ:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {p3, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p3

    if-eq p3, v1, :cond_1

    return p3

    :cond_1
    invoke-virtual {p2, p1}, Lˋˋ/ʻˋ;->ⁱˊ(I)I

    move-result p2

    if-ne p2, v1, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GridLayoutManager"

    nop

    const/4 p1, 0x0

    return p1

    :cond_2
    iget p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ˊʻ:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    rem-int/2addr p2, p1

    return p2
.end method

.method public final ـﹶ(II)V
    .locals 0

    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ᵎˊ:Lﹶﾞ/ⁱי;

    invoke-virtual {p1}, Lﹶﾞ/ⁱי;->ʻٴ()V

    iget-object p1, p1, Lﹶﾞ/ⁱי;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final ٴᴵ(Landroid/graphics/Rect;II)V
    .locals 4

    .prologue
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ٴᵢ:[I

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lˋˋ/ʻᵎ;->ٴᴵ(Landroid/graphics/Rect;II)V

    :cond_0
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

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʼᐧ:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, v2

    iget-object v0, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v2, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    invoke-static {p3, p1, v0}, Lˋˋ/ʻᵎ;->ᵔᵢ(III)I

    move-result p1

    iget-object p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ٴᵢ:[I

    array-length v0, p3

    sub-int/2addr v0, v3

    aget p3, p3, v0

    add-int/2addr p3, v1

    iget-object v0, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getMinimumWidth()I

    move-result v0

    invoke-static {p2, p3, v0}, Lˋˋ/ʻᵎ;->ᵔᵢ(III)I

    move-result p2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p1, v1

    iget-object v0, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v1, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Landroid/view/View;->getMinimumWidth()I

    move-result v0

    invoke-static {p2, p1, v0}, Lˋˋ/ʻᵎ;->ᵔᵢ(III)I

    move-result p2

    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ٴᵢ:[I

    array-length v0, p1

    sub-int/2addr v0, v3

    aget p1, p1, v0

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
    .locals 7

    .prologue
    iget-boolean v0, p2, Lˋˋ/ᐧﹶ;->ᵎﹶ:Z

    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ٴʼ:Landroid/util/SparseIntArray;

    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ᵎⁱ:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {p0, v3}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lˋˋ/ˊʻ;

    iget-object v5, v4, Lˋˋ/ˊᵔ;->ﹳٴ:Lˋˋ/ʼـ;

    invoke-virtual {v5}, Lˋˋ/ʼـ;->ˈ()I

    move-result v5

    iget v6, v4, Lˋˋ/ˊʻ;->ﾞᴵ:I

    invoke-virtual {v2, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    iget v4, v4, Lˋˋ/ˊʻ;->ˑﹳ:I

    invoke-virtual {v1, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->ٴﹳ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)V

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final ᐧˏ(ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I
    .locals 1

    .prologue
    iget-boolean p3, p3, Lˋˋ/ᐧﹶ;->ᵎﹶ:Z

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ᵎˊ:Lﹶﾞ/ⁱי;

    if-nez p3, :cond_0

    iget p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ˊʻ:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lﹶﾞ/ⁱי;->ˏי(II)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p2, p1}, Lˋˋ/ʻˋ;->ⁱˊ(I)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Cannot find span size for pre layout position. "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GridLayoutManager"

    nop

    const/4 p1, 0x0

    return p1

    :cond_1
    iget p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ˊʻ:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p1}, Lﹶﾞ/ⁱי;->ˏי(II)I

    move-result p1

    return p1
.end method

.method public final ᐧﾞ(Landroid/view/View;ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)Landroid/view/View;
    .locals 22

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual/range {p0 .. p1}, Lˋˋ/ʻᵎ;->ﹳᐧ(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lˋˋ/ˊʻ;

    iget v6, v5, Lˋˋ/ˊʻ;->ˑﹳ:I

    iget v5, v5, Lˋˋ/ˊʻ;->ﾞᴵ:I

    add-int/2addr v5, v6

    invoke-super/range {p0 .. p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->ᐧﾞ(Landroid/view/View;ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_1

    :goto_0
    return-object v4

    :cond_1
    move/from16 v7, p2

    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->ˋـ(I)I

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_2

    move v7, v9

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    iget-boolean v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʽﹳ:Z

    const/4 v11, -0x1

    if-eq v7, v10, :cond_3

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v7

    sub-int/2addr v7, v9

    move v10, v11

    move v12, v10

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v7

    move v10, v7

    move v12, v9

    const/4 v7, 0x0

    :goto_2
    iget v13, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʼᐧ:I

    if-ne v13, v9, :cond_4

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ʿʽ()Z

    move-result v13

    if-eqz v13, :cond_4

    move v13, v9

    goto :goto_3

    :cond_4
    const/4 v13, 0x0

    :goto_3
    invoke-virtual {v0, v7, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->ᐧˏ(ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I

    move-result v14

    move-object/from16 v16, v4

    move v8, v11

    move v15, v8

    const/4 v9, 0x0

    move v11, v7

    const/4 v4, 0x0

    move-object/from16 v7, v16

    :goto_4
    move-object/from16 v17, v7

    if-eq v11, v10, :cond_15

    invoke-virtual {v0, v11, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->ᐧˏ(ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I

    move-result v7

    invoke-virtual {v0, v11}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, v3, :cond_5

    goto/16 :goto_c

    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v18

    if-eqz v18, :cond_7

    if-eq v7, v14, :cond_7

    if-eqz v16, :cond_6

    goto/16 :goto_c

    :cond_6
    move-object/from16 v18, v3

    move/from16 v19, v9

    move/from16 v21, v10

    goto/16 :goto_a

    :cond_7
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lˋˋ/ˊʻ;

    iget v2, v7, Lˋˋ/ˊʻ;->ˑﹳ:I

    move-object/from16 v18, v3

    iget v3, v7, Lˋˋ/ˊʻ;->ﾞᴵ:I

    add-int/2addr v3, v2

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-eqz v19, :cond_8

    if-ne v2, v6, :cond_8

    if-ne v3, v5, :cond_8

    return-object v1

    :cond_8
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-eqz v19, :cond_9

    if-eqz v16, :cond_a

    :cond_9
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-nez v19, :cond_b

    if-nez v17, :cond_b

    :cond_a
    move/from16 v19, v9

    move/from16 v21, v10

    goto :goto_9

    :cond_b
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v19

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v20

    move/from16 v21, v10

    sub-int v10, v20, v19

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-eqz v19, :cond_f

    if-le v10, v9, :cond_c

    :goto_5
    move/from16 v19, v9

    goto :goto_9

    :cond_c
    if-ne v10, v9, :cond_e

    if-le v2, v15, :cond_d

    const/4 v10, 0x1

    goto :goto_6

    :cond_d
    const/4 v10, 0x0

    :goto_6
    if-ne v13, v10, :cond_e

    goto :goto_5

    :cond_e
    move/from16 v19, v9

    goto :goto_a

    :cond_f
    if-nez v16, :cond_e

    move/from16 v19, v9

    iget-object v9, v0, Lˋˋ/ʻᵎ;->ʽ:Lﹶﾞ/ⁱי;

    invoke-virtual {v9, v1}, Lﹶﾞ/ⁱי;->ـˆ(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_10

    iget-object v9, v0, Lˋˋ/ʻᵎ;->ˈ:Lﹶﾞ/ⁱי;

    invoke-virtual {v9, v1}, Lﹶﾞ/ⁱי;->ـˆ(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_10

    const/4 v9, 0x1

    goto :goto_7

    :cond_10
    const/4 v9, 0x0

    :goto_7
    if-nez v9, :cond_14

    if-le v10, v4, :cond_11

    goto :goto_9

    :cond_11
    if-ne v10, v4, :cond_14

    if-le v2, v8, :cond_12

    const/4 v9, 0x1

    goto :goto_8

    :cond_12
    const/4 v9, 0x0

    :goto_8
    if-ne v13, v9, :cond_14

    :goto_9
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v9

    if-eqz v9, :cond_13

    iget v7, v7, Lˋˋ/ˊʻ;->ˑﹳ:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v9, v3, v2

    move-object/from16 v16, v1

    move v15, v7

    move-object/from16 v7, v17

    goto :goto_b

    :cond_13
    iget v4, v7, Lˋˋ/ˊʻ;->ˑﹳ:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v2, v3, v2

    move-object v7, v1

    move v8, v4

    move/from16 v9, v19

    move v4, v2

    goto :goto_b

    :cond_14
    :goto_a
    move-object/from16 v7, v17

    move/from16 v9, v19

    :goto_b
    add-int/2addr v11, v12

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, v18

    move/from16 v10, v21

    goto/16 :goto_4

    :cond_15
    :goto_c
    if-eqz v16, :cond_16

    return-object v16

    :cond_16
    return-object v17
.end method

.method public final ᵎʻ(Lˋˋ/ᐧﹶ;)V
    .locals 2

    .prologue
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵎʻ(Lˋˋ/ᐧﹶ;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ᴵᵔ:Z

    iget p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ˆﾞ:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->יـ(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const/high16 v1, 0x4000000

    invoke-virtual {p1, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ˆﾞ:I

    :cond_0
    return-void
.end method

.method public final ᵎﹶ(Lˋˋ/ˊᵔ;)Z
    .locals 0

    instance-of p1, p1, Lˋˋ/ˊʻ;

    return p1
.end method

.method public final ᵢˏ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I
    .locals 2

    .prologue
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʼᐧ:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ˊʻ:I

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ˉٴ()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p2}, Lˋˋ/ᐧﹶ;->ⁱˊ()I

    move-result v0

    if-ge v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p2}, Lˋˋ/ᐧﹶ;->ⁱˊ()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->ᐧˏ(ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I

    move-result p1

    add-int/2addr p1, v1

    return p1
.end method

.method public final ᵢי(ILandroid/view/View;Z)V
    .locals 8

    .prologue
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lˋˋ/ˊʻ;

    iget-object v1, v0, Lˋˋ/ˊᵔ;->ⁱˊ:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v1

    iget v1, v0, Lˋˋ/ˊʻ;->ˑﹳ:I

    iget v4, v0, Lˋˋ/ˊʻ;->ﾞᴵ:I

    invoke-virtual {p0, v1, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->ʾˏ(II)I

    move-result v1

    iget v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʼᐧ:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v5, v1, p1, v3, v4}, Lˋˋ/ʻᵎ;->ʼʼ(ZIIII)I

    move-result p1

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v1}, Lʼﾞ/ᵎⁱ;->ᵔʾ()I

    move-result v1

    iget v3, p0, Lˋˋ/ʻᵎ;->ˉʿ:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v6, v1, v3, v2, v0}, Lˋˋ/ʻᵎ;->ʼʼ(ZIIII)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v5, v1, p1, v2, v4}, Lˋˋ/ʻᵎ;->ʼʼ(ZIIII)I

    move-result p1

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v1}, Lʼﾞ/ᵎⁱ;->ᵔʾ()I

    move-result v1

    iget v2, p0, Lˋˋ/ʻᵎ;->ﾞʻ:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v6, v1, v2, v3, v0}, Lˋˋ/ʻᵎ;->ʼʼ(ZIIII)I

    move-result v0

    move v7, v0

    move v0, p1

    move p1, v7

    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lˋˋ/ˊᵔ;

    if-eqz p3, :cond_1

    invoke-virtual {p0, p2, p1, v0, v1}, Lˋˋ/ʻᵎ;->ʼᵢ(Landroid/view/View;IILˋˋ/ˊᵔ;)Z

    move-result p3

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p2, p1, v0, v1}, Lˋˋ/ʻᵎ;->ʽˑ(Landroid/view/View;IILˋˋ/ˊᵔ;)Z

    move-result p3

    :goto_1
    if-eqz p3, :cond_2

    invoke-virtual {p2, p1, v0}, Landroid/view/View;->measure(II)V

    :cond_2
    return-void
.end method

.method public final ⁱʾ(I)Ljava/util/HashSet;
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->ʽᐧ(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->ˎᵎ(II)Ljava/util/HashSet;

    move-result-object p1

    return-object p1
.end method

.method public final ⁱי(ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->ʿˎ()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->ˏʻ()V

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->ⁱי(ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I

    move-result p1

    return p1
.end method

.method public final ﹳﹳ(II)V
    .locals 0

    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ᵎˊ:Lﹶﾞ/ⁱי;

    invoke-virtual {p1}, Lﹶﾞ/ⁱי;->ʻٴ()V

    iget-object p1, p1, Lﹶﾞ/ⁱי;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final ﹶᐧ(II)V
    .locals 0

    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->ᵎˊ:Lﹶﾞ/ⁱי;

    invoke-virtual {p1}, Lﹶﾞ/ⁱי;->ʻٴ()V

    iget-object p1, p1, Lﹶﾞ/ⁱי;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final ﾞʻ(Lˋˋ/ᐧﹶ;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᵢ(Lˋˋ/ᐧﹶ;)I

    move-result p1

    return p1
.end method
