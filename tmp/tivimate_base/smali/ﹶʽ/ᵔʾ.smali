.class public final Lﹶʽ/ᵔʾ;
.super Lﹶʽ/ʼᐧ;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final ˆﾞ:Z

.field public final ˉٴ:Z

.field public final ˊʻ:Z

.field public final ٴʼ:I

.field public final ٴᵢ:Z

.field public final ᴵᵔ:I

.field public final ᵎˊ:I

.field public final ᵎⁱ:I

.field public final ᵔי:I


# direct methods
.method public constructor <init>(ILʽⁱ/ـˏ;ILﹶʽ/ˆʾ;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lﹶʽ/ʼᐧ;-><init>(ILʽⁱ/ـˏ;I)V

    const/4 p1, 0x0

    invoke-static {p5, p1}, Lᐧـ/ˈ;->ᵔᵢ(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lﹶʽ/ᵔʾ;->ˊʻ:Z

    iget-object p2, p0, Lﹶʽ/ʼᐧ;->ˈٴ:Lʽⁱ/ﹳᐧ;

    iget p2, p2, Lʽⁱ/ﹳᐧ;->ˑﹳ:I

    iget p3, p4, Lʽⁱ/ˉـ;->ﹳᐧ:I

    iget-object v0, p4, Lʽⁱ/ˉـ;->ʼᐧ:Lʼʻ/ᵎⁱ;

    not-int p3, p3

    and-int/2addr p2, p3

    and-int/lit8 p3, p2, 0x1

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    move p3, p1

    :goto_0
    iput-boolean p3, p0, Lﹶʽ/ᵔʾ;->ٴᵢ:Z

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    move p2, v1

    goto :goto_1

    :cond_1
    move p2, p1

    :goto_1
    iput-boolean p2, p0, Lﹶʽ/ᵔʾ;->ˉٴ:Z

    if-eqz p7, :cond_2

    invoke-static {p7}, Lʼʻ/ᵎⁱ;->ʼᐧ(Ljava/lang/Object;)Lʼʻ/ʿᵢ;

    move-result-object p2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, ""

    invoke-static {p2}, Lʼʻ/ᵎⁱ;->ʼᐧ(Ljava/lang/Object;)Lʼʻ/ʿᵢ;

    move-result-object p2

    goto :goto_2

    :cond_3
    move-object p2, v0

    :goto_2
    move p3, p1

    :goto_3
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    const v3, 0x7fffffff

    if-ge p3, v2, :cond_5

    iget-object v2, p0, Lﹶʽ/ʼᐧ;->ˈٴ:Lʽⁱ/ﹳᐧ;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-boolean v5, p4, Lʽⁱ/ˉـ;->יـ:Z

    invoke-static {v2, v4, v5}, Lﹶʽ/ﹳᐧ;->ˈ(Lʽⁱ/ﹳᐧ;Ljava/lang/String;Z)I

    move-result v2

    if-lez v2, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_5
    move v2, p1

    move p3, v3

    :goto_4
    iput p3, p0, Lﹶʽ/ᵔʾ;->ᵎⁱ:I

    iput v2, p0, Lﹶʽ/ᵔʾ;->ٴʼ:I

    const/16 p2, 0x440

    if-eqz p7, :cond_6

    move p3, p2

    goto :goto_5

    :cond_6
    move p3, p1

    :goto_5
    iget-object p7, p0, Lﹶʽ/ʼᐧ;->ˈٴ:Lʽⁱ/ﹳᐧ;

    iget p7, p7, Lʽⁱ/ﹳᐧ;->ﾞᴵ:I

    sget-object v4, Lﹶʽ/ﹳᐧ;->ﾞʻ:Lʼʻ/ʿ;

    if-eqz p7, :cond_7

    if-ne p7, p3, :cond_7

    goto :goto_6

    :cond_7
    and-int/2addr p3, p7

    invoke-static {p3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    :goto_6
    iput v3, p0, Lﹶʽ/ᵔʾ;->ᵎˊ:I

    iget-object p3, p0, Lﹶʽ/ʼᐧ;->ˈٴ:Lʽⁱ/ﹳᐧ;

    iget p3, p3, Lʽⁱ/ﹳᐧ;->ﾞᴵ:I

    and-int/2addr p2, p3

    if-eqz p2, :cond_8

    move p2, v1

    goto :goto_7

    :cond_8
    move p2, p1

    :goto_7
    iput-boolean p2, p0, Lﹶʽ/ᵔʾ;->ˆﾞ:Z

    invoke-static {p6}, Lﹶʽ/ﹳᐧ;->ᵎﹶ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_9

    move p2, v1

    goto :goto_8

    :cond_9
    move p2, p1

    :goto_8
    iget-object p3, p0, Lﹶʽ/ʼᐧ;->ˈٴ:Lʽⁱ/ﹳᐧ;

    invoke-static {p3, p6, p2}, Lﹶʽ/ﹳᐧ;->ˈ(Lʽⁱ/ﹳᐧ;Ljava/lang/String;Z)I

    move-result p2

    iput p2, p0, Lﹶʽ/ᵔʾ;->ᵔי:I

    if-gtz v2, :cond_c

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_a

    if-gtz v3, :cond_c

    :cond_a
    iget-boolean p3, p0, Lﹶʽ/ᵔʾ;->ٴᵢ:Z

    if-nez p3, :cond_c

    iget-boolean p3, p0, Lﹶʽ/ᵔʾ;->ˉٴ:Z

    if-eqz p3, :cond_b

    if-lez p2, :cond_b

    goto :goto_9

    :cond_b
    move p2, p1

    goto :goto_a

    :cond_c
    :goto_9
    move p2, v1

    :goto_a
    iget-boolean p3, p4, Lﹶʽ/ˆʾ;->ʾˋ:Z

    invoke-static {p5, p3}, Lᐧـ/ˈ;->ᵔᵢ(IZ)Z

    move-result p3

    if-eqz p3, :cond_d

    if-eqz p2, :cond_d

    move p1, v1

    :cond_d
    iput p1, p0, Lﹶʽ/ᵔʾ;->ᴵᵔ:I

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lﹶʽ/ᵔʾ;

    invoke-virtual {p0, p1}, Lﹶʽ/ᵔʾ;->ʽ(Lﹶʽ/ᵔʾ;)I

    move-result p1

    return p1
.end method

.method public final ʽ(Lﹶʽ/ᵔʾ;)I
    .locals 7

    .prologue
    iget-boolean v0, p0, Lﹶʽ/ᵔʾ;->ˊʻ:Z

    iget-boolean v1, p1, Lﹶʽ/ᵔʾ;->ˊʻ:Z

    sget-object v2, Lʼʻ/ᵢˏ;->ﹳٴ:Lʼʻ/ʾᵎ;

    invoke-virtual {v2, v0, v1}, Lʼʻ/ʾᵎ;->ʽ(ZZ)Lʼʻ/ᵢˏ;

    move-result-object v0

    iget v1, p0, Lﹶʽ/ᵔʾ;->ᵎⁱ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lﹶʽ/ᵔʾ;->ᵎⁱ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lʼʻ/ˉـ;->ᴵˊ:Lʼʻ/ˉـ;

    sget-object v4, Lʼʻ/ˉـ;->ʽʽ:Lʼʻ/ˉـ;

    invoke-virtual {v0, v1, v2, v4}, Lʼʻ/ᵢˏ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lʼʻ/ᵢˏ;

    move-result-object v0

    iget v1, p1, Lﹶʽ/ᵔʾ;->ٴʼ:I

    iget v2, p0, Lﹶʽ/ᵔʾ;->ٴʼ:I

    invoke-virtual {v0, v2, v1}, Lʼʻ/ᵢˏ;->ﹳٴ(II)Lʼʻ/ᵢˏ;

    move-result-object v0

    iget v1, p1, Lﹶʽ/ᵔʾ;->ᵎˊ:I

    iget v5, p0, Lﹶʽ/ᵔʾ;->ᵎˊ:I

    invoke-virtual {v0, v5, v1}, Lʼʻ/ᵢˏ;->ﹳٴ(II)Lʼʻ/ᵢˏ;

    move-result-object v0

    iget-boolean v1, p0, Lﹶʽ/ᵔʾ;->ٴᵢ:Z

    iget-boolean v6, p1, Lﹶʽ/ᵔʾ;->ٴᵢ:Z

    invoke-virtual {v0, v1, v6}, Lʼʻ/ᵢˏ;->ʽ(ZZ)Lʼʻ/ᵢˏ;

    move-result-object v0

    iget-boolean v1, p0, Lﹶʽ/ᵔʾ;->ˉٴ:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v6, p1, Lﹶʽ/ᵔʾ;->ˉٴ:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    invoke-virtual {v0, v1, v6, v3}, Lʼʻ/ᵢˏ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lʼʻ/ᵢˏ;

    move-result-object v0

    iget v1, p0, Lﹶʽ/ᵔʾ;->ᵔי:I

    iget v2, p1, Lﹶʽ/ᵔʾ;->ᵔי:I

    invoke-virtual {v0, v1, v2}, Lʼʻ/ᵢˏ;->ﹳٴ(II)Lʼʻ/ᵢˏ;

    move-result-object v0

    if-nez v5, :cond_1

    iget-boolean v1, p0, Lﹶʽ/ᵔʾ;->ˆﾞ:Z

    iget-boolean p1, p1, Lﹶʽ/ᵔʾ;->ˆﾞ:Z

    invoke-virtual {v0, v1, p1}, Lʼʻ/ᵢˏ;->ˈ(ZZ)Lʼʻ/ᵢˏ;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Lʼʻ/ᵢˏ;->ˑﹳ()I

    move-result p1

    return p1
.end method

.method public final bridge synthetic ⁱˊ(Lﹶʽ/ʼᐧ;)Z
    .locals 0

    check-cast p1, Lﹶʽ/ᵔʾ;

    const/4 p1, 0x0

    return p1
.end method

.method public final ﹳٴ()I
    .locals 1

    iget v0, p0, Lﹶʽ/ᵔʾ;->ᴵᵔ:I

    return v0
.end method
