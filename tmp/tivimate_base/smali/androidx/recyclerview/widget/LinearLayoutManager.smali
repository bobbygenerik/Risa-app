.class public Landroidx/recyclerview/widget/LinearLayoutManager;
.super Lˋˋ/ʻᵎ;
.source "SourceFile"

# interfaces
.implements Lˋˋ/ʽᵔ;


# instance fields
.field public ʻٴ:Z

.field public ʼʼ:I

.field public ʼᐧ:I

.field public ʽʽ:I

.field public ʽﹳ:Z

.field public final ʾˋ:Lˋˋ/ˉٴ;

.field public ʾᵎ:I

.field public final ˈٴ:[I

.field public final ˏי:Z

.field public יـ:Z

.field public final ـˆ:Z

.field public final ᴵˊ:Lˋˋ/ᵎⁱ;

.field public ᵔﹳ:Lˋˋ/ٴʼ;

.field public ᵢˏ:Lˋˋ/ᵔי;

.field public ﹳᐧ:Lʼﾞ/ᵎⁱ;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .prologue
    invoke-direct {p0}, Lˋˋ/ʻᵎ;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʼᐧ:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ˏי:Z

    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʽﹳ:Z

    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʻٴ:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ـˆ:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʾᵎ:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʼʼ:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵢˏ:Lˋˋ/ᵔי;

    new-instance v2, Lˋˋ/ˉٴ;

    invoke-direct {v2}, Lˋˋ/ˉٴ;-><init>()V

    iput-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʾˋ:Lˋˋ/ˉٴ;

    new-instance v2, Lˋˋ/ᵎⁱ;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᴵˊ:Lˋˋ/ᵎⁱ;

    const/4 v2, 0x2

    iput v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʽʽ:I

    new-array v2, v2, [I

    iput-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ˈٴ:[I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->ˉʽ(I)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ʽ(Ljava/lang/String;)V

    iget-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ˏי:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ˏי:Z

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ـˊ()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lˋˋ/ʻᵎ;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʼᐧ:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ˏי:Z

    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʽﹳ:Z

    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʻٴ:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ـˆ:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʾᵎ:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʼʼ:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵢˏ:Lˋˋ/ᵔי;

    new-instance v1, Lˋˋ/ˉٴ;

    invoke-direct {v1}, Lˋˋ/ˉٴ;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʾˋ:Lˋˋ/ˉٴ;

    new-instance v1, Lˋˋ/ᵎⁱ;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᴵˊ:Lˋˋ/ᵎⁱ;

    const/4 v1, 0x2

    iput v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʽʽ:I

    new-array v1, v1, [I

    iput-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ˈٴ:[I

    invoke-static {p1, p2, p3, p4}, Lˋˋ/ʻᵎ;->ᵔٴ(Landroid/content/Context;Landroid/util/AttributeSet;II)Lˋˋ/ᴵʼ;

    move-result-object p1

    iget p2, p1, Lˋˋ/ᴵʼ;->ﹳٴ:I

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->ˉʽ(I)V

    iget-boolean p2, p1, Lˋˋ/ᴵʼ;->ʽ:Z

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ʽ(Ljava/lang/String;)V

    iget-boolean p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ˏי:Z

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ˏי:Z

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ـˊ()V

    :goto_0
    iget-boolean p1, p1, Lˋˋ/ᴵʼ;->ˈ:Z

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->יʿ(Z)V

    return-void
.end method


# virtual methods
.method public final ʻʼ(Lˋˋ/ʻˋ;Lˋˋ/ٴʼ;)V
    .locals 5

    .prologue
    iget-boolean v0, p2, Lˋˋ/ٴʼ;->ﹳٴ:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p2, Lˋˋ/ٴʼ;->ﾞʻ:Z

    if-eqz v0, :cond_0

    goto/16 :goto_8

    :cond_0
    iget v0, p2, Lˋˋ/ٴʼ;->ᵎﹶ:I

    iget v1, p2, Lˋˋ/ٴʼ;->ʼˎ:I

    iget p2, p2, Lˋˋ/ٴʼ;->ﾞᴵ:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne p2, v3, :cond_7

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result p2

    if-gez v0, :cond_1

    goto/16 :goto_8

    :cond_1
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v3}, Lʼﾞ/ᵎⁱ;->ᵔᵢ()I

    move-result v3

    sub-int/2addr v3, v0

    add-int/2addr v3, v1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʽﹳ:Z

    if-eqz v0, :cond_4

    move v0, v2

    :goto_0
    if-ge v0, p2, :cond_e

    invoke-virtual {p0, v0}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v4, v1}, Lʼﾞ/ᵎⁱ;->ᵎﹶ(Landroid/view/View;)I

    move-result v4

    if-lt v4, v3, :cond_3

    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v4, v1}, Lʼﾞ/ᵎⁱ;->ʼᐧ(Landroid/view/View;)I

    move-result v1

    if-ge v1, v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {p0, p1, v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵢᐧ(Lˋˋ/ʻˋ;II)V

    return-void

    :cond_4
    add-int/lit8 p2, p2, -0x1

    move v0, p2

    :goto_2
    if-ltz v0, :cond_e

    invoke-virtual {p0, v0}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v2, v1}, Lʼﾞ/ᵎⁱ;->ᵎﹶ(Landroid/view/View;)I

    move-result v2

    if-lt v2, v3, :cond_6

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v2, v1}, Lʼﾞ/ᵎⁱ;->ʼᐧ(Landroid/view/View;)I

    move-result v1

    if-ge v1, v3, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_6
    :goto_3
    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵢᐧ(Lˋˋ/ʻˋ;II)V

    return-void

    :cond_7
    if-gez v0, :cond_8

    goto :goto_8

    :cond_8
    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result p2

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʽﹳ:Z

    if-eqz v1, :cond_b

    add-int/lit8 p2, p2, -0x1

    move v1, p2

    :goto_4
    if-ltz v1, :cond_e

    invoke-virtual {p0, v1}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v3, v2}, Lʼﾞ/ᵎⁱ;->ˈ(Landroid/view/View;)I

    move-result v3

    if-gt v3, v0, :cond_a

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v3, v2}, Lʼﾞ/ᵎⁱ;->ˉˆ(Landroid/view/View;)I

    move-result v2

    if-le v2, v0, :cond_9

    goto :goto_5

    :cond_9
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_a
    :goto_5
    invoke-virtual {p0, p1, p2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵢᐧ(Lˋˋ/ʻˋ;II)V

    return-void

    :cond_b
    move v1, v2

    :goto_6
    if-ge v1, p2, :cond_e

    invoke-virtual {p0, v1}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v4, v3}, Lʼﾞ/ᵎⁱ;->ˈ(Landroid/view/View;)I

    move-result v4

    if-gt v4, v0, :cond_d

    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v4, v3}, Lʼﾞ/ᵎⁱ;->ˉˆ(Landroid/view/View;)I

    move-result v3

    if-le v3, v0, :cond_c

    goto :goto_7

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_d
    :goto_7
    invoke-virtual {p0, p1, v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵢᐧ(Lˋˋ/ʻˋ;II)V

    :cond_e
    :goto_8
    return-void
.end method

.method public final ʼˈ()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ˏי:Z

    return v0
.end method

.method public final ʼˎ(IILˋˋ/ᐧﹶ;Lˋˋ/ʽʽ;)V
    .locals 1

    .prologue
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʼᐧ:I

    if-nez v0, :cond_0

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
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹶʽ()V

    const/4 p2, 0x1

    if-lez p1, :cond_2

    move v0, p2

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->ᴵٴ(IIZLˋˋ/ᐧﹶ;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵔﹳ:Lˋˋ/ٴʼ;

    invoke-virtual {p0, p3, p1, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->ˑˆ(Lˋˋ/ᐧﹶ;Lˋˋ/ٴʼ;Lˋˋ/ʽʽ;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public ʼᐧ(Lˋˋ/ᐧﹶ;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵢˋ(Lˋˋ/ᐧﹶ;)I

    move-result p1

    return p1
.end method

.method public final ʽ(Ljava/lang/String;)V
    .locals 1

    .prologue
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵢˏ:Lˋˋ/ᵔי;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lˋˋ/ʻᵎ;->ʽ(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final ʽʾ(ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;Z)I
    .locals 1

    .prologue
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v0}, Lʼﾞ/ᵎⁱ;->ʼˎ()I

    move-result v0

    sub-int/2addr v0, p1

    if-lez v0, :cond_1

    neg-int v0, v0

    invoke-virtual {p0, v0, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->ˆʻ(ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I

    move-result p2

    neg-int p2, p2

    add-int/2addr p1, p2

    if-eqz p4, :cond_0

    iget-object p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {p3}, Lʼﾞ/ᵎⁱ;->ʼˎ()I

    move-result p3

    sub-int/2addr p3, p1

    if-lez p3, :cond_0

    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {p1, p3}, Lʼﾞ/ᵎⁱ;->ᵔﹳ(I)V

    add-int/2addr p3, p2

    return p3

    :cond_0
    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final ʿʽ()Z
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

.method public ʿـ(ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I
    .locals 2

    .prologue
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʼᐧ:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->ˆʻ(ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I

    move-result p1

    return p1
.end method

.method public final ˆʻ(ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I
    .locals 5

    .prologue
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹶʽ()V

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵔﹳ:Lˋˋ/ٴʼ;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lˋˋ/ٴʼ;->ﹳٴ:Z

    if-lez p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-virtual {p0, v0, v3, v2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->ᴵٴ(IIZLˋˋ/ᐧﹶ;)V

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵔﹳ:Lˋˋ/ٴʼ;

    iget v4, v2, Lˋˋ/ٴʼ;->ᵎﹶ:I

    invoke-virtual {p0, p2, v2, p3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵔⁱ(Lˋˋ/ʻˋ;Lˋˋ/ٴʼ;Lˋˋ/ᐧﹶ;Z)I

    move-result p2

    add-int/2addr p2, v4

    if-gez p2, :cond_2

    goto :goto_1

    :cond_2
    if-le v3, p2, :cond_3

    mul-int p1, v0, p2

    :cond_3
    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    neg-int p3, p1

    invoke-virtual {p2, p3}, Lʼﾞ/ᵎⁱ;->ᵔﹳ(I)V

    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵔﹳ:Lˋˋ/ٴʼ;

    iput p1, p2, Lˋˋ/ٴʼ;->ˆʾ:I

    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method public final ˆʾ(ILˋˋ/ʽʽ;)V
    .locals 5

    .prologue
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵢˏ:Lˋˋ/ᵔי;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v3, v0, Lˋˋ/ᵔי;->ʾˋ:I

    if-ltz v3, :cond_0

    iget-boolean v0, v0, Lˋˋ/ᵔי;->ʽʽ:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ﾞˊ()V

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʽﹳ:Z

    iget v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʾᵎ:I

    if-ne v3, v1, :cond_2

    if-eqz v0, :cond_1

    add-int/lit8 v3, p1, -0x1

    goto :goto_0

    :cond_1
    move v3, v2

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    :goto_1
    move v0, v2

    :goto_2
    iget v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʽʽ:I

    if-ge v0, v4, :cond_4

    if-ltz v3, :cond_4

    if-ge v3, p1, :cond_4

    invoke-virtual {p2, v3, v2}, Lˋˋ/ʽʽ;->ⁱˊ(II)V

    add-int/2addr v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public ˆˎ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;Lˋˋ/ˉٴ;I)V
    .locals 0

    return-void
.end method

.method public final ˆˑ(ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;Z)I
    .locals 1

    .prologue
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v0}, Lʼﾞ/ᵎⁱ;->ˉʿ()I

    move-result v0

    sub-int v0, p1, v0

    if-lez v0, :cond_1

    invoke-virtual {p0, v0, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->ˆʻ(ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I

    move-result p2

    neg-int p2, p2

    add-int/2addr p1, p2

    if-eqz p4, :cond_0

    iget-object p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {p3}, Lʼﾞ/ᵎⁱ;->ˉʿ()I

    move-result p3

    sub-int/2addr p1, p3

    if-lez p1, :cond_0

    iget-object p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    neg-int p4, p1

    invoke-virtual {p3, p4}, Lʼﾞ/ᵎⁱ;->ᵔﹳ(I)V

    sub-int/2addr p2, p1

    :cond_0
    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public ˆﹳ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;Lˋˋ/ٴʼ;Lˋˋ/ᵎⁱ;)V
    .locals 10

    .prologue
    invoke-virtual {p3, p1}, Lˋˋ/ٴʼ;->ⁱˊ(Lˋˋ/ʻˋ;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    iput-boolean p2, p4, Lˋˋ/ᵎⁱ;->ⁱˊ:Z

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lˋˋ/ˊᵔ;

    iget-object v1, p3, Lˋˋ/ٴʼ;->ٴﹶ:Ljava/util/List;

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʽﹳ:Z

    iget v4, p3, Lˋˋ/ٴʼ;->ﾞᴵ:I

    if-ne v4, v2, :cond_1

    move v4, p2

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    if-ne v1, v4, :cond_2

    invoke-virtual {p0, v2, p1, v3}, Lˋˋ/ʻᵎ;->ⁱˊ(ILandroid/view/View;Z)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v3, p1, v3}, Lˋˋ/ʻᵎ;->ⁱˊ(ILandroid/view/View;Z)V

    goto :goto_2

    :cond_3
    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʽﹳ:Z

    iget v4, p3, Lˋˋ/ٴʼ;->ﾞᴵ:I

    if-ne v4, v2, :cond_4

    move v4, p2

    goto :goto_1

    :cond_4
    move v4, v3

    :goto_1
    if-ne v1, v4, :cond_5

    invoke-virtual {p0, v2, p1, p2}, Lˋˋ/ʻᵎ;->ⁱˊ(ILandroid/view/View;Z)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v3, p1, p2}, Lˋˋ/ʻᵎ;->ⁱˊ(ILandroid/view/View;Z)V

    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lˋˋ/ˊᵔ;

    iget-object v3, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/RecyclerView;->ˈʿ(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v3

    iget v3, p0, Lˋˋ/ʻᵎ;->ᵔʾ:I

    iget v6, p0, Lˋˋ/ʻᵎ;->ﾞʻ:I

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ٴʼ()I

    move-result v7

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ᵎˊ()I

    move-result v8

    add-int/2addr v8, v7

    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v8, v7

    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v8, v7

    add-int/2addr v8, v4

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ˑﹳ()Z

    move-result v7

    invoke-static {v7, v3, v6, v8, v4}, Lˋˋ/ʻᵎ;->ʼʼ(ZIIII)I

    move-result v3

    iget v4, p0, Lˋˋ/ʻᵎ;->ˉˆ:I

    iget v6, p0, Lˋˋ/ʻᵎ;->ˉʿ:I

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ᵔי()I

    move-result v7

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ᵎⁱ()I

    move-result v8

    add-int/2addr v8, v7

    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v7

    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v8, v7

    add-int/2addr v8, v5

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ﾞᴵ()Z

    move-result v7

    invoke-static {v7, v4, v6, v8, v5}, Lˋˋ/ʻᵎ;->ʼʼ(ZIIII)I

    move-result v4

    invoke-virtual {p0, p1, v3, v4, v1}, Lˋˋ/ʻᵎ;->ʽˑ(Landroid/view/View;IILˋˋ/ˊᵔ;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1, v3, v4}, Landroid/view/View;->measure(II)V

    :cond_6
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v1, p1}, Lʼﾞ/ᵎⁱ;->ˑﹳ(Landroid/view/View;)I

    move-result v1

    iput v1, p4, Lˋˋ/ᵎⁱ;->ﹳٴ:I

    iget v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʼᐧ:I

    if-ne v1, p2, :cond_9

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ʿʽ()Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p0, Lˋˋ/ʻᵎ;->ᵔʾ:I

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ᵎˊ()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v3, p1}, Lʼﾞ/ᵎⁱ;->ﾞᴵ(Landroid/view/View;)I

    move-result v3

    sub-int v3, v1, v3

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ٴʼ()I

    move-result v3

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v1, p1}, Lʼﾞ/ᵎⁱ;->ﾞᴵ(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v3

    :goto_3
    iget v4, p3, Lˋˋ/ٴʼ;->ﾞᴵ:I

    if-ne v4, v2, :cond_8

    iget p3, p3, Lˋˋ/ٴʼ;->ⁱˊ:I

    iget v2, p4, Lˋˋ/ᵎⁱ;->ﹳٴ:I

    sub-int v2, p3, v2

    goto :goto_4

    :cond_8
    iget v2, p3, Lˋˋ/ٴʼ;->ⁱˊ:I

    iget p3, p4, Lˋˋ/ᵎⁱ;->ﹳٴ:I

    add-int/2addr p3, v2

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ᵔי()I

    move-result v1

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v3, p1}, Lʼﾞ/ᵎⁱ;->ﾞᴵ(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v1

    iget v4, p3, Lˋˋ/ٴʼ;->ﾞᴵ:I

    if-ne v4, v2, :cond_a

    iget p3, p3, Lˋˋ/ٴʼ;->ⁱˊ:I

    iget v2, p4, Lˋˋ/ᵎⁱ;->ﹳٴ:I

    sub-int v2, p3, v2

    move v9, v1

    move v1, p3

    move p3, v3

    move v3, v2

    move v2, v9

    goto :goto_4

    :cond_a
    iget p3, p3, Lˋˋ/ٴʼ;->ⁱˊ:I

    iget v2, p4, Lˋˋ/ᵎⁱ;->ﹳٴ:I

    add-int/2addr v2, p3

    move v9, v3

    move v3, p3

    move p3, v9

    move v9, v2

    move v2, v1

    move v1, v9

    :goto_4
    invoke-static {p1, v3, v2, v1, p3}, Lˋˋ/ʻᵎ;->ﹳـ(Landroid/view/View;IIII)V

    iget-object p3, v0, Lˋˋ/ˊᵔ;->ﹳٴ:Lˋˋ/ʼـ;

    invoke-virtual {p3}, Lˋˋ/ʼـ;->ˆʾ()Z

    move-result p3

    if-nez p3, :cond_b

    iget-object p3, v0, Lˋˋ/ˊᵔ;->ﹳٴ:Lˋˋ/ʼـ;

    invoke-virtual {p3}, Lˋˋ/ʼـ;->ˉʿ()Z

    move-result p3

    if-eqz p3, :cond_c

    :cond_b
    iput-boolean p2, p4, Lˋˋ/ᵎⁱ;->ʽ:Z

    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    move-result p1

    iput-boolean p1, p4, Lˋˋ/ᵎⁱ;->ˈ:Z

    return-void
.end method

.method public ˈـ()Z
    .locals 2

    .prologue
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵢˏ:Lˋˋ/ᵔי;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->יـ:Z

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʻٴ:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ˉʽ(I)V
    .locals 2

    .prologue
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid orientation:"

    invoke-static {p1, v1}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ʽ(Ljava/lang/String;)V

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʼᐧ:I

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    :goto_1
    invoke-static {p0, p1}, Lʼﾞ/ᵎⁱ;->ⁱˊ(Lˋˋ/ʻᵎ;I)Lʼﾞ/ᵎⁱ;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʾˋ:Lˋˋ/ˉٴ;

    iput-object v0, v1, Lˋˋ/ˉٴ;->ﾞᴵ:Ljava/lang/Object;

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʼᐧ:I

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ـˊ()V

    return-void
.end method

.method public ˉʿ(Lˋˋ/ᐧﹶ;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵢˋ(Lˋˋ/ᐧﹶ;)I

    move-result p1

    return p1
.end method

.method public ˉˆ(Lˋˋ/ᐧﹶ;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᵢ(Lˋˋ/ᐧﹶ;)I

    move-result p1

    return p1
.end method

.method public final ˊˊ()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v1

    invoke-virtual {p0, v0, v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ˏⁱ(IIZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-static {v0}, Lˋˋ/ʻᵎ;->ˆﾞ(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final ˊˋ()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public ˊﹳ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;ZZ)Landroid/view/View;
    .locals 16

    .prologue
    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹶʽ()V

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p4, :cond_0

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v1

    sub-int/2addr v1, v3

    const/4 v4, -0x1

    move v5, v4

    goto :goto_0

    :cond_0
    move v4, v1

    move v1, v2

    move v5, v3

    :goto_0
    invoke-virtual/range {p2 .. p2}, Lˋˋ/ᐧﹶ;->ⁱˊ()I

    move-result v6

    iget-object v7, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v7}, Lʼﾞ/ᵎⁱ;->ˉʿ()I

    move-result v7

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v8}, Lʼﾞ/ᵎⁱ;->ʼˎ()I

    move-result v8

    const/4 v9, 0x0

    move-object v10, v9

    move-object v11, v10

    :goto_1
    if-eq v1, v4, :cond_a

    invoke-virtual {v0, v1}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v12

    invoke-static {v12}, Lˋˋ/ʻᵎ;->ˆﾞ(Landroid/view/View;)I

    move-result v13

    iget-object v14, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v14, v12}, Lʼﾞ/ᵎⁱ;->ᵎﹶ(Landroid/view/View;)I

    move-result v14

    iget-object v15, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v15, v12}, Lʼﾞ/ᵎⁱ;->ˈ(Landroid/view/View;)I

    move-result v15

    if-ltz v13, :cond_9

    if-ge v13, v6, :cond_9

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lˋˋ/ˊᵔ;

    iget-object v13, v13, Lˋˋ/ˊᵔ;->ﹳٴ:Lˋˋ/ʼـ;

    invoke-virtual {v13}, Lˋˋ/ʼـ;->ˆʾ()Z

    move-result v13

    if-eqz v13, :cond_1

    if-nez v11, :cond_9

    move-object v11, v12

    goto :goto_7

    :cond_1
    if-gt v15, v7, :cond_2

    if-ge v14, v7, :cond_2

    move v13, v3

    goto :goto_2

    :cond_2
    move v13, v2

    :goto_2
    if-lt v14, v8, :cond_3

    if-le v15, v8, :cond_3

    move v14, v3

    goto :goto_3

    :cond_3
    move v14, v2

    :goto_3
    if-nez v13, :cond_5

    if-eqz v14, :cond_4

    goto :goto_4

    :cond_4
    return-object v12

    :cond_5
    :goto_4
    if-eqz p3, :cond_7

    if-eqz v14, :cond_6

    goto :goto_5

    :cond_6
    if-nez v9, :cond_9

    goto :goto_6

    :cond_7
    if-eqz v13, :cond_8

    :goto_5
    move-object v10, v12

    goto :goto_7

    :cond_8
    if-nez v9, :cond_9

    :goto_6
    move-object v9, v12

    :cond_9
    :goto_7
    add-int/2addr v1, v5

    goto :goto_1

    :cond_a
    if-eqz v9, :cond_b

    return-object v9

    :cond_b
    if-eqz v10, :cond_c

    return-object v10

    :cond_c
    return-object v11
.end method

.method public final ˊﾞ()I
    .locals 3

    .prologue
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->ˏⁱ(IIZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-static {v0}, Lˋˋ/ʻᵎ;->ˆﾞ(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final ˋˊ()Z
    .locals 5

    .prologue
    iget v0, p0, Lˋˋ/ʻᵎ;->ˉʿ:I

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v2, :cond_1

    iget v0, p0, Lˋˋ/ʻᵎ;->ﾞʻ:I

    if-eq v0, v2, :cond_1

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v4, :cond_0

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final ˋـ(I)I
    .locals 4

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_b

    const/4 v2, 0x2

    if-eq p1, v2, :cond_8

    const/16 v2, 0x11

    const/high16 v3, -0x80000000

    if-eq p1, v2, :cond_6

    const/16 v2, 0x21

    if-eq p1, v2, :cond_4

    const/16 v0, 0x42

    if-eq p1, v0, :cond_2

    const/16 v0, 0x82

    if-eq p1, v0, :cond_0

    return v3

    :cond_0
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʼᐧ:I

    if-ne p1, v1, :cond_1

    return v1

    :cond_1
    return v3

    :cond_2
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʼᐧ:I

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v3

    :cond_4
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʼᐧ:I

    if-ne p1, v1, :cond_5

    return v0

    :cond_5
    return v3

    :cond_6
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʼᐧ:I

    if-nez p1, :cond_7

    return v0

    :cond_7
    return v3

    :cond_8
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʼᐧ:I

    if-ne p1, v1, :cond_9

    return v1

    :cond_9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ʿʽ()Z

    move-result p1

    if-eqz p1, :cond_a

    return v0

    :cond_a
    return v1

    :cond_b
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʼᐧ:I

    if-ne p1, v1, :cond_c

    return v0

    :cond_c
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ʿʽ()Z

    move-result p1

    if-eqz p1, :cond_d

    return v1

    :cond_d
    return v0
.end method

.method public final ˎʼ(II)V
    .locals 2

    .prologue
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵔﹳ:Lˋˋ/ٴʼ;

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v1}, Lʼﾞ/ᵎⁱ;->ˉʿ()I

    move-result v1

    sub-int v1, p2, v1

    iput v1, v0, Lˋˋ/ٴʼ;->ʽ:I

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵔﹳ:Lˋˋ/ٴʼ;

    iput p1, v0, Lˋˋ/ٴʼ;->ˈ:I

    iget-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʽﹳ:Z

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput p1, v0, Lˋˋ/ٴʼ;->ˑﹳ:I

    iput v1, v0, Lˋˋ/ٴʼ;->ﾞᴵ:I

    iput p2, v0, Lˋˋ/ٴʼ;->ⁱˊ:I

    const/high16 p1, -0x80000000

    iput p1, v0, Lˋˋ/ٴʼ;->ᵎﹶ:I

    return-void
.end method

.method public ˎʾ(Lˋˋ/ᐧﹶ;[I)V
    .locals 3

    .prologue
    iget p1, p1, Lˋˋ/ᐧﹶ;->ﹳٴ:I

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {p1}, Lʼﾞ/ᵎⁱ;->ᵔʾ()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵔﹳ:Lˋˋ/ٴʼ;

    iget v2, v2, Lˋˋ/ٴʼ;->ﾞᴵ:I

    if-ne v2, v1, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, p1

    move p1, v0

    :goto_1
    aput p1, p2, v0

    const/4 p1, 0x1

    aput v1, p2, p1

    return-void
.end method

.method public final ˎˉ(Lˋˋ/ᐧﹶ;)I
    .locals 6

    .prologue
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹶʽ()V

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ـˆ:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ﾞˏ(Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ٴʿ(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ـˆ:Z

    move-object v4, p0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lˋˋ/ⁱˊ;->ﾞᴵ(Lˋˋ/ᐧﹶ;Lʼﾞ/ᵎⁱ;Landroid/view/View;Landroid/view/View;Lˋˋ/ʻᵎ;Z)I

    move-result p1

    return p1
.end method

.method public final ˎـ()Landroid/view/View;
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʽﹳ:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public ˏי()Lˋˋ/ˊᵔ;
    .locals 2

    new-instance v0, Lˋˋ/ˊᵔ;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lˋˋ/ˊᵔ;-><init>(II)V

    return-object v0
.end method

.method public ˏᵢ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;Lˊˋ/ᵔᵢ;)V
    .locals 0

    .prologue
    invoke-super {p0, p1, p2, p3}, Lˋˋ/ʻᵎ;->ˏᵢ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;Lˊˋ/ᵔᵢ;)V

    iget-object p1, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->ˆﾞ:Lˋˋ/ᴵˑ;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lˋˋ/ᴵˑ;->ﹳٴ()I

    move-result p1

    if-lez p1, :cond_0

    sget-object p1, Lˊˋ/ʽ;->ˆʾ:Lˊˋ/ʽ;

    invoke-virtual {p3, p1}, Lˊˋ/ᵔᵢ;->ⁱˊ(Lˊˋ/ʽ;)V

    :cond_0
    return-void
.end method

.method public final ˏⁱ(IIZ)Landroid/view/View;
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹶʽ()V

    const/16 v0, 0x140

    if-eqz p3, :cond_0

    const/16 p3, 0x6003

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʼᐧ:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lˋˋ/ʻᵎ;->ʽ:Lﹶﾞ/ⁱי;

    invoke-virtual {v1, p1, p2, p3, v0}, Lﹶﾞ/ⁱי;->ˉˆ(IIII)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v1, p0, Lˋˋ/ʻᵎ;->ˈ:Lﹶﾞ/ⁱי;

    invoke-virtual {v1, p1, p2, p3, v0}, Lﹶﾞ/ⁱי;->ˉˆ(IIII)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public ˑ(ILandroid/os/Bundle;)Z
    .locals 4

    .prologue
    invoke-super {p0, p1, p2}, Lˋˋ/ʻᵎ;->ˑ(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const v0, 0x1020037

    const/4 v2, 0x0

    if-ne p1, v0, :cond_5

    if-eqz p2, :cond_5

    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʼᐧ:I

    const/4 v0, -0x1

    if-ne p1, v1, :cond_2

    const-string p1, "android.view.accessibility.action.ARGUMENT_ROW_INT"

    invoke-virtual {p2, p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-gez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p2, Landroidx/recyclerview/widget/RecyclerView;->ʽʽ:Lˋˋ/ʻˋ;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->ᵎʿ:Lˋˋ/ᐧﹶ;

    invoke-virtual {p0, v3, p2}, Lˋˋ/ʻᵎ;->ˈʿ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I

    move-result p2

    sub-int/2addr p2, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_2
    const-string p1, "android.view.accessibility.action.ARGUMENT_COLUMN_INT"

    invoke-virtual {p2, p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-gez p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p2, Landroidx/recyclerview/widget/RecyclerView;->ʽʽ:Lˋˋ/ʻˋ;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->ᵎʿ:Lˋˋ/ᐧﹶ;

    invoke-virtual {p0, v3, p2}, Lˋˋ/ʻᵎ;->ᵢˏ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I

    move-result p2

    sub-int/2addr p2, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    if-ltz p1, :cond_5

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʾᵎ:I

    iput v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʼʼ:I

    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵢˏ:Lˋˋ/ᵔי;

    if-eqz p1, :cond_4

    iput v0, p1, Lˋˋ/ᵔי;->ʾˋ:I

    :cond_4
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ـˊ()V

    return v1

    :cond_5
    :goto_1
    return v2
.end method

.method public ˑˆ(Lˋˋ/ᐧﹶ;Lˋˋ/ٴʼ;Lˋˋ/ʽʽ;)V
    .locals 1

    .prologue
    iget v0, p2, Lˋˋ/ٴʼ;->ˈ:I

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lˋˋ/ᐧﹶ;->ⁱˊ()I

    move-result p1

    if-ge v0, p1, :cond_0

    const/4 p1, 0x0

    iget p2, p2, Lˋˋ/ٴʼ;->ᵎﹶ:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p3, v0, p1}, Lˋˋ/ʽʽ;->ⁱˊ(II)V

    :cond_0
    return-void
.end method

.method public final ˑﹳ()Z
    .locals 1

    .prologue
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʼᐧ:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ˑﹶ(II)V
    .locals 3

    .prologue
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵔﹳ:Lˋˋ/ٴʼ;

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v1}, Lʼﾞ/ᵎⁱ;->ʼˎ()I

    move-result v1

    sub-int/2addr v1, p2

    iput v1, v0, Lˋˋ/ٴʼ;->ʽ:I

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵔﹳ:Lˋˋ/ٴʼ;

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʽﹳ:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput v1, v0, Lˋˋ/ٴʼ;->ˑﹳ:I

    iput p1, v0, Lˋˋ/ٴʼ;->ˈ:I

    iput v2, v0, Lˋˋ/ٴʼ;->ﾞᴵ:I

    iput p2, v0, Lˋˋ/ٴʼ;->ⁱˊ:I

    const/high16 p1, -0x80000000

    iput p1, v0, Lˋˋ/ٴʼ;->ᵎﹶ:I

    return-void
.end method

.method public final י()Landroid/os/Parcelable;
    .locals 4

    .prologue
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵢˏ:Lˋˋ/ᵔי;

    if-eqz v0, :cond_0

    new-instance v1, Lˋˋ/ᵔי;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget v2, v0, Lˋˋ/ᵔי;->ʾˋ:I

    iput v2, v1, Lˋˋ/ᵔי;->ʾˋ:I

    iget v2, v0, Lˋˋ/ᵔי;->ᴵˊ:I

    iput v2, v1, Lˋˋ/ᵔי;->ᴵˊ:I

    iget-boolean v0, v0, Lˋˋ/ᵔי;->ʽʽ:Z

    iput-boolean v0, v1, Lˋˋ/ᵔי;->ʽʽ:Z

    return-object v1

    :cond_0
    new-instance v0, Lˋˋ/ᵔי;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹶʽ()V

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->יـ:Z

    iget-boolean v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʽﹳ:Z

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Lˋˋ/ᵔי;->ʽʽ:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ˎـ()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v2}, Lʼﾞ/ᵎⁱ;->ʼˎ()I

    move-result v2

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v3, v1}, Lʼﾞ/ᵎⁱ;->ˈ(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Lˋˋ/ᵔי;->ᴵˊ:I

    invoke-static {v1}, Lˋˋ/ʻᵎ;->ˆﾞ(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Lˋˋ/ᵔי;->ʾˋ:I

    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵢʻ()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lˋˋ/ʻᵎ;->ˆﾞ(Landroid/view/View;)I

    move-result v2

    iput v2, v0, Lˋˋ/ᵔי;->ʾˋ:I

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v2, v1}, Lʼﾞ/ᵎⁱ;->ᵎﹶ(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v2}, Lʼﾞ/ᵎⁱ;->ˉʿ()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Lˋˋ/ᵔי;->ᴵˊ:I

    return-object v0

    :cond_2
    const/4 v1, -0x1

    iput v1, v0, Lˋˋ/ᵔי;->ʾˋ:I

    return-object v0
.end method

.method public יʿ(Z)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ʽ(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʻٴ:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʻٴ:Z

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ـˊ()V

    return-void
.end method

.method public יˉ(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    new-instance v0, Lˋˋ/ˆﾞ;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lˋˋ/ˆﾞ;-><init>(Landroid/content/Context;)V

    iput p2, v0, Lˋˋ/ˆﾞ;->ﹳٴ:I

    invoke-virtual {p0, v0}, Lˋˋ/ʻᵎ;->ﾞˋ(Lˋˋ/ˆﾞ;)V

    return-void
.end method

.method public final יـ(I)Landroid/view/View;
    .locals 2

    .prologue
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lˋˋ/ʻᵎ;->ˆﾞ(Landroid/view/View;)I

    move-result v1

    sub-int v1, p1, v1

    if-ltz v1, :cond_1

    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lˋˋ/ʻᵎ;->ˆﾞ(Landroid/view/View;)I

    move-result v1

    if-ne v1, p1, :cond_1

    return-object v0

    :cond_1
    invoke-super {p0, p1}, Lˋˋ/ʻᵎ;->יـ(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final ـʻ(II)Landroid/view/View;
    .locals 3

    .prologue
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹶʽ()V

    if-le p2, p1, :cond_0

    goto :goto_0

    :cond_0
    if-ge p2, p1, :cond_3

    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {p0, p1}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lʼﾞ/ᵎⁱ;->ᵎﹶ(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v1}, Lʼﾞ/ᵎⁱ;->ˉʿ()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/16 v0, 0x4104

    const/16 v1, 0x4004

    goto :goto_1

    :cond_1
    const/16 v0, 0x1041

    const/16 v1, 0x1001

    :goto_1
    iget v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʼᐧ:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lˋˋ/ʻᵎ;->ʽ:Lﹶﾞ/ⁱי;

    invoke-virtual {v2, p1, p2, v0, v1}, Lﹶﾞ/ⁱי;->ˉˆ(IIII)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v2, p0, Lˋˋ/ʻᵎ;->ˈ:Lﹶﾞ/ⁱי;

    invoke-virtual {v2, p1, p2, v0, v1}, Lﹶﾞ/ⁱי;->ˉˆ(IIII)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-virtual {p0, p1}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final ٴʿ(Z)Landroid/view/View;
    .locals 2

    .prologue
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʽﹳ:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->ˏⁱ(IIZ)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->ˏⁱ(IIZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public ٴﹳ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)V
    .locals 17

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵢˏ:Lˋˋ/ᵔי;

    const/4 v4, -0x1

    if-nez v3, :cond_0

    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʾᵎ:I

    if-eq v3, v4, :cond_1

    :cond_0
    invoke-virtual {v2}, Lˋˋ/ᐧﹶ;->ⁱˊ()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual/range {p0 .. p1}, Lˋˋ/ʻᵎ;->ˎᐧ(Lˋˋ/ʻˋ;)V

    return-void

    :cond_1
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵢˏ:Lˋˋ/ᵔי;

    if-eqz v3, :cond_2

    iget v3, v3, Lˋˋ/ᵔי;->ʾˋ:I

    if-ltz v3, :cond_2

    iput v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʾᵎ:I

    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹶʽ()V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵔﹳ:Lˋˋ/ٴʼ;

    const/4 v5, 0x0

    iput-boolean v5, v3, Lˋˋ/ٴʼ;->ﹳٴ:Z

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ﾞˊ()V

    iget-object v3, v0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v7, v0, Lˋˋ/ʻᵎ;->ﹳٴ:Lcom/parse/ʽˑ;

    iget-object v7, v7, Lcom/parse/ʽˑ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    :goto_0
    const/4 v3, 0x0

    :cond_5
    iget-object v7, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʾˋ:Lˋˋ/ˉٴ;

    iget-boolean v8, v7, Lˋˋ/ˉٴ;->ˈ:Z

    const/high16 v9, -0x80000000

    const/4 v10, 0x1

    if-eqz v8, :cond_8

    iget v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʾᵎ:I

    if-ne v8, v4, :cond_8

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵢˏ:Lˋˋ/ᵔי;

    if-eqz v8, :cond_6

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_27

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v8, v3}, Lʼﾞ/ᵎⁱ;->ᵎﹶ(Landroid/view/View;)I

    move-result v8

    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v11}, Lʼﾞ/ᵎⁱ;->ʼˎ()I

    move-result v11

    if-ge v8, v11, :cond_7

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v8, v3}, Lʼﾞ/ᵎⁱ;->ˈ(Landroid/view/View;)I

    move-result v8

    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v11}, Lʼﾞ/ᵎⁱ;->ˉʿ()I

    move-result v11

    if-gt v8, v11, :cond_27

    :cond_7
    invoke-static {v3}, Lˋˋ/ʻᵎ;->ˆﾞ(Landroid/view/View;)I

    move-result v8

    invoke-virtual {v7, v3, v8}, Lˋˋ/ˉٴ;->ˈ(Landroid/view/View;I)V

    goto/16 :goto_e

    :cond_8
    :goto_1
    invoke-virtual {v7}, Lˋˋ/ˉٴ;->ᵎﹶ()V

    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʽﹳ:Z

    iget-boolean v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʻٴ:Z

    xor-int/2addr v3, v8

    iput-boolean v3, v7, Lˋˋ/ˉٴ;->ʽ:Z

    iget-boolean v3, v2, Lˋˋ/ᐧﹶ;->ᵎﹶ:Z

    if-nez v3, :cond_19

    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʾᵎ:I

    if-ne v3, v4, :cond_9

    goto/16 :goto_7

    :cond_9
    if-ltz v3, :cond_18

    invoke-virtual {v2}, Lˋˋ/ᐧﹶ;->ⁱˊ()I

    move-result v8

    if-lt v3, v8, :cond_a

    goto/16 :goto_6

    :cond_a
    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʾᵎ:I

    iput v3, v7, Lˋˋ/ˉٴ;->ⁱˊ:I

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵢˏ:Lˋˋ/ᵔי;

    if-eqz v8, :cond_c

    iget v11, v8, Lˋˋ/ᵔי;->ʾˋ:I

    if-ltz v11, :cond_c

    iget-boolean v3, v8, Lˋˋ/ᵔי;->ʽʽ:Z

    iput-boolean v3, v7, Lˋˋ/ˉٴ;->ʽ:Z

    if-eqz v3, :cond_b

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v3}, Lʼﾞ/ᵎⁱ;->ʼˎ()I

    move-result v3

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵢˏ:Lˋˋ/ᵔי;

    iget v8, v8, Lˋˋ/ᵔי;->ᴵˊ:I

    sub-int/2addr v3, v8

    iput v3, v7, Lˋˋ/ˉٴ;->ˑﹳ:I

    goto/16 :goto_d

    :cond_b
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v3}, Lʼﾞ/ᵎⁱ;->ˉʿ()I

    move-result v3

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵢˏ:Lˋˋ/ᵔי;

    iget v8, v8, Lˋˋ/ᵔי;->ᴵˊ:I

    add-int/2addr v3, v8

    iput v3, v7, Lˋˋ/ˉٴ;->ˑﹳ:I

    goto/16 :goto_d

    :cond_c
    iget v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʼʼ:I

    if-ne v8, v9, :cond_16

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->יـ(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_12

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v8, v3}, Lʼﾞ/ᵎⁱ;->ˑﹳ(Landroid/view/View;)I

    move-result v8

    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v11}, Lʼﾞ/ᵎⁱ;->ᵔʾ()I

    move-result v11

    if-le v8, v11, :cond_d

    invoke-virtual {v7}, Lˋˋ/ˉٴ;->ⁱˊ()V

    goto/16 :goto_d

    :cond_d
    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v8, v3}, Lʼﾞ/ᵎⁱ;->ᵎﹶ(Landroid/view/View;)I

    move-result v8

    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v11}, Lʼﾞ/ᵎⁱ;->ˉʿ()I

    move-result v11

    sub-int/2addr v8, v11

    if-gez v8, :cond_e

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v3}, Lʼﾞ/ᵎⁱ;->ˉʿ()I

    move-result v3

    iput v3, v7, Lˋˋ/ˉٴ;->ˑﹳ:I

    iput-boolean v5, v7, Lˋˋ/ˉٴ;->ʽ:Z

    goto/16 :goto_d

    :cond_e
    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v8}, Lʼﾞ/ᵎⁱ;->ʼˎ()I

    move-result v8

    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v11, v3}, Lʼﾞ/ᵎⁱ;->ˈ(Landroid/view/View;)I

    move-result v11

    sub-int/2addr v8, v11

    if-gez v8, :cond_f

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v3}, Lʼﾞ/ᵎⁱ;->ʼˎ()I

    move-result v3

    iput v3, v7, Lˋˋ/ˉٴ;->ˑﹳ:I

    iput-boolean v10, v7, Lˋˋ/ˉٴ;->ʽ:Z

    goto/16 :goto_d

    :cond_f
    iget-boolean v8, v7, Lˋˋ/ˉٴ;->ʽ:Z

    if-eqz v8, :cond_11

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v8, v3}, Lʼﾞ/ᵎⁱ;->ˈ(Landroid/view/View;)I

    move-result v3

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    iget v11, v8, Lʼﾞ/ᵎⁱ;->ﹳٴ:I

    if-ne v9, v11, :cond_10

    move v11, v5

    goto :goto_2

    :cond_10
    invoke-virtual {v8}, Lʼﾞ/ᵎⁱ;->ᵔʾ()I

    move-result v11

    iget v8, v8, Lʼﾞ/ᵎⁱ;->ﹳٴ:I

    sub-int/2addr v11, v8

    :goto_2
    add-int/2addr v11, v3

    goto :goto_3

    :cond_11
    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v8, v3}, Lʼﾞ/ᵎⁱ;->ᵎﹶ(Landroid/view/View;)I

    move-result v11

    :goto_3
    iput v11, v7, Lˋˋ/ˉٴ;->ˑﹳ:I

    goto/16 :goto_d

    :cond_12
    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v3

    if-lez v3, :cond_15

    invoke-virtual {v0, v5}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lˋˋ/ʻᵎ;->ˆﾞ(Landroid/view/View;)I

    move-result v3

    iget v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʾᵎ:I

    if-ge v8, v3, :cond_13

    move v3, v10

    goto :goto_4

    :cond_13
    move v3, v5

    :goto_4
    iget-boolean v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʽﹳ:Z

    if-ne v3, v8, :cond_14

    move v3, v10

    goto :goto_5

    :cond_14
    move v3, v5

    :goto_5
    iput-boolean v3, v7, Lˋˋ/ˉٴ;->ʽ:Z

    :cond_15
    invoke-virtual {v7}, Lˋˋ/ˉٴ;->ⁱˊ()V

    goto/16 :goto_d

    :cond_16
    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʽﹳ:Z

    iput-boolean v3, v7, Lˋˋ/ˉٴ;->ʽ:Z

    if-eqz v3, :cond_17

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v3}, Lʼﾞ/ᵎⁱ;->ʼˎ()I

    move-result v3

    iget v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʼʼ:I

    sub-int/2addr v3, v8

    iput v3, v7, Lˋˋ/ˉٴ;->ˑﹳ:I

    goto/16 :goto_d

    :cond_17
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v3}, Lʼﾞ/ᵎⁱ;->ˉʿ()I

    move-result v3

    iget v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʼʼ:I

    add-int/2addr v3, v8

    iput v3, v7, Lˋˋ/ˉٴ;->ˑﹳ:I

    goto/16 :goto_d

    :cond_18
    :goto_6
    iput v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʾᵎ:I

    iput v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʼʼ:I

    :cond_19
    :goto_7
    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v3

    if-nez v3, :cond_1a

    goto/16 :goto_b

    :cond_1a
    iget-object v3, v0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v3, :cond_1b

    goto :goto_8

    :cond_1b
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1c

    iget-object v8, v0, Lˋˋ/ʻᵎ;->ﹳٴ:Lcom/parse/ʽˑ;

    iget-object v8, v8, Lcom/parse/ʽˑ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d

    :cond_1c
    :goto_8
    const/4 v3, 0x0

    :cond_1d
    if-eqz v3, :cond_1e

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lˋˋ/ˊᵔ;

    iget-object v11, v8, Lˋˋ/ˊᵔ;->ﹳٴ:Lˋˋ/ʼـ;

    invoke-virtual {v11}, Lˋˋ/ʼـ;->ˆʾ()Z

    move-result v11

    if-nez v11, :cond_1e

    iget-object v11, v8, Lˋˋ/ˊᵔ;->ﹳٴ:Lˋˋ/ʼـ;

    invoke-virtual {v11}, Lˋˋ/ʼـ;->ˈ()I

    move-result v11

    if-ltz v11, :cond_1e

    iget-object v8, v8, Lˋˋ/ˊᵔ;->ﹳٴ:Lˋˋ/ʼـ;

    invoke-virtual {v8}, Lˋˋ/ʼـ;->ˈ()I

    move-result v8

    invoke-virtual {v2}, Lˋˋ/ᐧﹶ;->ⁱˊ()I

    move-result v11

    if-ge v8, v11, :cond_1e

    invoke-static {v3}, Lˋˋ/ʻᵎ;->ˆﾞ(Landroid/view/View;)I

    move-result v8

    invoke-virtual {v7, v3, v8}, Lˋˋ/ˉٴ;->ˈ(Landroid/view/View;I)V

    goto/16 :goto_d

    :cond_1e
    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->יـ:Z

    iget-boolean v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʻٴ:Z

    if-eq v3, v8, :cond_1f

    goto :goto_b

    :cond_1f
    iget-boolean v3, v7, Lˋˋ/ˉٴ;->ʽ:Z

    invoke-virtual {v0, v1, v2, v3, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->ˊﹳ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;ZZ)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_24

    invoke-static {v3}, Lˋˋ/ʻᵎ;->ˆﾞ(Landroid/view/View;)I

    move-result v8

    invoke-virtual {v7, v3, v8}, Lˋˋ/ˉٴ;->ʽ(Landroid/view/View;I)V

    iget-boolean v8, v2, Lˋˋ/ᐧﹶ;->ᵎﹶ:Z

    if-nez v8, :cond_26

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ˈـ()Z

    move-result v8

    if-eqz v8, :cond_26

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v8, v3}, Lʼﾞ/ᵎⁱ;->ᵎﹶ(Landroid/view/View;)I

    move-result v8

    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v11, v3}, Lʼﾞ/ᵎⁱ;->ˈ(Landroid/view/View;)I

    move-result v3

    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v11}, Lʼﾞ/ᵎⁱ;->ˉʿ()I

    move-result v11

    iget-object v12, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v12}, Lʼﾞ/ᵎⁱ;->ʼˎ()I

    move-result v12

    if-gt v3, v11, :cond_20

    if-ge v8, v11, :cond_20

    move v13, v10

    goto :goto_9

    :cond_20
    move v13, v5

    :goto_9
    if-lt v8, v12, :cond_21

    if-le v3, v12, :cond_21

    move v3, v10

    goto :goto_a

    :cond_21
    move v3, v5

    :goto_a
    if-nez v13, :cond_22

    if-eqz v3, :cond_26

    :cond_22
    iget-boolean v3, v7, Lˋˋ/ˉٴ;->ʽ:Z

    if-eqz v3, :cond_23

    move v11, v12

    :cond_23
    iput v11, v7, Lˋˋ/ˉٴ;->ˑﹳ:I

    goto :goto_d

    :cond_24
    :goto_b
    invoke-virtual {v7}, Lˋˋ/ˉٴ;->ⁱˊ()V

    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʻٴ:Z

    if-eqz v3, :cond_25

    invoke-virtual {v2}, Lˋˋ/ᐧﹶ;->ⁱˊ()I

    move-result v3

    sub-int/2addr v3, v10

    goto :goto_c

    :cond_25
    move v3, v5

    :goto_c
    iput v3, v7, Lˋˋ/ˉٴ;->ⁱˊ:I

    :cond_26
    :goto_d
    iput-boolean v10, v7, Lˋˋ/ˉٴ;->ˈ:Z

    :cond_27
    :goto_e
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵔﹳ:Lˋˋ/ٴʼ;

    iget v8, v3, Lˋˋ/ٴʼ;->ˆʾ:I

    if-ltz v8, :cond_28

    move v8, v10

    goto :goto_f

    :cond_28
    move v8, v4

    :goto_f
    iput v8, v3, Lˋˋ/ٴʼ;->ﾞᴵ:I

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ˈٴ:[I

    aput v5, v3, v5

    aput v5, v3, v10

    invoke-virtual {v0, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->ˎʾ(Lˋˋ/ᐧﹶ;[I)V

    aget v8, v3, v5

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v11}, Lʼﾞ/ᵎⁱ;->ˉʿ()I

    move-result v11

    add-int/2addr v11, v8

    aget v3, v3, v10

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v8}, Lʼﾞ/ᵎⁱ;->ˆʾ()I

    move-result v8

    add-int/2addr v8, v3

    iget-boolean v3, v2, Lˋˋ/ᐧﹶ;->ᵎﹶ:Z

    if-eqz v3, :cond_2b

    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʾᵎ:I

    if-eq v3, v4, :cond_2b

    iget v12, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʼʼ:I

    if-eq v12, v9, :cond_2b

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->יـ(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2b

    iget-boolean v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʽﹳ:Z

    if-eqz v9, :cond_29

    iget-object v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v9}, Lʼﾞ/ᵎⁱ;->ʼˎ()I

    move-result v9

    iget-object v12, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v12, v3}, Lʼﾞ/ᵎⁱ;->ˈ(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v9, v3

    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʼʼ:I

    :goto_10
    sub-int/2addr v9, v3

    goto :goto_11

    :cond_29
    iget-object v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v9, v3}, Lʼﾞ/ᵎⁱ;->ᵎﹶ(Landroid/view/View;)I

    move-result v3

    iget-object v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v9}, Lʼﾞ/ᵎⁱ;->ˉʿ()I

    move-result v9

    sub-int/2addr v3, v9

    iget v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʼʼ:I

    goto :goto_10

    :goto_11
    if-lez v9, :cond_2a

    add-int/2addr v11, v9

    goto :goto_12

    :cond_2a
    sub-int/2addr v8, v9

    :cond_2b
    :goto_12
    iget-boolean v3, v7, Lˋˋ/ˉٴ;->ʽ:Z

    if-eqz v3, :cond_2d

    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʽﹳ:Z

    if-eqz v3, :cond_2e

    :cond_2c
    move v4, v10

    goto :goto_13

    :cond_2d
    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʽﹳ:Z

    if-eqz v3, :cond_2c

    :cond_2e
    :goto_13
    invoke-virtual {v0, v1, v2, v7, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->ˆˎ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;Lˋˋ/ˉٴ;I)V

    invoke-virtual/range {p0 .. p1}, Lˋˋ/ʻᵎ;->ᵔﹳ(Lˋˋ/ʻˋ;)V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵔﹳ:Lˋˋ/ٴʼ;

    iget-object v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v4}, Lʼﾞ/ᵎⁱ;->ٴﹶ()I

    move-result v4

    if-nez v4, :cond_2f

    iget-object v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v4}, Lʼﾞ/ᵎⁱ;->ᵔᵢ()I

    move-result v4

    if-nez v4, :cond_2f

    move v4, v10

    goto :goto_14

    :cond_2f
    move v4, v5

    :goto_14
    iput-boolean v4, v3, Lˋˋ/ٴʼ;->ﾞʻ:Z

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵔﹳ:Lˋˋ/ٴʼ;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵔﹳ:Lˋˋ/ٴʼ;

    iput v5, v3, Lˋˋ/ٴʼ;->ʼˎ:I

    iget-boolean v3, v7, Lˋˋ/ˉٴ;->ʽ:Z

    if-eqz v3, :cond_31

    iget v3, v7, Lˋˋ/ˉٴ;->ⁱˊ:I

    iget v4, v7, Lˋˋ/ˉٴ;->ˑﹳ:I

    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->ˎʼ(II)V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵔﹳ:Lˋˋ/ٴʼ;

    iput v11, v3, Lˋˋ/ٴʼ;->ᵔᵢ:I

    invoke-virtual {v0, v1, v3, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵔⁱ(Lˋˋ/ʻˋ;Lˋˋ/ٴʼ;Lˋˋ/ᐧﹶ;Z)I

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵔﹳ:Lˋˋ/ٴʼ;

    iget v4, v3, Lˋˋ/ٴʼ;->ⁱˊ:I

    iget v9, v3, Lˋˋ/ٴʼ;->ˈ:I

    iget v3, v3, Lˋˋ/ٴʼ;->ʽ:I

    if-lez v3, :cond_30

    add-int/2addr v8, v3

    :cond_30
    iget v3, v7, Lˋˋ/ˉٴ;->ⁱˊ:I

    iget v11, v7, Lˋˋ/ˉٴ;->ˑﹳ:I

    invoke-virtual {v0, v3, v11}, Landroidx/recyclerview/widget/LinearLayoutManager;->ˑﹶ(II)V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵔﹳ:Lˋˋ/ٴʼ;

    iput v8, v3, Lˋˋ/ٴʼ;->ᵔᵢ:I

    iget v8, v3, Lˋˋ/ٴʼ;->ˈ:I

    iget v11, v3, Lˋˋ/ٴʼ;->ˑﹳ:I

    add-int/2addr v8, v11

    iput v8, v3, Lˋˋ/ٴʼ;->ˈ:I

    invoke-virtual {v0, v1, v3, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵔⁱ(Lˋˋ/ʻˋ;Lˋˋ/ٴʼ;Lˋˋ/ᐧﹶ;Z)I

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵔﹳ:Lˋˋ/ٴʼ;

    iget v8, v3, Lˋˋ/ٴʼ;->ⁱˊ:I

    iget v3, v3, Lˋˋ/ٴʼ;->ʽ:I

    if-lez v3, :cond_34

    invoke-virtual {v0, v9, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->ˎʼ(II)V

    iget-object v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵔﹳ:Lˋˋ/ٴʼ;

    iput v3, v4, Lˋˋ/ٴʼ;->ᵔᵢ:I

    invoke-virtual {v0, v1, v4, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵔⁱ(Lˋˋ/ʻˋ;Lˋˋ/ٴʼ;Lˋˋ/ᐧﹶ;Z)I

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵔﹳ:Lˋˋ/ٴʼ;

    iget v4, v3, Lˋˋ/ٴʼ;->ⁱˊ:I

    goto :goto_15

    :cond_31
    iget v3, v7, Lˋˋ/ˉٴ;->ⁱˊ:I

    iget v4, v7, Lˋˋ/ˉٴ;->ˑﹳ:I

    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->ˑﹶ(II)V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵔﹳ:Lˋˋ/ٴʼ;

    iput v8, v3, Lˋˋ/ٴʼ;->ᵔᵢ:I

    invoke-virtual {v0, v1, v3, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵔⁱ(Lˋˋ/ʻˋ;Lˋˋ/ٴʼ;Lˋˋ/ᐧﹶ;Z)I

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵔﹳ:Lˋˋ/ٴʼ;

    iget v8, v3, Lˋˋ/ٴʼ;->ⁱˊ:I

    iget v4, v3, Lˋˋ/ٴʼ;->ˈ:I

    iget v3, v3, Lˋˋ/ٴʼ;->ʽ:I

    if-lez v3, :cond_32

    add-int/2addr v11, v3

    :cond_32
    iget v3, v7, Lˋˋ/ˉٴ;->ⁱˊ:I

    iget v9, v7, Lˋˋ/ˉٴ;->ˑﹳ:I

    invoke-virtual {v0, v3, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->ˎʼ(II)V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵔﹳ:Lˋˋ/ٴʼ;

    iput v11, v3, Lˋˋ/ٴʼ;->ᵔᵢ:I

    iget v9, v3, Lˋˋ/ٴʼ;->ˈ:I

    iget v11, v3, Lˋˋ/ٴʼ;->ˑﹳ:I

    add-int/2addr v9, v11

    iput v9, v3, Lˋˋ/ٴʼ;->ˈ:I

    invoke-virtual {v0, v1, v3, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵔⁱ(Lˋˋ/ʻˋ;Lˋˋ/ٴʼ;Lˋˋ/ᐧﹶ;Z)I

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵔﹳ:Lˋˋ/ٴʼ;

    iget v9, v3, Lˋˋ/ٴʼ;->ⁱˊ:I

    iget v3, v3, Lˋˋ/ٴʼ;->ʽ:I

    if-lez v3, :cond_33

    invoke-virtual {v0, v4, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->ˑﹶ(II)V

    iget-object v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵔﹳ:Lˋˋ/ٴʼ;

    iput v3, v4, Lˋˋ/ٴʼ;->ᵔᵢ:I

    invoke-virtual {v0, v1, v4, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵔⁱ(Lˋˋ/ʻˋ;Lˋˋ/ٴʼ;Lˋˋ/ᐧﹶ;Z)I

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵔﹳ:Lˋˋ/ٴʼ;

    iget v8, v3, Lˋˋ/ٴʼ;->ⁱˊ:I

    :cond_33
    move v4, v9

    :cond_34
    :goto_15
    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v3

    if-lez v3, :cond_36

    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʽﹳ:Z

    iget-boolean v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʻٴ:Z

    xor-int/2addr v3, v9

    if-eqz v3, :cond_35

    invoke-virtual {v0, v8, v1, v2, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->ʽʾ(ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;Z)I

    move-result v3

    add-int/2addr v4, v3

    add-int/2addr v8, v3

    invoke-virtual {v0, v4, v1, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->ˆˑ(ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;Z)I

    move-result v3

    :goto_16
    add-int/2addr v4, v3

    add-int/2addr v8, v3

    goto :goto_17

    :cond_35
    invoke-virtual {v0, v4, v1, v2, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->ˆˑ(ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;Z)I

    move-result v3

    add-int/2addr v4, v3

    add-int/2addr v8, v3

    invoke-virtual {v0, v8, v1, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->ʽʾ(ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;Z)I

    move-result v3

    goto :goto_16

    :cond_36
    :goto_17
    iget-boolean v3, v2, Lˋˋ/ᐧﹶ;->ٴﹶ:Z

    if-eqz v3, :cond_3e

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v3

    if-eqz v3, :cond_3e

    iget-boolean v3, v2, Lˋˋ/ᐧﹶ;->ᵎﹶ:Z

    if-nez v3, :cond_3e

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ˈـ()Z

    move-result v3

    if-nez v3, :cond_37

    goto/16 :goto_1c

    :cond_37
    iget-object v3, v1, Lˋˋ/ʻˋ;->ˈ:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v0, v5}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v11

    invoke-static {v11}, Lˋˋ/ʻᵎ;->ˆﾞ(Landroid/view/View;)I

    move-result v11

    move v12, v5

    move v13, v12

    move v14, v13

    :goto_18
    if-ge v12, v9, :cond_3b

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lˋˋ/ʼـ;

    invoke-virtual {v15}, Lˋˋ/ʼـ;->ˆʾ()Z

    move-result v16

    iget-object v10, v15, Lˋˋ/ʼـ;->ʾˋ:Landroid/view/View;

    if-eqz v16, :cond_38

    goto :goto_1a

    :cond_38
    invoke-virtual {v15}, Lˋˋ/ʼـ;->ˈ()I

    move-result v15

    if-ge v15, v11, :cond_39

    const/4 v15, 0x1

    goto :goto_19

    :cond_39
    move v15, v5

    :goto_19
    iget-boolean v6, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʽﹳ:Z

    if-eq v15, v6, :cond_3a

    iget-object v6, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v6, v10}, Lʼﾞ/ᵎⁱ;->ˑﹳ(Landroid/view/View;)I

    move-result v6

    add-int/2addr v13, v6

    goto :goto_1a

    :cond_3a
    iget-object v6, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v6, v10}, Lʼﾞ/ᵎⁱ;->ˑﹳ(Landroid/view/View;)I

    move-result v6

    add-int/2addr v14, v6

    :goto_1a
    add-int/lit8 v12, v12, 0x1

    const/4 v10, 0x1

    goto :goto_18

    :cond_3b
    iget-object v6, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵔﹳ:Lˋˋ/ٴʼ;

    iput-object v3, v6, Lˋˋ/ٴʼ;->ٴﹶ:Ljava/util/List;

    if-lez v13, :cond_3c

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵢʻ()Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lˋˋ/ʻᵎ;->ˆﾞ(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->ˎʼ(II)V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵔﹳ:Lˋˋ/ٴʼ;

    iput v13, v3, Lˋˋ/ٴʼ;->ᵔᵢ:I

    iput v5, v3, Lˋˋ/ٴʼ;->ʽ:I

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lˋˋ/ٴʼ;->ﹳٴ(Landroid/view/View;)V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵔﹳ:Lˋˋ/ٴʼ;

    invoke-virtual {v0, v1, v3, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵔⁱ(Lˋˋ/ʻˋ;Lˋˋ/ٴʼ;Lˋˋ/ᐧﹶ;Z)I

    :cond_3c
    if-lez v14, :cond_3d

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ˎـ()Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lˋˋ/ʻᵎ;->ˆﾞ(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v0, v3, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->ˑﹶ(II)V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵔﹳ:Lˋˋ/ٴʼ;

    iput v14, v3, Lˋˋ/ٴʼ;->ᵔᵢ:I

    iput v5, v3, Lˋˋ/ٴʼ;->ʽ:I

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lˋˋ/ٴʼ;->ﹳٴ(Landroid/view/View;)V

    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵔﹳ:Lˋˋ/ٴʼ;

    invoke-virtual {v0, v1, v3, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵔⁱ(Lˋˋ/ʻˋ;Lˋˋ/ٴʼ;Lˋˋ/ᐧﹶ;Z)I

    goto :goto_1b

    :cond_3d
    const/4 v4, 0x0

    :goto_1b
    iget-object v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵔﹳ:Lˋˋ/ٴʼ;

    iput-object v4, v1, Lˋˋ/ٴʼ;->ٴﹶ:Ljava/util/List;

    :cond_3e
    :goto_1c
    iget-boolean v1, v2, Lˋˋ/ᐧﹶ;->ᵎﹶ:Z

    if-nez v1, :cond_3f

    iget-object v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v1}, Lʼﾞ/ᵎⁱ;->ᵔʾ()I

    move-result v2

    iput v2, v1, Lʼﾞ/ᵎⁱ;->ﹳٴ:I

    goto :goto_1d

    :cond_3f
    invoke-virtual {v7}, Lˋˋ/ˉٴ;->ᵎﹶ()V

    :goto_1d
    iget-boolean v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʻٴ:Z

    iput-boolean v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->יـ:Z

    return-void
.end method

.method public final ٴﹶ(Lˋˋ/ᐧﹶ;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->ˎˉ(Lˋˋ/ᐧﹶ;)I

    move-result p1

    return p1
.end method

.method public final ᐧᴵ(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    invoke-super {p0, p1}, Lˋˋ/ʻᵎ;->ᐧᴵ(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ˊˊ()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ˊﾞ()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    :cond_0
    return-void
.end method

.method public final ᐧﹶ(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    instance-of v0, p1, Lˋˋ/ᵔי;

    if-eqz v0, :cond_1

    check-cast p1, Lˋˋ/ᵔי;

    iput-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵢˏ:Lˋˋ/ᵔי;

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʾᵎ:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iput v1, p1, Lˋˋ/ᵔי;->ʾˋ:I

    :cond_0
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ـˊ()V

    :cond_1
    return-void
.end method

.method public ᐧﾞ(Landroid/view/View;ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)Landroid/view/View;
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ﾞˊ()V

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->ˋـ(I)I

    move-result p1

    const/high16 p2, -0x80000000

    if-ne p1, p2, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹶʽ()V

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v0}, Lʼﾞ/ᵎⁱ;->ᵔʾ()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3eaaaaab

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->ᴵٴ(IIZLˋˋ/ᐧﹶ;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵔﹳ:Lˋˋ/ٴʼ;

    iput p2, v0, Lˋˋ/ٴʼ;->ᵎﹶ:I

    iput-boolean v1, v0, Lˋˋ/ٴʼ;->ﹳٴ:Z

    const/4 p2, 0x1

    invoke-virtual {p0, p3, v0, p4, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵔⁱ(Lˋˋ/ʻˋ;Lˋˋ/ٴʼ;Lˋˋ/ᐧﹶ;Z)I

    const/4 p3, -0x1

    if-ne p1, p3, :cond_3

    iget-boolean p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʽﹳ:Z

    if-eqz p4, :cond_2

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result p4

    sub-int/2addr p4, p2

    invoke-virtual {p0, p4, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->ـʻ(II)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result p2

    invoke-virtual {p0, v1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->ـʻ(II)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_3
    iget-boolean p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʽﹳ:Z

    if-eqz p4, :cond_4

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result p2

    invoke-virtual {p0, v1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->ـʻ(II)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result p4

    sub-int/2addr p4, p2

    invoke-virtual {p0, p4, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->ـʻ(II)Landroid/view/View;

    move-result-object p2

    :goto_0
    if-ne p1, p3, :cond_5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵢʻ()Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ˎـ()Landroid/view/View;

    move-result-object p1

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    move-result p3

    if-eqz p3, :cond_7

    if-nez p2, :cond_6

    :goto_2
    const/4 p1, 0x0

    :cond_6
    return-object p1

    :cond_7
    return-object p2
.end method

.method public final ᴵٴ(IIZLˋˋ/ᐧﹶ;)V
    .locals 4

    .prologue
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵔﹳ:Lˋˋ/ٴʼ;

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v1}, Lʼﾞ/ᵎⁱ;->ٴﹶ()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v1}, Lʼﾞ/ᵎⁱ;->ᵔᵢ()I

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lˋˋ/ٴʼ;->ﾞʻ:Z

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵔﹳ:Lˋˋ/ٴʼ;

    iput p1, v0, Lˋˋ/ٴʼ;->ﾞᴵ:I

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ˈٴ:[I

    aput v2, v0, v2

    aput v2, v0, v3

    invoke-virtual {p0, p4, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ˎʾ(Lˋˋ/ᐧﹶ;[I)V

    aget p4, v0, v2

    invoke-static {v2, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    aget v0, v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-ne p1, v3, :cond_1

    move v2, v3

    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵔﹳ:Lˋˋ/ٴʼ;

    if-eqz v2, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, p4

    :goto_1
    iput v1, p1, Lˋˋ/ٴʼ;->ᵔᵢ:I

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move p4, v0

    :goto_2
    iput p4, p1, Lˋˋ/ٴʼ;->ʼˎ:I

    const/4 p4, -0x1

    if-eqz v2, :cond_5

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v0}, Lʼﾞ/ᵎⁱ;->ˆʾ()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p1, Lˋˋ/ٴʼ;->ᵔᵢ:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ˎـ()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵔﹳ:Lˋˋ/ٴʼ;

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʽﹳ:Z

    if-eqz v1, :cond_4

    move v3, p4

    :cond_4
    iput v3, v0, Lˋˋ/ٴʼ;->ˑﹳ:I

    invoke-static {p1}, Lˋˋ/ʻᵎ;->ˆﾞ(Landroid/view/View;)I

    move-result p4

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵔﹳ:Lˋˋ/ٴʼ;

    iget v2, v1, Lˋˋ/ٴʼ;->ˑﹳ:I

    add-int/2addr p4, v2

    iput p4, v0, Lˋˋ/ٴʼ;->ˈ:I

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {p4, p1}, Lʼﾞ/ᵎⁱ;->ˈ(Landroid/view/View;)I

    move-result p4

    iput p4, v1, Lˋˋ/ٴʼ;->ⁱˊ:I

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {p4, p1}, Lʼﾞ/ᵎⁱ;->ˈ(Landroid/view/View;)I

    move-result p1

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {p4}, Lʼﾞ/ᵎⁱ;->ʼˎ()I

    move-result p4

    sub-int/2addr p1, p4

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵢʻ()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵔﹳ:Lˋˋ/ٴʼ;

    iget v1, v0, Lˋˋ/ٴʼ;->ᵔᵢ:I

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v2}, Lʼﾞ/ᵎⁱ;->ˉʿ()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, v0, Lˋˋ/ٴʼ;->ᵔᵢ:I

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵔﹳ:Lˋˋ/ٴʼ;

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʽﹳ:Z

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    move v3, p4

    :goto_3
    iput v3, v0, Lˋˋ/ٴʼ;->ˑﹳ:I

    invoke-static {p1}, Lˋˋ/ʻᵎ;->ˆﾞ(Landroid/view/View;)I

    move-result p4

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵔﹳ:Lˋˋ/ٴʼ;

    iget v2, v1, Lˋˋ/ٴʼ;->ˑﹳ:I

    add-int/2addr p4, v2

    iput p4, v0, Lˋˋ/ٴʼ;->ˈ:I

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {p4, p1}, Lʼﾞ/ᵎⁱ;->ᵎﹶ(Landroid/view/View;)I

    move-result p4

    iput p4, v1, Lˋˋ/ٴʼ;->ⁱˊ:I

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {p4, p1}, Lʼﾞ/ᵎⁱ;->ᵎﹶ(Landroid/view/View;)I

    move-result p1

    neg-int p1, p1

    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    invoke-virtual {p4}, Lʼﾞ/ᵎⁱ;->ˉʿ()I

    move-result p4

    add-int/2addr p1, p4

    :goto_4
    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵔﹳ:Lˋˋ/ٴʼ;

    iput p2, p4, Lˋˋ/ٴʼ;->ʽ:I

    if-eqz p3, :cond_7

    sub-int/2addr p2, p1

    iput p2, p4, Lˋˋ/ٴʼ;->ʽ:I

    :cond_7
    iput p1, p4, Lˋˋ/ٴʼ;->ᵎﹶ:I

    return-void
.end method

.method public ᵎʻ(Lˋˋ/ᐧﹶ;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵢˏ:Lˋˋ/ᵔי;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʾᵎ:I

    const/high16 p1, -0x80000000

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʼʼ:I

    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʾˋ:Lˋˋ/ˉٴ;

    invoke-virtual {p1}, Lˋˋ/ˉٴ;->ᵎﹶ()V

    return-void
.end method

.method public final ᵎᵔ(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public final ᵔʾ(Lˋˋ/ᐧﹶ;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->ˎˉ(Lˋˋ/ᐧﹶ;)I

    move-result p1

    return p1
.end method

.method public final ᵔⁱ(Lˋˋ/ʻˋ;Lˋˋ/ٴʼ;Lˋˋ/ᐧﹶ;Z)I
    .locals 7

    .prologue
    iget v0, p2, Lˋˋ/ٴʼ;->ʽ:I

    iget v1, p2, Lˋˋ/ٴʼ;->ᵎﹶ:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    if-gez v0, :cond_0

    add-int/2addr v1, v0

    iput v1, p2, Lˋˋ/ٴʼ;->ᵎﹶ:I

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->ʻʼ(Lˋˋ/ʻˋ;Lˋˋ/ٴʼ;)V

    :cond_1
    iget v1, p2, Lˋˋ/ٴʼ;->ʽ:I

    iget v3, p2, Lˋˋ/ٴʼ;->ᵔᵢ:I

    add-int/2addr v1, v3

    :cond_2
    iget-boolean v3, p2, Lˋˋ/ٴʼ;->ﾞʻ:Z

    if-nez v3, :cond_3

    if-lez v1, :cond_9

    :cond_3
    iget v3, p2, Lˋˋ/ٴʼ;->ˈ:I

    if-ltz v3, :cond_9

    invoke-virtual {p3}, Lˋˋ/ᐧﹶ;->ⁱˊ()I

    move-result v4

    if-ge v3, v4, :cond_9

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᴵˊ:Lˋˋ/ᵎⁱ;

    const/4 v4, 0x0

    iput v4, v3, Lˋˋ/ᵎⁱ;->ﹳٴ:I

    iput-boolean v4, v3, Lˋˋ/ᵎⁱ;->ⁱˊ:Z

    iput-boolean v4, v3, Lˋˋ/ᵎⁱ;->ʽ:Z

    iput-boolean v4, v3, Lˋˋ/ᵎⁱ;->ˈ:Z

    invoke-virtual {p0, p1, p3, p2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->ˆﹳ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;Lˋˋ/ٴʼ;Lˋˋ/ᵎⁱ;)V

    iget-boolean v4, v3, Lˋˋ/ᵎⁱ;->ⁱˊ:Z

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    iget v4, p2, Lˋˋ/ٴʼ;->ⁱˊ:I

    iget v5, v3, Lˋˋ/ᵎⁱ;->ﹳٴ:I

    iget v6, p2, Lˋˋ/ٴʼ;->ﾞᴵ:I

    mul-int/2addr v6, v5

    add-int/2addr v6, v4

    iput v6, p2, Lˋˋ/ٴʼ;->ⁱˊ:I

    iget-boolean v4, v3, Lˋˋ/ᵎⁱ;->ʽ:Z

    if-eqz v4, :cond_5

    iget-object v4, p2, Lˋˋ/ٴʼ;->ٴﹶ:Ljava/util/List;

    if-nez v4, :cond_5

    iget-boolean v4, p3, Lˋˋ/ᐧﹶ;->ᵎﹶ:Z

    if-nez v4, :cond_6

    :cond_5
    iget v4, p2, Lˋˋ/ٴʼ;->ʽ:I

    sub-int/2addr v4, v5

    iput v4, p2, Lˋˋ/ٴʼ;->ʽ:I

    sub-int/2addr v1, v5

    :cond_6
    iget v4, p2, Lˋˋ/ٴʼ;->ᵎﹶ:I

    if-eq v4, v2, :cond_8

    add-int/2addr v4, v5

    iput v4, p2, Lˋˋ/ٴʼ;->ᵎﹶ:I

    iget v5, p2, Lˋˋ/ٴʼ;->ʽ:I

    if-gez v5, :cond_7

    add-int/2addr v4, v5

    iput v4, p2, Lˋˋ/ٴʼ;->ᵎﹶ:I

    :cond_7
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->ʻʼ(Lˋˋ/ʻˋ;Lˋˋ/ٴʼ;)V

    :cond_8
    if-eqz p4, :cond_2

    iget-boolean v3, v3, Lˋˋ/ᵎⁱ;->ˈ:Z

    if-eqz v3, :cond_2

    :cond_9
    :goto_0
    iget p1, p2, Lˋˋ/ٴʼ;->ʽ:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final ᵢʻ()Landroid/view/View;
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʽﹳ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final ᵢˋ(Lˋˋ/ᐧﹶ;)I
    .locals 6

    .prologue
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹶʽ()V

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ـˆ:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ﾞˏ(Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ٴʿ(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ـˆ:Z

    move-object v4, p0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lˋˋ/ⁱˊ;->ᵔᵢ(Lˋˋ/ᐧﹶ;Lʼﾞ/ᵎⁱ;Landroid/view/View;Landroid/view/View;Lˋˋ/ʻᵎ;Z)I

    move-result p1

    return p1
.end method

.method public final ᵢᐧ(Lˋˋ/ʻˋ;II)V
    .locals 0

    .prologue
    if-ne p2, p3, :cond_0

    goto :goto_2

    :cond_0
    if-le p3, p2, :cond_1

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-lt p3, p2, :cond_2

    invoke-virtual {p0, p3, p1}, Lˋˋ/ʻᵎ;->ʾﾞ(ILˋˋ/ʻˋ;)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-le p2, p3, :cond_2

    invoke-virtual {p0, p2, p1}, Lˋˋ/ʻᵎ;->ʾﾞ(ILˋˋ/ʻˋ;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public ⁱי(ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I
    .locals 1

    .prologue
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʼᐧ:I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->ˆʻ(ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I

    move-result p1

    return p1
.end method

.method public final ﹳٴ(I)Landroid/graphics/PointF;
    .locals 3

    .prologue
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lˋˋ/ʻᵎ;->ˆﾞ(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-ge p1, v1, :cond_1

    move v0, v2

    :cond_1
    iget-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʽﹳ:Z

    if-eq v0, p1, :cond_2

    const/4 v2, -0x1

    :cond_2
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʼᐧ:I

    const/4 v0, 0x0

    if-nez p1, :cond_3

    new-instance p1, Landroid/graphics/PointF;

    int-to-float v1, v2

    invoke-direct {p1, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1

    :cond_3
    new-instance p1, Landroid/graphics/PointF;

    int-to-float v1, v2

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method public final ﹳᵢ(Lˋˋ/ᐧﹶ;)I
    .locals 7

    .prologue
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹶʽ()V

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᐧ:Lʼﾞ/ᵎⁱ;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ـˆ:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ﾞˏ(Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ٴʿ(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ـˆ:Z

    iget-boolean v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʽﹳ:Z

    move-object v4, p0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lˋˋ/ⁱˊ;->ᵎﹶ(Lˋˋ/ᐧﹶ;Lʼﾞ/ᵎⁱ;Landroid/view/View;Landroid/view/View;Lˋˋ/ʻᵎ;ZZ)I

    move-result p1

    return p1
.end method

.method public final ﹳⁱ(I)V
    .locals 1

    .prologue
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʾᵎ:I

    const/high16 p1, -0x80000000

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʼʼ:I

    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵢˏ:Lˋˋ/ᵔי;

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    iput v0, p1, Lˋˋ/ᵔי;->ʾˋ:I

    :cond_0
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ـˊ()V

    return-void
.end method

.method public final ﹶʽ()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵔﹳ:Lˋˋ/ٴʼ;

    if-nez v0, :cond_0

    new-instance v0, Lˋˋ/ٴʼ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lˋˋ/ٴʼ;->ﹳٴ:Z

    const/4 v1, 0x0

    iput v1, v0, Lˋˋ/ٴʼ;->ᵔᵢ:I

    iput v1, v0, Lˋˋ/ٴʼ;->ʼˎ:I

    const/4 v1, 0x0

    iput-object v1, v0, Lˋˋ/ٴʼ;->ٴﹶ:Ljava/util/List;

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ᵔﹳ:Lˋˋ/ٴʼ;

    :cond_0
    return-void
.end method

.method public ﾞʻ(Lˋˋ/ᐧﹶ;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->ﹳᵢ(Lˋˋ/ᐧﹶ;)I

    move-result p1

    return p1
.end method

.method public final ﾞˊ()V
    .locals 2

    .prologue
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʼᐧ:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ʿʽ()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ˏי:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʽﹳ:Z

    return-void

    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ˏי:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʽﹳ:Z

    return-void
.end method

.method public final ﾞˏ(Z)Landroid/view/View;
    .locals 2

    .prologue
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʽﹳ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->ˏⁱ(IIZ)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->ˏⁱ(IIZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final ﾞᴵ()Z
    .locals 2

    .prologue
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->ʼᐧ:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
