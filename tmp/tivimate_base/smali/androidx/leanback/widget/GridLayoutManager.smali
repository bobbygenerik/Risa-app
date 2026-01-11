.class public final Landroidx/leanback/widget/GridLayoutManager;
.super Lˋˋ/ʻᵎ;
.source "SourceFile"


# static fields
.field public static final ˈˏ:[I

.field public static final ـﹶ:Landroid/graphics/Rect;


# instance fields
.field public ʻٴ:Lˋˋ/ᐧﹶ;

.field public final ʻᵎ:Landroidx/leanback/widget/ᵔʾ;

.field public final ʼʼ:Landroid/util/SparseIntArray;

.field public ʼˈ:I

.field public ʼᐧ:F

.field public ʽʽ:I

.field public ʽﹳ:I

.field public ʾˋ:Landroid/media/AudioManager;

.field public ʾᵎ:I

.field public ʿ:I

.field public final ʿᵢ:Lˏˆ/ﹳٴ;

.field public ˆﾞ:I

.field public ˈʿ:[I

.field public ˈٴ:Landroidx/leanback/widget/ˉـ;

.field public ˈⁱ:I

.field public ˉـ:Landroidx/leanback/widget/ˉʿ;

.field public ˉٴ:Landroidx/leanback/widget/ᵔﹳ;

.field public ˊʻ:I

.field public ˊˋ:I

.field public final ˊᵔ:Landroidx/leanback/widget/ˉˆ;

.field public ˋᵔ:I

.field public ˏי:Lʼﾞ/ᵎⁱ;

.field public final ˏᵢ:[I

.field public ˑٴ:I

.field public יـ:I

.field public ـˆ:I

.field public ـˏ:I

.field public ٴʼ:I

.field public ٴᵢ:I

.field public ᐧᴵ:I

.field public ᐧﾞ:I

.field public final ᴵʼ:Landroidx/leanback/widget/יﹳ;

.field public ᴵˊ:Lˋˋ/ʻˋ;

.field public ᴵˑ:I

.field public ᴵᵔ:Ljava/util/ArrayList;

.field public ᵎˊ:I

.field public final ᵎᵔ:Lcom/parse/ٴʼ;

.field public ᵎⁱ:Landroidx/leanback/widget/יـ;

.field public ᵔי:I

.field public ᵔٴ:I

.field public ᵔﹳ:I

.field public ᵢˏ:[I

.field public ﹳـ:I

.field public ﹳᐧ:Landroidx/leanback/widget/ᵔᵢ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroidx/leanback/widget/GridLayoutManager;->ـﹶ:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Landroidx/leanback/widget/GridLayoutManager;->ˈˏ:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/leanback/widget/GridLayoutManager;-><init>(Landroidx/leanback/widget/ᵔᵢ;)V

    return-void
.end method

.method public constructor <init>(Landroidx/leanback/widget/ᵔᵢ;)V
    .locals 4

    invoke-direct {p0}, Lˋˋ/ʻᵎ;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ʼᐧ:F

    const/16 v0, 0xa

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ᵔﹳ:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->יـ:I

    new-instance v1, Lˋˋ/ˋᵔ;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lˋˋ/ˋᵔ;-><init>(Lˋˋ/ʻᵎ;I)V

    iput-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->ˏי:Lʼﾞ/ᵎⁱ;

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->ʼʼ:Landroid/util/SparseIntArray;

    const v1, 0x36200

    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->ˈٴ:Landroidx/leanback/widget/ˉـ;

    iput-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->ᴵᵔ:Ljava/util/ArrayList;

    const/4 v1, -0x1

    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->ˊʻ:I

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ٴᵢ:I

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ٴʼ:I

    const v2, 0x800033

    iput v2, p0, Landroidx/leanback/widget/GridLayoutManager;->ﹳـ:I

    const/4 v2, 0x1

    iput v2, p0, Landroidx/leanback/widget/GridLayoutManager;->ᴵˑ:I

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ʿ:I

    new-instance v2, Lˏˆ/ﹳٴ;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lˏˆ/ﹳٴ;-><init>(I)V

    iput-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->ʿᵢ:Lˏˆ/ﹳٴ;

    new-instance v2, Lcom/parse/ٴʼ;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/parse/ٴʼ;-><init>(I)V

    iput-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->ᵎᵔ:Lcom/parse/ٴʼ;

    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->ˏᵢ:[I

    new-instance v2, Landroidx/leanback/widget/יﹳ;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput v0, v2, Landroidx/leanback/widget/יﹳ;->ʾˋ:I

    const/16 v3, 0x64

    iput v3, v2, Landroidx/leanback/widget/יﹳ;->ᴵˊ:I

    iput-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->ᴵʼ:Landroidx/leanback/widget/יﹳ;

    new-instance v2, Landroidx/leanback/widget/ᵔʾ;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, Landroidx/leanback/widget/ᵔʾ;-><init>(ILjava/lang/Object;)V

    iput-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->ʻᵎ:Landroidx/leanback/widget/ᵔʾ;

    new-instance v2, Landroidx/leanback/widget/ˉˆ;

    invoke-direct {v2, v3, p0}, Landroidx/leanback/widget/ˉˆ;-><init>(ILjava/lang/Object;)V

    iput-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->ˊᵔ:Landroidx/leanback/widget/ˉˆ;

    iput-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->ﹳᐧ:Landroidx/leanback/widget/ᵔᵢ;

    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->ᵎˊ:I

    invoke-virtual {p0, v0}, Lˋˋ/ʻᵎ;->ﹶ(Z)V

    return-void
.end method

.method public static ˊﾞ(Landroid/view/View;Landroid/view/View;)I
    .locals 5

    .prologue
    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/ﹳᐧ;

    iget-object v0, v0, Landroidx/leanback/widget/ﹳᐧ;->ﾞʻ:Landroidx/leanback/widget/ˉˆ;

    if-eqz v0, :cond_3

    iget-object v0, v0, Landroidx/leanback/widget/ˉˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, [Landroidx/leanback/widget/ـˏ;

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    :goto_0
    if-eq p1, p0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    move v3, v2

    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_2

    aget-object v4, v0, v3

    iget v4, v4, Landroidx/leanback/widget/ـˏ;->ﹳٴ:I

    if-ne v4, v1, :cond_1

    return v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_3
    :goto_2
    const/4 p0, 0x0

    return p0
.end method

.method public static ˋـ(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/ﹳᐧ;

    invoke-static {p0}, Lˋˋ/ʻᵎ;->ᴵᵔ(Landroid/view/View;)I

    move-result p0

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p0, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p0, v0

    return p0
.end method

.method public static ᵢˋ(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/ﹳᐧ;

    invoke-static {p0}, Lˋˋ/ʻᵎ;->ˈٴ(Landroid/view/View;)I

    move-result p0

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p0, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p0, v0

    return p0
.end method

.method public static ﹳᵢ(Landroid/view/View;)I
    .locals 1

    .prologue
    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/leanback/widget/ﹳᐧ;

    if-eqz p0, :cond_2

    iget-object v0, p0, Lˋˋ/ˊᵔ;->ﹳٴ:Lˋˋ/ʼـ;

    invoke-virtual {v0}, Lˋˋ/ʼـ;->ˆʾ()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lˋˋ/ˊᵔ;->ﹳٴ:Lˋˋ/ʼـ;

    invoke-virtual {p0}, Lˋˋ/ʼـ;->ⁱˊ()I

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public final ʻʼ()V
    .locals 5

    .prologue
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    const v1, 0x10040

    and-int/2addr v1, v0

    const/high16 v2, 0x10000

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->ˉـ:Landroidx/leanback/widget/ˉʿ;

    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->ˊʻ:I

    const/high16 v3, 0x40000

    and-int/2addr v0, v3

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ᐧᴵ:I

    neg-int v0, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ᐧﾞ:I

    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->ᐧᴵ:I

    add-int/2addr v0, v3

    :goto_0
    iget v3, v1, Landroidx/leanback/widget/ˉʿ;->ᵎﹶ:I

    iget v4, v1, Landroidx/leanback/widget/ˉʿ;->ﾞᴵ:I

    if-lt v3, v4, :cond_2

    if-le v3, v2, :cond_2

    iget-boolean v4, v1, Landroidx/leanback/widget/ˉʿ;->ʽ:Z

    if-nez v4, :cond_1

    iget-object v4, v1, Landroidx/leanback/widget/ˉʿ;->ⁱˊ:Landroidx/leanback/widget/ˉˆ;

    invoke-virtual {v4, v3}, Landroidx/leanback/widget/ˉˆ;->יـ(I)I

    move-result v3

    if-lt v3, v0, :cond_2

    goto :goto_1

    :cond_1
    iget-object v4, v1, Landroidx/leanback/widget/ˉʿ;->ⁱˊ:Landroidx/leanback/widget/ˉˆ;

    invoke-virtual {v4, v3}, Landroidx/leanback/widget/ˉˆ;->יـ(I)I

    move-result v3

    if-gt v3, v0, :cond_2

    :goto_1
    iget-object v3, v1, Landroidx/leanback/widget/ˉʿ;->ⁱˊ:Landroidx/leanback/widget/ˉˆ;

    iget v4, v1, Landroidx/leanback/widget/ˉʿ;->ᵎﹶ:I

    invoke-virtual {v3, v4}, Landroidx/leanback/widget/ˉˆ;->ʼʼ(I)V

    iget v3, v1, Landroidx/leanback/widget/ˉʿ;->ᵎﹶ:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v1, Landroidx/leanback/widget/ˉʿ;->ᵎﹶ:I

    goto :goto_0

    :cond_2
    iget v0, v1, Landroidx/leanback/widget/ˉʿ;->ᵎﹶ:I

    iget v2, v1, Landroidx/leanback/widget/ˉʿ;->ﾞᴵ:I

    if-ge v0, v2, :cond_3

    const/4 v0, -0x1

    iput v0, v1, Landroidx/leanback/widget/ˉʿ;->ᵎﹶ:I

    iput v0, v1, Landroidx/leanback/widget/ˉʿ;->ﾞᴵ:I

    :cond_3
    return-void
.end method

.method public final ʻˆ(I)V
    .locals 2

    .prologue
    if-gez p1, :cond_1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid row height: "

    invoke-static {p1, v1}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->ˆﾞ:I

    return-void
.end method

.method public final ʻˋ(II)V
    .locals 3

    .prologue
    add-int/2addr p2, p1

    :goto_0
    if-ge p1, p2, :cond_1

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ᴵʼ:Landroidx/leanback/widget/יﹳ;

    iget-object v1, v0, Landroidx/leanback/widget/יﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lˋˋ/ـˊ;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lˋˋ/ـˊ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v2, Lˋⁱ/ﾞᴵ;

    monitor-enter v2

    :try_start_0
    iget v1, v1, Lˋˋ/ـˊ;->ʽ:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroidx/leanback/widget/יﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lˋˋ/ـˊ;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lˋˋ/ـˊ;->ˉʿ(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v2

    throw p1

    :cond_0
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final ʻٴ(Landroid/view/ViewGroup$LayoutParams;)Lˋˋ/ˊᵔ;
    .locals 1

    .prologue
    instance-of v0, p1, Landroidx/leanback/widget/ﹳᐧ;

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/leanback/widget/ﹳᐧ;

    check-cast p1, Landroidx/leanback/widget/ﹳᐧ;

    invoke-direct {v0, p1}, Lˋˋ/ˊᵔ;-><init>(Lˋˋ/ˊᵔ;)V

    return-object v0

    :cond_0
    instance-of v0, p1, Lˋˋ/ˊᵔ;

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/leanback/widget/ﹳᐧ;

    check-cast p1, Lˋˋ/ˊᵔ;

    invoke-direct {v0, p1}, Lˋˋ/ˊᵔ;-><init>(Lˋˋ/ˊᵔ;)V

    return-object v0

    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    new-instance v0, Landroidx/leanback/widget/ﹳᐧ;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lˋˋ/ˊᵔ;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_2
    new-instance v0, Landroidx/leanback/widget/ﹳᐧ;

    invoke-direct {v0, p1}, Lˋˋ/ˊᵔ;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final ʻᵎ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;Landroid/view/View;Lˊˋ/ᵔᵢ;)V
    .locals 2

    .prologue
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object p2, p0, Landroidx/leanback/widget/GridLayoutManager;->ˉـ:Landroidx/leanback/widget/ˉʿ;

    if-eqz p2, :cond_5

    instance-of p2, p1, Landroidx/leanback/widget/ﹳᐧ;

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    check-cast p1, Landroidx/leanback/widget/ﹳᐧ;

    iget-object p1, p1, Lˋˋ/ˊᵔ;->ﹳٴ:Lˋˋ/ʼـ;

    invoke-virtual {p1}, Lˋˋ/ʼـ;->ⁱˊ()I

    move-result p1

    const/4 p2, -0x1

    if-ltz p1, :cond_2

    iget-object p3, p0, Landroidx/leanback/widget/GridLayoutManager;->ˉـ:Landroidx/leanback/widget/ˉʿ;

    invoke-virtual {p3, p1}, Landroidx/leanback/widget/ˉʿ;->ٴﹶ(I)Landroidx/leanback/widget/ﾞʻ;

    move-result-object p3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    iget p2, p3, Landroidx/leanback/widget/ﾞʻ;->ᴵˊ:I

    :cond_2
    :goto_0
    if-gez p2, :cond_3

    goto :goto_1

    :cond_3
    iget-object p3, p0, Landroidx/leanback/widget/GridLayoutManager;->ˉـ:Landroidx/leanback/widget/ˉʿ;

    iget p3, p3, Landroidx/leanback/widget/ˉʿ;->ˑﹳ:I

    div-int/2addr p1, p3

    iget p3, p0, Landroidx/leanback/widget/GridLayoutManager;->יـ:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_4

    invoke-static {v0, p2, v1, p1, v1}, Lʾﹶ/ʽ;->ˈ(ZIIII)Lʾﹶ/ʽ;

    move-result-object p1

    invoke-virtual {p4, p1}, Lˊˋ/ᵔᵢ;->ﾞʻ(Lʾﹶ/ʽ;)V

    return-void

    :cond_4
    invoke-static {v0, p1, v1, p2, v1}, Lʾﹶ/ʽ;->ˈ(ZIIII)Lʾﹶ/ʽ;

    move-result-object p1

    invoke-virtual {p4, p1}, Lˊˋ/ᵔᵢ;->ﾞʻ(Lʾﹶ/ʽ;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final ʼˎ(IILˋˋ/ᐧﹶ;Lˋˋ/ʽʽ;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p3}, Landroidx/leanback/widget/GridLayoutManager;->ﾞˊ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)V

    iget p3, p0, Landroidx/leanback/widget/GridLayoutManager;->יـ:I

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result p2

    if-eqz p2, :cond_3

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    if-gez p1, :cond_2

    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->ᐧᴵ:I

    neg-int p2, p2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->ᐧﾞ:I

    iget p3, p0, Landroidx/leanback/widget/GridLayoutManager;->ᐧᴵ:I

    add-int/2addr p2, p3

    :goto_1
    iget-object p3, p0, Landroidx/leanback/widget/GridLayoutManager;->ˉـ:Landroidx/leanback/widget/ˉʿ;

    invoke-virtual {p3, p2, p1, p4}, Landroidx/leanback/widget/ˉʿ;->ˑﹳ(IILˋˋ/ʽʽ;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->ˆˑ()V

    return-void

    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->ˆˑ()V

    return-void

    :goto_3
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->ˆˑ()V

    throw p1
.end method

.method public final ʼـ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;ILandroid/os/Bundle;)Z
    .locals 4

    .prologue
    iget p4, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    const/high16 v0, 0x20000

    and-int/2addr p4, v0

    const/4 v0, 0x1

    if-eqz p4, :cond_d

    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/GridLayoutManager;->ﾞˊ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)V

    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    const/high16 p4, 0x40000

    and-int/2addr p1, p4

    const/4 p4, 0x0

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, p4

    :goto_0
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->יـ:I

    const/16 v2, 0x2000

    const/16 v3, 0x1000

    if-nez v1, :cond_2

    sget-object v1, Lˊˋ/ʽ;->ﾞʻ:Lˊˋ/ʽ;

    invoke-virtual {v1}, Lˊˋ/ʽ;->ﹳٴ()I

    move-result v1

    if-ne p3, v1, :cond_1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_1
    sget-object v1, Lˊˋ/ʽ;->ᵔʾ:Lˊˋ/ʽ;

    invoke-virtual {v1}, Lˊˋ/ʽ;->ﹳٴ()I

    move-result v1

    if-ne p3, v1, :cond_6

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_2
    sget-object p1, Lˊˋ/ʽ;->ٴﹶ:Lˊˋ/ʽ;

    invoke-virtual {p1}, Lˊˋ/ʽ;->ﹳٴ()I

    move-result p1

    if-ne p3, p1, :cond_4

    :cond_3
    :goto_1
    move p3, v2

    goto :goto_3

    :cond_4
    sget-object p1, Lˊˋ/ʽ;->ˉʿ:Lˊˋ/ʽ;

    invoke-virtual {p1}, Lˊˋ/ʽ;->ﹳٴ()I

    move-result p1

    if-ne p3, p1, :cond_6

    :cond_5
    :goto_2
    move p3, v3

    :cond_6
    :goto_3
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->ˊʻ:I

    if-nez p1, :cond_7

    if-ne p3, v2, :cond_7

    move v1, v0

    goto :goto_4

    :cond_7
    move v1, p4

    :goto_4
    invoke-virtual {p2}, Lˋˋ/ᐧﹶ;->ⁱˊ()I

    move-result p2

    sub-int/2addr p2, v0

    if-ne p1, p2, :cond_8

    if-ne p3, v3, :cond_8

    move p1, v0

    goto :goto_5

    :cond_8
    move p1, p4

    :goto_5
    if-nez v1, :cond_c

    if-eqz p1, :cond_9

    goto :goto_6

    :cond_9
    if-eq p3, v3, :cond_b

    if-eq p3, v2, :cond_a

    goto :goto_7

    :cond_a
    invoke-virtual {p0, p4}, Landroidx/leanback/widget/GridLayoutManager;->ʿʽ(Z)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1, p4}, Landroidx/leanback/widget/GridLayoutManager;->ˆˎ(IZ)I

    goto :goto_7

    :cond_b
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/GridLayoutManager;->ʿʽ(Z)V

    invoke-virtual {p0, v0, p4}, Landroidx/leanback/widget/GridLayoutManager;->ˆˎ(IZ)I

    goto :goto_7

    :cond_c
    :goto_6
    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    iget-object p2, p0, Landroidx/leanback/widget/GridLayoutManager;->ﹳᐧ:Landroidx/leanback/widget/ᵔᵢ;

    invoke-virtual {p2, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object p2, p0, Landroidx/leanback/widget/GridLayoutManager;->ﹳᐧ:Landroidx/leanback/widget/ᵔᵢ;

    invoke-virtual {p2, p2, p1}, Landroid/view/ViewGroup;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :goto_7
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->ˆˑ()V

    :cond_d
    return v0
.end method

.method public final ʽʽ(Landroid/view/View;)I
    .locals 1

    invoke-super {p0, p1}, Lˋˋ/ʻᵎ;->ʽʽ(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/ﹳᐧ;

    iget p1, p1, Landroidx/leanback/widget/ﹳᐧ;->ˑﹳ:I

    add-int/2addr v0, p1

    return v0
.end method

.method public final ʽʾ(Landroid/view/View;IIII)V
    .locals 7

    .prologue
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->יـ:I

    if-nez v0, :cond_0

    invoke-static {p1}, Landroidx/leanback/widget/GridLayoutManager;->ᵢˋ(Landroid/view/View;)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroidx/leanback/widget/GridLayoutManager;->ˋـ(Landroid/view/View;)I

    move-result v0

    :goto_0
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->ᵔٴ:I

    if-lez v1, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_1
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->ﹳـ:I

    and-int/lit8 v2, v1, 0x70

    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    const/high16 v4, 0xc0000

    and-int/2addr v3, v4

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    const v3, 0x800007

    and-int/2addr v1, v3

    invoke-static {v1, v4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    goto :goto_1

    :cond_2
    and-int/lit8 v1, v1, 0x7

    :goto_1
    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->יـ:I

    if-nez v3, :cond_3

    const/16 v5, 0x30

    if-eq v2, v5, :cond_a

    :cond_3
    if-ne v3, v4, :cond_4

    const/4 v5, 0x3

    if-ne v1, v5, :cond_4

    goto :goto_3

    :cond_4
    if-nez v3, :cond_5

    const/16 v5, 0x50

    if-eq v2, v5, :cond_6

    :cond_5
    if-ne v3, v4, :cond_7

    const/4 v5, 0x5

    if-ne v1, v5, :cond_7

    :cond_6
    invoke-virtual {p0, p2}, Landroidx/leanback/widget/GridLayoutManager;->ᵔⁱ(I)I

    move-result p2

    sub-int/2addr p2, v0

    :goto_2
    add-int/2addr p5, p2

    goto :goto_3

    :cond_7
    if-nez v3, :cond_8

    const/16 v5, 0x10

    if-eq v2, v5, :cond_9

    :cond_8
    if-ne v3, v4, :cond_a

    if-ne v1, v4, :cond_a

    :cond_9
    invoke-virtual {p0, p2}, Landroidx/leanback/widget/GridLayoutManager;->ᵔⁱ(I)I

    move-result p2

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    goto :goto_2

    :cond_a
    :goto_3
    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->יـ:I

    if-nez p2, :cond_b

    add-int/2addr v0, p5

    goto :goto_4

    :cond_b
    add-int/2addr v0, p5

    move v6, p5

    move p5, p3

    move p3, v6

    move v6, v0

    move v0, p4

    move p4, v6

    :goto_4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/ﹳᐧ;

    invoke-static {p1, p3, p5, p4, v0}, Lˋˋ/ʻᵎ;->ﹳـ(Landroid/view/View;IIII)V

    sget-object v1, Landroidx/leanback/widget/GridLayoutManager;->ـﹶ:Landroid/graphics/Rect;

    invoke-super {p0, p1, v1}, Lˋˋ/ʻᵎ;->ᴵˊ(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p3, v2

    iget v2, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p5, v2

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, p4

    iget p4, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p4, v0

    iput p3, p2, Landroidx/leanback/widget/ﹳᐧ;->ˑﹳ:I

    iput p5, p2, Landroidx/leanback/widget/ﹳᐧ;->ﾞᴵ:I

    iput v2, p2, Landroidx/leanback/widget/ﹳᐧ;->ᵎﹶ:I

    iput p4, p2, Landroidx/leanback/widget/ﹳᐧ;->ᵔᵢ:I

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->ʽᐧ(Landroid/view/View;)V

    return-void
.end method

.method public final ʽᐧ(Landroid/view/View;)V
    .locals 8

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/ﹳᐧ;

    iget-object v1, v0, Landroidx/leanback/widget/ﹳᐧ;->ﾞʻ:Landroidx/leanback/widget/ˉˆ;

    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->ᵎᵔ:Lcom/parse/ٴʼ;

    if-nez v1, :cond_0

    iget-object v1, v2, Lcom/parse/ٴʼ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Landroidx/leanback/widget/ʼˈ;

    iget v3, v1, Landroidx/leanback/widget/ʼˈ;->ﾞᴵ:I

    invoke-static {p1, v1, v3}, Landroidx/leanback/widget/ﹳـ;->ﹳٴ(Landroid/view/View;Landroidx/leanback/widget/ـˏ;I)I

    move-result v1

    iput v1, v0, Landroidx/leanback/widget/ﹳᐧ;->ʼˎ:I

    iget-object v1, v2, Lcom/parse/ٴʼ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Landroidx/leanback/widget/ʼˈ;

    iget v2, v1, Landroidx/leanback/widget/ʼˈ;->ﾞᴵ:I

    invoke-static {p1, v1, v2}, Landroidx/leanback/widget/ﹳـ;->ﹳٴ(Landroid/view/View;Landroidx/leanback/widget/ـˏ;I)I

    move-result p1

    iput p1, v0, Landroidx/leanback/widget/ﹳᐧ;->ˆʾ:I

    return-void

    :cond_0
    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->יـ:I

    iget-object v1, v1, Landroidx/leanback/widget/ˉˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, [Landroidx/leanback/widget/ـˏ;

    iget-object v4, v0, Landroidx/leanback/widget/ﹳᐧ;->ٴﹶ:[I

    if-eqz v4, :cond_1

    array-length v4, v4

    array-length v5, v1

    if-eq v4, v5, :cond_2

    :cond_1
    array-length v4, v1

    new-array v4, v4, [I

    iput-object v4, v0, Landroidx/leanback/widget/ﹳᐧ;->ٴﹶ:[I

    :cond_2
    const/4 v4, 0x0

    move v5, v4

    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_3

    iget-object v6, v0, Landroidx/leanback/widget/ﹳᐧ;->ٴﹶ:[I

    aget-object v7, v1, v5

    invoke-static {p1, v7, v3}, Landroidx/leanback/widget/ﹳـ;->ﹳٴ(Landroid/view/View;Landroidx/leanback/widget/ـˏ;I)I

    move-result v7

    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    iget-object v1, v0, Landroidx/leanback/widget/ﹳᐧ;->ٴﹶ:[I

    aget v1, v1, v4

    iput v1, v0, Landroidx/leanback/widget/ﹳᐧ;->ʼˎ:I

    goto :goto_1

    :cond_4
    iget-object v1, v0, Landroidx/leanback/widget/ﹳᐧ;->ٴﹶ:[I

    aget v1, v1, v4

    iput v1, v0, Landroidx/leanback/widget/ﹳᐧ;->ˆʾ:I

    :goto_1
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->יـ:I

    if-nez v1, :cond_5

    iget-object v1, v2, Lcom/parse/ٴʼ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Landroidx/leanback/widget/ʼˈ;

    iget v2, v1, Landroidx/leanback/widget/ʼˈ;->ﾞᴵ:I

    invoke-static {p1, v1, v2}, Landroidx/leanback/widget/ﹳـ;->ﹳٴ(Landroid/view/View;Landroidx/leanback/widget/ـˏ;I)I

    move-result p1

    iput p1, v0, Landroidx/leanback/widget/ﹳᐧ;->ˆʾ:I

    return-void

    :cond_5
    iget-object v1, v2, Lcom/parse/ٴʼ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Landroidx/leanback/widget/ʼˈ;

    iget v2, v1, Landroidx/leanback/widget/ʼˈ;->ﾞᴵ:I

    invoke-static {p1, v1, v2}, Landroidx/leanback/widget/ﹳـ;->ﹳٴ(Landroid/view/View;Landroidx/leanback/widget/ـˏ;I)I

    move-result p1

    iput p1, v0, Landroidx/leanback/widget/ﹳᐧ;->ʼˎ:I

    return-void
.end method

.method public final ʽᵔ(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    .prologue
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    const v0, 0x8000

    and-int/2addr p1, v0

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Landroidx/leanback/widget/GridLayoutManager;->ﹳᵢ(Landroid/view/View;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    and-int/lit8 p1, p1, 0x23

    if-nez p1, :cond_2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/leanback/widget/GridLayoutManager;->ᴵٴ(Landroid/view/View;Landroid/view/View;ZII)V

    :cond_2
    :goto_0
    return v3
.end method

.method public final ʽﹳ(Landroid/content/Context;Landroid/util/AttributeSet;)Lˋˋ/ˊᵔ;
    .locals 1

    new-instance v0, Landroidx/leanback/widget/ﹳᐧ;

    invoke-direct {v0, p1, p2}, Lˋˋ/ˊᵔ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final ʾˋ(Landroid/view/View;)I
    .locals 1

    invoke-super {p0, p1}, Lˋˋ/ʻᵎ;->ʾˋ(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/ﹳᐧ;

    iget p1, p1, Landroidx/leanback/widget/ﹳᐧ;->ᵔᵢ:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final ʾˏ()V
    .locals 11

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ʻٴ:Lˋˋ/ᐧﹶ;

    invoke-virtual {v0}, Lˋˋ/ᐧﹶ;->ⁱˊ()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_8

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ˉـ:Landroidx/leanback/widget/ˉʿ;

    iget v0, v0, Landroidx/leanback/widget/ˉʿ;->ᵎﹶ:I

    iget-object v3, p0, Landroidx/leanback/widget/GridLayoutManager;->ʻٴ:Lˋˋ/ᐧﹶ;

    invoke-virtual {v3}, Lˋˋ/ᐧﹶ;->ⁱˊ()I

    move-result v3

    sub-int/2addr v3, v2

    iget-object v4, p0, Landroidx/leanback/widget/GridLayoutManager;->ˉـ:Landroidx/leanback/widget/ˉʿ;

    iget v4, v4, Landroidx/leanback/widget/ˉʿ;->ﾞᴵ:I

    move v5, v4

    move v4, v3

    move v3, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ˉـ:Landroidx/leanback/widget/ˉʿ;

    iget v3, v0, Landroidx/leanback/widget/ˉʿ;->ﾞᴵ:I

    iget v4, v0, Landroidx/leanback/widget/ˉʿ;->ᵎﹶ:I

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ʻٴ:Lˋˋ/ᐧﹶ;

    invoke-virtual {v0}, Lˋˋ/ᐧﹶ;->ⁱˊ()I

    move-result v0

    sub-int/2addr v0, v2

    move v5, v3

    move v3, v0

    move v0, v5

    move v5, v4

    move v4, v1

    :goto_0
    if-ltz v0, :cond_b

    if-gez v5, :cond_2

    goto/16 :goto_8

    :cond_2
    if-ne v0, v4, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    if-ne v5, v3, :cond_4

    move v3, v2

    goto :goto_2

    :cond_4
    move v3, v1

    :goto_2
    const/high16 v4, -0x80000000

    const v5, 0x7fffffff

    iget-object v6, p0, Landroidx/leanback/widget/GridLayoutManager;->ʿᵢ:Lˏˆ/ﹳٴ;

    if-nez v0, :cond_5

    iget-object v7, v6, Lˏˆ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v7, Landroidx/leanback/widget/ʽⁱ;

    iget v8, v7, Landroidx/leanback/widget/ʽⁱ;->ﹳٴ:I

    if-ne v8, v5, :cond_5

    if-nez v3, :cond_5

    iget v7, v7, Landroidx/leanback/widget/ʽⁱ;->ⁱˊ:I

    if-ne v7, v4, :cond_5

    return-void

    :cond_5
    sget-object v7, Landroidx/leanback/widget/GridLayoutManager;->ˈˏ:[I

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ˉـ:Landroidx/leanback/widget/ˉʿ;

    invoke-virtual {v0, v2, v7}, Landroidx/leanback/widget/ˉʿ;->ᵎﹶ(Z[I)I

    move-result v5

    aget v0, v7, v2

    invoke-virtual {p0, v0}, Lˋˋ/ʻᵎ;->יـ(I)Landroid/view/View;

    move-result-object v0

    iget v8, p0, Landroidx/leanback/widget/GridLayoutManager;->יـ:I

    if-nez v8, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/leanback/widget/ﹳᐧ;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    iget v10, v8, Landroidx/leanback/widget/ﹳᐧ;->ˑﹳ:I

    add-int/2addr v9, v10

    iget v8, v8, Landroidx/leanback/widget/ﹳᐧ;->ʼˎ:I

    :goto_3
    add-int/2addr v9, v8

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/leanback/widget/ﹳᐧ;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    iget v10, v8, Landroidx/leanback/widget/ﹳᐧ;->ﾞᴵ:I

    add-int/2addr v9, v10

    iget v8, v8, Landroidx/leanback/widget/ﹳᐧ;->ˆʾ:I

    goto :goto_3

    :goto_4
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/ﹳᐧ;

    iget-object v0, v0, Landroidx/leanback/widget/ﹳᐧ;->ٴﹶ:[I

    if-eqz v0, :cond_7

    array-length v8, v0

    if-lez v8, :cond_7

    array-length v8, v0

    sub-int/2addr v8, v2

    aget v8, v0, v8

    aget v0, v0, v1

    sub-int/2addr v8, v0

    add-int/2addr v8, v9

    goto :goto_5

    :cond_7
    move v8, v9

    goto :goto_5

    :cond_8
    move v8, v5

    :goto_5
    if-eqz v3, :cond_a

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ˉـ:Landroidx/leanback/widget/ˉʿ;

    invoke-virtual {v0, v1, v7}, Landroidx/leanback/widget/ˉʿ;->ʼˎ(Z[I)I

    move-result v4

    aget v0, v7, v2

    invoke-virtual {p0, v0}, Lˋˋ/ʻᵎ;->יـ(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->יـ:I

    if-nez v1, :cond_9

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/ﹳᐧ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v2, v1, Landroidx/leanback/widget/ﹳᐧ;->ˑﹳ:I

    add-int/2addr v0, v2

    iget v1, v1, Landroidx/leanback/widget/ﹳᐧ;->ʼˎ:I

    :goto_6
    add-int/2addr v0, v1

    goto :goto_7

    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/ﹳᐧ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget v2, v1, Landroidx/leanback/widget/ﹳᐧ;->ﾞᴵ:I

    add-int/2addr v0, v2

    iget v1, v1, Landroidx/leanback/widget/ﹳᐧ;->ˆʾ:I

    goto :goto_6

    :cond_a
    move v0, v4

    :goto_7
    iget-object v1, v6, Lˏˆ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Landroidx/leanback/widget/ʽⁱ;

    invoke-virtual {v1, v4, v5, v0, v8}, Landroidx/leanback/widget/ʽⁱ;->ʽ(IIII)V

    :cond_b
    :goto_8
    return-void
.end method

.method public final ʿ(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;II)Z
    .locals 18

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    iget v4, v0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    const v5, 0x8000

    and-int/2addr v4, v5

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    move/from16 v17, v5

    goto/16 :goto_f

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_1e

    iget-object v4, v0, Landroidx/leanback/widget/GridLayoutManager;->ᵎⁱ:Landroidx/leanback/widget/יـ;

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Landroidx/leanback/widget/GridLayoutManager;->ﹶʽ(I)I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v7

    const/4 v8, -0x1

    if-eqz v7, :cond_4

    iget-object v9, v0, Landroidx/leanback/widget/GridLayoutManager;->ﹳᐧ:Landroidx/leanback/widget/ᵔᵢ;

    if-eqz v9, :cond_4

    if-eq v7, v9, :cond_4

    invoke-virtual {v0, v7}, Lˋˋ/ʻᵎ;->ﹳᐧ(Landroid/view/View;)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v9

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_4

    invoke-virtual {v0, v10}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v11

    if-ne v11, v7, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_4
    move v10, v8

    :goto_2
    invoke-virtual {v0, v10}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, Landroidx/leanback/widget/GridLayoutManager;->ﹳᵢ(Landroid/view/View;)I

    move-result v7

    if-ne v7, v8, :cond_5

    const/4 v9, 0x0

    goto :goto_3

    :cond_5
    invoke-virtual {v0, v7}, Lˋˋ/ʻᵎ;->יـ(I)Landroid/view/View;

    move-result-object v9

    :goto_3
    if-eqz v9, :cond_6

    invoke-virtual {v9, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_6
    iget-object v11, v0, Landroidx/leanback/widget/GridLayoutManager;->ˉـ:Landroidx/leanback/widget/ˉʿ;

    if-eqz v11, :cond_0

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v11

    if-nez v11, :cond_7

    goto :goto_0

    :cond_7
    const/4 v11, 0x2

    const/4 v12, 0x3

    if-eq v4, v12, :cond_8

    if-ne v4, v11, :cond_9

    :cond_8
    iget-object v13, v0, Landroidx/leanback/widget/GridLayoutManager;->ˉـ:Landroidx/leanback/widget/ˉʿ;

    iget v13, v13, Landroidx/leanback/widget/ˉʿ;->ˑﹳ:I

    if-gt v13, v5, :cond_9

    goto :goto_0

    :cond_9
    iget-object v13, v0, Landroidx/leanback/widget/GridLayoutManager;->ˉـ:Landroidx/leanback/widget/ˉʿ;

    if-eqz v13, :cond_a

    if-eqz v9, :cond_a

    invoke-virtual {v13, v7}, Landroidx/leanback/widget/ˉʿ;->ٴﹶ(I)Landroidx/leanback/widget/ﾞʻ;

    move-result-object v13

    iget v13, v13, Landroidx/leanback/widget/ﾞʻ;->ᴵˊ:I

    goto :goto_4

    :cond_a
    move v13, v8

    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-eq v4, v5, :cond_c

    if-ne v4, v12, :cond_b

    goto :goto_5

    :cond_b
    move v15, v8

    goto :goto_6

    :cond_c
    :goto_5
    move v15, v5

    :goto_6
    if-lez v15, :cond_d

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v6, v16

    goto :goto_7

    :cond_d
    const/4 v6, 0x0

    :goto_7
    if-ne v10, v8, :cond_f

    if-lez v15, :cond_e

    const/16 v16, 0x0

    goto :goto_8

    :cond_e
    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v8

    sub-int/2addr v8, v5

    move/from16 v16, v8

    goto :goto_8

    :cond_f
    add-int v16, v10, v15

    :goto_8
    move/from16 v8, v16

    :goto_9
    if-lez v15, :cond_10

    if-gt v8, v6, :cond_0

    goto :goto_a

    :cond_10
    if-lt v8, v6, :cond_0

    :goto_a
    invoke-virtual {v0, v8}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v16

    if-nez v16, :cond_11

    invoke-virtual {v10}, Landroid/view/View;->hasFocusable()Z

    move-result v16

    if-nez v16, :cond_12

    :cond_11
    move/from16 v17, v5

    move v5, v11

    move v11, v12

    goto/16 :goto_c

    :cond_12
    if-nez v9, :cond_13

    invoke-virtual {v10, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-le v10, v14, :cond_11

    goto/16 :goto_0

    :cond_13
    invoke-virtual {v0, v8}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroidx/leanback/widget/GridLayoutManager;->ﹳᵢ(Landroid/view/View;)I

    move-result v11

    iget-object v12, v0, Landroidx/leanback/widget/GridLayoutManager;->ˉـ:Landroidx/leanback/widget/ˉʿ;

    invoke-virtual {v12, v11}, Landroidx/leanback/widget/ˉʿ;->ٴﹶ(I)Landroidx/leanback/widget/ﾞʻ;

    move-result-object v12

    if-nez v12, :cond_15

    :cond_14
    move/from16 v17, v5

    const/4 v5, 0x2

    const/4 v11, 0x3

    goto :goto_c

    :cond_15
    iget v12, v12, Landroidx/leanback/widget/ﾞʻ;->ᴵˊ:I

    if-ne v4, v5, :cond_16

    if-ne v12, v13, :cond_14

    if-le v11, v7, :cond_14

    invoke-virtual {v10, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-le v10, v14, :cond_14

    goto/16 :goto_0

    :cond_16
    if-nez v4, :cond_17

    if-ne v12, v13, :cond_14

    if-ge v11, v7, :cond_14

    invoke-virtual {v10, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-le v10, v14, :cond_14

    goto/16 :goto_0

    :cond_17
    const/4 v11, 0x3

    if-ne v4, v11, :cond_1a

    if-ne v12, v13, :cond_18

    :goto_b
    move/from16 v17, v5

    const/4 v5, 0x2

    goto :goto_c

    :cond_18
    if-ge v12, v13, :cond_19

    goto/16 :goto_0

    :cond_19
    invoke-virtual {v10, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_b

    :cond_1a
    move/from16 v17, v5

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1d

    if-ne v12, v13, :cond_1b

    goto :goto_c

    :cond_1b
    if-le v12, v13, :cond_1c

    goto/16 :goto_f

    :cond_1c
    invoke-virtual {v10, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_1d
    :goto_c
    add-int/2addr v8, v15

    move v12, v11

    move v11, v5

    move/from16 v5, v17

    goto/16 :goto_9

    :cond_1e
    move/from16 v17, v5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v5, v0, Landroidx/leanback/widget/GridLayoutManager;->ʿ:I

    if-eqz v5, :cond_22

    iget-object v5, v0, Landroidx/leanback/widget/GridLayoutManager;->ʿᵢ:Lˏˆ/ﹳٴ;

    iget-object v5, v5, Lˏˆ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v5, Landroidx/leanback/widget/ʽⁱ;

    iget v6, v5, Landroidx/leanback/widget/ʽⁱ;->ˆʾ:I

    iget v7, v5, Landroidx/leanback/widget/ʽⁱ;->ʼˎ:I

    sub-int/2addr v7, v6

    iget v5, v5, Landroidx/leanback/widget/ʽⁱ;->ٴﹶ:I

    sub-int/2addr v7, v5

    add-int/2addr v7, v6

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v5

    const/4 v8, 0x0

    :goto_d
    if-ge v8, v5, :cond_20

    invoke-virtual {v0, v8}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_1f

    iget-object v10, v0, Landroidx/leanback/widget/GridLayoutManager;->ˏי:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v10, v9}, Lʼﾞ/ᵎⁱ;->ᵎﹶ(Landroid/view/View;)I

    move-result v10

    if-lt v10, v6, :cond_1f

    iget-object v10, v0, Landroidx/leanback/widget/GridLayoutManager;->ˏי:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v10, v9}, Lʼﾞ/ᵎⁱ;->ˈ(Landroid/view/View;)I

    move-result v10

    if-gt v10, v7, :cond_1f

    invoke-virtual {v9, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_1f
    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_20
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v4, :cond_23

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v5

    const/4 v6, 0x0

    :goto_e
    if-ge v6, v5, :cond_23

    invoke-virtual {v0, v6}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_21

    invoke-virtual {v7, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_21
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_22
    iget v5, v0, Landroidx/leanback/widget/GridLayoutManager;->ˊʻ:I

    invoke-virtual {v0, v5}, Lˋˋ/ʻᵎ;->יـ(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_23

    invoke-virtual {v5, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_23
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v2, v4, :cond_24

    goto :goto_f

    :cond_24
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_25

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    :goto_f
    return v17
.end method

.method public final ʿʽ(Z)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->ˏⁱ()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_0
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ˉٴ()I

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->ﹳᐧ:Landroidx/leanback/widget/ᵔᵢ;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->ˉٴ(I)Lˋˋ/ʼـ;

    move-result-object v1

    if-eqz v1, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->ᵎⁱ:Landroidx/leanback/widget/יـ;

    const/4 v2, 0x1

    if-nez v1, :cond_4

    new-instance v1, Landroidx/leanback/widget/יـ;

    if-eqz p1, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    :goto_0
    iget v4, p0, Landroidx/leanback/widget/GridLayoutManager;->ˈⁱ:I

    if-le v4, v2, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    move v4, v0

    :goto_1
    invoke-direct {v1, p0, v3, v4}, Landroidx/leanback/widget/יـ;-><init>(Landroidx/leanback/widget/GridLayoutManager;IZ)V

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ٴʼ:I

    invoke-virtual {p0, v1}, Landroidx/leanback/widget/GridLayoutManager;->ﾞˋ(Lˋˋ/ˆﾞ;)V

    goto :goto_2

    :cond_4
    iget-object v0, v1, Landroidx/leanback/widget/יـ;->ʽﹳ:Landroidx/leanback/widget/GridLayoutManager;

    if-eqz p1, :cond_5

    iget v3, v1, Landroidx/leanback/widget/יـ;->ˏי:I

    iget v0, v0, Landroidx/leanback/widget/GridLayoutManager;->ᵔﹳ:I

    if-ge v3, v0, :cond_6

    add-int/2addr v3, v2

    iput v3, v1, Landroidx/leanback/widget/יـ;->ˏי:I

    goto :goto_2

    :cond_5
    iget v3, v1, Landroidx/leanback/widget/יـ;->ˏי:I

    iget v0, v0, Landroidx/leanback/widget/GridLayoutManager;->ᵔﹳ:I

    neg-int v0, v0

    if-le v3, v0, :cond_6

    sub-int/2addr v3, v2

    iput v3, v1, Landroidx/leanback/widget/יـ;->ˏי:I

    :cond_6
    :goto_2
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->יـ:I

    if-nez v0, :cond_9

    iget-object v0, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x4

    const/4 v3, 0x3

    if-ne v0, v2, :cond_8

    if-eqz p1, :cond_b

    :cond_7
    move v1, v3

    goto :goto_3

    :cond_8
    if-eqz p1, :cond_7

    goto :goto_3

    :cond_9
    if-eqz p1, :cond_a

    const/4 v2, 0x2

    :cond_a
    move v1, v2

    :cond_b
    :goto_3
    iget-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->ʾˋ:Landroid/media/AudioManager;

    if-nez p1, :cond_c

    iget-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->ﹳᐧ:Landroidx/leanback/widget/ᵔᵢ;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->ʾˋ:Landroid/media/AudioManager;

    :cond_c
    iget-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->ʾˋ:Landroid/media/AudioManager;

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    :cond_d
    :goto_4
    return-void
.end method

.method public final ʿـ(ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I
    .locals 1

    .prologue
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ˉـ:Landroidx/leanback/widget/ˉʿ;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2, p3}, Landroidx/leanback/widget/GridLayoutManager;->ﾞˊ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)V

    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    and-int/lit8 p2, p2, -0x4

    or-int/lit8 p2, p2, 0x2

    iput p2, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->יـ:I

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->ˆʻ(I)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->ˉʽ(I)I

    move-result p1

    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->ˆˑ()V

    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    and-int/lit8 p2, p2, -0x4

    iput p2, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final ˆʻ(I)I
    .locals 6

    .prologue
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    and-int/lit8 v1, v0, 0x40

    const/4 v2, 0x1

    if-nez v1, :cond_3

    and-int/lit8 v0, v0, 0x3

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ʿᵢ:Lˏˆ/ﹳٴ;

    if-lez p1, :cond_1

    iget-object v0, v0, Lˏˆ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Landroidx/leanback/widget/ʽⁱ;

    iget v1, v0, Landroidx/leanback/widget/ʽⁱ;->ﹳٴ:I

    const v3, 0x7fffffff

    if-ne v1, v3, :cond_0

    goto :goto_1

    :cond_0
    iget v0, v0, Landroidx/leanback/widget/ʽⁱ;->ʽ:I

    if-le p1, v0, :cond_3

    goto :goto_0

    :cond_1
    if-gez p1, :cond_3

    iget-object v0, v0, Lˏˆ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Landroidx/leanback/widget/ʽⁱ;

    iget v1, v0, Landroidx/leanback/widget/ʽⁱ;->ⁱˊ:I

    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_2

    goto :goto_1

    :cond_2
    iget v0, v0, Landroidx/leanback/widget/ʽⁱ;->ˈ:I

    if-ge p1, v0, :cond_3

    :goto_0
    move p1, v0

    :cond_3
    :goto_1
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    neg-int v1, p1

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v3

    iget v4, p0, Landroidx/leanback/widget/GridLayoutManager;->יـ:I

    if-ne v4, v2, :cond_5

    move v4, v0

    :goto_2
    if-ge v4, v3, :cond_6

    invoke-virtual {p0, v4}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    move v4, v0

    :goto_3
    if-ge v4, v3, :cond_6

    invoke-virtual {p0, v4}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    and-int/lit8 v1, v1, 0x3

    if-ne v1, v2, :cond_7

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->ʾˏ()V

    return p1

    :cond_7
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v1

    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    const/high16 v4, 0x40000

    and-int/2addr v3, v4

    if-eqz v3, :cond_8

    if-lez p1, :cond_9

    goto :goto_4

    :cond_8
    if-gez p1, :cond_9

    :goto_4
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->ᵢʻ()V

    goto :goto_5

    :cond_9
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->ˎʾ()V

    :goto_5
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v3

    if-le v3, v1, :cond_a

    move v1, v2

    goto :goto_6

    :cond_a
    move v1, v0

    :goto_6
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v3

    iget v5, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_b

    if-lez p1, :cond_c

    goto :goto_7

    :cond_b
    if-gez p1, :cond_c

    :goto_7
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->ʻʼ()V

    goto :goto_8

    :cond_c
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->ᵢᐧ()V

    :goto_8
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v4

    if-ge v4, v3, :cond_d

    goto :goto_9

    :cond_d
    move v2, v0

    :goto_9
    or-int v0, v1, v2

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->ˎᵎ()V

    :cond_e
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ﹳᐧ:Landroidx/leanback/widget/ᵔᵢ;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->ʾˏ()V

    return p1
.end method

.method public final ˆʾ(ILˋˋ/ʽʽ;)V
    .locals 5

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ﹳᐧ:Landroidx/leanback/widget/ᵔᵢ;

    iget v0, v0, Landroidx/leanback/widget/ᵔᵢ;->ʿʽ:I

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->ˊʻ:I

    add-int/lit8 v2, v0, -0x1

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sub-int v2, p1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v3, v1

    :goto_0
    if-ge v3, p1, :cond_0

    add-int v4, v1, v0

    if-ge v3, v4, :cond_0

    invoke-virtual {p2, v3, v2}, Lˋˋ/ʽʽ;->ⁱˊ(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ˆˎ(IZ)I
    .locals 10

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ˉـ:Landroidx/leanback/widget/ˉʿ;

    if-nez v0, :cond_0

    return p1

    :cond_0
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->ˊʻ:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ˉʿ;->ٴﹶ(I)Landroidx/leanback/widget/ﾞʻ;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, v0, Landroidx/leanback/widget/ﾞʻ;->ᴵˊ:I

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v4

    :goto_2
    if-ge v6, v3, :cond_b

    if-eqz p1, :cond_b

    if-lez p1, :cond_3

    move v7, v6

    goto :goto_3

    :cond_3
    add-int/lit8 v7, v3, -0x1

    sub-int/2addr v7, v6

    :goto_3
    invoke-virtual {p0, v7}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_a

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ˋᵔ()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v8}, Landroid/view/View;->hasFocusable()Z

    move-result v9

    if-eqz v9, :cond_a

    :cond_4
    invoke-virtual {p0, v7}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, Landroidx/leanback/widget/GridLayoutManager;->ﹳᵢ(Landroid/view/View;)I

    move-result v7

    iget-object v9, p0, Landroidx/leanback/widget/GridLayoutManager;->ˉـ:Landroidx/leanback/widget/ˉʿ;

    invoke-virtual {v9, v7}, Landroidx/leanback/widget/ˉʿ;->ٴﹶ(I)Landroidx/leanback/widget/ﾞʻ;

    move-result-object v9

    if-nez v9, :cond_5

    move v9, v2

    goto :goto_4

    :cond_5
    iget v9, v9, Landroidx/leanback/widget/ﾞʻ;->ᴵˊ:I

    :goto_4
    if-ne v0, v2, :cond_6

    move v1, v7

    move-object v5, v8

    move v0, v9

    goto :goto_6

    :cond_6
    if-ne v9, v0, :cond_a

    if-lez p1, :cond_7

    if-gt v7, v1, :cond_8

    :cond_7
    if-gez p1, :cond_a

    if-ge v7, v1, :cond_a

    :cond_8
    if-lez p1, :cond_9

    add-int/lit8 p1, p1, -0x1

    :goto_5
    move v1, v7

    move-object v5, v8

    goto :goto_6

    :cond_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_a
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_b
    if-eqz v5, :cond_e

    if-eqz p2, :cond_d

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ˋᵔ()Z

    move-result p2

    if-eqz p2, :cond_c

    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    or-int/lit8 p2, p2, 0x20

    iput p2, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    and-int/lit8 p2, p2, -0x21

    iput p2, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    :cond_c
    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->ˊʻ:I

    iput v4, p0, Landroidx/leanback/widget/GridLayoutManager;->ٴᵢ:I

    return p1

    :cond_d
    const/4 p2, 0x1

    invoke-virtual {p0, v5, p2}, Landroidx/leanback/widget/GridLayoutManager;->ˑﹶ(Landroid/view/View;Z)V

    :cond_e
    return p1
.end method

.method public final ˆˑ()V
    .locals 1

    .prologue
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽﹳ:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽﹳ:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ᴵˊ:Lˋˋ/ʻˋ;

    iput-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ʻٴ:Lˋˋ/ᐧﹶ;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ـˆ:I

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ʾᵎ:I

    :cond_0
    return-void
.end method

.method public final ˆﹳ(Z)Z
    .locals 17

    .prologue
    move-object/from16 v0, p0

    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ᵔٴ:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ˈʿ:[I

    if-nez v1, :cond_1

    :cond_0
    move/from16 v16, v2

    goto/16 :goto_f

    :cond_1
    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ˉـ:Landroidx/leanback/widget/ˉʿ;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget v4, v1, Landroidx/leanback/widget/ˉʿ;->ﾞᴵ:I

    iget v5, v1, Landroidx/leanback/widget/ˉʿ;->ᵎﹶ:I

    invoke-virtual {v1, v4, v5}, Landroidx/leanback/widget/ˉʿ;->ˆʾ(II)[Lˋˋ/ʽʽ;

    move-result-object v1

    :goto_0
    const/4 v4, -0x1

    move v5, v2

    move v6, v5

    move v7, v4

    :goto_1
    iget v8, v0, Landroidx/leanback/widget/GridLayoutManager;->ˈⁱ:I

    if-ge v5, v8, :cond_17

    if-nez v1, :cond_3

    const/4 v8, 0x0

    goto :goto_2

    :cond_3
    aget-object v8, v1, v5

    :goto_2
    if-nez v8, :cond_4

    move v9, v2

    goto :goto_3

    :cond_4
    invoke-virtual {v8}, Lˋˋ/ʽʽ;->ˑﹳ()I

    move-result v9

    :goto_3
    move v10, v2

    move v11, v4

    :goto_4
    if-ge v10, v9, :cond_a

    invoke-virtual {v8, v10}, Lˋˋ/ʽʽ;->ˈ(I)I

    move-result v12

    add-int/lit8 v13, v10, 0x1

    invoke-virtual {v8, v13}, Lˋˋ/ʽʽ;->ˈ(I)I

    move-result v13

    :goto_5
    if-gt v12, v13, :cond_9

    iget v14, v0, Landroidx/leanback/widget/GridLayoutManager;->ـˆ:I

    sub-int v14, v12, v14

    invoke-virtual {v0, v14}, Lˋˋ/ʻᵎ;->יـ(I)Landroid/view/View;

    move-result-object v14

    if-nez v14, :cond_5

    goto :goto_7

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {v0, v14}, Landroidx/leanback/widget/GridLayoutManager;->ˎـ(Landroid/view/View;)V

    :cond_6
    iget v15, v0, Landroidx/leanback/widget/GridLayoutManager;->יـ:I

    if-nez v15, :cond_7

    invoke-static {v14}, Landroidx/leanback/widget/GridLayoutManager;->ᵢˋ(Landroid/view/View;)I

    move-result v14

    goto :goto_6

    :cond_7
    invoke-static {v14}, Landroidx/leanback/widget/GridLayoutManager;->ˋـ(Landroid/view/View;)I

    move-result v14

    :goto_6
    if-le v14, v11, :cond_8

    move v11, v14

    :cond_8
    :goto_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_9
    add-int/lit8 v10, v10, 0x2

    goto :goto_4

    :cond_a
    iget-object v8, v0, Landroidx/leanback/widget/GridLayoutManager;->ʻٴ:Lˋˋ/ᐧﹶ;

    invoke-virtual {v8}, Lˋˋ/ᐧﹶ;->ⁱˊ()I

    move-result v8

    iget-object v9, v0, Landroidx/leanback/widget/GridLayoutManager;->ﹳᐧ:Landroidx/leanback/widget/ᵔᵢ;

    iget-boolean v9, v9, Landroidx/recyclerview/widget/RecyclerView;->ﹳـ:Z

    const/4 v10, 0x1

    if-nez v9, :cond_13

    if-eqz p1, :cond_13

    if-gez v11, :cond_13

    if-lez v8, :cond_13

    if-gez v7, :cond_12

    iget v9, v0, Landroidx/leanback/widget/GridLayoutManager;->ˊʻ:I

    if-gez v9, :cond_b

    move v9, v2

    goto :goto_8

    :cond_b
    if-lt v9, v8, :cond_c

    add-int/lit8 v9, v8, -0x1

    :cond_c
    :goto_8
    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v12

    if-lez v12, :cond_f

    iget-object v12, v0, Landroidx/leanback/widget/GridLayoutManager;->ﹳᐧ:Landroidx/leanback/widget/ᵔᵢ;

    invoke-virtual {v0, v2}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroidx/recyclerview/widget/RecyclerView;->ˆﾞ(Landroid/view/View;)Lˋˋ/ʼـ;

    move-result-object v12

    invoke-virtual {v12}, Lˋˋ/ʼـ;->ˈ()I

    move-result v12

    iget-object v13, v0, Landroidx/leanback/widget/GridLayoutManager;->ﹳᐧ:Landroidx/leanback/widget/ᵔᵢ;

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v14

    sub-int/2addr v14, v10

    invoke-virtual {v0, v14}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroidx/recyclerview/widget/RecyclerView;->ˆﾞ(Landroid/view/View;)Lˋˋ/ʼـ;

    move-result-object v13

    invoke-virtual {v13}, Lˋˋ/ʼـ;->ˈ()I

    move-result v13

    if-lt v9, v12, :cond_f

    if-gt v9, v13, :cond_f

    sub-int v14, v9, v12

    sub-int v9, v13, v9

    if-gt v14, v9, :cond_d

    add-int/lit8 v9, v12, -0x1

    goto :goto_9

    :cond_d
    add-int/lit8 v9, v13, 0x1

    :goto_9
    if-gez v9, :cond_e

    add-int/lit8 v14, v8, -0x1

    if-ge v13, v14, :cond_e

    add-int/lit8 v9, v13, 0x1

    goto :goto_a

    :cond_e
    if-lt v9, v8, :cond_f

    if-lez v12, :cond_f

    add-int/lit8 v9, v12, -0x1

    :cond_f
    :goto_a
    if-ltz v9, :cond_12

    if-ge v9, v8, :cond_12

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    iget-object v12, v0, Landroidx/leanback/widget/GridLayoutManager;->ᴵˊ:Lˋˋ/ʻˋ;

    invoke-virtual {v12, v9}, Lˋˋ/ʻˋ;->ˈ(I)Landroid/view/View;

    move-result-object v9

    iget-object v12, v0, Landroidx/leanback/widget/GridLayoutManager;->ˏᵢ:[I

    if-eqz v9, :cond_10

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroidx/leanback/widget/ﹳᐧ;

    sget-object v14, Landroidx/leanback/widget/GridLayoutManager;->ـﹶ:Landroid/graphics/Rect;

    invoke-virtual {v0, v9, v14}, Lˋˋ/ʻᵎ;->ˈ(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v15, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v16, v2

    iget v2, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v15, v2

    iget v2, v14, Landroid/graphics/Rect;->left:I

    add-int/2addr v15, v2

    iget v2, v14, Landroid/graphics/Rect;->right:I

    add-int/2addr v15, v2

    iget v2, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    iget v3, v14, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget v3, v14, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ٴʼ()I

    move-result v3

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ᵎˊ()I

    move-result v14

    add-int/2addr v14, v3

    add-int/2addr v14, v15

    iget v3, v13, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v7, v14, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v3

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ᵔי()I

    move-result v7

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ᵎⁱ()I

    move-result v14

    add-int/2addr v14, v7

    add-int/2addr v14, v2

    iget v2, v13, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v8, v14, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    invoke-virtual {v9, v3, v2}, Landroid/view/View;->measure(II)V

    invoke-static {v9}, Landroidx/leanback/widget/GridLayoutManager;->ˋـ(Landroid/view/View;)I

    move-result v2

    aput v2, v12, v16

    invoke-static {v9}, Landroidx/leanback/widget/GridLayoutManager;->ᵢˋ(Landroid/view/View;)I

    move-result v2

    aput v2, v12, v10

    iget-object v2, v0, Landroidx/leanback/widget/GridLayoutManager;->ᴵˊ:Lˋˋ/ʻˋ;

    invoke-virtual {v2, v9}, Lˋˋ/ʻˋ;->ʼˎ(Landroid/view/View;)V

    goto :goto_b

    :cond_10
    move/from16 v16, v2

    :goto_b
    iget v2, v0, Landroidx/leanback/widget/GridLayoutManager;->יـ:I

    if-nez v2, :cond_11

    aget v2, v12, v10

    :goto_c
    move v7, v2

    goto :goto_d

    :cond_11
    aget v2, v12, v16

    goto :goto_c

    :cond_12
    move/from16 v16, v2

    :goto_d
    if-ltz v7, :cond_14

    move v11, v7

    goto :goto_e

    :cond_13
    move/from16 v16, v2

    :cond_14
    :goto_e
    if-gez v11, :cond_15

    move/from16 v11, v16

    :cond_15
    iget-object v2, v0, Landroidx/leanback/widget/GridLayoutManager;->ˈʿ:[I

    aget v3, v2, v5

    if-eq v3, v11, :cond_16

    aput v11, v2, v5

    move v6, v10

    :cond_16
    add-int/lit8 v5, v5, 0x1

    move/from16 v2, v16

    goto/16 :goto_1

    :cond_17
    return v6

    :goto_f
    return v16
.end method

.method public final ˈʿ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I
    .locals 1

    .prologue
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->יـ:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ˉـ:Landroidx/leanback/widget/ˉʿ;

    if-eqz v0, :cond_0

    iget p1, v0, Landroidx/leanback/widget/ˉʿ;->ˑﹳ:I

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lˋˋ/ʻᵎ;->ˈʿ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I

    move-result p1

    return p1
.end method

.method public final ˈˏ()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ٴʼ:I

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ᴵʼ:Landroidx/leanback/widget/יﹳ;

    iget-object v0, v0, Landroidx/leanback/widget/יﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lˋˋ/ـˊ;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lˋˋ/ـˊ;->ˉˆ(I)V

    :cond_0
    return-void
.end method

.method public final ˉʽ(I)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    neg-int v1, p1

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v2

    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->יـ:I

    if-nez v3, :cond_1

    :goto_0
    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ᵔי:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ᵔי:I

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->ᐧˏ()V

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ﹳᐧ:Landroidx/leanback/widget/ᵔᵢ;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return p1
.end method

.method public final ˉـ(Lˋˋ/ᴵˑ;)V
    .locals 1

    .prologue
    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->ˉـ:Landroidx/leanback/widget/ˉʿ;

    iput-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->ˈʿ:[I

    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    and-int/lit16 p1, p1, -0x401

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    const/4 p1, -0x1

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->ˊʻ:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ٴʼ:I

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ᴵʼ:Landroidx/leanback/widget/יﹳ;

    iget-object v0, v0, Landroidx/leanback/widget/יﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lˋˋ/ـˊ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lˋˋ/ـˊ;->ˉˆ(I)V

    :cond_0
    return-void
.end method

.method public final ˊʻ(Landroid/view/View;)I
    .locals 1

    invoke-super {p0, p1}, Lˋˋ/ʻᵎ;->ˊʻ(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/ﹳᐧ;

    iget p1, p1, Landroidx/leanback/widget/ﹳᐧ;->ᵎﹶ:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final ˊˊ()I
    .locals 2

    .prologue
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ˈⁱ:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/GridLayoutManager;->ٴʿ(I)I

    move-result v1

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/GridLayoutManager;->ᵔⁱ(I)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public final ˊᵔ(Landroid/view/View;I)Landroid/view/View;
    .locals 7

    .prologue
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p2, v2, :cond_2

    if-ne p2, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Landroidx/leanback/widget/GridLayoutManager;->ﹳᐧ:Landroidx/leanback/widget/ᵔᵢ;

    invoke-virtual {v0, v4, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_6

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->ﾞᴵ()Z

    move-result v4

    if-eqz v4, :cond_4

    if-ne p2, v2, :cond_3

    const/16 v4, 0x82

    goto :goto_1

    :cond_3
    const/16 v4, 0x21

    :goto_1
    iget-object v5, p0, Landroidx/leanback/widget/GridLayoutManager;->ﹳᐧ:Landroidx/leanback/widget/ᵔᵢ;

    invoke-virtual {v0, v5, p1, v4}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->ˑﹳ()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v4, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutDirection()I

    move-result v4

    if-ne v4, v3, :cond_5

    move v4, v3

    goto :goto_3

    :cond_5
    move v4, v1

    :goto_3
    if-ne p2, v2, :cond_6

    move v5, v3

    goto :goto_4

    :cond_6
    move v5, v1

    :goto_4
    xor-int/2addr v4, v5

    if-eqz v4, :cond_7

    const/16 v4, 0x42

    goto :goto_5

    :cond_7
    const/16 v4, 0x11

    :goto_5
    iget-object v5, p0, Landroidx/leanback/widget/GridLayoutManager;->ﹳᐧ:Landroidx/leanback/widget/ᵔᵢ;

    invoke-virtual {v0, v5, p1, v4}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_6

    :cond_8
    move-object v0, v4

    :goto_6
    if-eqz v0, :cond_9

    return-object v0

    :cond_9
    iget-object v4, p0, Landroidx/leanback/widget/GridLayoutManager;->ﹳᐧ:Landroidx/leanback/widget/ᵔᵢ;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v4

    const/high16 v5, 0x60000

    if-ne v4, v5, :cond_a

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ﹳᐧ:Landroidx/leanback/widget/ᵔᵢ;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_a
    invoke-virtual {p0, p2}, Landroidx/leanback/widget/GridLayoutManager;->ﹶʽ(I)I

    move-result v4

    iget-object v5, p0, Landroidx/leanback/widget/GridLayoutManager;->ﹳᐧ:Landroidx/leanback/widget/ᵔᵢ;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v5

    if-eqz v5, :cond_b

    move v5, v3

    goto :goto_7

    :cond_b
    move v5, v1

    :goto_7
    const/high16 v6, 0x20000

    if-ne v4, v3, :cond_e

    if-nez v5, :cond_c

    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    and-int/lit16 v1, v1, 0x1000

    if-nez v1, :cond_d

    :cond_c
    move-object v0, p1

    :cond_d
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    and-int/2addr v1, v6

    if-eqz v1, :cond_15

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->ˏⁱ()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {p0, v3}, Landroidx/leanback/widget/GridLayoutManager;->ʿʽ(Z)V

    goto :goto_8

    :cond_e
    if-nez v4, :cond_12

    if-nez v5, :cond_f

    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    and-int/lit16 v2, v2, 0x800

    if-nez v2, :cond_10

    :cond_f
    move-object v0, p1

    :cond_10
    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    and-int/2addr v2, v6

    if-eqz v2, :cond_15

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ˉٴ()I

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->ﹳᐧ:Landroidx/leanback/widget/ᵔᵢ;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->ˉٴ(I)Lˋˋ/ʼـ;

    move-result-object v2

    if-eqz v2, :cond_11

    goto :goto_9

    :cond_11
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/GridLayoutManager;->ʿʽ(Z)V

    goto :goto_8

    :cond_12
    const/4 v1, 0x3

    if-ne v4, v1, :cond_13

    if-nez v5, :cond_14

    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    and-int/lit16 v1, v1, 0x4000

    if-nez v1, :cond_15

    goto :goto_8

    :cond_13
    if-ne v4, v2, :cond_15

    if-nez v5, :cond_14

    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    and-int/lit16 v1, v1, 0x2000

    if-nez v1, :cond_15

    :cond_14
    :goto_8
    move-object v0, p1

    :cond_15
    :goto_9
    if-eqz v0, :cond_16

    return-object v0

    :cond_16
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ﹳᐧ:Landroidx/leanback/widget/ᵔᵢ;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_17

    return-object p2

    :cond_17
    if-eqz p1, :cond_18

    return-object p1

    :cond_18
    iget-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->ﹳᐧ:Landroidx/leanback/widget/ᵔᵢ;

    return-object p1
.end method

.method public final ˊﹳ(I)Z
    .locals 3

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ﹳᐧ:Landroidx/leanback/widget/ᵔᵢ;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->ˉٴ(I)Lˋˋ/ʼـ;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p1, Lˋˋ/ʼـ;->ʾˋ:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-ltz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->ﹳᐧ:Landroidx/leanback/widget/ᵔᵢ;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    if-gt v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    if-ltz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->ﹳᐧ:Landroidx/leanback/widget/ᵔᵢ;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-gt p1, v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public final ˎʼ(I)V
    .locals 3

    .prologue
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->יـ:I

    invoke-static {p0, p1}, Lʼﾞ/ᵎⁱ;->ⁱˊ(Lˋˋ/ʻᵎ;I)Lʼﾞ/ᵎⁱ;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ˏי:Lʼﾞ/ᵎⁱ;

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ʿᵢ:Lˏˆ/ﹳٴ;

    iget-object v1, v0, Lˏˆ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Landroidx/leanback/widget/ʽⁱ;

    iget-object v2, v0, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Landroidx/leanback/widget/ʽⁱ;

    if-nez p1, :cond_1

    iput-object v2, v0, Lˏˆ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    iput-object v1, v0, Lˏˆ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iput-object v1, v0, Lˏˆ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    iput-object v2, v0, Lˏˆ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ᵎᵔ:Lcom/parse/ٴʼ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_2

    iget-object p1, v0, Lcom/parse/ٴʼ;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Landroidx/leanback/widget/ʼˈ;

    iput-object p1, v0, Lcom/parse/ٴʼ;->ˈٴ:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object p1, v0, Lcom/parse/ٴʼ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Landroidx/leanback/widget/ʼˈ;

    iput-object p1, v0, Lcom/parse/ٴʼ;->ˈٴ:Ljava/lang/Object;

    :goto_1
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    return-void
.end method

.method public final ˎʾ()V
    .locals 3

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ˉـ:Landroidx/leanback/widget/ˉʿ;

    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->ᐧᴵ:I

    neg-int v1, v1

    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->ʾᵎ:I

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_0
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->ᐧﾞ:I

    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->ᐧᴵ:I

    add-int/2addr v1, v2

    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->ʾᵎ:I

    add-int/2addr v1, v2

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/leanback/widget/ˉʿ;->ⁱˊ(IZ)Z

    return-void
.end method

.method public final ˎˉ()V
    .locals 4

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ᴵᵔ:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ˊʻ:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lˋˋ/ʻᵎ;->יـ(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->ﹳᐧ:Landroidx/leanback/widget/ᵔᵢ;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->ˆﾞ(Landroid/view/View;)Lˋˋ/ʼـ;

    move-result-object v0

    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->ˊʻ:I

    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->ᴵᵔ:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_5

    iget-object v3, p0, Landroidx/leanback/widget/GridLayoutManager;->ᴵᵔ:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/leanback/widget/ʿ;

    invoke-virtual {v3, v0, v1}, Landroidx/leanback/widget/ʿ;->ⁱˊ(Lˋˋ/ʼـ;I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ˈٴ:Landroidx/leanback/widget/ˉـ;

    if-eqz v0, :cond_3

    invoke-interface {v0, v1, v2}, Landroidx/leanback/widget/ˉـ;->ˆʾ(Landroid/view/View;I)V

    :cond_3
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ᴵᵔ:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_5

    iget-object v3, p0, Landroidx/leanback/widget/GridLayoutManager;->ᴵᵔ:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/leanback/widget/ʿ;

    invoke-virtual {v3, v1, v2}, Landroidx/leanback/widget/ʿ;->ⁱˊ(Lˋˋ/ʼـ;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method

.method public final ˎـ(Landroid/view/View;)V
    .locals 6

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/ﹳᐧ;

    sget-object v1, Landroidx/leanback/widget/GridLayoutManager;->ـﹶ:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lˋˋ/ʻᵎ;->ˈ(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v1

    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->ˆﾞ:I

    const/4 v4, -0x2

    const/4 v5, 0x0

    if-ne v1, v4, :cond_0

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_0

    :cond_0
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->ᵔٴ:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_0
    iget v4, p0, Landroidx/leanback/widget/GridLayoutManager;->יـ:I

    if-nez v4, :cond_1

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v4, v2, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v1, v3, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v4, v3, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v3

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v1, v2, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    move v0, v3

    :goto_1
    invoke-virtual {p1, v2, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public final ˎᐧ(Lˋˋ/ʻˋ;)V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Lˋˋ/ʻᵎ;->ʾﾞ(ILˋˋ/ʻˋ;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ˎᵎ()V
    .locals 4

    .prologue
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    and-int/lit16 v0, v0, -0x401

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/leanback/widget/GridLayoutManager;->ˆﹳ(Z)Z

    move-result v2

    const/16 v3, 0x400

    if-eqz v2, :cond_0

    move v1, v3

    :cond_0
    or-int/2addr v0, v1

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ﹳᐧ:Landroidx/leanback/widget/ᵔᵢ;

    sget-object v1, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->ʻᵎ:Landroidx/leanback/widget/ᵔʾ;

    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final ˏʻ(IZ)V
    .locals 1

    .prologue
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ˊʻ:I

    if-eq v0, p1, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ٴᵢ:I

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroidx/leanback/widget/GridLayoutManager;->יʿ(IIZ)V

    return-void
.end method

.method public final ˏי()Lˋˋ/ˊᵔ;
    .locals 2

    new-instance v0, Landroidx/leanback/widget/ﹳᐧ;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lˋˋ/ˊᵔ;-><init>(II)V

    return-object v0
.end method

.method public final ˏᵢ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;Lˊˋ/ᵔᵢ;)V
    .locals 5

    .prologue
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/GridLayoutManager;->ﾞˊ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)V

    invoke-virtual {p2}, Lˋˋ/ᐧﹶ;->ⁱˊ()I

    move-result v0

    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    const/high16 v2, 0x40000

    and-int/2addr v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_1

    if-le v0, v4, :cond_4

    invoke-virtual {p0, v3}, Landroidx/leanback/widget/GridLayoutManager;->ˊﹳ(I)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_1
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->יـ:I

    if-nez v1, :cond_3

    if-eqz v2, :cond_2

    sget-object v1, Lˊˋ/ʽ;->ᵔʾ:Lˊˋ/ʽ;

    goto :goto_1

    :cond_2
    sget-object v1, Lˊˋ/ʽ;->ﾞʻ:Lˊˋ/ʽ;

    :goto_1
    invoke-virtual {p3, v1}, Lˊˋ/ᵔᵢ;->ⁱˊ(Lˊˋ/ʽ;)V

    goto :goto_2

    :cond_3
    sget-object v1, Lˊˋ/ʽ;->ٴﹶ:Lˊˋ/ʽ;

    invoke-virtual {p3, v1}, Lˊˋ/ᵔᵢ;->ⁱˊ(Lˊˋ/ʽ;)V

    :goto_2
    invoke-virtual {p3, v4}, Lˊˋ/ᵔᵢ;->ᵔﹳ(Z)V

    :cond_4
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_5

    if-le v0, v4, :cond_8

    sub-int/2addr v0, v4

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/GridLayoutManager;->ˊﹳ(I)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_5
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->יـ:I

    if-nez v0, :cond_7

    if-eqz v2, :cond_6

    sget-object v0, Lˊˋ/ʽ;->ﾞʻ:Lˊˋ/ʽ;

    goto :goto_3

    :cond_6
    sget-object v0, Lˊˋ/ʽ;->ᵔʾ:Lˊˋ/ʽ;

    :goto_3
    invoke-virtual {p3, v0}, Lˊˋ/ᵔᵢ;->ⁱˊ(Lˊˋ/ʽ;)V

    goto :goto_4

    :cond_7
    sget-object v0, Lˊˋ/ʽ;->ˉʿ:Lˊˋ/ʽ;

    invoke-virtual {p3, v0}, Lˊˋ/ᵔᵢ;->ⁱˊ(Lˊˋ/ʽ;)V

    :goto_4
    invoke-virtual {p3, v4}, Lˊˋ/ᵔᵢ;->ᵔﹳ(Z)V

    :cond_8
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/GridLayoutManager;->ˈʿ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I

    move-result v0

    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/GridLayoutManager;->ᵢˏ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I

    move-result p1

    invoke-static {v0, p1, v3, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p1

    iget-object p2, p3, Lˊˋ/ᵔᵢ;->ﹳٴ:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    const-class p1, Landroid/widget/GridView;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lˊˋ/ᵔᵢ;->ˆʾ(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->ˆˑ()V

    return-void
.end method

.method public final ˏⁱ()Z
    .locals 3

    .prologue
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ˉٴ()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->ﹳᐧ:Landroidx/leanback/widget/ᵔᵢ;

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->ˉٴ(I)Lˋˋ/ʼـ;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public final ˑˆ()V
    .locals 6

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ˈٴ:Landroidx/leanback/widget/ˉـ;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ᴵᵔ:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ˊʻ:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    move-object v0, v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Lˋˋ/ʻᵎ;->יـ(I)Landroid/view/View;

    move-result-object v0

    :goto_1
    const/4 v3, 0x1

    if-eqz v0, :cond_5

    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->ﹳᐧ:Landroidx/leanback/widget/ᵔᵢ;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->ˆﾞ(Landroid/view/View;)Lˋˋ/ʼـ;

    move-result-object v1

    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->ˈٴ:Landroidx/leanback/widget/ˉـ;

    if-eqz v2, :cond_3

    iget v4, p0, Landroidx/leanback/widget/GridLayoutManager;->ˊʻ:I

    invoke-interface {v2, v0, v4}, Landroidx/leanback/widget/ˉـ;->ˆʾ(Landroid/view/View;I)V

    :cond_3
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ﹳᐧ:Landroidx/leanback/widget/ᵔᵢ;

    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->ˊʻ:I

    iget-object v4, p0, Landroidx/leanback/widget/GridLayoutManager;->ᴵᵔ:Ljava/util/ArrayList;

    if-nez v4, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    :goto_2
    if-ltz v4, :cond_8

    iget-object v5, p0, Landroidx/leanback/widget/GridLayoutManager;->ᴵᵔ:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/leanback/widget/ʿ;

    invoke-virtual {v5, v0, v1, v2}, Landroidx/leanback/widget/ʿ;->ﹳٴ(Landroidx/recyclerview/widget/RecyclerView;Lˋˋ/ʼـ;I)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ˈٴ:Landroidx/leanback/widget/ˉـ;

    if-eqz v0, :cond_6

    invoke-interface {v0, v1, v2}, Landroidx/leanback/widget/ˉـ;->ˆʾ(Landroid/view/View;I)V

    :cond_6
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ﹳᐧ:Landroidx/leanback/widget/ᵔᵢ;

    iget-object v4, p0, Landroidx/leanback/widget/GridLayoutManager;->ᴵᵔ:Ljava/util/ArrayList;

    if-nez v4, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    :goto_3
    if-ltz v4, :cond_8

    iget-object v5, p0, Landroidx/leanback/widget/GridLayoutManager;->ᴵᵔ:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/leanback/widget/ʿ;

    invoke-virtual {v5, v0, v1, v2}, Landroidx/leanback/widget/ʿ;->ﹳٴ(Landroidx/recyclerview/widget/RecyclerView;Lˋˋ/ʼـ;I)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_8
    :goto_4
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    and-int/lit8 v0, v0, 0x3

    if-eq v0, v3, :cond_a

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ﹳᐧ:Landroidx/leanback/widget/ᵔᵢ;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_a

    invoke-virtual {p0, v1}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ﹳᐧ:Landroidx/leanback/widget/ᵔᵢ;

    sget-object v1, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->ʻᵎ:Landroidx/leanback/widget/ᵔʾ;

    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_a
    return-void
.end method

.method public final ˑﹳ()Z
    .locals 2

    .prologue
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->יـ:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ˈⁱ:I

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public final ˑﹶ(Landroid/view/View;Z)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/leanback/widget/GridLayoutManager;->ᴵٴ(Landroid/view/View;Landroid/view/View;ZII)V

    return-void
.end method

.method public final י()Landroid/os/Parcelable;
    .locals 8

    .prologue
    new-instance v0, Landroidx/leanback/widget/ʽﹳ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v1, v0, Landroidx/leanback/widget/ʽﹳ;->ᴵˊ:Landroid/os/Bundle;

    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->ˊʻ:I

    iput v1, v0, Landroidx/leanback/widget/ʽﹳ;->ʾˋ:I

    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->ᴵʼ:Landroidx/leanback/widget/יﹳ;

    iget-object v2, v1, Landroidx/leanback/widget/יﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lˋˋ/ـˊ;

    if-eqz v2, :cond_1

    iget-object v3, v2, Lˋˋ/ـˊ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v3, Lˋⁱ/ﾞᴵ;

    monitor-enter v3

    :try_start_0
    iget v2, v2, Lˋˋ/ـˊ;->ʽ:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, v1, Landroidx/leanback/widget/יﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lˋˋ/ـˊ;

    invoke-virtual {v2}, Lˋˋ/ـˊ;->ᵔʾ()Ljava/util/LinkedHashMap;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_1
    :goto_1
    const/4 v3, 0x0

    :cond_2
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_5

    invoke-virtual {p0, v4}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Landroidx/leanback/widget/GridLayoutManager;->ﹳᵢ(Landroid/view/View;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    iget v7, v1, Landroidx/leanback/widget/יﹳ;->ʾˋ:I

    if-eqz v7, :cond_4

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v5, v7}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    if-nez v3, :cond_3

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    :cond_3
    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    iput-object v3, v0, Landroidx/leanback/widget/ʽﹳ;->ᴵˊ:Landroid/os/Bundle;

    return-object v0
.end method

.method public final יʿ(IIZ)V
    .locals 7

    .prologue
    invoke-virtual {p0, p1}, Lˋˋ/ʻᵎ;->יـ(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lˋˋ/ʻᵎ;->ˑﹳ:Lˋˋ/ˆﾞ;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lˋˋ/ˆﾞ;->ˑﹳ:Z

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-nez v1, :cond_1

    iget-object v4, p0, Landroidx/leanback/widget/GridLayoutManager;->ﹳᐧ:Landroidx/leanback/widget/ᵔᵢ;

    invoke-virtual {v4}, Landroid/view/View;->isLayoutRequested()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroidx/leanback/widget/GridLayoutManager;->ﹳᵢ(Landroid/view/View;)I

    move-result v4

    if-ne v4, p1, :cond_1

    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    invoke-virtual {p0, v0, p3}, Landroidx/leanback/widget/GridLayoutManager;->ˑﹶ(Landroid/view/View;Z)V

    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    and-int/lit8 p1, p1, -0x21

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    return-void

    :cond_1
    iget v4, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    and-int/lit16 v5, v4, 0x200

    const/high16 v6, -0x80000000

    if-eqz v5, :cond_9

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_2

    goto/16 :goto_1

    :cond_2
    if-eqz p3, :cond_5

    iget-object v4, p0, Landroidx/leanback/widget/GridLayoutManager;->ﹳᐧ:Landroidx/leanback/widget/ᵔᵢ;

    invoke-virtual {v4}, Landroid/view/View;->isLayoutRequested()Z

    move-result v4

    if-nez v4, :cond_5

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->ˊʻ:I

    iput p2, p0, Landroidx/leanback/widget/GridLayoutManager;->ٴᵢ:I

    iput v6, p0, Landroidx/leanback/widget/GridLayoutManager;->ٴʼ:I

    iget-object p2, p0, Landroidx/leanback/widget/GridLayoutManager;->ˉـ:Landroidx/leanback/widget/ˉʿ;

    if-eqz p2, :cond_4

    new-instance p2, Landroidx/leanback/widget/ʼᐧ;

    invoke-direct {p2, p0}, Landroidx/leanback/widget/ʼᐧ;-><init>(Landroidx/leanback/widget/GridLayoutManager;)V

    iput p1, p2, Lˋˋ/ˆﾞ;->ﹳٴ:I

    invoke-virtual {p0, p2}, Landroidx/leanback/widget/GridLayoutManager;->ﾞˋ(Lˋˋ/ˆﾞ;)V

    iget p1, p2, Lˋˋ/ˆﾞ;->ﹳٴ:I

    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->ˊʻ:I

    if-eq p1, p2, :cond_3

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->ˊʻ:I

    iput v2, p0, Landroidx/leanback/widget/GridLayoutManager;->ٴᵢ:I

    :cond_3
    return-void

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "GridLayoutManager:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/leanback/widget/GridLayoutManager;->ﹳᐧ:Landroidx/leanback/widget/ᵔᵢ;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "setSelectionSmooth should not be called before first layout pass"

    nop

    return-void

    :cond_5
    if-eqz v1, :cond_7

    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->ˉٴ:Landroidx/leanback/widget/ᵔﹳ;

    if-eqz v1, :cond_6

    iput-boolean v3, v1, Landroidx/leanback/widget/ᵔﹳ;->ᵔﹳ:Z

    :cond_6
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->ﹳᐧ:Landroidx/leanback/widget/ᵔᵢ;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->ʾˊ()V

    :cond_7
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->ﹳᐧ:Landroidx/leanback/widget/ᵔᵢ;

    invoke-virtual {v1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    if-nez v1, :cond_8

    if-eqz v0, :cond_8

    invoke-static {v0}, Landroidx/leanback/widget/GridLayoutManager;->ﹳᵢ(Landroid/view/View;)I

    move-result v1

    if-ne v1, p1, :cond_8

    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    invoke-virtual {p0, v0, p3}, Landroidx/leanback/widget/GridLayoutManager;->ˑﹶ(Landroid/view/View;Z)V

    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    and-int/lit8 p1, p1, -0x21

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    return-void

    :cond_8
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->ˊʻ:I

    iput p2, p0, Landroidx/leanback/widget/GridLayoutManager;->ٴᵢ:I

    iput v6, p0, Landroidx/leanback/widget/GridLayoutManager;->ٴʼ:I

    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ـˊ()V

    return-void

    :cond_9
    :goto_1
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->ˊʻ:I

    iput p2, p0, Landroidx/leanback/widget/GridLayoutManager;->ٴᵢ:I

    iput v6, p0, Landroidx/leanback/widget/GridLayoutManager;->ٴʼ:I

    return-void
.end method

.method public final יˉ(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Landroidx/leanback/widget/GridLayoutManager;->ˏʻ(IZ)V

    return-void
.end method

.method public final יⁱ()V
    .locals 3

    .prologue
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/leanback/widget/GridLayoutManager;->ʽᐧ(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ـʻ(I)Landroid/view/View;
    .locals 3

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ᴵˊ:Lˋˋ/ʻˋ;

    invoke-virtual {v0, p1}, Lˋˋ/ʻˋ;->ˈ(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/ﹳᐧ;

    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->ﹳᐧ:Landroidx/leanback/widget/ᵔᵢ;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->ˆﾞ(Landroid/view/View;)Lˋˋ/ʼـ;

    move-result-object v1

    instance-of v2, v1, Landroidx/leanback/widget/ٴﹶ;

    if-eqz v2, :cond_0

    check-cast v1, Landroidx/leanback/widget/ٴﹶ;

    check-cast v1, Landroidx/leanback/widget/ˈʿ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/leanback/widget/ˑٴ;->ʽﹳ:Landroidx/leanback/widget/ˉˆ;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Landroidx/leanback/widget/ﹳᐧ;->ﾞʻ:Landroidx/leanback/widget/ˉˆ;

    return-object p1
.end method

.method public final ـᵎ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;II)V
    .locals 6

    .prologue
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/GridLayoutManager;->ﾞˊ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)V

    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->יـ:I

    if-nez p1, :cond_0

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p3

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ᵔי()I

    move-result p4

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ᵎⁱ()I

    move-result v0

    :goto_0
    add-int/2addr v0, p4

    goto :goto_1

    :cond_0
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p3

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ٴʼ()I

    move-result p4

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ᵎˊ()I

    move-result v0

    goto :goto_0

    :goto_1
    iput p2, p0, Landroidx/leanback/widget/GridLayoutManager;->ˑٴ:I

    iget p4, p0, Landroidx/leanback/widget/GridLayoutManager;->ˆﾞ:I

    const/4 v1, -0x2

    const-string v2, "wrong spec"

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, -0x80000000

    const/4 v5, 0x1

    if-ne p4, v1, :cond_8

    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->ᴵˑ:I

    if-nez p2, :cond_1

    move p2, v5

    :cond_1
    iput p2, p0, Landroidx/leanback/widget/GridLayoutManager;->ˈⁱ:I

    const/4 p4, 0x0

    iput p4, p0, Landroidx/leanback/widget/GridLayoutManager;->ᵔٴ:I

    iget-object p4, p0, Landroidx/leanback/widget/GridLayoutManager;->ˈʿ:[I

    if-eqz p4, :cond_2

    array-length p4, p4

    if-eq p4, p2, :cond_3

    :cond_2
    new-array p2, p2, [I

    iput-object p2, p0, Landroidx/leanback/widget/GridLayoutManager;->ˈʿ:[I

    :cond_3
    iget-object p2, p0, Landroidx/leanback/widget/GridLayoutManager;->ʻٴ:Lˋˋ/ᐧﹶ;

    iget-boolean p2, p2, Lˋˋ/ᐧﹶ;->ᵎﹶ:Z

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->ⁱʾ()V

    :cond_4
    invoke-virtual {p0, v5}, Landroidx/leanback/widget/GridLayoutManager;->ˆﹳ(Z)Z

    if-eq p3, v4, :cond_7

    if-eqz p3, :cond_6

    if-ne p3, v3, :cond_5

    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->ˑٴ:I

    goto/16 :goto_5

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->ˊˊ()I

    move-result p2

    :goto_2
    add-int/2addr p2, v0

    goto/16 :goto_5

    :cond_7
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->ˊˊ()I

    move-result p2

    add-int/2addr p2, v0

    iget p3, p0, Landroidx/leanback/widget/GridLayoutManager;->ˑٴ:I

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_5

    :cond_8
    if-eq p3, v4, :cond_d

    if-eqz p3, :cond_a

    if-ne p3, v3, :cond_9

    goto :goto_3

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    if-nez p4, :cond_b

    sub-int p4, p2, v0

    :cond_b
    iput p4, p0, Landroidx/leanback/widget/GridLayoutManager;->ᵔٴ:I

    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->ᴵˑ:I

    if-nez p2, :cond_c

    move p2, v5

    :cond_c
    iput p2, p0, Landroidx/leanback/widget/GridLayoutManager;->ˈⁱ:I

    mul-int/2addr p4, p2

    iget p3, p0, Landroidx/leanback/widget/GridLayoutManager;->ـˏ:I

    sub-int/2addr p2, v5

    mul-int/2addr p2, p3

    add-int/2addr p2, p4

    goto :goto_2

    :cond_d
    :goto_3
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->ᴵˑ:I

    if-nez v1, :cond_e

    if-nez p4, :cond_e

    iput v5, p0, Landroidx/leanback/widget/GridLayoutManager;->ˈⁱ:I

    sub-int p4, p2, v0

    iput p4, p0, Landroidx/leanback/widget/GridLayoutManager;->ᵔٴ:I

    goto :goto_4

    :cond_e
    if-nez v1, :cond_f

    iput p4, p0, Landroidx/leanback/widget/GridLayoutManager;->ᵔٴ:I

    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->ـˏ:I

    add-int v2, p2, v1

    add-int/2addr p4, v1

    div-int/2addr v2, p4

    iput v2, p0, Landroidx/leanback/widget/GridLayoutManager;->ˈⁱ:I

    goto :goto_4

    :cond_f
    if-nez p4, :cond_10

    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->ˈⁱ:I

    sub-int p4, p2, v0

    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->ـˏ:I

    add-int/lit8 v3, v1, -0x1

    mul-int/2addr v3, v2

    sub-int/2addr p4, v3

    div-int/2addr p4, v1

    iput p4, p0, Landroidx/leanback/widget/GridLayoutManager;->ᵔٴ:I

    goto :goto_4

    :cond_10
    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->ˈⁱ:I

    iput p4, p0, Landroidx/leanback/widget/GridLayoutManager;->ᵔٴ:I

    :goto_4
    if-ne p3, v4, :cond_11

    iget p3, p0, Landroidx/leanback/widget/GridLayoutManager;->ᵔٴ:I

    iget p4, p0, Landroidx/leanback/widget/GridLayoutManager;->ˈⁱ:I

    mul-int/2addr p3, p4

    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->ـˏ:I

    sub-int/2addr p4, v5

    mul-int/2addr p4, v1

    add-int/2addr p4, p3

    add-int/2addr p4, v0

    if-ge p4, p2, :cond_11

    move p2, p4

    :cond_11
    :goto_5
    iget p3, p0, Landroidx/leanback/widget/GridLayoutManager;->יـ:I

    if-nez p3, :cond_12

    iget-object p3, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p3, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->ᵎﹶ(Landroidx/recyclerview/widget/RecyclerView;II)V

    goto :goto_6

    :cond_12
    iget-object p3, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p3, p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->ᵎﹶ(Landroidx/recyclerview/widget/RecyclerView;II)V

    :goto_6
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->ˆˑ()V

    return-void
.end method

.method public final ـﹶ(II)V
    .locals 4

    .prologue
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ˊʻ:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->ˉـ:Landroidx/leanback/widget/ˉʿ;

    if-eqz v2, :cond_0

    iget v2, v2, Landroidx/leanback/widget/ˉʿ;->ﾞᴵ:I

    if-ltz v2, :cond_0

    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->ٴʼ:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_0

    add-int/2addr v0, v2

    if-gt p1, v0, :cond_0

    add-int/2addr v2, p2

    iput v2, p0, Landroidx/leanback/widget/GridLayoutManager;->ٴʼ:I

    :cond_0
    iget-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->ᴵʼ:Landroidx/leanback/widget/יﹳ;

    iget-object p1, p1, Landroidx/leanback/widget/יﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Lˋˋ/ـˊ;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Lˋˋ/ـˊ;->ˉˆ(I)V

    :cond_1
    return-void
.end method

.method public final ٴʿ(I)I
    .locals 4

    .prologue
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ˈⁱ:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-le v0, p1, :cond_0

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/GridLayoutManager;->ᵔⁱ(I)I

    move-result v2

    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->ـˏ:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    :goto_1
    if-ge v1, p1, :cond_2

    invoke-virtual {p0, v1}, Landroidx/leanback/widget/GridLayoutManager;->ᵔⁱ(I)I

    move-result v2

    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->ـˏ:I

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return v0
.end method

.method public final ٴᵢ(Landroid/view/View;)I
    .locals 1

    invoke-super {p0, p1}, Lˋˋ/ʻᵎ;->ٴᵢ(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/ﹳᐧ;

    iget p1, p1, Landroidx/leanback/widget/ﹳᐧ;->ﾞᴵ:I

    add-int/2addr v0, p1

    return v0
.end method

.method public final ٴﹳ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)V
    .locals 31

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v6, p2

    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ˈⁱ:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Lˋˋ/ᐧﹶ;->ⁱˊ()I

    move-result v1

    if-gez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v1

    if-lez v1, :cond_2

    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    or-int/lit16 v1, v1, 0x80

    iput v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    return-void

    :cond_2
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    and-int/lit16 v3, v1, 0x200

    if-nez v3, :cond_3

    const/4 v2, 0x0

    iput-object v2, v0, Landroidx/leanback/widget/GridLayoutManager;->ˉـ:Landroidx/leanback/widget/ˉʿ;

    iput-object v2, v0, Landroidx/leanback/widget/GridLayoutManager;->ˈʿ:[I

    and-int/lit16 v1, v1, -0x401

    iput v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    invoke-virtual/range {p0 .. p1}, Landroidx/leanback/widget/GridLayoutManager;->ˎᐧ(Lˋˋ/ʻˋ;)V

    return-void

    :cond_3
    and-int/lit8 v1, v1, -0x4

    const/4 v7, 0x1

    or-int/2addr v1, v7

    iput v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    invoke-virtual/range {p0 .. p2}, Landroidx/leanback/widget/GridLayoutManager;->ﾞˊ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)V

    iget-boolean v1, v6, Lˋˋ/ᐧﹶ;->ᵎﹶ:Z

    const/high16 v4, -0x80000000

    const/4 v5, -0x1

    const/4 v8, 0x0

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->ⁱʾ()V

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v1

    iget-object v2, v0, Landroidx/leanback/widget/GridLayoutManager;->ˉـ:Landroidx/leanback/widget/ˉʿ;

    if-eqz v2, :cond_b

    if-lez v1, :cond_b

    iget-object v2, v0, Landroidx/leanback/widget/GridLayoutManager;->ﹳᐧ:Landroidx/leanback/widget/ᵔᵢ;

    invoke-virtual {v0, v8}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/RecyclerView;->ˆﾞ(Landroid/view/View;)Lˋˋ/ʼـ;

    move-result-object v2

    iget v2, v2, Lˋˋ/ʼـ;->ˈٴ:I

    iget-object v6, v0, Landroidx/leanback/widget/GridLayoutManager;->ﹳᐧ:Landroidx/leanback/widget/ᵔᵢ;

    add-int/lit8 v7, v1, -0x1

    invoke-virtual {v0, v7}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->ˆﾞ(Landroid/view/View;)Lˋˋ/ʼـ;

    move-result-object v6

    iget v6, v6, Lˋˋ/ʼـ;->ˈٴ:I

    const v3, 0x7fffffff

    :goto_1
    if-ge v8, v1, :cond_9

    invoke-virtual {v0, v8}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/leanback/widget/ﹳᐧ;

    iget-object v10, v0, Landroidx/leanback/widget/GridLayoutManager;->ﹳᐧ:Landroidx/leanback/widget/ᵔᵢ;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView;->ᵔٴ(Landroid/view/View;)Lˋˋ/ʼـ;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-virtual {v10}, Lˋˋ/ʼـ;->ⁱˊ()I

    move-result v10

    goto :goto_2

    :cond_4
    move v10, v5

    :goto_2
    iget-object v11, v9, Lˋˋ/ˊᵔ;->ﹳٴ:Lˋˋ/ʼـ;

    invoke-virtual {v11}, Lˋˋ/ʼـ;->ˉʿ()Z

    move-result v11

    if-nez v11, :cond_7

    iget-object v11, v9, Lˋˋ/ˊᵔ;->ﹳٴ:Lˋˋ/ʼـ;

    invoke-virtual {v11}, Lˋˋ/ʼـ;->ˆʾ()Z

    move-result v11

    if-nez v11, :cond_7

    invoke-virtual {v7}, Landroid/view/View;->isLayoutRequested()Z

    move-result v11

    if-nez v11, :cond_7

    invoke-virtual {v7}, Landroid/view/View;->hasFocus()Z

    move-result v11

    if-nez v11, :cond_5

    iget v11, v0, Landroidx/leanback/widget/GridLayoutManager;->ˊʻ:I

    iget-object v12, v9, Lˋˋ/ˊᵔ;->ﹳٴ:Lˋˋ/ʼـ;

    invoke-virtual {v12}, Lˋˋ/ʼـ;->ⁱˊ()I

    move-result v12

    if-eq v11, v12, :cond_7

    :cond_5
    invoke-virtual {v7}, Landroid/view/View;->hasFocus()Z

    move-result v11

    if-eqz v11, :cond_6

    iget v11, v0, Landroidx/leanback/widget/GridLayoutManager;->ˊʻ:I

    iget-object v9, v9, Lˋˋ/ˊᵔ;->ﹳٴ:Lˋˋ/ʼـ;

    invoke-virtual {v9}, Lˋˋ/ʼـ;->ⁱˊ()I

    move-result v9

    if-ne v11, v9, :cond_7

    :cond_6
    if-lt v10, v2, :cond_7

    if-le v10, v6, :cond_8

    :cond_7
    iget-object v9, v0, Landroidx/leanback/widget/GridLayoutManager;->ˏי:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v9, v7}, Lʼﾞ/ᵎⁱ;->ᵎﹶ(Landroid/view/View;)I

    move-result v9

    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v9, v0, Landroidx/leanback/widget/GridLayoutManager;->ˏי:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v9, v7}, Lʼﾞ/ᵎⁱ;->ˈ(Landroid/view/View;)I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_9
    if-le v4, v3, :cond_a

    sub-int/2addr v4, v3

    iput v4, v0, Landroidx/leanback/widget/GridLayoutManager;->ʾᵎ:I

    :cond_a
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->ˎʾ()V

    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->ᵢʻ()V

    :cond_b
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    and-int/lit8 v1, v1, -0x4

    iput v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->ˆˑ()V

    return-void

    :cond_c
    iget-boolean v1, v6, Lˋˋ/ᐧﹶ;->ٴﹶ:Z

    iget-object v9, v0, Landroidx/leanback/widget/GridLayoutManager;->ʼʼ:Landroid/util/SparseIntArray;

    if-eqz v1, :cond_e

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->clear()V

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v1

    move v10, v8

    :goto_3
    if-ge v10, v1, :cond_e

    iget-object v11, v0, Landroidx/leanback/widget/GridLayoutManager;->ﹳᐧ:Landroidx/leanback/widget/ᵔᵢ;

    invoke-virtual {v0, v10}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/RecyclerView;->ˆﾞ(Landroid/view/View;)Lˋˋ/ʼـ;

    move-result-object v11

    iget v11, v11, Lˋˋ/ʼـ;->ˈٴ:I

    if-ltz v11, :cond_d

    iget-object v12, v0, Landroidx/leanback/widget/GridLayoutManager;->ˉـ:Landroidx/leanback/widget/ˉʿ;

    invoke-virtual {v12, v11}, Landroidx/leanback/widget/ˉʿ;->ٴﹶ(I)Landroidx/leanback/widget/ﾞʻ;

    move-result-object v12

    if-eqz v12, :cond_d

    iget v12, v12, Landroidx/leanback/widget/ﾞʻ;->ᴵˊ:I

    invoke-virtual {v9, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_e
    iget-object v1, v0, Lˋˋ/ʻᵎ;->ˑﹳ:Lˋˋ/ˆﾞ;

    if-eqz v1, :cond_f

    iget-boolean v1, v1, Lˋˋ/ˆﾞ;->ˑﹳ:Z

    if-eqz v1, :cond_f

    goto :goto_4

    :cond_f
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ʿ:I

    if-nez v1, :cond_10

    move v10, v7

    goto :goto_5

    :cond_10
    :goto_4
    move v10, v8

    :goto_5
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ˊʻ:I

    if-eq v1, v5, :cond_11

    iget v11, v0, Landroidx/leanback/widget/GridLayoutManager;->ٴʼ:I

    if-eq v11, v4, :cond_11

    add-int/2addr v1, v11

    iput v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ˊʻ:I

    iput v8, v0, Landroidx/leanback/widget/GridLayoutManager;->ٴᵢ:I

    :cond_11
    iput v8, v0, Landroidx/leanback/widget/GridLayoutManager;->ٴʼ:I

    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ˊʻ:I

    invoke-virtual {v0, v1}, Lˋˋ/ʻᵎ;->יـ(I)Landroid/view/View;

    move-result-object v11

    iget v12, v0, Landroidx/leanback/widget/GridLayoutManager;->ˊʻ:I

    iget v13, v0, Landroidx/leanback/widget/GridLayoutManager;->ٴᵢ:I

    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ﹳᐧ:Landroidx/leanback/widget/ᵔᵢ;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v14

    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ˉـ:Landroidx/leanback/widget/ˉʿ;

    if-eqz v1, :cond_12

    iget v15, v1, Landroidx/leanback/widget/ˉʿ;->ﾞᴵ:I

    goto :goto_6

    :cond_12
    move v15, v5

    :goto_6
    if-eqz v1, :cond_13

    iget v1, v1, Landroidx/leanback/widget/ˉʿ;->ᵎﹶ:I

    goto :goto_7

    :cond_13
    move v1, v5

    :goto_7
    iget v3, v0, Landroidx/leanback/widget/GridLayoutManager;->יـ:I

    if-nez v3, :cond_14

    iget v3, v6, Lˋˋ/ᐧﹶ;->ˉˆ:I

    iget v4, v6, Lˋˋ/ᐧﹶ;->ʼᐧ:I

    goto :goto_8

    :cond_14
    iget v4, v6, Lˋˋ/ᐧﹶ;->ˉˆ:I

    iget v3, v6, Lˋˋ/ᐧﹶ;->ʼᐧ:I

    :goto_8
    iget-object v2, v0, Landroidx/leanback/widget/GridLayoutManager;->ʻٴ:Lˋˋ/ᐧﹶ;

    invoke-virtual {v2}, Lˋˋ/ᐧﹶ;->ⁱˊ()I

    move-result v2

    if-nez v2, :cond_15

    iput v5, v0, Landroidx/leanback/widget/GridLayoutManager;->ˊʻ:I

    iput v8, v0, Landroidx/leanback/widget/GridLayoutManager;->ٴᵢ:I

    move/from16 v18, v7

    goto :goto_9

    :cond_15
    move/from16 v18, v7

    iget v7, v0, Landroidx/leanback/widget/GridLayoutManager;->ˊʻ:I

    if-lt v7, v2, :cond_16

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroidx/leanback/widget/GridLayoutManager;->ˊʻ:I

    iput v8, v0, Landroidx/leanback/widget/GridLayoutManager;->ٴᵢ:I

    goto :goto_9

    :cond_16
    if-ne v7, v5, :cond_17

    if-lez v2, :cond_17

    iput v8, v0, Landroidx/leanback/widget/GridLayoutManager;->ˊʻ:I

    iput v8, v0, Landroidx/leanback/widget/GridLayoutManager;->ٴᵢ:I

    :cond_17
    :goto_9
    iget-object v2, v0, Landroidx/leanback/widget/GridLayoutManager;->ʻٴ:Lˋˋ/ᐧﹶ;

    iget-boolean v2, v2, Lˋˋ/ᐧﹶ;->ﾞᴵ:Z

    iget-object v7, v0, Landroidx/leanback/widget/GridLayoutManager;->ʿᵢ:Lˏˆ/ﹳٴ;

    const/high16 v19, 0x40000

    if-nez v2, :cond_22

    iget-object v2, v0, Landroidx/leanback/widget/GridLayoutManager;->ˉـ:Landroidx/leanback/widget/ˉʿ;

    if-eqz v2, :cond_22

    iget v8, v2, Landroidx/leanback/widget/ˉʿ;->ﾞᴵ:I

    if-ltz v8, :cond_22

    iget v8, v0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    and-int/lit16 v8, v8, 0x100

    if-nez v8, :cond_22

    iget v2, v2, Landroidx/leanback/widget/ˉʿ;->ˑﹳ:I

    iget v8, v0, Landroidx/leanback/widget/GridLayoutManager;->ˈⁱ:I

    if-ne v2, v8, :cond_22

    iget-object v1, v7, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Landroidx/leanback/widget/ʽⁱ;

    iget-object v2, v7, Lˏˆ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Landroidx/leanback/widget/ʽⁱ;

    iget v5, v0, Lˋˋ/ʻᵎ;->ᵔʾ:I

    iput v5, v1, Landroidx/leanback/widget/ʽⁱ;->ʼˎ:I

    iget v5, v0, Lˋˋ/ʻᵎ;->ˉˆ:I

    iput v5, v2, Landroidx/leanback/widget/ʽⁱ;->ʼˎ:I

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ٴʼ()I

    move-result v5

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ᵎˊ()I

    move-result v8

    iput v5, v1, Landroidx/leanback/widget/ʽⁱ;->ˆʾ:I

    iput v8, v1, Landroidx/leanback/widget/ʽⁱ;->ٴﹶ:I

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ᵔי()I

    move-result v1

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ᵎⁱ()I

    move-result v5

    iput v1, v2, Landroidx/leanback/widget/ʽⁱ;->ˆʾ:I

    iput v5, v2, Landroidx/leanback/widget/ʽⁱ;->ٴﹶ:I

    iget-object v1, v7, Lˏˆ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Landroidx/leanback/widget/ʽⁱ;

    iget v1, v1, Landroidx/leanback/widget/ʽⁱ;->ʼˎ:I

    iput v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ᐧﾞ:I

    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->ᐧˏ()V

    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ˉـ:Landroidx/leanback/widget/ˉʿ;

    iget v2, v0, Landroidx/leanback/widget/GridLayoutManager;->ʼˈ:I

    iput v2, v1, Landroidx/leanback/widget/ˉʿ;->ˈ:I

    iget v2, v0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    iget v2, v0, Landroidx/leanback/widget/GridLayoutManager;->ˊʻ:I

    iput v2, v1, Landroidx/leanback/widget/ˉʿ;->ʼˎ:I

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v8

    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ˉـ:Landroidx/leanback/widget/ˉʿ;

    iget v1, v1, Landroidx/leanback/widget/ˉʿ;->ﾞᴵ:I

    iget v2, v0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    and-int/lit8 v2, v2, -0x9

    iput v2, v0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    move v15, v1

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v8, :cond_20

    invoke-virtual {v0, v1}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroidx/leanback/widget/GridLayoutManager;->ﹳᵢ(Landroid/view/View;)I

    move-result v5

    if-eq v15, v5, :cond_18

    :goto_b
    move/from16 v17, v8

    move/from16 v21, v10

    move-object/from16 v23, v11

    move/from16 v24, v13

    move/from16 v22, v14

    move v14, v1

    move v8, v3

    move v10, v4

    goto/16 :goto_10

    :cond_18
    iget-object v5, v0, Landroidx/leanback/widget/GridLayoutManager;->ˉـ:Landroidx/leanback/widget/ˉʿ;

    invoke-virtual {v5, v15}, Landroidx/leanback/widget/ˉʿ;->ٴﹶ(I)Landroidx/leanback/widget/ﾞʻ;

    move-result-object v5

    if-nez v5, :cond_19

    goto :goto_b

    :cond_19
    move/from16 v21, v3

    iget v3, v5, Landroidx/leanback/widget/ﾞʻ;->ᴵˊ:I

    invoke-virtual {v0, v3}, Landroidx/leanback/widget/GridLayoutManager;->ٴʿ(I)I

    move-result v3

    move/from16 p1, v3

    iget-object v3, v7, Lˏˆ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v3, Landroidx/leanback/widget/ʽⁱ;

    iget v3, v3, Landroidx/leanback/widget/ʽⁱ;->ˆʾ:I

    add-int v3, p1, v3

    move/from16 p1, v3

    iget v3, v0, Landroidx/leanback/widget/GridLayoutManager;->ᵔי:I

    sub-int v3, p1, v3

    move/from16 p1, v3

    iget-object v3, v0, Landroidx/leanback/widget/GridLayoutManager;->ˏי:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v3, v2}, Lʼﾞ/ᵎⁱ;->ᵎﹶ(Landroid/view/View;)I

    move-result v3

    move/from16 v16, v3

    sget-object v3, Landroidx/leanback/widget/GridLayoutManager;->ـﹶ:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v3}, Landroidx/leanback/widget/GridLayoutManager;->ᴵˊ(Landroid/view/View;Landroid/graphics/Rect;)V

    move-object/from16 v17, v3

    iget v3, v0, Landroidx/leanback/widget/GridLayoutManager;->יـ:I

    if-nez v3, :cond_1a

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v3

    goto :goto_c

    :cond_1a
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v3

    :goto_c
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    move/from16 v22, v3

    move-object/from16 v3, v17

    check-cast v3, Landroidx/leanback/widget/ﹳᐧ;

    iget-object v3, v3, Lˋˋ/ˊᵔ;->ﹳٴ:Lˋˋ/ʼـ;

    iget v3, v3, Lˋˋ/ʼـ;->ٴʼ:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1b

    iget v3, v0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    iget-object v3, v0, Landroidx/leanback/widget/GridLayoutManager;->ᴵˊ:Lˋˋ/ʻˋ;

    move/from16 v23, v4

    iget-object v4, v0, Lˋˋ/ʻᵎ;->ﹳٴ:Lcom/parse/ʽˑ;

    invoke-virtual {v4, v2}, Lcom/parse/ʽˑ;->ˆﾞ(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v0, v3, v4, v2}, Lˋˋ/ʻᵎ;->ᵎʿ(Lˋˋ/ʻˋ;ILandroid/view/View;)V

    invoke-virtual {v0, v15}, Landroidx/leanback/widget/GridLayoutManager;->ـʻ(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lˋˋ/ʻᵎ;->ⁱˊ(ILandroid/view/View;Z)V

    goto :goto_d

    :cond_1b
    move/from16 v23, v4

    :goto_d
    invoke-virtual {v0, v2}, Landroidx/leanback/widget/GridLayoutManager;->ˎـ(Landroid/view/View;)V

    iget v3, v0, Landroidx/leanback/widget/GridLayoutManager;->יـ:I

    if-nez v3, :cond_1c

    invoke-static {v2}, Landroidx/leanback/widget/GridLayoutManager;->ˋـ(Landroid/view/View;)I

    move-result v3

    :goto_e
    add-int v4, v16, v3

    goto :goto_f

    :cond_1c
    invoke-static {v2}, Landroidx/leanback/widget/GridLayoutManager;->ᵢˋ(Landroid/view/View;)I

    move-result v3

    goto :goto_e

    :goto_f
    iget v5, v5, Landroidx/leanback/widget/ﾞʻ;->ᴵˊ:I

    move/from16 v17, v8

    move/from16 v24, v13

    move/from16 v8, v21

    move v13, v3

    move/from16 v21, v10

    move/from16 v3, v16

    move/from16 v10, v23

    move-object/from16 v23, v11

    move/from16 v11, v22

    move/from16 v22, v14

    move v14, v1

    move-object v1, v2

    move v2, v5

    move/from16 v5, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/leanback/widget/GridLayoutManager;->ʽʾ(Landroid/view/View;IIII)V

    if-eq v11, v13, :cond_1f

    :goto_10
    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ˉـ:Landroidx/leanback/widget/ˉʿ;

    iget v1, v1, Landroidx/leanback/widget/ˉʿ;->ᵎﹶ:I

    add-int/lit8 v2, v17, -0x1

    :goto_11
    if-lt v2, v14, :cond_1d

    invoke-virtual {v0, v2}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, v0, Landroidx/leanback/widget/GridLayoutManager;->ᴵˊ:Lˋˋ/ʻˋ;

    iget-object v5, v0, Lˋˋ/ʻᵎ;->ﹳٴ:Lcom/parse/ʽˑ;

    invoke-virtual {v5, v3}, Lcom/parse/ʽˑ;->ˆﾞ(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v0, v4, v5, v3}, Lˋˋ/ʻᵎ;->ᵎʿ(Lˋˋ/ʻˋ;ILandroid/view/View;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    :cond_1d
    iget-object v2, v0, Landroidx/leanback/widget/GridLayoutManager;->ˉـ:Landroidx/leanback/widget/ˉʿ;

    invoke-virtual {v2, v15}, Landroidx/leanback/widget/ˉʿ;->ﾞʻ(I)V

    iget v2, v0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    const/high16 v3, 0x10000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1e

    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->ˎʾ()V

    iget v2, v0, Landroidx/leanback/widget/GridLayoutManager;->ˊʻ:I

    if-ltz v2, :cond_21

    if-gt v2, v1, :cond_21

    :goto_12
    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ˉـ:Landroidx/leanback/widget/ˉʿ;

    iget v2, v1, Landroidx/leanback/widget/ˉʿ;->ᵎﹶ:I

    iget v3, v0, Landroidx/leanback/widget/GridLayoutManager;->ˊʻ:I

    if-ge v2, v3, :cond_21

    invoke-virtual {v1}, Landroidx/leanback/widget/ˉʿ;->ﹳٴ()Z

    goto :goto_12

    :cond_1e
    :goto_13
    iget-object v2, v0, Landroidx/leanback/widget/GridLayoutManager;->ˉـ:Landroidx/leanback/widget/ˉʿ;

    invoke-virtual {v2}, Landroidx/leanback/widget/ˉʿ;->ﹳٴ()Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, v0, Landroidx/leanback/widget/GridLayoutManager;->ˉـ:Landroidx/leanback/widget/ˉʿ;

    iget v2, v2, Landroidx/leanback/widget/ˉʿ;->ᵎﹶ:I

    if-ge v2, v1, :cond_21

    goto :goto_13

    :cond_1f
    add-int/lit8 v1, v14, 0x1

    add-int/lit8 v15, v15, 0x1

    move v3, v8

    move v4, v10

    move/from16 v8, v17

    move/from16 v10, v21

    move/from16 v14, v22

    move-object/from16 v11, v23

    move/from16 v13, v24

    goto/16 :goto_a

    :cond_20
    move v8, v3

    move/from16 v21, v10

    move-object/from16 v23, v11

    move/from16 v24, v13

    move/from16 v22, v14

    move v10, v4

    :cond_21
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->ʾˏ()V

    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->ᐧˏ()V

    goto/16 :goto_19

    :cond_22
    move v8, v3

    move/from16 v21, v10

    move-object/from16 v23, v11

    move/from16 v24, v13

    move/from16 v22, v14

    move v10, v4

    iget v2, v0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    and-int/lit16 v3, v2, -0x101

    iput v3, v0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    iget-object v3, v0, Landroidx/leanback/widget/GridLayoutManager;->ˉـ:Landroidx/leanback/widget/ˉʿ;

    if-eqz v3, :cond_24

    iget v4, v0, Landroidx/leanback/widget/GridLayoutManager;->ˈⁱ:I

    iget v11, v3, Landroidx/leanback/widget/ˉʿ;->ˑﹳ:I

    if-ne v4, v11, :cond_24

    and-int v2, v2, v19

    if-eqz v2, :cond_23

    move/from16 v2, v18

    goto :goto_14

    :cond_23
    const/4 v2, 0x0

    :goto_14
    iget-boolean v3, v3, Landroidx/leanback/widget/ˉʿ;->ʽ:Z

    if-eq v2, v3, :cond_27

    :cond_24
    iget v2, v0, Landroidx/leanback/widget/GridLayoutManager;->ˈⁱ:I

    move/from16 v3, v18

    if-ne v2, v3, :cond_25

    new-instance v2, Landroidx/leanback/widget/ᵎʻ;

    invoke-direct {v2}, Landroidx/leanback/widget/ᵎʻ;-><init>()V

    goto :goto_15

    :cond_25
    new-instance v3, Landroidx/leanback/widget/ᐧﹶ;

    invoke-direct {v3}, Landroidx/leanback/widget/ˉʿ;-><init>()V

    new-instance v4, Lʽᴵ/יـ;

    const/16 v11, 0x40

    invoke-direct {v4, v11}, Lʽᴵ/יـ;-><init>(I)V

    iput-object v4, v3, Landroidx/leanback/widget/ᐧﹶ;->ˆʾ:Lʽᴵ/יـ;

    iput v5, v3, Landroidx/leanback/widget/ᐧﹶ;->ٴﹶ:I

    invoke-virtual {v3, v2}, Landroidx/leanback/widget/ˉʿ;->ᵔʾ(I)V

    move-object v2, v3

    :goto_15
    iput-object v2, v0, Landroidx/leanback/widget/GridLayoutManager;->ˉـ:Landroidx/leanback/widget/ˉʿ;

    iget-object v3, v0, Landroidx/leanback/widget/GridLayoutManager;->ˊᵔ:Landroidx/leanback/widget/ˉˆ;

    iput-object v3, v2, Landroidx/leanback/widget/ˉʿ;->ⁱˊ:Landroidx/leanback/widget/ˉˆ;

    iget v3, v0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    and-int v3, v3, v19

    if-eqz v3, :cond_26

    const/4 v3, 0x1

    goto :goto_16

    :cond_26
    const/4 v3, 0x0

    :goto_16
    iput-boolean v3, v2, Landroidx/leanback/widget/ˉʿ;->ʽ:Z

    :cond_27
    iget-object v2, v7, Lˏˆ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v2, Landroidx/leanback/widget/ʽⁱ;

    iget-object v3, v7, Lˏˆ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v3, Landroidx/leanback/widget/ʽⁱ;

    const/high16 v4, -0x80000000

    iput v4, v2, Landroidx/leanback/widget/ʽⁱ;->ⁱˊ:I

    const v4, 0x7fffffff

    iput v4, v2, Landroidx/leanback/widget/ʽⁱ;->ﹳٴ:I

    iget-object v2, v7, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Landroidx/leanback/widget/ʽⁱ;

    iget v4, v0, Lˋˋ/ʻᵎ;->ᵔʾ:I

    iput v4, v2, Landroidx/leanback/widget/ʽⁱ;->ʼˎ:I

    iget v4, v0, Lˋˋ/ʻᵎ;->ˉˆ:I

    iput v4, v3, Landroidx/leanback/widget/ʽⁱ;->ʼˎ:I

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ٴʼ()I

    move-result v4

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ᵎˊ()I

    move-result v11

    iput v4, v2, Landroidx/leanback/widget/ʽⁱ;->ˆʾ:I

    iput v11, v2, Landroidx/leanback/widget/ʽⁱ;->ٴﹶ:I

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ᵔי()I

    move-result v2

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ᵎⁱ()I

    move-result v4

    iput v2, v3, Landroidx/leanback/widget/ʽⁱ;->ˆʾ:I

    iput v4, v3, Landroidx/leanback/widget/ʽⁱ;->ٴﹶ:I

    iget-object v2, v7, Lˏˆ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v2, Landroidx/leanback/widget/ʽⁱ;

    iget v2, v2, Landroidx/leanback/widget/ʽⁱ;->ʼˎ:I

    iput v2, v0, Landroidx/leanback/widget/GridLayoutManager;->ᐧﾞ:I

    const/4 v3, 0x0

    iput v3, v0, Landroidx/leanback/widget/GridLayoutManager;->ᵔי:I

    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->ᐧˏ()V

    iget-object v2, v0, Landroidx/leanback/widget/GridLayoutManager;->ˉـ:Landroidx/leanback/widget/ˉʿ;

    iget v3, v0, Landroidx/leanback/widget/GridLayoutManager;->ʼˈ:I

    iput v3, v2, Landroidx/leanback/widget/ˉʿ;->ˈ:I

    iget-object v2, v0, Landroidx/leanback/widget/GridLayoutManager;->ᴵˊ:Lˋˋ/ʻˋ;

    invoke-virtual {v0, v2}, Lˋˋ/ʻᵎ;->ᵔﹳ(Lˋˋ/ʻˋ;)V

    iget-object v2, v0, Landroidx/leanback/widget/GridLayoutManager;->ˉـ:Landroidx/leanback/widget/ˉʿ;

    iput v5, v2, Landroidx/leanback/widget/ˉʿ;->ᵎﹶ:I

    iput v5, v2, Landroidx/leanback/widget/ˉʿ;->ﾞᴵ:I

    iget-object v3, v7, Lˏˆ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v3, Landroidx/leanback/widget/ʽⁱ;

    const/high16 v4, -0x80000000

    iput v4, v3, Landroidx/leanback/widget/ʽⁱ;->ⁱˊ:I

    iput v4, v3, Landroidx/leanback/widget/ʽⁱ;->ˈ:I

    const v4, 0x7fffffff

    iput v4, v3, Landroidx/leanback/widget/ʽⁱ;->ﹳٴ:I

    iput v4, v3, Landroidx/leanback/widget/ʽⁱ;->ʽ:I

    iget v3, v0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    and-int/lit8 v4, v3, -0x5

    iput v4, v0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    and-int/lit8 v3, v3, -0x15

    if-eqz v21, :cond_28

    const/16 v4, 0x10

    goto :goto_17

    :cond_28
    const/4 v4, 0x0

    :goto_17
    or-int/2addr v3, v4

    iput v3, v0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    if-eqz v21, :cond_2a

    if-ltz v15, :cond_29

    iget v3, v0, Landroidx/leanback/widget/GridLayoutManager;->ˊʻ:I

    if-gt v3, v1, :cond_29

    if-ge v3, v15, :cond_2a

    :cond_29
    iget v15, v0, Landroidx/leanback/widget/GridLayoutManager;->ˊʻ:I

    move v1, v15

    :cond_2a
    iput v15, v2, Landroidx/leanback/widget/ˉʿ;->ʼˎ:I

    if-eq v1, v5, :cond_2b

    :goto_18
    iget-object v2, v0, Landroidx/leanback/widget/GridLayoutManager;->ˉـ:Landroidx/leanback/widget/ˉʿ;

    invoke-virtual {v2}, Landroidx/leanback/widget/ˉʿ;->ﹳٴ()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual {v0, v1}, Lˋˋ/ʻᵎ;->יـ(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2b

    goto :goto_18

    :cond_2b
    :goto_19
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->ʾˏ()V

    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ˉـ:Landroidx/leanback/widget/ˉʿ;

    iget v7, v1, Landroidx/leanback/widget/ˉʿ;->ﾞᴵ:I

    iget v11, v1, Landroidx/leanback/widget/ˉʿ;->ᵎﹶ:I

    neg-int v4, v8

    neg-int v5, v10

    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ˊʻ:I

    invoke-virtual {v0, v1}, Lˋˋ/ʻᵎ;->יـ(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2c

    if-eqz v21, :cond_2c

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual/range {v0 .. v5}, Landroidx/leanback/widget/GridLayoutManager;->ᴵٴ(Landroid/view/View;Landroid/view/View;ZII)V

    :cond_2c
    if-eqz v1, :cond_2d

    if-eqz v22, :cond_2d

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_1c

    :cond_2d
    if-nez v22, :cond_31

    iget-object v2, v0, Landroidx/leanback/widget/GridLayoutManager;->ﹳᐧ:Landroidx/leanback/widget/ᵔᵢ;

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_31

    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v2, v0, Landroidx/leanback/widget/GridLayoutManager;->ﹳᐧ:Landroidx/leanback/widget/ᵔᵢ;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    goto :goto_1b

    :cond_2e
    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v2

    const/4 v3, 0x0

    :goto_1a
    if-ge v3, v2, :cond_30

    invoke-virtual {v0, v3}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v13

    if-eqz v13, :cond_2f

    iget-object v2, v0, Landroidx/leanback/widget/GridLayoutManager;->ﹳᐧ:Landroidx/leanback/widget/ᵔᵢ;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    goto :goto_1b

    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_30
    :goto_1b
    if-eqz v21, :cond_31

    if-eqz v1, :cond_31

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_31

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual/range {v0 .. v5}, Landroidx/leanback/widget/GridLayoutManager;->ᴵٴ(Landroid/view/View;Landroid/view/View;ZII)V

    :cond_31
    :goto_1c
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->ˎʾ()V

    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->ᵢʻ()V

    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ˉـ:Landroidx/leanback/widget/ˉʿ;

    iget v2, v1, Landroidx/leanback/widget/ˉʿ;->ﾞᴵ:I

    if-ne v2, v7, :cond_2b

    iget v1, v1, Landroidx/leanback/widget/ˉʿ;->ᵎﹶ:I

    if-ne v1, v11, :cond_2b

    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->ᵢᐧ()V

    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->ʻʼ()V

    iget-boolean v1, v6, Lˋˋ/ᐧﹶ;->ٴﹶ:Z

    if-eqz v1, :cond_43

    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ᴵˊ:Lˋˋ/ʻˋ;

    iget-object v1, v1, Lˋˋ/ʻˋ;->ˈ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_32

    goto/16 :goto_29

    :cond_32
    iget-object v3, v0, Landroidx/leanback/widget/GridLayoutManager;->ᵢˏ:[I

    if-eqz v3, :cond_33

    array-length v4, v3

    if-le v2, v4, :cond_36

    :cond_33
    if-nez v3, :cond_34

    const/16 v3, 0x10

    goto :goto_1d

    :cond_34
    array-length v3, v3

    :goto_1d
    if-ge v3, v2, :cond_35

    shl-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_35
    new-array v3, v3, [I

    iput-object v3, v0, Landroidx/leanback/widget/GridLayoutManager;->ᵢˏ:[I

    :cond_36
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1e
    if-ge v3, v2, :cond_38

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lˋˋ/ʼـ;

    invoke-virtual {v5}, Lˋˋ/ʼـ;->ⁱˊ()I

    move-result v5

    if-ltz v5, :cond_37

    iget-object v6, v0, Landroidx/leanback/widget/GridLayoutManager;->ᵢˏ:[I

    add-int/lit8 v7, v4, 0x1

    aput v5, v6, v4

    move v4, v7

    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_38
    if-lez v4, :cond_42

    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ᵢˏ:[I

    const/4 v3, 0x0

    invoke-static {v1, v3, v4}, Ljava/util/Arrays;->sort([III)V

    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ˉـ:Landroidx/leanback/widget/ˉʿ;

    iget-object v2, v0, Landroidx/leanback/widget/GridLayoutManager;->ᵢˏ:[I

    iget-object v5, v1, Landroidx/leanback/widget/ˉʿ;->ﹳٴ:[Ljava/lang/Object;

    iget v6, v1, Landroidx/leanback/widget/ˉʿ;->ᵎﹶ:I

    if-ltz v6, :cond_39

    invoke-static {v2, v3, v4, v6}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v7

    goto :goto_1f

    :cond_39
    const/4 v7, 0x0

    :goto_1f
    if-gez v7, :cond_3d

    neg-int v3, v7

    const/16 v18, 0x1

    add-int/lit8 v3, v3, -0x1

    iget-boolean v7, v1, Landroidx/leanback/widget/ˉʿ;->ʽ:Z

    if-eqz v7, :cond_3a

    iget-object v7, v1, Landroidx/leanback/widget/ˉʿ;->ⁱˊ:Landroidx/leanback/widget/ˉˆ;

    invoke-virtual {v7, v6}, Landroidx/leanback/widget/ˉˆ;->יـ(I)I

    move-result v7

    iget-object v8, v1, Landroidx/leanback/widget/ˉʿ;->ⁱˊ:Landroidx/leanback/widget/ˉˆ;

    invoke-virtual {v8, v6}, Landroidx/leanback/widget/ˉˆ;->ʽﹳ(I)I

    move-result v6

    sub-int/2addr v7, v6

    iget v6, v1, Landroidx/leanback/widget/ˉʿ;->ˈ:I

    sub-int/2addr v7, v6

    goto :goto_20

    :cond_3a
    iget-object v7, v1, Landroidx/leanback/widget/ˉʿ;->ⁱˊ:Landroidx/leanback/widget/ˉˆ;

    invoke-virtual {v7, v6}, Landroidx/leanback/widget/ˉˆ;->יـ(I)I

    move-result v7

    iget-object v8, v1, Landroidx/leanback/widget/ˉʿ;->ⁱˊ:Landroidx/leanback/widget/ˉˆ;

    invoke-virtual {v8, v6}, Landroidx/leanback/widget/ˉˆ;->ʽﹳ(I)I

    move-result v6

    add-int/2addr v6, v7

    iget v7, v1, Landroidx/leanback/widget/ˉʿ;->ˈ:I

    add-int/2addr v7, v6

    :goto_20
    move/from16 v30, v7

    :goto_21
    if-ge v3, v4, :cond_3d

    aget v6, v2, v3

    invoke-virtual {v9, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    if-gez v7, :cond_3b

    const/16 v29, 0x0

    goto :goto_22

    :cond_3b
    move/from16 v29, v7

    :goto_22
    iget-object v7, v1, Landroidx/leanback/widget/ˉʿ;->ⁱˊ:Landroidx/leanback/widget/ˉˆ;

    const/4 v8, 0x1

    invoke-virtual {v7, v6, v8, v5, v8}, Landroidx/leanback/widget/ˉˆ;->ﾞʻ(IZ[Ljava/lang/Object;Z)I

    move-result v28

    iget-object v7, v1, Landroidx/leanback/widget/ˉʿ;->ⁱˊ:Landroidx/leanback/widget/ˉˆ;

    const/16 v20, 0x0

    aget-object v26, v5, v20

    move/from16 v27, v6

    move-object/from16 v25, v7

    invoke-virtual/range {v25 .. v30}, Landroidx/leanback/widget/ˉˆ;->ˆʾ(Ljava/lang/Object;IIII)V

    iget-boolean v6, v1, Landroidx/leanback/widget/ˉʿ;->ʽ:Z

    if-eqz v6, :cond_3c

    sub-int v30, v30, v28

    iget v6, v1, Landroidx/leanback/widget/ˉʿ;->ˈ:I

    sub-int v30, v30, v6

    goto :goto_23

    :cond_3c
    add-int v30, v30, v28

    iget v6, v1, Landroidx/leanback/widget/ˉʿ;->ˈ:I

    add-int v30, v30, v6

    :goto_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_3d
    iget v3, v1, Landroidx/leanback/widget/ˉʿ;->ﾞᴵ:I

    if-ltz v3, :cond_3e

    const/4 v6, 0x0

    invoke-static {v2, v6, v4, v3}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v4

    goto :goto_24

    :cond_3e
    const/4 v4, 0x0

    :goto_24
    if-gez v4, :cond_42

    neg-int v4, v4

    add-int/lit8 v4, v4, -0x2

    iget-boolean v6, v1, Landroidx/leanback/widget/ˉʿ;->ʽ:Z

    if-eqz v6, :cond_3f

    iget-object v6, v1, Landroidx/leanback/widget/ˉʿ;->ⁱˊ:Landroidx/leanback/widget/ˉˆ;

    invoke-virtual {v6, v3}, Landroidx/leanback/widget/ˉˆ;->יـ(I)I

    move-result v3

    goto :goto_25

    :cond_3f
    iget-object v6, v1, Landroidx/leanback/widget/ˉʿ;->ⁱˊ:Landroidx/leanback/widget/ˉˆ;

    invoke-virtual {v6, v3}, Landroidx/leanback/widget/ˉˆ;->יـ(I)I

    move-result v3

    :goto_25
    if-ltz v4, :cond_42

    aget v6, v2, v4

    invoke-virtual {v9, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    if-gez v7, :cond_40

    const/16 v29, 0x0

    goto :goto_26

    :cond_40
    move/from16 v29, v7

    :goto_26
    iget-object v7, v1, Landroidx/leanback/widget/ˉʿ;->ⁱˊ:Landroidx/leanback/widget/ˉˆ;

    const/4 v8, 0x1

    const/4 v10, 0x0

    invoke-virtual {v7, v6, v10, v5, v8}, Landroidx/leanback/widget/ˉˆ;->ﾞʻ(IZ[Ljava/lang/Object;Z)I

    move-result v28

    iget-boolean v7, v1, Landroidx/leanback/widget/ˉʿ;->ʽ:Z

    if-eqz v7, :cond_41

    iget v7, v1, Landroidx/leanback/widget/ˉʿ;->ˈ:I

    add-int/2addr v3, v7

    add-int v3, v3, v28

    :goto_27
    move/from16 v30, v3

    goto :goto_28

    :cond_41
    iget v7, v1, Landroidx/leanback/widget/ˉʿ;->ˈ:I

    sub-int/2addr v3, v7

    sub-int v3, v3, v28

    goto :goto_27

    :goto_28
    iget-object v3, v1, Landroidx/leanback/widget/ˉʿ;->ⁱˊ:Landroidx/leanback/widget/ˉˆ;

    const/16 v20, 0x0

    aget-object v26, v5, v20

    move-object/from16 v25, v3

    move/from16 v27, v6

    invoke-virtual/range {v25 .. v30}, Landroidx/leanback/widget/ˉˆ;->ˆʾ(Ljava/lang/Object;IIII)V

    add-int/lit8 v4, v4, -0x1

    move/from16 v3, v30

    goto :goto_25

    :cond_42
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->clear()V

    :cond_43
    :goto_29
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    and-int/lit16 v2, v1, 0x400

    if-eqz v2, :cond_44

    and-int/lit16 v1, v1, -0x401

    iput v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    goto :goto_2a

    :cond_44
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->ˎᵎ()V

    :goto_2a
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_46

    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ˊʻ:I

    if-ne v1, v12, :cond_45

    iget v2, v0, Landroidx/leanback/widget/GridLayoutManager;->ٴᵢ:I

    move/from16 v3, v24

    if-ne v2, v3, :cond_45

    invoke-virtual {v0, v1}, Lˋˋ/ʻᵎ;->יـ(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v2, v23

    if-ne v1, v2, :cond_45

    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_46

    :cond_45
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->ˑˆ()V

    goto :goto_2b

    :cond_46
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    and-int/lit8 v1, v1, 0x14

    const/16 v4, 0x10

    if-ne v1, v4, :cond_47

    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->ˑˆ()V

    :cond_47
    :goto_2b
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->ˎˉ()V

    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_4b

    iget v2, v0, Landroidx/leanback/widget/GridLayoutManager;->יـ:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_48

    iget v1, v0, Lˋˋ/ʻᵎ;->ˉˆ:I

    neg-int v1, v1

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v2

    if-lez v2, :cond_4a

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-gez v2, :cond_4a

    :goto_2c
    add-int/2addr v1, v2

    goto :goto_2d

    :cond_48
    and-int v1, v1, v19

    if-eqz v1, :cond_49

    iget v1, v0, Lˋˋ/ʻᵎ;->ᵔʾ:I

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v2

    if-lez v2, :cond_4a

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    if-le v2, v1, :cond_4a

    move v1, v2

    goto :goto_2d

    :cond_49
    const/4 v7, 0x0

    iget v1, v0, Lˋˋ/ʻᵎ;->ᵔʾ:I

    neg-int v1, v1

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v2

    if-lez v2, :cond_4a

    invoke-virtual {v0, v7}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    if-gez v2, :cond_4a

    goto :goto_2c

    :cond_4a
    :goto_2d
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/GridLayoutManager;->ˆʻ(I)I

    :cond_4b
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    and-int/lit8 v1, v1, -0x4

    iput v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->ˆˑ()V

    return-void
.end method

.method public final ᐧˎ(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final ᐧˏ()V
    .locals 3

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ʿᵢ:Lˏˆ/ﹳٴ;

    iget-object v0, v0, Lˏˆ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v0, Landroidx/leanback/widget/ʽⁱ;

    iget v1, v0, Landroidx/leanback/widget/ʽⁱ;->ˆʾ:I

    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->ᵔי:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->ˊˊ()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v1, v2, v1, v2}, Landroidx/leanback/widget/ʽⁱ;->ʽ(IIII)V

    return-void
.end method

.method public final ᐧﹶ(Landroid/os/Parcelable;)V
    .locals 5

    .prologue
    instance-of v0, p1, Landroidx/leanback/widget/ʽﹳ;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Landroidx/leanback/widget/ʽﹳ;

    iget v0, p1, Landroidx/leanback/widget/ʽﹳ;->ʾˋ:I

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ˊʻ:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ٴʼ:I

    iget-object p1, p1, Landroidx/leanback/widget/ʽﹳ;->ᴵˊ:Landroid/os/Bundle;

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ᴵʼ:Landroidx/leanback/widget/יﹳ;

    iget-object v1, v0, Landroidx/leanback/widget/יﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lˋˋ/ـˊ;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lˋˋ/ـˊ;->ˉˆ(I)V

    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Landroidx/leanback/widget/יﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v3, Lˋˋ/ـˊ;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lˋˋ/ـˊ;->ﾞʻ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ـˊ()V

    return-void
.end method

.method public final ᴵˊ(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lˋˋ/ʻᵎ;->ᴵˊ(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/ﹳᐧ;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroidx/leanback/widget/ﹳᐧ;->ˑﹳ:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroidx/leanback/widget/ﹳᐧ;->ﾞᴵ:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->top:I

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroidx/leanback/widget/ﹳᐧ;->ᵎﹶ:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->right:I

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroidx/leanback/widget/ﹳᐧ;->ᵔᵢ:I

    sub-int/2addr v0, p1

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public final ᴵٴ(Landroid/view/View;Landroid/view/View;ZII)V
    .locals 6

    .prologue
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroidx/leanback/widget/GridLayoutManager;->ﹳᵢ(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, p2}, Landroidx/leanback/widget/GridLayoutManager;->ˊﾞ(Landroid/view/View;Landroid/view/View;)I

    move-result v1

    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->ˊʻ:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v2, :cond_1

    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->ٴᵢ:I

    if-eq v1, v2, :cond_3

    :cond_1
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ˊʻ:I

    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->ٴᵢ:I

    iput v3, p0, Landroidx/leanback/widget/GridLayoutManager;->ٴʼ:I

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    and-int/lit8 v0, v0, 0x3

    if-eq v0, v4, :cond_2

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->ˑˆ()V

    :cond_2
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ﹳᐧ:Landroidx/leanback/widget/ᵔᵢ;

    invoke-virtual {v0}, Landroidx/leanback/widget/ᵔᵢ;->ˋᵔ()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ﹳᐧ:Landroidx/leanback/widget/ᵔᵢ;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_3
    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ﹳᐧ:Landroidx/leanback/widget/ᵔᵢ;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_5
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-nez v0, :cond_6

    if-eqz p3, :cond_6

    goto :goto_0

    :cond_6
    sget-object v0, Landroidx/leanback/widget/GridLayoutManager;->ˈˏ:[I

    invoke-virtual {p0, p1, p2, v0}, Landroidx/leanback/widget/GridLayoutManager;->ﾞˏ(Landroid/view/View;Landroid/view/View;[I)Z

    move-result p1

    if-nez p1, :cond_8

    if-nez p4, :cond_8

    if-eqz p5, :cond_7

    goto :goto_1

    :cond_7
    :goto_0
    return-void

    :cond_8
    :goto_1
    aget p1, v0, v3

    add-int/2addr p1, p4

    aget p2, v0, v4

    add-int/2addr p2, p5

    iget p4, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    and-int/lit8 p4, p4, 0x3

    if-ne p4, v4, :cond_9

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->ˆʻ(I)I

    invoke-virtual {p0, p2}, Landroidx/leanback/widget/GridLayoutManager;->ˉʽ(I)I

    return-void

    :cond_9
    iget p4, p0, Landroidx/leanback/widget/GridLayoutManager;->יـ:I

    if-nez p4, :cond_a

    goto :goto_2

    :cond_a
    move v5, p2

    move p2, p1

    move p1, v5

    :goto_2
    if-eqz p3, :cond_b

    iget-object p3, p0, Landroidx/leanback/widget/GridLayoutManager;->ﹳᐧ:Landroidx/leanback/widget/ᵔᵢ;

    invoke-virtual {p3, p1, p2, v3}, Landroidx/recyclerview/widget/RecyclerView;->ٴﹳ(IIZ)V

    return-void

    :cond_b
    iget-object p3, p0, Landroidx/leanback/widget/GridLayoutManager;->ﹳᐧ:Landroidx/leanback/widget/ᵔᵢ;

    invoke-virtual {p3, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->ˎˉ()V

    return-void
.end method

.method public final ᵎʻ(Lˋˋ/ᐧﹶ;)V
    .locals 0

    return-void
.end method

.method public final ᵎﹶ(Lˋˋ/ˊᵔ;)Z
    .locals 0

    instance-of p1, p1, Landroidx/leanback/widget/ﹳᐧ;

    return p1
.end method

.method public final ᵔⁱ(I)I
    .locals 1

    .prologue
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ᵔٴ:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ˈʿ:[I

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    aget p1, v0, p1

    return p1
.end method

.method public final ᵢʻ()V
    .locals 3

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ˉـ:Landroidx/leanback/widget/ˉʿ;

    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->ᐧﾞ:I

    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->ᐧᴵ:I

    add-int/2addr v1, v2

    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->ʾᵎ:I

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->ᐧᴵ:I

    neg-int v1, v1

    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->ʾᵎ:I

    sub-int/2addr v1, v2

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/leanback/widget/ˉʿ;->ˉʿ(IZ)Z

    return-void
.end method

.method public final ᵢˏ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I
    .locals 2

    .prologue
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->יـ:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ˉـ:Landroidx/leanback/widget/ˉʿ;

    if-eqz v0, :cond_0

    iget p1, v0, Landroidx/leanback/widget/ˉʿ;->ˑﹳ:I

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lˋˋ/ʻᵎ;->ᵢˏ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I

    move-result p1

    return p1
.end method

.method public final ᵢᐧ()V
    .locals 6

    .prologue
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    const v1, 0x10040

    and-int/2addr v1, v0

    const/high16 v2, 0x10000

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->ˉـ:Landroidx/leanback/widget/ˉʿ;

    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->ˊʻ:I

    const/high16 v3, 0x40000

    and-int/2addr v0, v3

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ᐧﾞ:I

    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->ᐧᴵ:I

    add-int/2addr v0, v3

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ᐧᴵ:I

    neg-int v0, v0

    :goto_0
    iget v3, v1, Landroidx/leanback/widget/ˉʿ;->ᵎﹶ:I

    iget v4, v1, Landroidx/leanback/widget/ˉʿ;->ﾞᴵ:I

    if-lt v3, v4, :cond_2

    if-ge v4, v2, :cond_2

    iget-object v3, v1, Landroidx/leanback/widget/ˉʿ;->ⁱˊ:Landroidx/leanback/widget/ˉˆ;

    invoke-virtual {v3, v4}, Landroidx/leanback/widget/ˉˆ;->ʽﹳ(I)I

    move-result v3

    iget-boolean v4, v1, Landroidx/leanback/widget/ˉʿ;->ʽ:Z

    if-nez v4, :cond_1

    iget-object v4, v1, Landroidx/leanback/widget/ˉʿ;->ⁱˊ:Landroidx/leanback/widget/ˉˆ;

    iget v5, v1, Landroidx/leanback/widget/ˉʿ;->ﾞᴵ:I

    invoke-virtual {v4, v5}, Landroidx/leanback/widget/ˉˆ;->יـ(I)I

    move-result v4

    add-int/2addr v4, v3

    if-gt v4, v0, :cond_2

    goto :goto_1

    :cond_1
    iget-object v4, v1, Landroidx/leanback/widget/ˉʿ;->ⁱˊ:Landroidx/leanback/widget/ˉˆ;

    iget v5, v1, Landroidx/leanback/widget/ˉʿ;->ﾞᴵ:I

    invoke-virtual {v4, v5}, Landroidx/leanback/widget/ˉˆ;->יـ(I)I

    move-result v4

    sub-int/2addr v4, v3

    if-lt v4, v0, :cond_2

    :goto_1
    iget-object v3, v1, Landroidx/leanback/widget/ˉʿ;->ⁱˊ:Landroidx/leanback/widget/ˉˆ;

    iget v4, v1, Landroidx/leanback/widget/ˉʿ;->ﾞᴵ:I

    invoke-virtual {v3, v4}, Landroidx/leanback/widget/ˉˆ;->ʼʼ(I)V

    iget v3, v1, Landroidx/leanback/widget/ˉʿ;->ﾞᴵ:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Landroidx/leanback/widget/ˉʿ;->ﾞᴵ:I

    goto :goto_0

    :cond_2
    iget v0, v1, Landroidx/leanback/widget/ˉʿ;->ᵎﹶ:I

    iget v2, v1, Landroidx/leanback/widget/ˉʿ;->ﾞᴵ:I

    if-ge v0, v2, :cond_3

    const/4 v0, -0x1

    iput v0, v1, Landroidx/leanback/widget/ˉʿ;->ᵎﹶ:I

    iput v0, v1, Landroidx/leanback/widget/ˉʿ;->ﾞᴵ:I

    :cond_3
    return-void
.end method

.method public final ⁱʾ()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/ﹳᐧ;

    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->ˉـ:Landroidx/leanback/widget/ˉʿ;

    iget v1, v1, Landroidx/leanback/widget/ˉʿ;->ﾞᴵ:I

    iget-object v0, v0, Lˋˋ/ˊᵔ;->ﹳٴ:Lˋˋ/ʼـ;

    invoke-virtual {v0}, Lˋˋ/ʼـ;->ˈ()I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->ـˆ:I

    return-void

    :cond_0
    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->ـˆ:I

    return-void
.end method

.method public final ⁱי(ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I
    .locals 2

    .prologue
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->ˉـ:Landroidx/leanback/widget/ˉʿ;

    if-eqz v1, :cond_1

    and-int/lit8 v0, v0, -0x4

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    invoke-virtual {p0, p2, p3}, Landroidx/leanback/widget/GridLayoutManager;->ﾞˊ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)V

    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->יـ:I

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->ˆʻ(I)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->ˉʽ(I)I

    move-result p1

    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->ˆˑ()V

    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    and-int/lit8 p2, p2, -0x4

    iput p2, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final ﹳⁱ(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/leanback/widget/GridLayoutManager;->ˏʻ(IZ)V

    return-void
.end method

.method public final ﹳﹳ(II)V
    .locals 6

    .prologue
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ˊʻ:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->ˉـ:Landroidx/leanback/widget/ˉʿ;

    if-eqz v2, :cond_1

    iget v2, v2, Landroidx/leanback/widget/ˉʿ;->ﾞᴵ:I

    if-ltz v2, :cond_1

    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->ٴʼ:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_1

    add-int v4, v0, v2

    if-gt p1, v4, :cond_1

    add-int v5, p1, p2

    if-le v5, v4, :cond_0

    sub-int/2addr p1, v4

    add-int/2addr p1, v2

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->ˊʻ:I

    iput v3, p0, Landroidx/leanback/widget/GridLayoutManager;->ٴʼ:I

    goto :goto_0

    :cond_0
    sub-int/2addr v2, p2

    iput v2, p0, Landroidx/leanback/widget/GridLayoutManager;->ٴʼ:I

    :cond_1
    :goto_0
    iget-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->ᴵʼ:Landroidx/leanback/widget/יﹳ;

    iget-object p1, p1, Landroidx/leanback/widget/יﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Lˋˋ/ـˊ;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Lˋˋ/ـˊ;->ˉˆ(I)V

    :cond_2
    return-void
.end method

.method public final ﹶʽ(I)I
    .locals 6

    .prologue
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->יـ:I

    const/16 v1, 0x82

    const/16 v2, 0x42

    const/16 v3, 0x21

    const/4 v4, 0x1

    const/16 v5, 0x11

    if-nez v0, :cond_2

    const/high16 v0, 0x40000

    if-eq p1, v5, :cond_1

    if-eq p1, v3, :cond_7

    if-eq p1, v2, :cond_0

    if-eq p1, v1, :cond_8

    goto :goto_3

    :cond_0
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    and-int/2addr p1, v0

    if-nez p1, :cond_5

    goto :goto_0

    :cond_1
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    and-int/2addr p1, v0

    if-nez p1, :cond_3

    goto :goto_1

    :cond_2
    if-ne v0, v4, :cond_9

    const/high16 v0, 0x80000

    if-eq p1, v5, :cond_6

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_3

    goto :goto_3

    :cond_3
    :goto_0
    return v4

    :cond_4
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    and-int/2addr p1, v0

    if-nez p1, :cond_7

    goto :goto_2

    :cond_5
    :goto_1
    const/4 p1, 0x0

    return p1

    :cond_6
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    and-int/2addr p1, v0

    if-nez p1, :cond_8

    :cond_7
    const/4 p1, 0x2

    return p1

    :cond_8
    :goto_2
    const/4 p1, 0x3

    return p1

    :cond_9
    :goto_3
    return v5
.end method

.method public final ﹶᐧ(II)V
    .locals 4

    .prologue
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ˊʻ:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->ٴʼ:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_2

    add-int/2addr v0, v2

    if-gt p1, v0, :cond_0

    add-int/lit8 v3, p1, 0x1

    if-ge v0, v3, :cond_0

    sub-int/2addr p2, p1

    add-int/2addr p2, v2

    iput p2, p0, Landroidx/leanback/widget/GridLayoutManager;->ٴʼ:I

    goto :goto_0

    :cond_0
    if-ge p1, v0, :cond_1

    add-int/lit8 v3, v0, -0x1

    if-le p2, v3, :cond_1

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroidx/leanback/widget/GridLayoutManager;->ٴʼ:I

    goto :goto_0

    :cond_1
    if-le p1, v0, :cond_2

    if-ge p2, v0, :cond_2

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/leanback/widget/GridLayoutManager;->ٴʼ:I

    :cond_2
    :goto_0
    iget-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->ᴵʼ:Landroidx/leanback/widget/יﹳ;

    iget-object p1, p1, Landroidx/leanback/widget/יﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Lˋˋ/ـˊ;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Lˋˋ/ـˊ;->ˉˆ(I)V

    :cond_3
    return-void
.end method

.method public final ﾞˊ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)V
    .locals 1

    .prologue
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽﹳ:I

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->ᴵˊ:Lˋˋ/ʻˋ;

    iput-object p2, p0, Landroidx/leanback/widget/GridLayoutManager;->ʻٴ:Lˋˋ/ᐧﹶ;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->ـˆ:I

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->ʾᵎ:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ʽﹳ:I

    return-void
.end method

.method public final ﾞˋ(Lˋˋ/ˆﾞ;)V
    .locals 2

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ˉٴ:Landroidx/leanback/widget/ᵔﹳ;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/leanback/widget/ᵔﹳ;->ᵔﹳ:Z

    :cond_0
    invoke-super {p0, p1}, Lˋˋ/ʻᵎ;->ﾞˋ(Lˋˋ/ˆﾞ;)V

    iget-boolean v0, p1, Lˋˋ/ˆﾞ;->ˑﹳ:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    instance-of v0, p1, Landroidx/leanback/widget/ᵔﹳ;

    if-eqz v0, :cond_2

    check-cast p1, Landroidx/leanback/widget/ᵔﹳ;

    iput-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->ˉٴ:Landroidx/leanback/widget/ᵔﹳ;

    instance-of v0, p1, Landroidx/leanback/widget/יـ;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/leanback/widget/יـ;

    iput-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->ᵎⁱ:Landroidx/leanback/widget/יـ;

    return-void

    :cond_1
    iput-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->ᵎⁱ:Landroidx/leanback/widget/יـ;

    return-void

    :cond_2
    iput-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->ˉٴ:Landroidx/leanback/widget/ᵔﹳ;

    iput-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->ᵎⁱ:Landroidx/leanback/widget/יـ;

    return-void
.end method

.method public final ﾞˏ(Landroid/view/View;Landroid/view/View;[I)Z
    .locals 12

    .prologue
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ʿ:I

    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->ʿᵢ:Lˏˆ/ﹳٴ;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_5

    iget-object v0, v1, Lˏˆ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Landroidx/leanback/widget/ʽⁱ;

    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->יـ:I

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/leanback/widget/ﹳᐧ;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v6, v3, Landroidx/leanback/widget/ﹳᐧ;->ˑﹳ:I

    add-int/2addr v5, v6

    iget v3, v3, Landroidx/leanback/widget/ﹳᐧ;->ʼˎ:I

    :goto_0
    add-int/2addr v5, v3

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/leanback/widget/ﹳᐧ;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    iget v6, v3, Landroidx/leanback/widget/ﹳᐧ;->ﾞᴵ:I

    add-int/2addr v5, v6

    iget v3, v3, Landroidx/leanback/widget/ﹳᐧ;->ˆʾ:I

    goto :goto_0

    :goto_1
    invoke-virtual {v0, v5}, Landroidx/leanback/widget/ʽⁱ;->ⁱˊ(I)I

    move-result v0

    if-eqz p2, :cond_1

    invoke-static {p1, p2}, Landroidx/leanback/widget/GridLayoutManager;->ˊﾞ(Landroid/view/View;Landroid/view/View;)I

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/leanback/widget/ﹳᐧ;

    iget-object v3, v3, Landroidx/leanback/widget/ﹳᐧ;->ٴﹶ:[I

    aget p2, v3, p2

    aget v3, v3, v2

    sub-int/2addr p2, v3

    add-int/2addr v0, p2

    :cond_1
    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->יـ:I

    if-nez p2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/ﹳᐧ;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iget v3, p2, Landroidx/leanback/widget/ﹳᐧ;->ﾞᴵ:I

    add-int/2addr p1, v3

    iget p2, p2, Landroidx/leanback/widget/ﹳᐧ;->ˆʾ:I

    :goto_2
    add-int/2addr p1, p2

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/ﹳᐧ;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    iget v3, p2, Landroidx/leanback/widget/ﹳᐧ;->ˑﹳ:I

    add-int/2addr p1, v3

    iget p2, p2, Landroidx/leanback/widget/ﹳᐧ;->ʼˎ:I

    goto :goto_2

    :goto_3
    iget-object p2, v1, Lˏˆ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    check-cast p2, Landroidx/leanback/widget/ʽⁱ;

    invoke-virtual {p2, p1}, Landroidx/leanback/widget/ʽⁱ;->ⁱˊ(I)I

    move-result p1

    if-nez v0, :cond_4

    if-eqz p1, :cond_3

    goto :goto_4

    :cond_3
    aput v2, p3, v2

    aput v2, p3, v4

    return v2

    :cond_4
    :goto_4
    aput v0, p3, v2

    aput p1, p3, v4

    return v4

    :cond_5
    invoke-static {p1}, Landroidx/leanback/widget/GridLayoutManager;->ﹳᵢ(Landroid/view/View;)I

    move-result p2

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ˏי:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v0, p1}, Lʼﾞ/ᵎⁱ;->ᵎﹶ(Landroid/view/View;)I

    move-result v0

    iget-object v5, p0, Landroidx/leanback/widget/GridLayoutManager;->ˏי:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v5, p1}, Lʼﾞ/ᵎⁱ;->ˈ(Landroid/view/View;)I

    move-result v5

    iget-object v6, v1, Lˏˆ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v6, Landroidx/leanback/widget/ʽⁱ;

    iget v7, v6, Landroidx/leanback/widget/ʽⁱ;->ˆʾ:I

    iget v8, v6, Landroidx/leanback/widget/ʽⁱ;->ʼˎ:I

    sub-int/2addr v8, v7

    iget v6, v6, Landroidx/leanback/widget/ʽⁱ;->ٴﹶ:I

    sub-int/2addr v8, v6

    iget-object v6, p0, Landroidx/leanback/widget/GridLayoutManager;->ˉـ:Landroidx/leanback/widget/ˉʿ;

    invoke-virtual {v6, p2}, Landroidx/leanback/widget/ˉʿ;->ٴﹶ(I)Landroidx/leanback/widget/ﾞʻ;

    move-result-object v6

    if-nez v6, :cond_6

    const/4 v6, -0x1

    goto :goto_5

    :cond_6
    iget v6, v6, Landroidx/leanback/widget/ﾞʻ;->ᴵˊ:I

    :goto_5
    const/4 v9, 0x0

    if-ge v0, v7, :cond_d

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ʿ:I

    if-ne v0, v3, :cond_b

    move-object v0, p1

    :goto_6
    iget-object v10, p0, Landroidx/leanback/widget/GridLayoutManager;->ˉـ:Landroidx/leanback/widget/ˉʿ;

    iget-boolean v11, v10, Landroidx/leanback/widget/ˉʿ;->ʽ:Z

    if-eqz v11, :cond_7

    const/high16 v11, -0x80000000

    goto :goto_7

    :cond_7
    const v11, 0x7fffffff

    :goto_7
    invoke-virtual {v10, v11, v4}, Landroidx/leanback/widget/ˉʿ;->ˉʿ(IZ)Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ˉـ:Landroidx/leanback/widget/ˉʿ;

    iget v10, v0, Landroidx/leanback/widget/ˉʿ;->ﾞᴵ:I

    invoke-virtual {v0, v10, p2}, Landroidx/leanback/widget/ˉʿ;->ˆʾ(II)[Lˋˋ/ʽʽ;

    move-result-object v0

    aget-object v0, v0, v6

    invoke-virtual {v0, v2}, Lˋˋ/ʽʽ;->ˈ(I)I

    move-result v10

    invoke-virtual {p0, v10}, Lˋˋ/ʻᵎ;->יـ(I)Landroid/view/View;

    move-result-object v10

    iget-object v11, p0, Landroidx/leanback/widget/GridLayoutManager;->ˏי:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v11, v10}, Lʼﾞ/ᵎⁱ;->ᵎﹶ(Landroid/view/View;)I

    move-result v11

    sub-int v11, v5, v11

    if-le v11, v8, :cond_9

    invoke-virtual {v0}, Lˋˋ/ʽʽ;->ˑﹳ()I

    move-result p2

    if-le p2, v3, :cond_8

    invoke-virtual {v0, v3}, Lˋˋ/ʽʽ;->ˈ(I)I

    move-result p2

    invoke-virtual {p0, p2}, Lˋˋ/ʻᵎ;->יـ(I)Landroid/view/View;

    move-result-object p2

    move-object v3, v9

    move-object v9, p2

    goto :goto_9

    :cond_8
    move-object v3, v9

    move-object v9, v10

    goto :goto_9

    :cond_9
    move-object v0, v10

    goto :goto_6

    :cond_a
    move-object v3, v9

    move-object v9, v0

    goto :goto_9

    :cond_b
    move-object v3, v9

    :cond_c
    move-object v9, p1

    goto :goto_9

    :cond_d
    add-int v10, v8, v7

    if-le v5, v10, :cond_11

    iget v5, p0, Landroidx/leanback/widget/GridLayoutManager;->ʿ:I

    if-ne v5, v3, :cond_10

    :cond_e
    iget-object v3, p0, Landroidx/leanback/widget/GridLayoutManager;->ˉـ:Landroidx/leanback/widget/ˉʿ;

    iget v5, v3, Landroidx/leanback/widget/ˉʿ;->ᵎﹶ:I

    invoke-virtual {v3, p2, v5}, Landroidx/leanback/widget/ˉʿ;->ˆʾ(II)[Lˋˋ/ʽʽ;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lˋˋ/ʽʽ;->ˑﹳ()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v3, v5}, Lˋˋ/ʽʽ;->ˈ(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lˋˋ/ʻᵎ;->יـ(I)Landroid/view/View;

    move-result-object v3

    iget-object v5, p0, Landroidx/leanback/widget/GridLayoutManager;->ˏי:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v5, v3}, Lʼﾞ/ᵎⁱ;->ˈ(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v5, v0

    if-le v5, v8, :cond_f

    move-object v3, v9

    goto :goto_8

    :cond_f
    iget-object v5, p0, Landroidx/leanback/widget/GridLayoutManager;->ˉـ:Landroidx/leanback/widget/ˉʿ;

    invoke-virtual {v5}, Landroidx/leanback/widget/ˉʿ;->ﹳٴ()Z

    move-result v5

    if-nez v5, :cond_e

    :goto_8
    if-eqz v3, :cond_c

    goto :goto_9

    :cond_10
    move-object v3, p1

    goto :goto_9

    :cond_11
    move-object v3, v9

    :goto_9
    if-eqz v9, :cond_12

    iget-object p2, p0, Landroidx/leanback/widget/GridLayoutManager;->ˏי:Lʼﾞ/ᵎⁱ;

    invoke-virtual {p2, v9}, Lʼﾞ/ᵎⁱ;->ᵎﹶ(Landroid/view/View;)I

    move-result p2

    :goto_a
    sub-int/2addr p2, v7

    goto :goto_b

    :cond_12
    if-eqz v3, :cond_13

    iget-object p2, p0, Landroidx/leanback/widget/GridLayoutManager;->ˏי:Lʼﾞ/ᵎⁱ;

    invoke-virtual {p2, v3}, Lʼﾞ/ᵎⁱ;->ˈ(Landroid/view/View;)I

    move-result p2

    add-int/2addr v7, v8

    goto :goto_a

    :cond_13
    move p2, v2

    :goto_b
    if-eqz v9, :cond_14

    move-object p1, v9

    goto :goto_c

    :cond_14
    if-eqz v3, :cond_15

    move-object p1, v3

    :cond_15
    :goto_c
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->יـ:I

    if-nez v0, :cond_16

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/ﹳᐧ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iget v3, v0, Landroidx/leanback/widget/ﹳᐧ;->ﾞᴵ:I

    add-int/2addr p1, v3

    iget v0, v0, Landroidx/leanback/widget/ﹳᐧ;->ˆʾ:I

    :goto_d
    add-int/2addr p1, v0

    goto :goto_e

    :cond_16
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/ﹳᐧ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    iget v3, v0, Landroidx/leanback/widget/ﹳᐧ;->ˑﹳ:I

    add-int/2addr p1, v3

    iget v0, v0, Landroidx/leanback/widget/ﹳᐧ;->ʼˎ:I

    goto :goto_d

    :goto_e
    iget-object v0, v1, Lˏˆ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v0, Landroidx/leanback/widget/ʽⁱ;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/ʽⁱ;->ⁱˊ(I)I

    move-result p1

    if-nez p2, :cond_18

    if-eqz p1, :cond_17

    goto :goto_f

    :cond_17
    return v2

    :cond_18
    :goto_f
    aput p2, p3, v2

    aput p1, p3, v4

    return v4
.end method

.method public final ﾞᴵ()Z
    .locals 2

    .prologue
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->יـ:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->ˈⁱ:I

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method
