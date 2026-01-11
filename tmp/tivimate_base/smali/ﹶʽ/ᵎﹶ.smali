.class public final Lﹶʽ/ᵎﹶ;
.super Lﹶʽ/ʼᐧ;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final ˊʻ:I

.field public final ᴵᵔ:I


# direct methods
.method public constructor <init>(ILʽⁱ/ـˏ;ILﹶʽ/ˆʾ;I)V
    .locals 0

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lﹶʽ/ʼᐧ;-><init>(ILʽⁱ/ـˏ;I)V

    iget-boolean p1, p4, Lﹶʽ/ˆʾ;->ʾˋ:Z

    invoke-static {p5, p1}, Lᐧـ/ˈ;->ᵔᵢ(IZ)Z

    move-result p1

    iput p1, p0, Lﹶʽ/ᵎﹶ;->ᴵᵔ:I

    iget-object p1, p0, Lﹶʽ/ʼᐧ;->ˈٴ:Lʽⁱ/ﹳᐧ;

    iget p2, p1, Lʽⁱ/ﹳᐧ;->ʽﹳ:I

    const/4 p3, -0x1

    if-eq p2, p3, :cond_1

    iget p1, p1, Lʽⁱ/ﹳᐧ;->ʻٴ:I

    if-ne p1, p3, :cond_0

    goto :goto_0

    :cond_0
    mul-int p3, p2, p1

    :cond_1
    :goto_0
    iput p3, p0, Lﹶʽ/ᵎﹶ;->ˊʻ:I

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lﹶʽ/ᵎﹶ;

    iget v0, p0, Lﹶʽ/ᵎﹶ;->ˊʻ:I

    iget p1, p1, Lﹶʽ/ᵎﹶ;->ˊʻ:I

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public final bridge synthetic ⁱˊ(Lﹶʽ/ʼᐧ;)Z
    .locals 0

    check-cast p1, Lﹶʽ/ᵎﹶ;

    const/4 p1, 0x0

    return p1
.end method

.method public final ﹳٴ()I
    .locals 1

    iget v0, p0, Lﹶʽ/ᵎﹶ;->ᴵᵔ:I

    return v0
.end method
