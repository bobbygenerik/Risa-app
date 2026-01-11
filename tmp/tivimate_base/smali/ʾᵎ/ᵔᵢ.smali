.class public final Lʾᵎ/ᵔᵢ;
.super Lʾᵎ/ˈ;
.source "SourceFile"


# instance fields
.field public ʼـ:Z

.field public ʽᵔ:F

.field public ʾˊ:Lʾᵎ/ʽ;

.field public ˑ:I

.field public י:I

.field public ᐧﹶ:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    invoke-direct {p0}, Lʾᵎ/ˈ;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lʾᵎ/ᵔᵢ;->ʽᵔ:F

    const/4 v0, -0x1

    iput v0, p0, Lʾᵎ/ᵔᵢ;->ᐧﹶ:I

    iput v0, p0, Lʾᵎ/ᵔᵢ;->י:I

    iget-object v0, p0, Lʾᵎ/ˈ;->ٴʼ:Lʾᵎ/ʽ;

    iput-object v0, p0, Lʾᵎ/ᵔᵢ;->ʾˊ:Lʾᵎ/ʽ;

    const/4 v0, 0x0

    iput v0, p0, Lʾᵎ/ᵔᵢ;->ˑ:I

    iget-object v1, p0, Lʾᵎ/ˈ;->ˊˋ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lʾᵎ/ˈ;->ˊˋ:Ljava/util/ArrayList;

    iget-object v2, p0, Lʾᵎ/ᵔᵢ;->ʾˊ:Lʾᵎ/ʽ;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lʾᵎ/ˈ;->ˋᵔ:[Lʾᵎ/ʽ;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lʾᵎ/ˈ;->ˋᵔ:[Lʾᵎ/ʽ;

    iget-object v3, p0, Lʾᵎ/ᵔᵢ;->ʾˊ:Lʾᵎ/ʽ;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final ʼˈ(I)V
    .locals 3

    .prologue
    iget v0, p0, Lʾᵎ/ᵔᵢ;->ˑ:I

    if-ne v0, p1, :cond_0

    goto :goto_2

    :cond_0
    iput p1, p0, Lʾᵎ/ᵔᵢ;->ˑ:I

    iget-object p1, p0, Lʾᵎ/ˈ;->ˊˋ:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget v0, p0, Lʾᵎ/ᵔᵢ;->ˑ:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lʾᵎ/ˈ;->ᵎⁱ:Lʾᵎ/ʽ;

    iput-object v0, p0, Lʾᵎ/ᵔᵢ;->ʾˊ:Lʾᵎ/ʽ;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lʾᵎ/ˈ;->ٴʼ:Lʾᵎ/ʽ;

    iput-object v0, p0, Lʾᵎ/ᵔᵢ;->ʾˊ:Lʾᵎ/ʽ;

    :goto_0
    iget-object v0, p0, Lʾᵎ/ᵔᵢ;->ʾˊ:Lʾᵎ/ʽ;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lʾᵎ/ˈ;->ˋᵔ:[Lʾᵎ/ʽ;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lʾᵎ/ᵔᵢ;->ʾˊ:Lʾᵎ/ʽ;

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public final ʼˎ(I)Lʾᵎ/ʽ;
    .locals 2

    .prologue
    invoke-static {p1}, Lʻٴ/ᵎﹶ;->ˈ(I)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lʾᵎ/ᵔᵢ;->ˑ:I

    if-nez p1, :cond_2

    iget-object p1, p0, Lʾᵎ/ᵔᵢ;->ʾˊ:Lʾᵎ/ʽ;

    return-object p1

    :cond_1
    iget p1, p0, Lʾᵎ/ᵔᵢ;->ˑ:I

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lʾᵎ/ᵔᵢ;->ʾˊ:Lʾᵎ/ʽ;

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final ʽ()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final ʾˋ()Z
    .locals 1

    iget-boolean v0, p0, Lʾᵎ/ᵔᵢ;->ʼـ:Z

    return v0
.end method

.method public final ˊˋ(I)V
    .locals 1

    iget-object v0, p0, Lʾᵎ/ᵔᵢ;->ʾˊ:Lʾᵎ/ʽ;

    invoke-virtual {v0, p1}, Lʾᵎ/ʽ;->ﾞʻ(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lʾᵎ/ᵔᵢ;->ʼـ:Z

    return-void
.end method

.method public final ˋᵔ(Lʻٴ/ʽ;Z)V
    .locals 2

    .prologue
    iget-object p2, p0, Lʾᵎ/ˈ;->ـˏ:Lʾᵎ/ˈ;

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lʾᵎ/ᵔᵢ;->ʾˊ:Lʾᵎ/ʽ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lʻٴ/ʽ;->ᵔʾ(Ljava/lang/Object;)I

    move-result p1

    iget p2, p0, Lʾᵎ/ᵔᵢ;->ˑ:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    iput p1, p0, Lʾᵎ/ˈ;->ʿ:I

    iput v1, p0, Lʾᵎ/ˈ;->ʿᵢ:I

    iget-object p1, p0, Lʾᵎ/ˈ;->ـˏ:Lʾᵎ/ˈ;

    invoke-virtual {p1}, Lʾᵎ/ˈ;->ٴﹶ()I

    move-result p1

    invoke-virtual {p0, p1}, Lʾᵎ/ˈ;->ᵔי(I)V

    invoke-virtual {p0, v1}, Lʾᵎ/ˈ;->ˈʿ(I)V

    return-void

    :cond_1
    iput v1, p0, Lʾᵎ/ˈ;->ʿ:I

    iput p1, p0, Lʾᵎ/ˈ;->ʿᵢ:I

    iget-object p1, p0, Lʾᵎ/ˈ;->ـˏ:Lʾᵎ/ˈ;

    invoke-virtual {p1}, Lʾᵎ/ˈ;->ᵔﹳ()I

    move-result p1

    invoke-virtual {p0, p1}, Lʾᵎ/ˈ;->ˈʿ(I)V

    invoke-virtual {p0, v1}, Lʾᵎ/ˈ;->ᵔי(I)V

    return-void
.end method

.method public final ᴵˊ()Z
    .locals 1

    iget-boolean v0, p0, Lʾᵎ/ᵔᵢ;->ʼـ:Z

    return v0
.end method

.method public final ⁱˊ(Lʻٴ/ʽ;Z)V
    .locals 8

    .prologue
    iget-object p2, p0, Lʾᵎ/ˈ;->ـˏ:Lʾᵎ/ˈ;

    check-cast p2, Lʾᵎ/ˑﹳ;

    if-nez p2, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lʾᵎ/ˈ;->ʼˎ(I)Lʾᵎ/ʽ;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p2, v2}, Lʾᵎ/ˈ;->ʼˎ(I)Lʾᵎ/ʽ;

    move-result-object v2

    iget-object v3, p0, Lʾᵎ/ˈ;->ـˏ:Lʾᵎ/ˈ;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    iget-object v3, v3, Lʾᵎ/ˈ;->ـᵎ:[I

    aget v3, v3, v5

    if-ne v3, v0, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    iget v6, p0, Lʾᵎ/ᵔᵢ;->ˑ:I

    const/4 v7, 0x5

    if-nez v6, :cond_3

    const/4 v1, 0x3

    invoke-virtual {p2, v1}, Lʾᵎ/ˈ;->ʼˎ(I)Lʾᵎ/ʽ;

    move-result-object v1

    invoke-virtual {p2, v7}, Lʾᵎ/ˈ;->ʼˎ(I)Lʾᵎ/ʽ;

    move-result-object v2

    iget-object p2, p0, Lʾᵎ/ˈ;->ـˏ:Lʾᵎ/ˈ;

    if-eqz p2, :cond_2

    iget-object p2, p2, Lʾᵎ/ˈ;->ـᵎ:[I

    aget p2, p2, v4

    if-ne p2, v0, :cond_2

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    move v3, v4

    :cond_3
    iget-boolean p2, p0, Lʾᵎ/ᵔᵢ;->ʼـ:Z

    const/4 v0, -0x1

    if-eqz p2, :cond_6

    iget-object p2, p0, Lʾᵎ/ᵔᵢ;->ʾˊ:Lʾᵎ/ʽ;

    iget-boolean v4, p2, Lʾᵎ/ʽ;->ʽ:Z

    if-eqz v4, :cond_6

    invoke-virtual {p1, p2}, Lʻٴ/ʽ;->ٴﹶ(Ljava/lang/Object;)Lʻٴ/ᵔᵢ;

    move-result-object p2

    iget-object v4, p0, Lʾᵎ/ᵔᵢ;->ʾˊ:Lʾᵎ/ʽ;

    invoke-virtual {v4}, Lʾᵎ/ʽ;->ˈ()I

    move-result v4

    invoke-virtual {p1, p2, v4}, Lʻٴ/ʽ;->ˈ(Lʻٴ/ᵔᵢ;I)V

    iget v4, p0, Lʾᵎ/ᵔᵢ;->ᐧﹶ:I

    if-eq v4, v0, :cond_4

    if-eqz v3, :cond_5

    invoke-virtual {p1, v2}, Lʻٴ/ʽ;->ٴﹶ(Ljava/lang/Object;)Lʻٴ/ᵔᵢ;

    move-result-object v0

    invoke-virtual {p1, v0, p2, v5, v7}, Lʻٴ/ʽ;->ﾞᴵ(Lʻٴ/ᵔᵢ;Lʻٴ/ᵔᵢ;II)V

    goto :goto_2

    :cond_4
    iget v4, p0, Lʾᵎ/ᵔᵢ;->י:I

    if-eq v4, v0, :cond_5

    if-eqz v3, :cond_5

    invoke-virtual {p1, v2}, Lʻٴ/ʽ;->ٴﹶ(Ljava/lang/Object;)Lʻٴ/ᵔᵢ;

    move-result-object v0

    invoke-virtual {p1, v1}, Lʻٴ/ʽ;->ٴﹶ(Ljava/lang/Object;)Lʻٴ/ᵔᵢ;

    move-result-object v1

    invoke-virtual {p1, p2, v1, v5, v7}, Lʻٴ/ʽ;->ﾞᴵ(Lʻٴ/ᵔᵢ;Lʻٴ/ᵔᵢ;II)V

    invoke-virtual {p1, v0, p2, v5, v7}, Lʻٴ/ʽ;->ﾞᴵ(Lʻٴ/ᵔᵢ;Lʻٴ/ᵔᵢ;II)V

    :cond_5
    :goto_2
    iput-boolean v5, p0, Lʾᵎ/ᵔᵢ;->ʼـ:Z

    return-void

    :cond_6
    iget p2, p0, Lʾᵎ/ᵔᵢ;->ᐧﹶ:I

    const/16 v4, 0x8

    if-eq p2, v0, :cond_7

    iget-object p2, p0, Lʾᵎ/ᵔᵢ;->ʾˊ:Lʾᵎ/ʽ;

    invoke-virtual {p1, p2}, Lʻٴ/ʽ;->ٴﹶ(Ljava/lang/Object;)Lʻٴ/ᵔᵢ;

    move-result-object p2

    invoke-virtual {p1, v1}, Lʻٴ/ʽ;->ٴﹶ(Ljava/lang/Object;)Lʻٴ/ᵔᵢ;

    move-result-object v0

    iget v1, p0, Lʾᵎ/ᵔᵢ;->ᐧﹶ:I

    invoke-virtual {p1, p2, v0, v1, v4}, Lʻٴ/ʽ;->ˑﹳ(Lʻٴ/ᵔᵢ;Lʻٴ/ᵔᵢ;II)V

    if-eqz v3, :cond_9

    invoke-virtual {p1, v2}, Lʻٴ/ʽ;->ٴﹶ(Ljava/lang/Object;)Lʻٴ/ᵔᵢ;

    move-result-object v0

    invoke-virtual {p1, v0, p2, v5, v7}, Lʻٴ/ʽ;->ﾞᴵ(Lʻٴ/ᵔᵢ;Lʻٴ/ᵔᵢ;II)V

    return-void

    :cond_7
    iget p2, p0, Lʾᵎ/ᵔᵢ;->י:I

    if-eq p2, v0, :cond_8

    iget-object p2, p0, Lʾᵎ/ᵔᵢ;->ʾˊ:Lʾᵎ/ʽ;

    invoke-virtual {p1, p2}, Lʻٴ/ʽ;->ٴﹶ(Ljava/lang/Object;)Lʻٴ/ᵔᵢ;

    move-result-object p2

    invoke-virtual {p1, v2}, Lʻٴ/ʽ;->ٴﹶ(Ljava/lang/Object;)Lʻٴ/ᵔᵢ;

    move-result-object v0

    iget v2, p0, Lʾᵎ/ᵔᵢ;->י:I

    neg-int v2, v2

    invoke-virtual {p1, p2, v0, v2, v4}, Lʻٴ/ʽ;->ˑﹳ(Lʻٴ/ᵔᵢ;Lʻٴ/ᵔᵢ;II)V

    if-eqz v3, :cond_9

    invoke-virtual {p1, v1}, Lʻٴ/ʽ;->ٴﹶ(Ljava/lang/Object;)Lʻٴ/ᵔᵢ;

    move-result-object v1

    invoke-virtual {p1, p2, v1, v5, v7}, Lʻٴ/ʽ;->ﾞᴵ(Lʻٴ/ᵔᵢ;Lʻٴ/ᵔᵢ;II)V

    invoke-virtual {p1, v0, p2, v5, v7}, Lʻٴ/ʽ;->ﾞᴵ(Lʻٴ/ᵔᵢ;Lʻٴ/ᵔᵢ;II)V

    return-void

    :cond_8
    iget p2, p0, Lʾᵎ/ᵔᵢ;->ʽᵔ:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_9

    iget-object p2, p0, Lʾᵎ/ᵔᵢ;->ʾˊ:Lʾᵎ/ʽ;

    invoke-virtual {p1, p2}, Lʻٴ/ʽ;->ٴﹶ(Ljava/lang/Object;)Lʻٴ/ᵔᵢ;

    move-result-object p2

    invoke-virtual {p1, v2}, Lʻٴ/ʽ;->ٴﹶ(Ljava/lang/Object;)Lʻٴ/ᵔᵢ;

    move-result-object v1

    iget v2, p0, Lʾᵎ/ᵔᵢ;->ʽᵔ:F

    invoke-virtual {p1}, Lʻٴ/ʽ;->ﾞʻ()Lʻٴ/ⁱˊ;

    move-result-object v3

    iget-object v4, v3, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    invoke-virtual {v4, p2, v0}, Lʻٴ/ﹳٴ;->ᵎﹶ(Lʻٴ/ᵔᵢ;F)V

    iget-object p2, v3, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    invoke-virtual {p2, v1, v2}, Lʻٴ/ﹳٴ;->ᵎﹶ(Lʻٴ/ᵔᵢ;F)V

    invoke-virtual {p1, v3}, Lʻٴ/ʽ;->ʽ(Lʻٴ/ⁱˊ;)V

    :cond_9
    :goto_3
    return-void
.end method
