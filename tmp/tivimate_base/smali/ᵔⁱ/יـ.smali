.class public final Lᵔⁱ/יـ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ᵎﹶ:Lcom/parse/ʼᐧ;

.field public static final ᵔᵢ:Lcom/parse/ʼᐧ;


# instance fields
.field public ʽ:I

.field public ˈ:I

.field public ˑﹳ:I

.field public final ⁱˊ:[Lᵔⁱ/ﹳᐧ;

.field public final ﹳٴ:Ljava/util/ArrayList;

.field public ﾞᴵ:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/parse/ʼᐧ;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/parse/ʼᐧ;-><init>(I)V

    sput-object v0, Lᵔⁱ/יـ;->ᵎﹶ:Lcom/parse/ʼᐧ;

    new-instance v0, Lcom/parse/ʼᐧ;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/parse/ʼᐧ;-><init>(I)V

    sput-object v0, Lᵔⁱ/יـ;->ᵔᵢ:Lcom/parse/ʼᐧ;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Lᵔⁱ/ﹳᐧ;

    iput-object v0, p0, Lᵔⁱ/יـ;->ⁱˊ:[Lᵔⁱ/ﹳᐧ;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lᵔⁱ/יـ;->ﹳٴ:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lᵔⁱ/יـ;->ʽ:I

    return-void
.end method


# virtual methods
.method public final ⁱˊ()F
    .locals 6

    .prologue
    iget v0, p0, Lᵔⁱ/יـ;->ʽ:I

    const/4 v1, 0x0

    iget-object v2, p0, Lᵔⁱ/יـ;->ﹳٴ:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lᵔⁱ/יـ;->ᵔᵢ:Lcom/parse/ʼᐧ;

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iput v1, p0, Lᵔⁱ/יـ;->ʽ:I

    :cond_0
    iget v0, p0, Lᵔⁱ/יـ;->ˑﹳ:I

    int-to-float v0, v0

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v3, v0

    move v0, v1

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lᵔⁱ/ﹳᐧ;

    iget v5, v4, Lᵔⁱ/ﹳᐧ;->ⁱˊ:I

    add-int/2addr v0, v5

    int-to-float v5, v0

    cmpl-float v5, v5, v3

    if-ltz v5, :cond_1

    iget v0, v4, Lᵔⁱ/ﹳᐧ;->ʽ:F

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0

    :cond_3
    const/4 v0, 0x1

    invoke-static {v0, v2}, Lᐧـ/ˈ;->ᵔʾ(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lᵔⁱ/ﹳᐧ;

    iget v0, v0, Lᵔⁱ/ﹳᐧ;->ʽ:F

    return v0
.end method

.method public final ﹳٴ(IF)V
    .locals 5

    .prologue
    iget v0, p0, Lᵔⁱ/יـ;->ʽ:I

    iget-object v1, p0, Lᵔⁱ/יـ;->ﹳٴ:Ljava/util/ArrayList;

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    sget-object v0, Lᵔⁱ/יـ;->ᵎﹶ:Lcom/parse/ʼᐧ;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iput v2, p0, Lᵔⁱ/יـ;->ʽ:I

    :cond_0
    iget v0, p0, Lᵔⁱ/יـ;->ﾞᴵ:I

    iget-object v3, p0, Lᵔⁱ/יـ;->ⁱˊ:[Lᵔⁱ/ﹳᐧ;

    if-lez v0, :cond_1

    sub-int/2addr v0, v2

    iput v0, p0, Lᵔⁱ/יـ;->ﾞᴵ:I

    aget-object v0, v3, v0

    goto :goto_0

    :cond_1
    new-instance v0, Lᵔⁱ/ﹳᐧ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :goto_0
    iget v2, p0, Lᵔⁱ/יـ;->ˈ:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lᵔⁱ/יـ;->ˈ:I

    iput v2, v0, Lᵔⁱ/ﹳᐧ;->ﹳٴ:I

    iput p1, v0, Lᵔⁱ/ﹳᐧ;->ⁱˊ:I

    iput p2, v0, Lᵔⁱ/ﹳᐧ;->ʽ:F

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p2, p0, Lᵔⁱ/יـ;->ˑﹳ:I

    add-int/2addr p2, p1

    iput p2, p0, Lᵔⁱ/יـ;->ˑﹳ:I

    :cond_2
    :goto_1
    iget p1, p0, Lᵔⁱ/יـ;->ˑﹳ:I

    const/16 p2, 0x7d0

    if-le p1, p2, :cond_4

    add-int/lit16 p1, p1, -0x7d0

    const/4 p2, 0x0

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lᵔⁱ/ﹳᐧ;

    iget v2, v0, Lᵔⁱ/ﹳᐧ;->ⁱˊ:I

    if-gt v2, p1, :cond_3

    iget p1, p0, Lᵔⁱ/יـ;->ˑﹳ:I

    sub-int/2addr p1, v2

    iput p1, p0, Lᵔⁱ/יـ;->ˑﹳ:I

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget p1, p0, Lᵔⁱ/יـ;->ﾞᴵ:I

    const/4 p2, 0x5

    if-ge p1, p2, :cond_2

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lᵔⁱ/יـ;->ﾞᴵ:I

    aput-object v0, v3, p1

    goto :goto_1

    :cond_3
    sub-int/2addr v2, p1

    iput v2, v0, Lᵔⁱ/ﹳᐧ;->ⁱˊ:I

    iget p2, p0, Lᵔⁱ/יـ;->ˑﹳ:I

    sub-int/2addr p2, p1

    iput p2, p0, Lᵔⁱ/יـ;->ˑﹳ:I

    goto :goto_1

    :cond_4
    return-void
.end method
