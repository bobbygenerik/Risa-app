.class public final Lʼʻ/ʾᵎ;
.super Lʼʻ/ᵢˏ;
.source "SourceFile"


# direct methods
.method public static ﾞᴵ(I)Lʼʻ/ᵢˏ;
    .locals 0

    .prologue
    if-gez p0, :cond_0

    sget-object p0, Lʼʻ/ᵢˏ;->ⁱˊ:Lʼʻ/ʼʼ;

    return-object p0

    :cond_0
    if-lez p0, :cond_1

    sget-object p0, Lʼʻ/ᵢˏ;->ʽ:Lʼʻ/ʼʼ;

    return-object p0

    :cond_1
    sget-object p0, Lʼʻ/ᵢˏ;->ﹳٴ:Lʼʻ/ʾᵎ;

    return-object p0
.end method


# virtual methods
.method public final ʽ(ZZ)Lʼʻ/ᵢˏ;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p1

    invoke-static {p1}, Lʼʻ/ʾᵎ;->ﾞᴵ(I)Lʼʻ/ᵢˏ;

    move-result-object p1

    return-object p1
.end method

.method public final ˈ(ZZ)Lʼʻ/ᵢˏ;
    .locals 0

    invoke-static {p2, p1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p1

    invoke-static {p1}, Lʼʻ/ʾᵎ;->ﾞᴵ(I)Lʼʻ/ᵢˏ;

    move-result-object p1

    return-object p1
.end method

.method public final ˑﹳ()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final ⁱˊ(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lʼʻ/ᵢˏ;
    .locals 0

    invoke-interface {p3, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Lʼʻ/ʾᵎ;->ﾞᴵ(I)Lʼʻ/ᵢˏ;

    move-result-object p1

    return-object p1
.end method

.method public final ﹳٴ(II)Lʼʻ/ᵢˏ;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    invoke-static {p1}, Lʼʻ/ʾᵎ;->ﾞᴵ(I)Lʼʻ/ᵢˏ;

    move-result-object p1

    return-object p1
.end method
