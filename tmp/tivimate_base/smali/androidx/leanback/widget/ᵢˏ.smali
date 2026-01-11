.class public final Landroidx/leanback/widget/ᵢˏ;
.super Lˋˋ/ⁱˊ;
.source "SourceFile"


# instance fields
.field public final synthetic ˈ:Ljava/util/ArrayList;

.field public final synthetic ˑﹳ:Landroidx/leanback/widget/ˊʻ;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/ˊʻ;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/leanback/widget/ᵢˏ;->ˑﹳ:Landroidx/leanback/widget/ˊʻ;

    iput-object p2, p0, Landroidx/leanback/widget/ᵢˏ;->ˈ:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final ʼˎ(II)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroidx/leanback/widget/ᵢˏ;->ˑﹳ:Landroidx/leanback/widget/ˊʻ;

    iget-object v1, v0, Landroidx/leanback/widget/ˊʻ;->ᵔʾ:Landroidx/leanback/widget/ᵎⁱ;

    iget-object v2, p0, Landroidx/leanback/widget/ᵢˏ;->ˈ:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/ʾᵎ;

    iget-object p1, v0, Landroidx/leanback/widget/ˊʻ;->ˆʾ:Ljava/util/ArrayList;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/ʾᵎ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    return-object p1
.end method

.method public final ʽ(II)Z
    .locals 3

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/ᵢˏ;->ˑﹳ:Landroidx/leanback/widget/ˊʻ;

    iget-object v1, v0, Landroidx/leanback/widget/ˊʻ;->ᵔʾ:Landroidx/leanback/widget/ᵎⁱ;

    iget-object v2, p0, Landroidx/leanback/widget/ᵢˏ;->ˈ:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/ʾᵎ;

    iget-object v0, v0, Landroidx/leanback/widget/ˊʻ;->ˆʾ:Ljava/util/ArrayList;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/ʾᵎ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    if-nez p2, :cond_2

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    iget-wide v0, p1, Landroidx/leanback/widget/ʾᵎ;->ﹳٴ:J

    iget-wide p1, p2, Landroidx/leanback/widget/ʾᵎ;->ﹳٴ:J

    cmp-long p1, v0, p1

    if-nez p1, :cond_2

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public final ٴﹶ()I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ᵢˏ;->ˑﹳ:Landroidx/leanback/widget/ˊʻ;

    iget-object v0, v0, Landroidx/leanback/widget/ˊʻ;->ˆʾ:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final ﹳٴ(II)Z
    .locals 3

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/ᵢˏ;->ˑﹳ:Landroidx/leanback/widget/ˊʻ;

    iget-object v1, v0, Landroidx/leanback/widget/ˊʻ;->ᵔʾ:Landroidx/leanback/widget/ᵎⁱ;

    iget-object v2, p0, Landroidx/leanback/widget/ᵢˏ;->ˈ:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/ʾᵎ;

    iget-object v0, v0, Landroidx/leanback/widget/ˊʻ;->ˆʾ:Ljava/util/ArrayList;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/ʾᵎ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    if-nez p2, :cond_2

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    iget v0, p1, Landroidx/leanback/widget/ʾᵎ;->ˉʿ:I

    iget v1, p2, Landroidx/leanback/widget/ʾᵎ;->ˉʿ:I

    if-ne v0, v1, :cond_2

    iget v0, p1, Landroidx/leanback/widget/ʾᵎ;->ˑﹳ:I

    iget v1, p2, Landroidx/leanback/widget/ʾᵎ;->ˑﹳ:I

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Landroidx/leanback/widget/ʾᵎ;->ʽ:Ljava/lang/CharSequence;

    iget-object v1, p2, Landroidx/leanback/widget/ʾᵎ;->ʽ:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroidx/leanback/widget/ʾᵎ;->ˈ:Ljava/lang/CharSequence;

    iget-object v1, p2, Landroidx/leanback/widget/ʾᵎ;->ˈ:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p1, Landroidx/leanback/widget/ʾᵎ;->ʼˎ:I

    iget v1, p2, Landroidx/leanback/widget/ʾᵎ;->ʼˎ:I

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Landroidx/leanback/widget/ʾᵎ;->ﾞᴵ:Ljava/lang/CharSequence;

    iget-object v1, p2, Landroidx/leanback/widget/ʾᵎ;->ﾞᴵ:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroidx/leanback/widget/ʾᵎ;->ᵎﹶ:Ljava/lang/CharSequence;

    iget-object v1, p2, Landroidx/leanback/widget/ʾᵎ;->ᵎﹶ:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p1, Landroidx/leanback/widget/ʾᵎ;->ٴﹶ:I

    iget v1, p2, Landroidx/leanback/widget/ʾᵎ;->ٴﹶ:I

    if-ne v0, v1, :cond_2

    iget p1, p1, Landroidx/leanback/widget/ʾᵎ;->ﾞʻ:I

    iget p2, p2, Landroidx/leanback/widget/ʾᵎ;->ﾞʻ:I

    if-ne p1, p2, :cond_2

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public final ﾞʻ()I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ᵢˏ;->ˈ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
