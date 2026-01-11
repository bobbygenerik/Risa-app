.class public final Lⁱי/ـˏ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﹳᵢ/ٴᵢ;
.implements Lⁱᴵ/ˆʾ;


# instance fields
.field public final ʾˋ:Lⁱי/ˈⁱ;

.field public final synthetic ᴵˊ:Lˋⁱ/ʼᐧ;


# direct methods
.method public constructor <init>(Lˋⁱ/ʼᐧ;Lⁱי/ˈⁱ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lⁱי/ـˏ;->ᴵˊ:Lˋⁱ/ʼᐧ;

    iput-object p2, p0, Lⁱי/ـˏ;->ʾˋ:Lⁱי/ˈⁱ;

    return-void
.end method


# virtual methods
.method public final ʼˎ(ILﹳᵢ/ᵢˏ;)V
    .locals 2

    .prologue
    invoke-virtual {p0, p1, p2}, Lⁱי/ـˏ;->ﹳٴ(ILﹳᵢ/ᵢˏ;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lⁱי/ـˏ;->ᴵˊ:Lˋⁱ/ʼᐧ;

    iget-object p2, p2, Lˋⁱ/ʼᐧ;->ˆʾ:Ljava/lang/Object;

    check-cast p2, Lᐧˎ/ʻٴ;

    new-instance v0, Lⁱי/ˑٴ;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lⁱי/ˑٴ;-><init>(Lⁱי/ـˏ;Landroid/util/Pair;I)V

    invoke-virtual {p2, v0}, Lᐧˎ/ʻٴ;->ʽ(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final ʽ(ILﹳᵢ/ᵢˏ;I)V
    .locals 2

    .prologue
    invoke-virtual {p0, p1, p2}, Lⁱי/ـˏ;->ﹳٴ(ILﹳᵢ/ᵢˏ;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lⁱי/ـˏ;->ᴵˊ:Lˋⁱ/ʼᐧ;

    iget-object p2, p2, Lˋⁱ/ʼᐧ;->ˆʾ:Ljava/lang/Object;

    check-cast p2, Lᐧˎ/ʻٴ;

    new-instance v0, Lʻʻ/ⁱˊ;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, p3, v1}, Lʻʻ/ⁱˊ;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    invoke-virtual {p2, v0}, Lᐧˎ/ʻٴ;->ʽ(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final ʾˋ(ILﹳᵢ/ᵢˏ;)V
    .locals 2

    .prologue
    invoke-virtual {p0, p1, p2}, Lⁱי/ـˏ;->ﹳٴ(ILﹳᵢ/ᵢˏ;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lⁱי/ـˏ;->ᴵˊ:Lˋⁱ/ʼᐧ;

    iget-object p2, p2, Lˋⁱ/ʼᐧ;->ˆʾ:Ljava/lang/Object;

    check-cast p2, Lᐧˎ/ʻٴ;

    new-instance v0, Lⁱי/ˑٴ;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lⁱי/ˑٴ;-><init>(Lⁱי/ـˏ;Landroid/util/Pair;I)V

    invoke-virtual {p2, v0}, Lᐧˎ/ʻٴ;->ʽ(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final ˈٴ(ILﹳᵢ/ᵢˏ;Lﹳᵢ/ﹳᐧ;Lˎʾ/ᵎﹶ;I)V
    .locals 6

    .prologue
    invoke-virtual {p0, p1, p2}, Lⁱי/ـˏ;->ﹳٴ(ILﹳᵢ/ᵢˏ;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lⁱי/ـˏ;->ᴵˊ:Lˋⁱ/ʼᐧ;

    iget-object p1, p1, Lˋⁱ/ʼᐧ;->ˆʾ:Ljava/lang/Object;

    check-cast p1, Lᐧˎ/ʻٴ;

    new-instance v0, Lⁱי/ˊˋ;

    move-object v1, p0

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lⁱי/ˊˋ;-><init>(Lⁱי/ـˏ;Landroid/util/Pair;Lﹳᵢ/ﹳᐧ;Lˎʾ/ᵎﹶ;I)V

    invoke-virtual {p1, v0}, Lᐧˎ/ʻٴ;->ʽ(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final ˊʻ(ILﹳᵢ/ᵢˏ;)V
    .locals 2

    .prologue
    invoke-virtual {p0, p1, p2}, Lⁱי/ـˏ;->ﹳٴ(ILﹳᵢ/ᵢˏ;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lⁱי/ـˏ;->ᴵˊ:Lˋⁱ/ʼᐧ;

    iget-object p2, p2, Lˋⁱ/ʼᐧ;->ˆʾ:Ljava/lang/Object;

    check-cast p2, Lᐧˎ/ʻٴ;

    new-instance v0, Lⁱי/ˑٴ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lⁱי/ˑٴ;-><init>(Lⁱי/ـˏ;Landroid/util/Pair;I)V

    invoke-virtual {p2, v0}, Lᐧˎ/ʻٴ;->ʽ(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final יـ(ILﹳᵢ/ᵢˏ;Lˎʾ/ᵎﹶ;)V
    .locals 2

    .prologue
    invoke-virtual {p0, p1, p2}, Lⁱי/ـˏ;->ﹳٴ(ILﹳᵢ/ᵢˏ;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lⁱי/ـˏ;->ᴵˊ:Lˋⁱ/ʼᐧ;

    iget-object p2, p2, Lˋⁱ/ʼᐧ;->ˆʾ:Ljava/lang/Object;

    check-cast p2, Lᐧˎ/ʻٴ;

    new-instance v0, Lⁱי/ˈʿ;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p3, v1}, Lⁱי/ˈʿ;-><init>(Lⁱי/ـˏ;Landroid/util/Pair;Lˎʾ/ᵎﹶ;I)V

    invoke-virtual {p2, v0}, Lᐧˎ/ʻٴ;->ʽ(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final ـˆ(ILﹳᵢ/ᵢˏ;Lˎʾ/ᵎﹶ;)V
    .locals 2

    .prologue
    invoke-virtual {p0, p1, p2}, Lⁱי/ـˏ;->ﹳٴ(ILﹳᵢ/ᵢˏ;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lⁱי/ـˏ;->ᴵˊ:Lˋⁱ/ʼᐧ;

    iget-object p2, p2, Lˋⁱ/ʼᐧ;->ˆʾ:Ljava/lang/Object;

    check-cast p2, Lᐧˎ/ʻٴ;

    new-instance v0, Lⁱי/ˈʿ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p3, v1}, Lⁱי/ˈʿ;-><init>(Lⁱי/ـˏ;Landroid/util/Pair;Lˎʾ/ᵎﹶ;I)V

    invoke-virtual {p2, v0}, Lᐧˎ/ʻٴ;->ʽ(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final ᴵˊ(ILﹳᵢ/ᵢˏ;Lﹳᵢ/ﹳᐧ;Lˎʾ/ᵎﹶ;Ljava/io/IOException;Z)V
    .locals 7

    .prologue
    invoke-virtual {p0, p1, p2}, Lⁱי/ـˏ;->ﹳٴ(ILﹳᵢ/ᵢˏ;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lⁱי/ـˏ;->ᴵˊ:Lˋⁱ/ʼᐧ;

    iget-object p1, p1, Lˋⁱ/ʼᐧ;->ˆʾ:Ljava/lang/Object;

    check-cast p1, Lᐧˎ/ʻٴ;

    new-instance v0, Lⁱי/ʼˈ;

    move-object v1, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lⁱי/ʼˈ;-><init>(Lⁱי/ـˏ;Landroid/util/Pair;Lﹳᵢ/ﹳᐧ;Lˎʾ/ᵎﹶ;Ljava/io/IOException;Z)V

    invoke-virtual {p1, v0}, Lᐧˎ/ʻٴ;->ʽ(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final ᴵᵔ(ILﹳᵢ/ᵢˏ;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    invoke-virtual {p0, p1, p2}, Lⁱי/ـˏ;->ﹳٴ(ILﹳᵢ/ᵢˏ;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lⁱי/ـˏ;->ᴵˊ:Lˋⁱ/ʼᐧ;

    iget-object p2, p2, Lˋⁱ/ʼᐧ;->ˆʾ:Ljava/lang/Object;

    check-cast p2, Lᐧˎ/ʻٴ;

    new-instance v0, Lcom/parse/ˊﾞ;

    const/16 v1, 0xd

    invoke-direct {v0, p0, p1, p3, v1}, Lcom/parse/ˊﾞ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p2, v0}, Lᐧˎ/ʻٴ;->ʽ(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final ﹳٴ(ILﹳᵢ/ᵢˏ;)Landroid/util/Pair;
    .locals 7

    .prologue
    iget-object v0, p0, Lⁱי/ـˏ;->ʾˋ:Lⁱי/ˈⁱ;

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    const/4 v2, 0x0

    :goto_0
    iget-object v3, v0, Lⁱי/ˈⁱ;->ʽ:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, v0, Lⁱי/ˈⁱ;->ʽ:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lﹳᵢ/ᵢˏ;

    iget-wide v3, v3, Lﹳᵢ/ᵢˏ;->ˈ:J

    iget-wide v5, p2, Lﹳᵢ/ᵢˏ;->ˈ:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    iget-object v2, p2, Lﹳᵢ/ᵢˏ;->ﹳٴ:Ljava/lang/Object;

    iget-object v3, v0, Lⁱי/ˈⁱ;->ⁱˊ:Ljava/lang/Object;

    sget v4, Lⁱי/ᐧﾞ;->ٴﹶ:I

    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {p2, v2}, Lﹳᵢ/ᵢˏ;->ﹳٴ(Ljava/lang/Object;)Lﹳᵢ/ᵢˏ;

    move-result-object p2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object p2, v1

    :goto_1
    if-nez p2, :cond_2

    return-object v1

    :cond_2
    move-object v1, p2

    :cond_3
    iget p2, v0, Lⁱי/ˈⁱ;->ˈ:I

    add-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final ﾞʻ(ILﹳᵢ/ᵢˏ;Lﹳᵢ/ﹳᐧ;Lˎʾ/ᵎﹶ;)V
    .locals 6

    .prologue
    invoke-virtual {p0, p1, p2}, Lⁱי/ـˏ;->ﹳٴ(ILﹳᵢ/ᵢˏ;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lⁱי/ـˏ;->ᴵˊ:Lˋⁱ/ʼᐧ;

    iget-object p1, p1, Lˋⁱ/ʼᐧ;->ˆʾ:Ljava/lang/Object;

    check-cast p1, Lᐧˎ/ʻٴ;

    new-instance v0, Lⁱי/ˋᵔ;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lⁱי/ˋᵔ;-><init>(Lⁱי/ـˏ;Landroid/util/Pair;Lﹳᵢ/ﹳᐧ;Lˎʾ/ᵎﹶ;I)V

    invoke-virtual {p1, v0}, Lᐧˎ/ʻٴ;->ʽ(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final ﾞᴵ(ILﹳᵢ/ᵢˏ;Lﹳᵢ/ﹳᐧ;Lˎʾ/ᵎﹶ;)V
    .locals 6

    .prologue
    invoke-virtual {p0, p1, p2}, Lⁱי/ـˏ;->ﹳٴ(ILﹳᵢ/ᵢˏ;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lⁱי/ـˏ;->ᴵˊ:Lˋⁱ/ʼᐧ;

    iget-object p1, p1, Lˋⁱ/ʼᐧ;->ˆʾ:Ljava/lang/Object;

    check-cast p1, Lᐧˎ/ʻٴ;

    new-instance v0, Lⁱי/ˋᵔ;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lⁱי/ˋᵔ;-><init>(Lⁱי/ـˏ;Landroid/util/Pair;Lﹳᵢ/ﹳᐧ;Lˎʾ/ᵎﹶ;I)V

    invoke-virtual {p1, v0}, Lᐧˎ/ʻٴ;->ʽ(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
